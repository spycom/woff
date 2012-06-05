package data {
	import data.info_b;
	import data.text;
	
	import flash.display.*;
	import flash.events.*;
	import flash.net.*;
	

	public class vk_photo extends Sprite {
		
public var photo:Loader;		
public var uid_:Array;
private var sid:String;
public var footId_:int;
public var uids:String;
private var answer:XML;
private var user_photo:Loader;
public var user_name:Array;
private var woff_secret:String;

		public function vk_photo(viewer_id:int, uid:Array, woff_api_id:int, woff_secret_:String, sid_:String) {
			uid_ = uid;
			woff_secret = woff_secret_;
			sid = sid_;
			//var api_id:String = stage.loaderInfo.parameters.api_id;
		var api_id:int = woff_api_id;
		//var userID:String = stage.loaderInfo.parameters.user_id;
		//var viewer_id:String = stage.loaderInfo.parameters.viewer_id;
				
		//var uids:Array = uid;
		uids = uid[0] ;
		for (var ii:int = 1; ii < uid.length; ii++)
						uids = uids + ","+ uid[ii] ;
						
		//var api_secret:String = 'DuIP8H5HnE';
		var test_mode:Number = 0;
	
		var methodFromAPI = "getProfiles";
		
		var _sig:String = viewer_id + 'api_id='+api_id+'fields=photomethod='+methodFromAPI+'test_mode='+test_mode+'uids='+ uids +'v=3.0'+ woff_secret;
		var sig:String = MD5.encrypt(_sig); // используем метод hash класса md5 и получаем сигнатуру
		
		var request = new URLRequest("http://api.vkontakte.ru/api.php");
  		request.method = URLRequestMethod.POST;
  		
  		var v:URLVariables = new URLVariables();
  		v.api_id = api_id;
		v.v = "3.0"; // Версия АПИ
		v.method = methodFromAPI;
		v.uids = uids;
		v.test_mode = test_mode;
		v.sig = sig;
		v.fields = "photo";
		v.sid = sid;
	
   		request.data = v;
          
		var loader222:URLLoader = new URLLoader();
		loader222.dataFormat = URLLoaderDataFormat.TEXT;
		loader222.addEventListener(Event.COMPLETE, loadVkComplete);
		loader222.load(request);
		
		
			
		}
		public function loadVkComplete(e:Event):void {
	
			answer= new XML(e.target.data);
			answer.ignoreWhite = true;
			
			for (var i:int=0; i<answer.user.length(); i++) {
				
				var freq:int = new int(52*i);
				
			
			user_name = new Array();
			
			user_name[i] = new text(17, 10+freq, answer.user[i].first_name.text() + " " + answer.user[i].last_name.text(), "2");
			//var name:text = new text(72, 20+freq, answer, "2");
			//addChild(user_photo);
			user_name[i].addEventListener(MouseEvent.MOUSE_OVER, mouseOverEvent);
			user_name[i].addEventListener(MouseEvent.MOUSE_OUT, mouseOutEvent);
			user_name[i].setId(i);
			addChild(user_name[i]);
			
			
			var info:info_b = new info_b(answer.user[i].uid.text());
			//info.load(new URLRequest("http://high.dih.ru/high/img/img3/info.png"));
			
			info.x = 22;
			info.y = 30+freq;
			//info.addEventListener(MouseEvent.CLICK, infoHandler);
			addChild(info);
			
			
			}
			}
		
		public function mouseOverEvent(e:MouseEvent):void {
			var ii:int = e.currentTarget.id;
			user_photo = new Loader();
			user_photo.load(new URLRequest(answer.user[ii].photo.text()));
			user_photo.x = e.currentTarget.x + 130;
			user_photo.y = ii * 52;
			addChild(user_photo);
			
		}
		public function mouseOutEvent(e:MouseEvent):void {
			removeChild(user_photo);
		}
		public function clear():void {
			//for (var i:int=0; i<3; i++) {
				removeChild(user_name[1]);
			//}
		}
	}
	
}