package data{
	import data.text;
	
	import flash.display.*;
	import flash.events.*;
	import flash.net.*;
	
	public class winners_list_sprite extends Sprite {
	
private var block:Loader;
private var logo:text;
private var text_array:Array;
public var uids:String;
private var uids_array:Array;
private var viewer_id:int;


		public function winners_list_sprite(viewer_id_:int) {
		
			viewer_id = viewer_id_;
		block = new Loader();
		block.load(new URLRequest("http://62.76.177.54/woff_images/img2/block.png"));
		block.x = 5;
		block.y = 95;
		
		logo = new text(240, 110, "ПОБЕДИТЕЛИ", "3");
		
		text_array = new Array();
		
		text_array[0] = new text(320, 180, "1.", "ads_well");
		
		text_array[1] = new text(160, 250, "2.", "ads_well");
		text_array[2] = new text(320, 250, "3.", "ads_well");
		text_array[3] = new text(470, 250, "4.", "ads_well");
				
		text_array[4] = new text(170, 340, "5.", "ads_well");
		text_array[5] = new text(320, 340, "6.", "ads_well");
		text_array[6] = new text(470, 340, "7.", "ads_well");
		
		
		text_array[7] = new text(170, 430, "8.", "ads_well");
		text_array[8] = new text(320, 430, "9.", "ads_well");
		text_array[9] = new text(470, 430, "10.", "ads_well");
		
		addChild(block);
		addChild(logo);
			
			for (var n:int=0; n<=9; n++) {
				addChild(text_array[n]);
			}
			
		}
						
		public function changePhotos(new_uids:Array):void {
			
		//var uid = "64416";
			//var api_id:String = stage.loaderInfo.parameters.api_id;
		var api_id:String = "1848099";
		//var userID:String = stage.loaderInfo.parameters.user_id;
		//var viewer_id:String = stage.loaderInfo.parameters.viewer_id;
				
		//var uids:Array = uid;
		//var uids = "12098,12613,172577,2488685,218476,20757,110757,69960818,3007376,24282273" ;
		var uids:String = new_uids.toString();
		//for (var ii:int = 1; ii < uid.length; ii++)
		//				uids = uids + ","+ uid[ii] ;
						
		var api_secret:String = "DuIP8H5HnE";
		var test_mode:Number = 0;
	
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
			
			logo.setText(answer);
			
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
		
		public function setScores(new_winner_list:Array):void {
			uids_array = new Array();
			
			for (var i:int=0; i<10; i++) {
				if (String(new_winner_list[i].team_title) == "") {
					text_array[i].setText(i+1 +". -- no name -- - " + new_winner_list[i].score/10);
				} else {
					text_array[i].setText(i+1 +". " + new_winner_list[i].team_title + " - " + new_winner_list[i].score/10);
				}
				
				uids_array.push(new_winner_list[i].id_vk);
				
			}
			
			changePhotos(uids_array);
		}
		
		public function setChamp(new_champ:String):void {
			switch (new_champ) {
				case "rus": 
						logo.setText("ПОБЕДИТЕЛИ Чемпионата России");
					break;
				case "eng": 
					logo.setText("ПОБЕДИТЕЛИ Чемпионата Англии");
					break;
				case "isp": 
					logo.setText("ПОБЕДИТЕЛИ Чемпионата Испании");
					break;
				case "ita": 
					logo.setText("ПОБЕДИТЕЛИ Чемпионата Италии");
					break;
				case "lch": 
					logo.setText("ПОБЕДИТЕЛИ Чемпионата Лиги Чемпионов");
					break;
				case "eup": 
					logo.setText("ПОБЕДИТЕЛИ Чемпионата Евротурнира");
					break;
				
			}
		}
}
}