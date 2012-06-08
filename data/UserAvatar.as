package data
{
	import data.text;
	
	import flash.display.*;
	import flash.events.*;
	import flash.net.*;
	import flash.system.LoaderContext;
	
	public class UserAvatar extends Sprite
	{
		private var answer:XML;
		
		public function UserAvatar(params:Object)
		{
			var api_id:String = params.api_id;
			var viewer_id:String = params.viewer_id;
			var version:String = params.version;
			var sid = params.sid;
			var api_secret:String = params.api_secret;
			var test_mode:Number = params.test_mode;
			
			var methodFromAPI = "getProfiles";
			
			var _sig:String = viewer_id + 'api_id='+api_id+'fields=photo_medium_recmethod='+methodFromAPI+'test_mode='+test_mode+'uids='+ viewer_id +'v='+version + api_secret;
			var sig:String = MD5.encrypt(_sig); // используем метод hash класса md5 и получаем сигнатуру
			
			var request = new URLRequest("http://api.vkontakte.ru/api.php");
			request.method = URLRequestMethod.GET;
			
			var v:URLVariables = new URLVariables();
			v.api_id = api_id;
			v.v = version; // Версия АПИ
			v.method = methodFromAPI;
			v.uids = viewer_id;
			v.test_mode = test_mode;
			v.sig = sig;
			v.fields = "photo_medium_rec";
			v.sid = sid;
			
			request.data = v;
			
			var loader222:URLLoader = new URLLoader();
			loader222.dataFormat = URLLoaderDataFormat.TEXT;
			loader222.addEventListener(Event.COMPLETE, loadVkComplete);
			loader222.load(request);
			
			
			
		}
		
		public function loadVkComplete(e:Event):void {
			
			answer= new XML(e.target.data);
			//answer.ignoreWhite = true;
			var user_photo_loader = new Loader();
			user_photo_loader.load(new URLRequest(answer.user[0].photo_medium_rec.text()), new LoaderContext(true));
			user_photo_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, photoComplete);
			
			
			//for (var i:int=0; i<answer.user.length(); i++) {
				
				//var freq:int = new int(52*i);
				
				
				var user_name = new text(332, 150, answer.user[0].first_name.text() + " " + answer.user[0].last_name.text(), "2");
				
				//user_name[0] = new text(17, 10+freq, answer.user[i].first_name.text() + " " + answer.user[i].last_name.text(), "2");
				//var name:text = new text(72, 20+freq, answer, "2");
				//addChild(user_photo);
				//user_name[0].addEventListener(MouseEvent.MOUSE_OVER, mouseOverEvent);
				//user_name[0].addEventListener(MouseEvent.MOUSE_OUT, mouseOutEvent);
				//user_name[0].setId(i);
				addChild(user_name);
				
				
				//var info:info_b = new info_b(answer.user[i].uid.text());
				//info.load(new URLRequest("http://high.dih.ru/high/img/img3/info.png"));
				
				//info.x = 22;
				//info.y = 30+freq;
				//info.addEventListener(MouseEvent.CLICK, infoHandler);
				//addChild(info);
				
				
			}
			
			private function photoComplete(e:Event):void {
				var user_photo = new Bitmap();
				user_photo = Bitmap(e.currentTarget.content);
				user_photo.smoothing = true;
				user_photo.x = 232;
				user_photo.y = 136;
				user_photo.scaleX = 0.8;
				user_photo.scaleY = 0.8;
				addChild(user_photo);
			}
		
		}
	
	
}