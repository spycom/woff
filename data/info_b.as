package data {
	
	import flash.display.*;
	import flash.events.MouseEvent;
	import flash.filters.BevelFilter;
	import flash.net.*;
	
public class info_b extends Sprite {
	
	private var uid:String;
	private var bevelFilter:BevelFilter;
	private var info;
	private var info_sprite:Sprite;
	//[Embed(source='/Users/Art/Dropbox/FF/img3/info.png')]
	[Embed(source='C:/Users/artem.akinchits/Dev/images/info.png')]
	private var info_bitmap:Class;

public function info_b(uid_:String) {

		uid = uid_;
			info = new info_bitmap();
			//info.load(new URLRequest("http://woff73.valuehost.ru/woff_images/img3/info.png"));
			info_sprite = new Sprite();
			info_sprite.addChild(info);
			
			info_sprite.addEventListener(MouseEvent.CLICK, infoHandler);
			info_sprite.addEventListener(MouseEvent.MOUSE_OVER, infoOver);
			info_sprite.addEventListener(MouseEvent.MOUSE_OUT, infoOut);
			addChild(info_sprite);
			
			bevelFilter = new BevelFilter();
			bevelFilter.distance = 2;
}		
public function infoHandler(e:MouseEvent):void {
	navigateToURL(new URLRequest("http://vkontakte.ru/id"+uid), "_blank");
	info.filters = [];
}

private function infoOver(e:MouseEvent):void {
	info.filters = [bevelFilter];
}
private function infoOut(e:MouseEvent):void {
	info.filters = [];
}
}
}