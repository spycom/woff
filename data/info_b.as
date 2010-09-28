package data {
	
	import flash.display.*;
	import flash.net.*;
	import flash.events.*;

	public class info_b extends Sprite {
	
	private var uid:String;
	
public function info_b(uid_:String) {

		uid = uid_;
			var info:Loader = new Loader();
			info.load(new URLRequest("http://woff73.valuehost.ru/woff_images/img3/info.png"));
			info.addEventListener(MouseEvent.CLICK, infoHandler);
			addChild(info);
}		
public function infoHandler(e:MouseEvent):void {
	navigateToURL(new URLRequest("http://vkontakte.ru/id"+uid), "_blank");
}
}
}