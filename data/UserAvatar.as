package data
{
	import flash.display.*;
	import flash.events.*;
	import flash.net.*;
	import data.text;
	
	public class UserAvatar extends Sprite
	{
		private var answer:XML;
		
		public function UserAvatar(viewer_id:int)
		{
			var api_id:String = "1848099";
			//var userID:String = stage.loaderInfo.parameters.user_id;
			//var viewer_id:String = stage.loaderInfo.parameters.viewer_id;
			
			//var uids:Array = uid;
			//uids = viewer_id ;
			
			//for (var ii:int = 1; ii < uid.length; ii++)
				//uids = uids + ","+ uid[ii] ;
			
			var api_secret:String = 'DuIP8H5HnE';
			var test_mode:Number = 1;
			
			var methodFromAPI = "getProfiles";
			
			var _sig:String = viewer_id + 'api_id='+api_id+'fields=photo_medium_recmethod='+methodFromAPI+'test_mode='+test_mode+'uids='+ viewer_id +'v=2.0'+ api_secret;
			var sig:String = MD5.encrypt(_sig); // используем метод hash класса md5 и получаем сигнатуру
			
			var request = new URLRequest("http://api.vkontakte.ru/api.php");
			request.method = URLRequestMethod.POST;
			
			var v:URLVariables = new URLVariables();
			v.api_id = api_id;
			v.v = "2.0"; // Версия АПИ
			v.method = methodFromAPI;
			v.uids = viewer_id;
			v.test_mode = test_mode;
			v.sig = sig;
			v.fields = "photo_medium_rec";
			
			request.data = v;
			
			var loader222:URLLoader = new URLLoader();
			loader222.dataFormat = URLLoaderDataFormat.TEXT;
			loader222.addEventListener(Event.COMPLETE, loadVkComplete);
			loader222.load(request);
			
			
			
		}
		
		public function loadVkComplete(e:Event):void {
			
			answer= new XML(e.target.data);
			//answer.ignoreWhite = true;
			var user_photo = new Loader();
			user_photo.load(new URLRequest(answer.user[0].photo_medium_rec.text()));
			user_photo.x = 232;
			user_photo.y = 136;
			user_photo.scaleX = 0.8;
			user_photo.scaleY = 0.8;
			addChild(user_photo);
			
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
		
		}
	
	
}