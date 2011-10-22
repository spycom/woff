package data {
	import flash.display.*;
	public class trophy_b extends Sprite {
		
public var trophy:Bitmap;		
public var teamId:int;
//private var bevelFilter:BevelFilter;
//[Embed(source='/Users/Art/Dropbox/FF/img3/sostav.png')]
[Embed(source='C:/Users/artem.akinchits/Dev/images/p.png')]
public var trophy_:Class;

		public function trophy_b() {
			
			teamId = 0;
			//foot_id = footballer_id;
			//amplua = role;
			//position = field_place;
			trophy = new trophy_();
			//sostav.addEventListener(MouseEvent.MOUSE_OVER, sostavOver);
			//sostav.addEventListener(MouseEvent.MOUSE_OUT, sostavOut);
			
			//sostav.load(new URLRequest("http://woff73.valuehost.ru/woff_images/" + "img3/sostav.png"));
			addChild(trophy);
			
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