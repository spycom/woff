package data
{
	import flash.display.*;
	import flash.events.TimerEvent;
	import flash.filters.DropShadowFilter;
	import flash.geom.Matrix;
	import flash.utils.Timer;
	//import flash.events.*;
	//import flash.filters.*;
	//import flash.geom.Matrix;
	//import flash.net.*;
	//import flash.utils.Timer;
	
	public class panel_transfer extends Sprite {
		
		private var panel_sprite:Sprite;
		private var rollingTimer:Timer;
		private var vector:int;
		private var angle:int;
		[Embed(source='/Users/Art/Dropbox/FF/img4/replace.png')]
		private var replace_bitmap:Class;
		[Embed(source='/Users/Art/Dropbox/FF/img4/down.png')]
		private var down_bitmap:Class;
		public var trigger:int;
		
		public function panel_transfer()
		{
			trigger = 0;
			
			var myShadow = new DropShadowFilter();
			
			var fillType:String = GradientType.RADIAL;
			var colors:Array = [0xE8E8E8, 0xCCCCCC];
			//var colors_b:Array = [0xffffff, 0x000000];
			var alphas:Array = [1, 1];
			var ratios:Array = [0, 200];
			//var ratios_b:Array = [0, 200];
			var matr:Matrix = new Matrix();
			matr.createGradientBox(500, 300, 0, -150, 0);
			
			var spreadMethod:String = SpreadMethod.PAD;
			
			panel_sprite = new Sprite();
			panel_sprite.x = 640;
			panel_sprite.y = 121;
			panel_sprite.filters = [myShadow];
			
			var panel_fon:Sprite = new Sprite();
			panel_fon.graphics.beginGradientFill(fillType, colors, alphas, ratios, matr, spreadMethod);
			panel_fon.graphics.lineStyle(0, 0xCCCCCC);
			panel_fon.graphics.drawRoundRect(0, 0, 160, 342, 20);
			
			var panelText = new text(10, 20, "", "first_hint");
			panelText.setText("Выбирайте " +
				"\nлюбого" +
				"\nигрока! " +
				"\n " +
				"\n" +
				"\n\n" +
				"\n" +
				"\n");
			
			var replace = new replace_bitmap();
			replace.x = 130;
			replace.y = 108;
			replace.filters = [myShadow];
			
			var down = new down_bitmap();
			down.x = 140;
			down.y = 215;
			down.filters = [myShadow];
			
			panel_sprite.addChild(panel_fon);
			panel_sprite.addChild(panelText);
			//panel_sprite.addChild(replace);
			//panel_sprite.addChild(down);
			addChild(panel_sprite);
			
			rollingTimer = new Timer(5, 30);
			rollingTimer.addEventListener(TimerEvent.TIMER, rollingTimerEvent);
			rollingTimer.addEventListener(TimerEvent.TIMER_COMPLETE, rollingTimerCompleteEvent);
			
			vector = new int(-1);
			angle = new int(0);
		}
		
		private function rollingTimerEvent(e:TimerEvent):void {
			
			panel_sprite.x = 725 - 230*Math.sin(angle*3.14/180);
			angle += 3;
		}
		private function rollingTimerCompleteEvent(e:TimerEvent):void {
			rollingTimer.reset(); 
			trigger == 0;
		}
		public function panelShow():void {
			if (trigger == 1 ) {
			vector = -1;
			rollingTimer.start();
			}
		}
		public function panelHide():void {
			rollingTimer.stop();
			rollingTimer.reset(); 
			vector = 1;
			rollingTimer.start();
		}
	}
}