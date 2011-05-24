package data{
	import flash.display.*;	
	import flash.net.*;
	import data.text;
	import flash.events.*;
	
	public class winners_list_sprite extends Sprite {
	
private var block:Loader;
private var logo:text;
private var text_array:Array;
public var uids:String;

		public function winners_list_sprite(viewer_id:int) {
		
		block = new Loader();
		block.load(new URLRequest("http://woff73.valuehost.ru/woff_images/img2/block.png"));
		block.x = 5;
		block.y = 95;
		
		logo = new text(240, 110, "ПОБЕДИТЕЛИ Чемпионата Испании", "3");
		
		text_array = new Array();
		
		text_array[0] = new text(260, 180, "1. Solid State - 1611.9 очков", "2");
		
		text_array[1] = new text(120, 250, "2. Мечта - 1607.6 очков", "2");
		text_array[2] = new text(275, 250, "3. -- no name -- - 1565.7 очков", "2");
		text_array[3] = new text(420, 250, "4. -- no name -- - 1526 очков", "2");
				
		text_array[4] = new text(100, 340, "5. Химнасия де Хухуй - 1462.1 очков", "2");
		text_array[5] = new text(280, 340, "6. Rebar - 1391.4 очков", "2");
		text_array[6] = new text(420, 340, "7. vav_ne - 1278.9 очков", "2");
		
		
		text_array[7] = new text(120, 430, "8. Barselona - 1130.4 очков", "2");
		text_array[8] = new text(280, 430, "9. Вавилон - 1127.6 очков", "2");
		text_array[9] = new text(420, 430, "10. Suares - 1104.8 очков", "2");
		
		addChild(block);
		addChild(logo);
			
			for (var n:int=0; n<=9; n++) {
				addChild(text_array[n]);
			}
			
		//var uid = "64416";
			//var api_id:String = stage.loaderInfo.parameters.api_id;
		var api_id:String = "1848099";
		//var userID:String = stage.loaderInfo.parameters.user_id;
		//var viewer_id:String = stage.loaderInfo.parameters.viewer_id;
				
		//var uids:Array = uid;
		uids = "12098,12613,172577,2488685,218476,20757,110757,69960818,3007376,24282273" ;
		//for (var ii:int = 1; ii < uid.length; ii++)
		//				uids = uids + ","+ uid[ii] ;
						
		var api_secret:String = 'DuIP8H5HnE';
		var test_mode:Number = 1;
	
		var methodFromAPI = "getProfiles";
		
		var _sig:String = viewer_id + 'api_id='+api_id+'fields=photomethod='+methodFromAPI+'test_mode='+test_mode+'uids='+ uids +'v=2.0'+ api_secret;
		var sig:String = MD5.encrypt(_sig); // используем метод hash класса md5 и получаем сигнатуру
		
		var request = new URLRequest("http://api.vkontakte.ru/api.php");
  		request.method = URLRequestMethod.POST;
  		
  		var v:URLVariables = new URLVariables();
  		v.api_id = api_id;
		v.v = "2.0"; // Версия АПИ
		v.method = methodFromAPI;
		v.uids = uids;
		v.test_mode = test_mode;
		v.sig = sig;
		v.fields = "photo";
	
   		request.data = v;
          
		var loader222:URLLoader = new URLLoader();
		loader222.dataFormat = URLLoaderDataFormat.TEXT;
		loader222.addEventListener(Event.COMPLETE, loadVkComplete);
		loader222.load(request);
		
		
			
		
		
		
		
		}
		public function loadVkComplete(e:Event):void {
	
			var answer= new XML(e.target.data);
			
			for (var i:int=0; i<answer.user.length(); i++) {
				
				var user_photo = new Loader();
				user_photo.load(new URLRequest(answer.user[i].photo.text()));
				if (i==0) {
				user_photo.x = 300;
				user_photo.y = 130;
				}
				if (i>0 && i<4) {
				user_photo.x = 150*i;
				user_photo.y = 200;
				}
				if (i>3 && i<7) {
				user_photo.x = 150*(i-3);
				user_photo.y = 290;
				}
				if (i>6 && i<10) {
				user_photo.x = 150*(i-6);
				user_photo.y = 380;
				}
				addChild(user_photo);
				
			}
		}
}
}