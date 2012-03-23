package data {
	import flash.display.*;
	
	import flash.net.*;


	public class up_b extends Sprite {
		
public var up:Loader;		
public var footId:int;
public var footId_:int;
public var status:int;
public var role:int;

		public function up_b(zz:int) {
			
			footId = 0;
			footId_ = zz;
			
			//foot_id = footballer_id;
			//amplua = role;
			//position = field_place;
			up = new Loader();
			up.load(new URLRequest("http://62.76.177.54/woff_images/" + "img4/up.png"));
			addChild(up);
		}
		public function setId(id_:int):void {
			footId = id_;
		}
		public function setStatus(stat:int):void {
			status = stat;
		}
		public function setRole(role_:int):void {
			role = role_;
		}
	}
	
}