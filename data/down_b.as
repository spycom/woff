package data {
	import flash.display.*;
	
	import flash.net.*;


	public class down_b extends Sprite {
		
public var down:Loader;		
public var footId:int;
public var footId_:int;

		public function down_b(zz:int) {
			
			footId = 0; // айдишник игрока
			footId_ = zz; // номер на поле
			
			//foot_id = footballer_id;
			//amplua = role;
			//position = field_place;
			down = new Loader();
			down.load(new URLRequest("http://woff73.valuehost.ru/woff_images/" + "img4/down.png"));
			addChild(down);
		}
		public function setId(id_:int):void {
			footId = id_;
		}
		public function setStatus(stat:int):void {
			//status = stat;
		}
	}
	
}