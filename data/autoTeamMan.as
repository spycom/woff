package data {
	import flash.events.*;
	import flash.display.*;
	import flash.filters.GlowFilter;
	import flash.filters.BevelFilter;

	import data.text;
	

	public class autoTeamMan extends Sprite {
		
		private var man_name:text
		private var man_number:text;
		public var man_id:int;
		private var club_name:text;
		private var club_id:int;
		private var club_div:Sprite;
		public var pressed:int;
		private var myGlow:GlowFilter;
		private var myBevel:BevelFilter;
		
		public function autoTeamMan(name:String) {
			
			myGlow = new GlowFilter();
			myGlow.inner = true;
			myGlow.color = 0x99CCFF;
			myGlow.strength = 2;
			myGlow.blurX = 0;
			myGlow.blurY = 10;
			
			myBevel = new BevelFilter();
			myBevel.angle = 90;
			myBevel.distance = 2;
			myBevel.strength = 0.5;
			
			man_number  = new text(20, -2, "", "autoTeam_clubs");
				man_id = 0;
			
			man_name  = new text(95, -2, "", "autoTeam_clubs");
			
			club_name = new text(210, -2, "", "autoTeam_clubs");
			club_id = 0;
			
			club_div = new Sprite();
			club_div.graphics.beginFill(0xffffff);
			club_div.graphics.drawRoundRect(-15, 0, 295, 15, 20);
			//club_div.addEventListener(MouseEvent.CLICK, club_click);
			club_div.addEventListener(MouseEvent.MOUSE_OVER, club_over);
			club_div.addEventListener(MouseEvent.MOUSE_OUT, club_out);
			
			pressed = 0;
				
			addChild(club_div);
				club_div.addChild(man_number);
				club_div.addChild(man_name);
				club_div.addChild(club_name);
			
			
		}
		
		private function club_click(e:MouseEvent):void {
			if (pressed == 0) {
				
				club_div.filters = [myGlow, myBevel];
				pressed = 1;
			} else {
				club_div.filters = [];
				pressed = 0;
			}
		}
		
		private function club_over(e:MouseEvent):void {
			if (pressed == 0) {
			club_div.filters = [myGlow];
			}
		}
		private function club_out(e:MouseEvent):void {
			if (pressed == 0) {
			club_div.filters = [];
			}
		}
		public function setClubTitle(title:String):void {
			club_name.setText(title);
		}
		public function setClubId(id:int):void {
			club_id = id;
		}
		public function getId():int {
			return club_id;
		}
		
		public function setName(new_name:String, new_club:String, new_number:String, new_id:String):void {
			club_name.setText(new_club);
			man_name.setText(new_name);
			man_number.setText(new_number);
			man_id = int(new_id);
			
		}
	}
	
	
}