package data {
	import flash.display.*;
	import flash.filters.BevelFilter;
	import flash.net.*;
	import flash.events.MouseEvent;

	public class sostav_b extends Sprite {
		
public var sostav:Loader;		
public var teamId:int;
private var bevelFilter:BevelFilter;

		public function sostav_b() {
			
			teamId = 0;
			//foot_id = footballer_id;
			//amplua = role;
			//position = field_place;
			sostav = new Loader();
			sostav.addEventListener(MouseEvent.MOUSE_OVER, sostavOver);
			sostav.addEventListener(MouseEvent.MOUSE_OUT, sostavOut);
			sostav.load(new URLRequest("http://woff73.valuehost.ru/woff_images/" + "img3/sostav.png"));
			addChild(sostav);
			
			bevelFilter = new BevelFilter();
			bevelFilter.distance = 2;
		}
		public function setId(id_:int):void {
			teamId = id_;
		}
		public function setStatus(stat:int):void {
			//status = stat;
		}
		
		private function sostavOver(e:MouseEvent):void {
			sostav.filters = [bevelFilter];
		}
		private function sostavOut(e:MouseEvent):void {
			sostav.filters = [];
		}
	}
	
}