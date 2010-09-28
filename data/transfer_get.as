package data {
	import flash.display.*;
	
	import flash.net.*;


	public class transfer_get extends Sprite {
		
public var footman_buy:Loader;		
public var id1:int;
public var id2:int;
public var status:int;

		public function transfer_get() {
			
			
			var tr_buy:text = new text(7, 0, "купить", "4");
			
			footman_buy = new Loader();
			footman_buy.load(new URLRequest("http://woff73.valuehost.ru/woff_images/" + "img10/buy.png"));
			footman_buy.y = 2;
			addChild(footman_buy);
			addChild(tr_buy);
			
		}
		public function setId1(id1_:int):void {
			id1 = id1_;
		}
		public function setId2(id2_:int):void {
			id2 = id2_;
		}
		public function setStatus(stat:int):void {
			status = stat;
		}
	}
	
}