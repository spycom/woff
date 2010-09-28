package api
{
	import mx.utils.StringUtil;
	import api.MD5;
	
	public class Api
	{
		import mx.core.Application;
		
		//import com.adobe.crypto.MD5;
	        
	    import flash.events.Event;
	    import flash.net.URLLoader;
	    import flash.net.URLLoaderDataFormat;
	    import flash.net.URLRequest;
	    import flash.net.URLRequestMethod;
	    import flash.net.URLVariables;
		
	    private var app:Application;
	    private var api_secret:String;
	    private var test_mode:Boolean;
	    
	    public var api_id:int;
	    public var viewer_id:int;
	    public var is_app_user:int;
	    public var viewer_type:int;
	    public var auth_key:int;
	    public var user_id:int;
	    public var group_id:int;
	    
	    public function Api(app:Application, api_secret:String) 
	    {
            this.app = app;
            this.api_secret = api_secret;
            this.test_mode = false;
            this.api_id = Number(app.parameters.api_id);
            this.viewer_id = Number(app.parameters.viewer_id);
            this.is_app_user = Number(app.parameters.is_app_user);
            this.viewer_type = Number(app.parameters.viewer_type);
            this.auth_key = app.parameters.auth_key;
            this.user_id = Number(app.parameters.user_id);
            this.group_id = Number(app.parameters.group_id);
	    }
	    
	    /**
	    * Установка test-режима. 
	    * apiid - api_id приложение
	    * viewerid - id владельца
	    */
	    public function SetTestMode(apiid:int, viewerid:int):void{
	    	this.api_id = apiid;
	    	this.viewer_id = viewerid;
	    	this.user_id = viewerid;
	    	this.is_app_user = 1;
	    	this.viewer_type = 2;
	    	this.test_mode = true;
	    }
	    
	    public function get me():Boolean
	    {
            return ((this.user_id == this.viewer_id) || ((this.user_id == 0) && (this.group_id == 0)));
	    }
	    
	    // вычисление подписи для запроса
	    private function signature(params:Object):String 
	    {
            var keys:Array = new Array();
            for (var k:String in params)
                    keys.push(k);
            keys.sort();
            var sig:String = String(this.viewer_id);                        
            for (var i:int = 0; i < keys.length; i++)
                    sig = sig + keys[i] + "=" + params[keys[i]];
            sig = sig + this.api_secret;
            return MD5.encrypt(sig);
	    }
	    
	    // вычисление подписи для запроса
	    private function secure_signature(params:Object):String 
	    {
            var keys:Array = new Array();
            for (var k:String in params)
                    keys.push(k);
            keys.sort();
            var sig:String = "";                        
            for (var i:int = 0; i < keys.length; i++)
                    sig = sig + keys[i] + "=" + params[keys[i]];
            sig = sig + this.api_secret;
            return MD5.encrypt(sig);
	    }
	    
	    /**
	    * Выполнение запроса.  
	    * param - параметры запроса.
	    * cb - функция callback
	    */
	    public function execute(params:Object, cb:Function, obF:Function = null):void
	    {
            params.api_id = String(api_id);
            if (test_mode)
                    params.test_mode = "1";
            params.v = "2.0";
            params.sig = signature(params);
            var request:URLRequest = new URLRequest("http://api.vkontakte.ru/api.php");
            request.method = URLRequestMethod.GET;
            request.data = new URLVariables();
            for (var k:String in params)
                    request.data[k] = params[k];
            var loader:URLLoader = new URLLoader();
            loader.dataFormat = URLLoaderDataFormat.TEXT;
            loader.addEventListener(Event.COMPLETE, function(event:Event):void {
            	Application.application.txt0.text = loader.data;
        		if (obF === null){
                	if (cb != null) cb(XML(loader.data));
          		} else {
          			obF(XML(loader.data), cb);
          		}
            })
            loader.load(request);
	    }
	    
	    /**
	    * *************************************
	    ***********	Пользователи **************
	    *************************************** 
	    * 
	    * 
	    	isAppUser – возвращает установил пользователь данное приложение или нет. 
			getProfiles – возвращает расширенную информацию о пользователях. 
			getFriends – возвращает список идентификаторов друзей текущего пользователя. 
			getAppFriends – возвращает список идентификаторов друзей текущего пользователя, которые установили данное приложение. 
			getUserBalance – возвращает баланс текущего пользователя в данном приложении.
	    */
	    
	    public function getFriends(cb:Function):void
	    {		
            var params:Object = {method: 'getFriends'};
            this.execute(params, cb, onGetFriends);
	    }
	    
	     // преобразование xml ответа: Список друзкй
	    private function onGetFriends(data:XML, cb:Function):void {
	    	var q:Array = new Array();
	    	for each (var item:XML in data.*) 
			{ 
				var uid:String = item.toString();
			    q.push(uid); 
			}
	    	if (cb != null) {
	    		cb(q);
	    	}
	    }
	    
	    public function getAppFriends(cb:Function):void
	    {		
            var params:Object = {method: 'getAppFriends'};
            this.execute(params, cb, onGetFriends);
	    }
	    
	    
	    public function isAppUser(cb:Function):void{
	    	var params:Object = {method: 'isAppUser'};
            this.execute(params, cb, onIsAppUser);
	    }
	    
	    // преобразование xml ответа: Установлено ли приложение
	    private function onIsAppUser(data:XML, cb:Function):void {
	    	var ret:Boolean;
	    	if (data.toString() == "1")
	    		ret = true;
	    	else 
	    		ret = false;
	    	if (cb != null) {
	    		cb(ret);
	    	}
	    }
	    
	    /**
	    * Получение профилей пользователей.
	    * uids - список пользователей через запятую.
	    * fields - поля которые надо получить из профиля. (по умолчанию - все)
	    * cb - function (data:array), 
	    * 	data - ассоциативный массив с объектами профилей.
	    * 		data [uid ] = profile:Object
	    * 			profile.uid
	    * 			profile.nickname и т.д.
	    */
	    public function getProfiles(uids:Array,  cb:Function, fields:String = null):void{
	    	var AllFields:String = "uid,first_name,last_name,nickname,sex,bdate,city,country,timezone,photo,photo_medium,photo_big";
	    	if (fields !=null){
	    		AllFields = fields;
	    	}
	    	var params:Object = {method: 'getProfiles', uids: uids.join(','), fields: AllFields};
            this.execute(params, cb, onGetProfiles);
	    }
	    
	    // преобразование xml ответа: профили пользователей
	    private function onGetProfiles(data:XML, cb:Function):void {
	    	var q:Array = new Array();
	    	var uid:int;
	    	for each (var item:XML in data.user) 
			{ 
				var profile:Object = new Object();
				uid = Number(item.uid);
				for each (var field:XML in item.*) 
				{
					profile[field.name().toString()] = field.toString();	
				} 
				q[uid] = (profile);
			}
	    	if (cb != null) {
	    		cb(q);
	    	}
	    }
	    
	    public function getUserBalance(cb:Function):void{
	    	var params:Object = {method: 'getUserBalance'};
            this.execute(params, cb, onGetUserBalance);
	    }
	    
	    // преобразование xml ответа: Баланс
	    private function onGetUserBalance(data:XML, cb:Function):void {
	    	if (cb != null) {
	    		cb(Number(data.balance));
	    	}
	    }
	    
	    
	    /**
	    * *************************************
	    ***********	ФотограФии ****************
	    ***************************************
	    * 
	    * 
	    * 	getPhotoAlbums – возвращает список альбомов пользователя. 
			getPhotos – возвращает список фотографий в альбоме. 
			createPhotoAlbum – создает пустой альбом для фотографий. 
			getPhotosUploadServer – возвращает адрес сервера для загрузки фотографий. 
			savePhotos – сохраняет фотографии после успешной загрузки.
	    *  
	    */
	    
	    /**
	    * Получение информации о альбомах.
	    * 
	    * */
	    public function getPhotoAlbums(cb:Function, uid:int = 0, aids:String = null):void{
	    	var params:Object = {method: 'getPhotoAlbums'};
	    	if (uid != 0 )
	    		params.uid = uid;
	    	if (aids != null)
	    		params.aids = aids;
            this.execute(params, cb, onGetPhotoAlbums);
	    }
	    
	    // преобразование xml ответа: список альбомов
	    private function onGetPhotoAlbums(data:XML, cb:Function):void {
	    	var q:Array = new Array();
	    	var uid:int;
	    	for each (var item:XML in data.album) 
			{ 
				var profile:Object = new Object();
				for each (var field:XML in item.*) 
				{
					profile[field.name().toString()] = field.toString();
						
				} 
				q[item.aid] = (profile);
			}
	    	if (cb != null) {
	    		cb(q);
	    	}
	    }
	     /**
	    * Создание фото альбома. 
	    * title - название
	    * privacy: доступ 0 – друзья и друзья друзей, 1 – все пользователи, 2 – только друзья
	    * description: описание альбома 
	    * */
	    public function createPhotoAlbum(title:String, description:String,   privacy:int, cb:Function):void{
	    	var params:Object = {method: 'createPhotoAlbum', title: title, privacy: privacy, description: description};
            this.execute(params, cb, onCreatePhotoAlbum);
	    }
	    
	    // преобразование xml ответа: список альбомов
	    private function onCreatePhotoAlbum(data:XML, cb:Function):void {
			var profile:Object = new Object();
			
			for each (var field:XML in data.album.*) 
			{
				profile[field.name().toString()] = field.toString();
			}
	    	if (cb != null) {
	    		cb(profile);
	    	}
	    }
	    
	    
	    /**
	    * Получение фотографий.
	    * 
	    * */
	    public function getPhotos(cb:Function, uid:int, aid:int):void{
	    	var params:Object = {method: 'getPhotos', uid: uid, aid: aid};
            this.execute(params, cb, onGetPhotos);
	    }
	    
	    // преобразование xml ответа: список альбомов
	    private function onGetPhotos(data:XML, cb:Function):void {
	    	var q:Array = new Array();
	    	for each (var item:XML in data.photo) 
			{ 
				var profile:Object = new Object();
				for each (var field:XML in item.*) 
				{
					profile[field.name().toString()] = field.toString();
				} 
				q[item.pid] = (profile);
			}
	    	if (cb != null) {
	    		cb(q);
	    	}
	    }
	    
	    
	    
	    
	    
	    /**
	    * *************************************
	    ***********	Аудиозаписи ***************
	    *************************************** 
	    * 
	    * 
	    * 	getAudios – возвращает список аудиозаписей пользователя. 
			getAudioUploadServer – возвращает адрес сервера для загрузки аудиозаписей. 
			saveAudio – сохраняет аудиозаписи после успешной загрузки.
	    * 
	    */
	    
	    
	    
	    /**
	    * *************************************
	    ***********	Гео. объекты **************
	    ***************************************
	    * 
	    * 	getCities – возвращает информацию о городах по их id. 
			getCountries – возвращает информацию о странах по их id.
	    *  
	    */
	    
	    /**
	    * Получение  имен городов.
	    * 
	    * cids - id городов через за пятую, для которых надо олучить имена.
	    * 
	    * */
	    public function getCities(cids:String, cb:Function):void{
	    	var params:Object = {method: 'getCities', cids: cids};
            this.execute(params, cb, onGetCities);
	    }
	    
	    // преобразование xml ответа: города
	    private function onGetCities(data:XML, cb:Function):void {
	    	var q:Array = new Array();
	    	for each (var item:XML in data.city) 
			{ 
				var profile:Object = new Object();
				for each (var field:XML in item.*) 
				{
					profile[field.name().toString()] = field.toString();
				} 
				q[item.cid] = (profile);
			}
	    	if (cb != null) {
	    		cb(q);
	    	}
	    }
	    
	    /**
	    * Получение  имен стран.
	    * 
	    * cids - id стран через за пятую, для которых надо олучить имена.
	    * 
	    * */
	    public function getCountries(cids:String, cb:Function):void{
	    	var params:Object = {method: 'getCountries', cids: cids};
            this.execute(params, cb, onGetCountries);
	    }
	    
	     // преобразование xml ответа: страны
	    private function onGetCountries(data:XML, cb:Function):void {
	    	var q:Array = new Array();
	    	for each (var item:XML in data.country) 
			{ 
				var profile:Object = new Object();
				for each (var field:XML in item.*) 
				{
					profile[field.name().toString()] = field.toString();
				} 
				q[item.cid] = (profile);
			}
	    	if (cb != null) {
	    		cb(q);
	    	}
	    }
	    
	    /**
	    * **********************************************************************
	    ***********	Методы, требующие наличия стороннего сервера  **************
	    ************************************************************************
	    * 
	    * 	secure.sendNotification – отправляет уведомление пользователю. 
			secure.saveAppStatus – сохраняет строку статуса приложения для последующего вывода в общем списке приложений на странице пользоваетеля. 
			secure.getAppBalance – возвращает платежный баланс приложения. 
			secure.getBalance – возвращает баланс пользователя на счету приложения. 
			secure.addVotes – переводит голоса со счета приложения на счет пользователя. 
			secure.withdrawVotes – списывает голоса со счета пользователя на счет приложения. 
			secure.transferVotes – переводит голоса со счета одного пользователя на счет другого в рамках приложения. 
			secure.getTransactionsHistory – возвращает историю транзакций внутри приложения.
	    *  
	    */
	    
	    
	    /**
	    * *************************************
	    ***********	Другие методы *************
	    *************************************** 
	    * 
	    * 	getVariable – возвращает значение хранимой переменной. 
			getVariables – возвращает значения нескольких переменных. 
			putVariable – записывает значение переменной. 
			getHighScores – возвращает таблицу рекордов. 
			setUserScore – записывает результат текущего пользователя в таблицу рекордов. 
			getMessages – возвращает список очереди сообщений. 
			sendMessage – ставит сообщение в очередь. 
			getServerTime - возвращает текущее время.
			 
		Хранение переменных на сервере Вконтакте:
		  	global_vars	0–1023	Зависят только от api_id. Общие для всех экземпляров приложения. 
			user_vars	1024–2047	Зависят от api_id и user_id - id пользователя, запустившего приложение. У различных пользователей, запустивших данное приложение, будут свои копии этих переменных. Однако если один и тот же пользователь запустит сразу несколько копий одного и того же приложения, эти переменные у них будут общими. 
			session_vars	2048–3071	Зависят от api_id и session - целочисленного идентификатора сеанса (комнаты), передаваемого в параметре запроса session. Иначе говоря, в каждой комнате (сеансе) эти переменные свои. Один и тот же пользователь не может одновременно участвовать более чем в четырех сеансах. Пользователь считается подключившимся к сеансу, как только он совершил запрос с соответствующим параметром session. 
			instance_vars	3072–4095	Зависят от api_id, user_id и session.
	    * 
	    */
	    
	    
	    /**
	    * Вместе с getMessages использует встроенные переменные 2064, 3072, 2080-2207 для 
	    * организации простой циклической очереди сообщений, удобной, 
	    * например, для реализации полностью клиентского чата.
	    * */
	    public function sendMessage(message:String, cb:Function = null):void
	    {
            var params:Object = {method: 'sendMessage', message: message };
            this.execute(params, cb, RequestTrue);
	    }
	    
	    /**
	    * Вместе с sendMessage использует переменные 2064, 3072, 2080-2207 для 
	    * организации простой циклической очереди сообщений, удобной, 
	    * например, для реализации полностью клиентского чата.
	    * */
	    public function getMessages(cb:Function):void
	    {
            var params:Object = {method: 'getMessages' };
            this.execute(params, cb, onGetMessages);
	    }
	    
	    // преобразование xml ответа: Очередь сообщений
	    private function onGetMessages(data:XML, cb:Function):void {
	    	var q:Array = new Array();
	    	for each (var item:XML in data.message_info) 
			{ 
				var profile:Object = new Object();
				for each (var field:XML in item.*) 
				{
					profile[field.name().toString()] = field.toString();
				} 
				q.push(profile);
			}
			//q.sortOn("time",Array.NUMERIC );
	    	if (cb != null) {
	    		cb(q);
	    	}
	    }
	    
	    /**
	    * Возвращает значение переменной, номер которой задан в параметре key (0-4095).
	    * */
	    public function getVariable(key:int, cb:Function, uid:int = 0):void
	    {
	    	var params:Object = {method: 'getVariable', key: String(key)};
	    	if (uid > 0){
	    		params.user_id = uid;
	    	}
            this.execute(params, cb, onGetVariable);
	    }
	    
	    // преобразование xml ответа: Баланс
	    private function onGetVariable(data:XML, cb:Function):void {
	    	if (cb != null) {
	    		cb(data.toString());
	    	}
	    }
	
		/**
		 * Возвращает список значений диапазона переменных, 
		 * заданного с помощью входных параметров key (номер первой переменной) и count (число переменных). 
		 * Данный метод позволяет получить за один запрос до 32 переменных.
		 * */
		public function getVariables(key:int, count:int, cb:Function, uid:int = 0):void
	    {
	    	if (count > 32)
	    		count = 32;
	    	if (count < 1)
	    		count = 1;
	    	var params:Object = {method: 'getVariables', key: String(key), count: count};
	    	if (uid > 0){
	    		params.user_id = uid;
	    	}
            this.execute(params, cb, onGetVariables);
	    }
	    
	    // преобразование xml ответа: Баланс
	    private function onGetVariables(data:XML, cb:Function):void {
	    	var q:Array = new Array();
	    	for each (var item:XML in data.var_info) 
			{ 
				var profile:Object = new Object();
				for each (var field:XML in item.*) 
				{
					profile[field.name().toString()] = field.toString();
				} 
				q[item.key] = (profile);
			}
			q.sortOn("key",Array.NUMERIC );
	    	if (cb != null) {
	    		cb(q);
	    	}
	    }
	
		/**
		 * Cохранение переменной на сервер Вконтакте
		 * 
		 * */
	    public function putVariable(key:int, value:String, cb:Function):void
	    {
            var params:Object = {method: 'putVariable', key: String(key), value: value};
            this.execute(params, cb, RequestTrue);
	    }
	    
	    // преобразование xml ответа: Баланс
	    private function RequestTrue(data:XML, cb:Function):void {
	    	if (cb != null) {
	    		cb(true);
	    	}
	    }
	    
	     /**
	    * Вместе с getHighScores использует глобальные переменные 16, 17 и 32 .. 32+max_scores-1 
	    * для организации глобальной таблицы рекордов, что удобно для полностью клиентских приложений-игр. 
		* Функция setUserScore добавляет в таблицу результат текущего пользователя, 
		* переданный в параметре score. 
		* При этом новый результат добавляется в таблицу, 
		* а если она уже заполнена – вытесняет наименьший из имеющихся, если он меньше добавляемого.
	    * */
	    public function setUserScore(score:int, cb:Function = null):void
	    {
            var params:Object = {method: 'setUserScore', score: score};
            this.execute(params, cb, RequestTrue);
	    }
	    
	    /**
	    * Вместе с setUserScore использует глобальные переменные 16, 17 и 32 .. 32+max_scores-1 
	    * для организации глобальной таблицы рекордов, 
	    * что удобно для полностью клиентских приложений-игр.
	    * */
	    public function getHighScores(cb:Function):void
	    {
	    	var params:Object = {method: 'getHighScores'};
            this.execute(params, cb, onGetHighScores);
	    }
	    
	    // преобразование xml ответа: Рекорды
	    private function onGetHighScores(data:XML, cb:Function):void {
	    	var q:Array = new Array();
	    	for each (var item:XML in data.score_info) 
			{ 
				var profile:Object = new Object();
				for each (var field:XML in item.*) 
				{
					profile[field.name().toString()] = field.toString();
				} 
				q[item.user_id] = (profile);
			}
			q.sortOn("score",Array.NUMERIC | Array.DESCENDING );
	    	if (cb != null) {
	    		cb(q);
	    	}
	    }
	    
	    public function getServerTime(cb:Function):void
	    {
	    	this.getVariable(0, cb);
	    }
	    
	    
	    
	}
}

/*

Код ошибки	Описание
1	Unknown error occured. 
2	Application is disabled. Enable your application or use test mode. 
4	Incorrect signature. 
5	User authorization failed. 
6	Too many requests per second. 
500	Permission denied. You must enable votes processing in application settings.


*/

