package data {
	import flash.display.*;
	import data.text;
	import flash.events.*;	
	
	public class Version extends Sprite {

		private var top:text = new text(0,0,"","2");
		
		public function Version(menu_x:int,menu_y:int) {
			
		
		// -------------------ВЕРСИЯ----------------------
		
					top.setText("v0.6.9.4");
		
		// -----------------------------------------------
		
		
		top.x = menu_x;
		top.y = menu_y;
		
		 
		addChild(top);
		
		}
	
		public function setText(texts:String):void {
			top.setText(texts);
			
		}
}}
