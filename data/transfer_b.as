package data {
	import flash.display.*;
	import flash.events.MouseEvent;
	import flash.net.*;


	public class transfer_b extends Sprite {
		
public var footman_replace;	
private var footman_replace_sprite:Sprite;
public var foot_id:int;
public var amplua:int;
public var position:int;
public var status:int;
[Embed(source='C:/Users/artem.akinchits/Dev/images/replace.png')]
private var footman_replace_bitmap:Class;

		public function transfer_b(footballer_id:int, role:int, field_place:int) {
			//var server:String = new String(stage.parent.serv);
			
			this.buttonMode = true;
			this.useHandCursor = true;
			
			status = 0;
			foot_id = footballer_id;
			amplua = role;
			position = field_place;
			footman_replace = new footman_replace_bitmap();
			//footman_replace.load(new URLRequest("http://woff73.valuehost.ru/woff_images/" + "img4/replace.png"));
			
			footman_replace_sprite = new Sprite();
			
			footman_replace_sprite.addEventListener(MouseEvent.MOUSE_OVER, replaceOverEvent);
			footman_replace_sprite.addEventListener(MouseEvent.MOUSE_OUT, replaceOutEvent);
			
			footman_replace_sprite.addChild(footman_replace);
			addChild(footman_replace_sprite);
			
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