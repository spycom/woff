package data {
	import flash.display.*;
	import data.text;
	import flash.events.*;	
	import flash.net.*;
	import flash.filters.*;

	public class LeadersPartButton extends Sprite {
		
	public var page_button_sprite:Sprite;
	public var page_button:Loader;
	public var id:int;
	public var page_button_text:text;
	private var myBevel:BevelFilter;
	
		public function LeadersPartButton(number:int) {
			
			myBevel = new BevelFilter();
			myBevel.strength = 0.5;
			
			var serv:String = "http://62.76.177.54/woff_images/";
			id = number;
			page_button_sprite = new Sprite();
			page_button = new Loader();
		
		//for (var button=0; button < 6; button++) {
			//page_button[number] = new Loader();
			page_button.load(new URLRequest(serv + "img5/page.png"));
			//page_button[button].x = 10+button*34;
			//page_button[button].y = 115;
			//page_button[button].contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
			
			//page_button_sprite[button] = new Sprite();
			page_button_sprite.addEventListener(MouseEvent.MOUSE_OVER, page_buttonOvernEvent);
			page_button_sprite.addEventListener(MouseEvent.MOUSE_OUT, page_buttonOutEvent);
			
			page_button_sprite.addChild(page_button);
		//page1.addEventListener(MouseEvent.CLICK, dropdowm_menu3);
		
			//var page_button_text = new ();
				//for (var button_txt=0; button_txt < 6; button_txt++) {
				page_button_text = new text(10, 3, String(number+1), "2");
				//page_button_text[button_txt].setId(button_txt);
				page_button_text.addEventListener(MouseEvent.MOUSE_OVER, page_button_textOverEvent);
				//page_button_text[button_txt].addEventListener(MouseEvent.CLICK, page_button_textClickEvent);
				
				//page_button_text[button_txt].
			page_button_sprite.addChild(page_button_text);
			
			addChild(page_button_sprite);
		}
		public function page_buttonOvernEvent(e:MouseEvent):void {
			e.target.filters = [myBevel];
		}
		public function page_buttonOutEvent(e:MouseEvent):void {
			e.target.filters = [];
		}
		public function page_button_textOverEvent(e:MouseEvent):void {
			page_button.filters = [myBevel];
			
		}
		
	}
}