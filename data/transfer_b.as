package data {
	import flash.display.*;
	import flash.events.MouseEvent;
	import flash.net.*;


	public class transfer_b extends Sprite {
		
public var footman_replace:Loader;		
public var foot_id:int;
public var amplua:int;
public var position:int;
public var status:int;

		public function transfer_b(footballer_id:int, role:int, field_place:int) {
			//var server:String = new String(stage.parent.serv);
			
			this.buttonMode = true;
			this.useHandCursor = true;
			
			status = 0;
			foot_id = footballer_id;
			amplua = role;
			position = field_place;
			footman_replace = new Loader();
			footman_replace.load(new URLRequest("http://woff73.valuehost.ru/woff_images/" + "img4/replace.png"));
			footman_replace.addEventListener(MouseEvent.MOUSE_OVER, replaceOverEvent);
			footman_replace.addEventListener(MouseEvent.MOUSE_OUT, replaceOutEvent);
			
			addChild(footman_replace);
		}
		public function setId(id_:int):void {
			foot_id = id_;
		}
		public function setStatus(stat:int):void {
			status = stat;
		}
		public function setRole(role_:int):void {
			amplua = role_;
		}
		public function replaceOverEvent(e:MouseEvent):void {
			footman_replace.x += -1;
			footman_replace.y += -1;
			footman_replace.scaleX = 1.1;
			footman_replace.scaleY = 1.1;
		}
		public function replaceOutEvent(e:MouseEvent):void {
			footman_replace.x += 1;
			footman_replace.y += 1;
			footman_replace.scaleX = 1;
			footman_replace.scaleY = 1;
		}
	}
	
}