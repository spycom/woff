package data {
	import flash.display.*;
	
	import flash.net.*;


	public class transfer_b extends Sprite {
		
public var footman_replace:Loader;		
public var foot_id:int;
public var amplua:int;
public var position:int;
public var status:int;

		public function transfer_b(footballer_id:int, role:int, field_place:int) {
			//var server:String = new String(stage.parent.serv);
			status = 0;
			foot_id = footballer_id;
			amplua = role;
			position = field_place;
			footman_replace = new Loader();
			footman_replace.load(new URLRequest("http://woff73.valuehost.ru/woff_images/" + "img4/replace.png"));
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
	}
	
}