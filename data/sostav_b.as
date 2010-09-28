package data {
	import flash.display.*;
	
	import flash.net.*;


	public class sostav_b extends Sprite {
		
public var sostav:Loader;		
public var teamId:int;


		public function sostav_b() {
			
			teamId = 0;
			//foot_id = footballer_id;
			//amplua = role;
			//position = field_place;
			sostav = new Loader();
			sostav.load(new URLRequest("http://woff73.valuehost.ru/woff_images/" + "img3/sostav.png"));
			addChild(sostav);
		}
		public function setId(id_:int):void {
			teamId = id_;
		}
		public function setStatus(stat:int):void {
			//status = stat;
		}
	}
	
}