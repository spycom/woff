package data {
	import flash.display.*;
	import data.text;
	import flash.events.*;	
	
	public class Version extends Sprite {

		private var top:text = new text(0,0,"","2");
		
		public function Version(menu_x:int,menu_y:int) {
			
		
		// -------------------ВЕРСИЯ----------------------
		
					top.setText("v0.2.9.5-dev4.1");
		
		// -----------------------------------------------
		
		
		top.x = menu_x;
		top.y = menu_y;
		
		 
		addChild(top);
		
		}
	/*
	 	public function eventHandler():void {
	 		var e:Event = new Event(Event.COMPLETE); 
                        dispatchEvent(e); 
			
		}
		 * 
		 */
}}
