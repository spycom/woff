package data {
	import flash.display.*;
	import flash.events.MouseEvent;
	import flash.net.*;


	public class down_b extends Sprite {
		
public var down:Loader;		
public var footId:int;
public var footId_:int;

		public function down_b(zz:int) {
			
			this.buttonMode = true;
			this.useHandCursor = true;
			
			footId = 0; // айдишник игрока
			footId_ = zz; // номер на поле
			
			//foot_id = footballer_id;
			//amplua = role;
			//position = field_place;
			down = new Loader();
			down.load(new URLRequest("http://62.76.177.54/woff_images/" + "img4/down.png"));
			down.addEventListener(MouseEvent.MOUSE_OVER, downOverEvent);
			down.addEventListener(MouseEvent.MOUSE_OUT, downOutEvent);
			
			addChild(down);
		}
		public function setId(id_:int):void {
			footId = id_;
		}
		public function setStatus(stat:int):void {
			//status = stat;
		}
		
		public function downOverEvent(e:MouseEvent):void {
			down.x += -1;
			down.y += -1;
			down.scaleX = 1.1;
			down.scaleY = 1.1;
		}
		public function downOutEvent(e:MouseEvent):void {
			down.x += 1;
			down.y += 1;
			down.scaleX = 1;
			down.scaleY = 1;
		}
	}
	
}