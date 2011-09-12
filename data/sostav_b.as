package data {
	import flash.display.*;
	//import flash.events.MouseEvent;
	//import flash.filters.BevelFilter;
	//import flash.net.*;

	public class sostav_b extends Sprite {
		
public var sostav:Bitmap;		
public var teamId:int;
//private var bevelFilter:BevelFilter;
[Embed(source='/Users/Art/Dropbox/FF/img3/sostav.png')]
public var sostav_:Class;

		public function sostav_b() {
			
			teamId = 0;
			//foot_id = footballer_id;
			//amplua = role;
			//position = field_place;
			sostav = new sostav_();
			//sostav.addEventListener(MouseEvent.MOUSE_OVER, sostavOver);
			//sostav.addEventListener(MouseEvent.MOUSE_OUT, sostavOut);
			
			//sostav.load(new URLRequest("http://woff73.valuehost.ru/woff_images/" + "img3/sostav.png"));
			addChild(sostav);
			
			//bevelFilter = new BevelFilter();
			//bevelFilter.distance = 2;
			//sostav.filters = [bevelFilter];
		}
		public function setId(id_:int):void {
			teamId = id_;
		}
		public function setStatus(stat:int):void {
			//status = stat;
		}
		/*
		private function sostavOver(e:MouseEvent):void {
			sostav.filters = [bevelFilter];
			
		}
		private function sostavOut(e:MouseEvent):void {
			sostav.filters = [];
		}
		*/
	}
	
}