package data {
	import com.adobe.serialization.json.JSON;
	
	import flash.display.*;
	import flash.events.*;
	import flash.filters.*;
	import flash.geom.Matrix;
	import flash.net.*;
	import flash.system.*;
	import flash.utils.*;
	
	public class SaveOffer extends Sprite {
	
private var SaveOfferSprite:Sprite;
private var myShadow:DropShadowFilter;
private var myGlow:GlowFilter;
private var myBevel:BevelFilter;
private var buyBudgetFon:Sprite;
private var WelldoneText:text;
private var WelcomeText:text;
private var SaveToLocalButton:Sprite;
private var SaveToLocalText:text;
private var SaveToVkButton:Sprite;
private var SaveToVklText:text;
private var SaveCloseText:text;
private var brr:ByteArray;
private var fil:FileReference;
private var viewer_id:int;
private var api_id:int;
private var api_secret:String;
private var champ:String;
private var request:URLRequest;
private var loader:URLLoader;
private var request2:URLRequest;
private var loader2:URLLoader;
//private var aid:String;
public var wrapper: Object;


		public function SaveOffer(brr_income:ByteArray, viewer_id_:int, api_id_:int, api_secret_:String, wrapper_:Object, champ_:String) {
			wrapper = wrapper_;
			//api_id = 1848099;
			//aid = "16470824_120962438";
			//aid = "64416_8236384";
			champ = champ_;
			
			brr = brr_income;
			viewer_id = viewer_id_;
			api_id = api_id_;
			api_secret = api_secret_;
			
			myShadow = new DropShadowFilter();
			myShadow.inner = true;
			myShadow.distance = 2;
			
			myGlow = new GlowFilter();
			myGlow.color = 0x339900;
			myGlow.inner = true;
			myGlow.strength = 8;
			
			myBevel = new BevelFilter();
			myBevel.angle = 90;
			
			
			SaveOfferSprite = new Sprite();
			SaveOfferSprite.x = 90;
			SaveOfferSprite.y = 260;
			//SaveOfferSprite.filters = [myShadow___, myBevel];
		
			var SaveBackground:Loader = new Loader();
			SaveBackground.load(new URLRequest("http://dl.dropbox.com/u/6044249/tits2.jpg"));
			SaveBackground.x = -70;
			SaveBackground.y = -180;
			
			var fillType:String = GradientType.RADIAL;
			//var colors:Array = [0x999999, 0xFFFFFF]; //999999
			var colors:Array = [0xffffFF, 0xE8E8E8];
			var alphas:Array = [0.8, 1];
			var ratios:Array = [0, 250];
			var matr:Matrix = new Matrix();
			matr.createGradientBox(446, 400, 0, 0, 0);
			//matr.cr
			
			var spreadMethod:String = SpreadMethod.PAD;
			
					buyBudgetFon = new Sprite();

			//WelcomeMsgFon = new Sprite();
			buyBudgetFon.graphics.beginGradientFill(fillType, colors, alphas, ratios, matr, spreadMethod);
			
			//buyBudgetFon.graphics.beginFill(0xFFFFFF,1);
			buyBudgetFon.graphics.lineStyle(2, 0x999999);
			buyBudgetFon.graphics.drawRoundRect(0, 0, 446, 219, 30);
			buyBudgetFon.addEventListener(MouseEvent.CLICK, SaveOfferClose);
			buyBudgetFon.filters = [myBevel];
			
			WelldoneText = new text(10, 6, "	Поздравляем, Ваша команда полностью укомплектована и сменила статус на ДОПУЩЕНА! По результатам реальных игр Вам будут начислены очки.", "save_offer2");
			
		WelcomeText = new text(70, 110, "Хотите сохранить фотографию поля?", "save_offer2");
		
			//SaveToVklText.addEventListener(MouseEvent.CLICK, SaveOfferClose);
			
		/*
		SaveToLocalButton = new Sprite();
		SaveToLocalButton.graphics.beginFill(0xFFFFFF,1);
		SaveToLocalButton.graphics.lineStyle(1, 0x999999);
		SaveToLocalButton.graphics.drawRoundRect(72, 139, 300, 19, 20);
		SaveToLocalButton.filters = [myShadow];
		
		SaveToLocalText = new text(220, 135, "Сохранить на локальный компьютер", "save_offer");
			SaveToLocalText.addEventListener(MouseEvent.CLICK, SaveToLocalClick);
			SaveToLocalText.addEventListener(MouseEvent.MOUSE_OVER, SaveToLocalOver);
			SaveToLocalText.addEventListener(MouseEvent.MOUSE_OUT, SaveToLocalOut);
		*/
		
		SaveToVkButton = new Sprite();
		SaveToVkButton.graphics.beginFill(0xFFFFFF,1);
		SaveToVkButton.graphics.lineStyle(1, 0x999999);
		//SaveToVkButton.graphics.drawRoundRect(130, 160, 185, 19, 20);
		SaveToVkButton.graphics.drawRoundRect(72, 155, 300, 23, 23);
			SaveToVkButton.filters = [myShadow];
			SaveToVkButton.addEventListener(MouseEvent.CLICK, doIt);
			SaveToVkButton.addEventListener(MouseEvent.MOUSE_OVER, SaveToVkOver);
			SaveToVkButton.addEventListener(MouseEvent.MOUSE_OUT, SaveToVkOut);
			
		SaveToVklText = new text(220, 154, "Сохранить ВКонтакте", "save_offer");
			SaveToVklText.addEventListener(MouseEvent.CLICK, doIt);
			SaveToVklText.addEventListener(MouseEvent.MOUSE_OVER, SaveToVkOver);
			SaveToVklText.addEventListener(MouseEvent.MOUSE_OUT, SaveToVkOut);
		
		SaveCloseText = new text(220, 183, "ЗАКРЫТЬ ОКНО", "save_offer");
			SaveCloseText.addEventListener(MouseEvent.CLICK, SaveOfferClose);
			SaveCloseText.addEventListener(MouseEvent.MOUSE_OVER, SaveCloseOver);
			SaveCloseText.addEventListener(MouseEvent.MOUSE_OUT, SaveCloseOut);
			
		SaveOfferSprite.addChild(SaveBackground);
		SaveOfferSprite.addChild(buyBudgetFon);
		SaveOfferSprite.addChild(WelldoneText);
		SaveOfferSprite.addChild(WelcomeText);
		//SaveOfferSprite.addChild(SaveToLocalButton);
		//SaveOfferSprite.addChild(SaveToLocalText);
		SaveOfferSprite.addChild(SaveToVkButton);
		SaveOfferSprite.addChild(SaveToVklText);
		SaveOfferSprite.addChild(SaveCloseText);
			addChild(SaveOfferSprite);
		
		getUploadServer();
		
		//getUploadServerPhotos();
		}
		
		public function SaveOfferClose(e:MouseEvent):void {
			removeChild(SaveOfferSprite);
		}
		
		public function SaveToLocalClick(e:MouseEvent):void {
			fil = new FileReference();
			fil.save(brr, "FantasyTeam.png");
			removeChild(SaveOfferSprite);
		}
		public function SaveToLocalOver(e:MouseEvent):void {
			SaveToLocalButton.filters = [myGlow, myShadow];
		}
		public function SaveToLocalOut(e:MouseEvent):void {
			SaveToLocalButton.filters = [myShadow];
		}
		public function SaveCloseOver(e:MouseEvent):void {
			SaveCloseText.filters = [myGlow];
		}
		public function SaveCloseOut(e:MouseEvent):void {
			SaveCloseText.filters = [];
		}
		public function SaveToVkOver(e:MouseEvent):void {
			SaveToVkButton.filters = [myGlow, myShadow];
		}
		public function SaveToVkOut(e:MouseEvent):void {
			SaveToVkButton.filters = [myShadow];
		}
		public function getUploadServer():void {
			
			var test_mode:Number = 0;
	
			var methodFromAPI = "photos.getWallUploadServer";
		
			var _sig:String =viewer_id + 'api_id='+api_id+'method='+methodFromAPI+'test_mode='+test_mode+'v=2.0'+ api_secret;
			var sig:String = MD5.encrypt(_sig); // используем метод hash класса md5 и получаем сигнатуру
		
			var request = new URLRequest("http://api.vkontakte.ru/api.php");
  			request.method = URLRequestMethod.GET;
  		
  			var v:URLVariables = new URLVariables();
  			v.api_id = api_id;
			v.v = "2.0"; // Версия АПИ
			v.method = methodFromAPI;
			//v.uids = viewer_id;
			v.test_mode = test_mode;
			v.sig = sig;
			//v.fields = "photo_big";
	
   			request.data = v;
          
			var loader222:URLLoader = new URLLoader();
			loader222.dataFormat = URLLoaderDataFormat.TEXT;
			loader222.addEventListener(Event.COMPLETE, loadUploadServerComplete);
			loader222.load(request);
		}
		/*
		public function getUploadServerPhotos():void {
			Security.allowDomain("*");
			
			var test_mode:Number = 0;
	
			var methodFromAPI = "photos.getUploadServer";
		
			var _sig:String =viewer_id + 'aid='+ aid +'api_id='+api_id+'method='+methodFromAPI+'test_mode='+test_mode+'v=2.0'+ api_secret;
			var sig:String = MD5.encrypt(_sig); // используем метод hash класса md5 и получаем сигнатуру
		
			var request = new URLRequest("http://api.vkontakte.ru/api.php");
  			request.method = URLRequestMethod.GET;
  		
  			var v:URLVariables = new URLVariables();
  			v.api_id = api_id;
			v.v = "2.0"; // Версия АПИ
			v.method = methodFromAPI;
			//v.uids = viewer_id;
			v.test_mode = test_mode;
			v.sig = sig;
			v.aid = aid;
			//v.fields = "photo_big";
	
   			request.data = v;
          
			var loader222:URLLoader = new URLLoader();
			loader222.dataFormat = URLLoaderDataFormat.TEXT;
			loader222.addEventListener(Event.COMPLETE, loadUploadServerPhotoComplete);
			loader222.load(request);
		}
		*/
		
		private function loadUploadServerComplete(e:Event):void {
			//SaveCloseText.setText(e.target.data);
			SaveCloseText.setColor('FF0000');
			
			var answer= new XML(e.target.data);
			//save_text.setText("server load");
			
			/*var raw:BitmapData = new BitmapData(stage.width, stage.height);
				raw.draw(stage);
				
			var newPhoto:BitmapData = new BitmapData(200, 500);
				newPhoto.copyPixels(raw, new Rectangle(30, 35, 200, 500), new Point(0, 0));
			
      		var brr:ByteArray = PNGEncoder.encode(newPhoto);
      		 * 
      		 */
      		
      		var boundary:String = "blablabla-spycom";
			var header1:* = "\r\n--" + boundary + "\r\n" + "Content-Disposition: form-data; name=\"photo\"; filename=\"photo.png\"\r\n" + "Content-Type: image/png\r\n\r\n" + "";
			var header2:* = "--" + boundary + "\r\n" + "Content-Disposition: form-data; name=\"Upload\"\r\n\r\n" + "Submit Query\r\n" + "--" + boundary + "--";
			var headerBytes1:* = new ByteArray();
				headerBytes1.writeMultiByte(header1, "ascii");
			var headerBytes2:* = new ByteArray();
				headerBytes2.writeMultiByte(header2, "ascii");
			
			
			
			var sendBytes:ByteArray = new ByteArray();
			sendBytes.writeBytes(headerBytes1, 0, headerBytes1.length);
			sendBytes.writeBytes(brr, 0, brr.length);
			sendBytes.writeBytes(headerBytes2, 0, headerBytes2.length);
			
			
			
      		//var api_id:String = "1955614";
		//var viewer_id = stage.loaderInfo.parameters.viewer_id;
		//var api_secret:String = 'kMqXujL3CT';
			var test_mode:Number = 1;
			
			request = new URLRequest(answer.upload_url.text());
  			request.method = URLRequestMethod.POST;
  			request.contentType = "multipart/form-data; boundary=" + "blablabla-spycom";
   			request.data = sendBytes;
   		
   		//save_text.setText("wtf!!!!");
         
			loader = new URLLoader();
			//loader222.dataFormat = URLLoaderDataFormat.BINARY;
			loader.addEventListener(Event.COMPLETE, loadPhotoComplete);
			//loader222.load(request);
			//doit(null);
		
		}
		private function loadUploadServerPhotoComplete(e:Event):void {
			//SaveCloseText.setText(e.target.data);
			
			var answer= new XML(e.target.data);
			
      		
      		var boundary:String = "blablabla-spycom";
			var header1:* = "\r\n--" + boundary + "\r\n" + "Content-Disposition: form-data; name=\"file1\"; filename=\"photo.png\"\r\n" + "Content-Type: image/png\r\n\r\n" + "";
			var header2:* = "--" + boundary + "\r\n" + "Content-Disposition: form-data; name=\"Upload\"\r\n\r\n" + "Submit Query\r\n" + "--" + boundary + "--";
			var headerBytes1:* = new ByteArray();
				headerBytes1.writeMultiByte(header1, "ascii");
			var headerBytes2:* = new ByteArray();
				headerBytes2.writeMultiByte(header2, "ascii");
			
			
			
			var sendBytes:ByteArray = new ByteArray();
			sendBytes.writeBytes(headerBytes1, 0, headerBytes1.length);
			sendBytes.writeBytes(brr, 0, brr.length);
			sendBytes.writeBytes(headerBytes2, 0, headerBytes2.length);
			
			
			
      		//var api_id:String = "1955614";
		//var viewer_id = stage.loaderInfo.parameters.viewer_id;
		//var api_secret:String = 'kMqXujL3CT';
			var test_mode:Number = 1;
			
			request2 = new URLRequest(answer.upload_url.text());
  			request2.method = URLRequestMethod.POST;
  			request2.contentType = "multipart/form-data; boundary=" + "blablabla-spycom";
   			request2.data = sendBytes;
   		
   		//save_text.setText("wtf!!!!");
         
			//loader2 = new URLLoader();
			//loader222.dataFormat = URLLoaderDataFormat.BINARY;
			//loader2.addEventListener(Event.COMPLETE, loadAlbumPhotoComplete);
			//loader222.load(request);
			//doit(null);
		
		}
		private function doIt(e:MouseEvent):void {
			loader.load(request);
			//loader2.load(request2);
			//SaveCloseText.setText('mouse clicked');
			removeChild(SaveOfferSprite);
		}
		private function loadPhotoComplete(e:Event):void {
			var json_data:Object=JSON.decode(e.target.data);
			
			//SaveCloseText.setText("loadPhotoComplete");
			
			var test_mode:Number = 0;
		
			var methodFromAPI = "photos.saveWallPhoto";
			
			var wall_message:String = new String();
			if (champ == "rus")
				wall_message = "Чемпионатe России";
			if (champ == "eng")
				wall_message = "Чемпионате Англии";
			if (champ == "isp")
				wall_message = "Чемпионате Ипании";
			if (champ == "ita")
				wall_message = "Чемпионате Италии";
			if (champ == "chlig")
				wall_message = "Лиге Чемпионов";
					
			var message:String = new String("собрал команду в World of Fantasy Fooball в " + wall_message + " http://vkontakte.ru/fantasyfootball");
			
			var _sig:String = viewer_id + 'api_id='+api_id+'hash='+json_data.hash+'message='+message+'method='+methodFromAPI+'photo='+json_data.photo+'server='+json_data.server+'test_mode='+test_mode+'v=2.0'+'wall_id='+viewer_id + api_secret;
			var sig:String = MD5.encrypt(_sig); // используем метод hash класса md5 и получаем сигнатуру
		
			var request = new URLRequest("http://api.vkontakte.ru/api.php");
  			request.method = URLRequestMethod.POST;
  		
  			var v:URLVariables = new URLVariables();
  			v.api_id = api_id;
			v.v = "2.0"; // Версия АПИ
			v.method = methodFromAPI;
			//v.uids = viewer_id;
			v.test_mode = test_mode;
			v.sig = sig;
  			v.server = json_data.server;
			v.photo = json_data.photo;
			v.hash = json_data.hash;
			v.wall_id = viewer_id;
			v.message = message;
			
   			request.data = v;
          
			var loader222:URLLoader = new URLLoader();
			//loader222.dataFormat = URLLoaderDataFormat.TEXT;
			loader222.addEventListener(Event.COMPLETE, loadHashComplete);
			loader222.load(request);
			//SaveCloseText.setText('wtf');
			
		}
		
		private function loadWallPhotoComplete(e:Event):void {
			//var json_data:Object=JSON.decode(e.target.data);
			
			//SaveCloseText.setText(e.target.data);
			var answer= new XML(e.target.data);
			
			var test_mode:Number = 0;
		
			var methodFromAPI = "wall.post";
			
			
			var wall_message:String = new String();
			if (champ == "rus")
				wall_message = "Чемпионатe России";
			if (champ == "eng")
				wall_message = "Чемпионате Англии";
			if (champ == "isp")
				wall_message = "Чемпионате Ипании";
			if (champ == "ita")
				wall_message = "Чемпионате Италии";
			if (champ == "chlig")
				wall_message = "Лиге Чемпионов";
			
			var message:String = new String("собрал команду в World of Fantasy Fooball в " + wall_message + " http://vkontakte.ru/app1848099");
			var attachment:String = new String(answer.photo.id.text());
			
			var _sig:String = viewer_id + 'api_id='+api_id+'attachment='+attachment+'message='+message+'method='+methodFromAPI+'test_mode='+test_mode+'v=2.0' + api_secret;
			var sig:String = MD5.encrypt(_sig); // используем метод hash класса md5 и получаем сигнатуру
		
			var request = new URLRequest("http://api.vkontakte.ru/api.php");
  			request.method = URLRequestMethod.POST;
  		
  			var v:URLVariables = new URLVariables();
  			v.api_id = api_id;
			v.v = "2.0"; // Версия АПИ
			v.method = methodFromAPI;
			//v.uids = viewer_id;
			v.test_mode = test_mode;
			v.sig = sig;
  			//v.server = json_data.server;
			//v.photo = json_data.photos_list;
			v.attachment = attachment;
			//v.aid = aid;
			v.message = message;
			
   			request.data = v;
          
			var loader222:URLLoader = new URLLoader();
			//loader222.dataFormat = URLLoaderDataFormat.TEXT;
			loader222.addEventListener(Event.COMPLETE, loadHashComplete);
			loader222.load(request);
			//SaveCloseText.setText(attachment);
			
		}
		private function  loadHashComplete(e:Event):void {
			//SaveCloseText.setText(e.target.data);
			
			var answer= new XML(e.target.data);
			
			var wall_message:String = new String();
			if (champ == "rus")
				wall_message = "Чемпионатe России";
			if (champ == "eng")
				wall_message = "Чемпионате Англии";
			if (champ == "isp")
				wall_message = "Чемпионате Ипании";
			if (champ == "ita")
				wall_message = "Чемпионате Италии";
			if (champ == "chlig")
				wall_message = "Лиге Чемпионов";
			
			var message:String = new String("собрал команду в World of Fantasy Fooball в " + wall_message + " http://vkontakte.ru/app1848099");
			var attachment:String = new String(answer.photo.id.text());
			
			//save_text.setText(answer);
			wrapper.external.api('wall.post', {message: message, attachment:attachment}, loadPhotoHashComplete);
			//SaveCloseText.setText('wtf?!?!?!??!');
		}
		private function  loadPhotoHashComplete(e:Event):void {
			//SaveCloseText.setText(e.target.data);
			
			var answer= new XML(e.target.data);
			
			//save_text.setText(answer);
			//wrapper.external.saveWallPost(answer.post_hash.text());
		}
	}
}