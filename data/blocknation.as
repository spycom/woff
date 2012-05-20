package data
{
	import data.text;
	
	import flash.display.*;
	import flash.filters.BevelFilter;
	import flash.filters.DropShadowFilter;
	import flash.filters.GlowFilter;
	import flash.geom.Matrix;
	
	public class blocknation extends Sprite
	{
		private var block:Sprite;
		private var rating:text;
		private var rating_up:Sprite;
		private var rating_down:Sprite;
		private var title:text;
		
		public function blocknation(name:String, is_clear:int=0)
		{
			var myBevel:BevelFilter = new BevelFilter();
				myBevel.angle = 90;
				myBevel.distance = 2;
				myBevel.strength = 0.8;
			
			var myGlow:GlowFilter = new GlowFilter();
				myGlow.strength = 0.8;
				myGlow.color = 0x3366FF;
			
			var myShadow:DropShadowFilter = new DropShadowFilter();
				myShadow.distance = 1;
			
			//main = new Sprite();
			
			var fillType:String = GradientType.RADIAL;
			var colors:Array = [0xffffff, 0xe8e8e8];
			var alphas:Array = [1, 1];
			var ratios:Array = [0, 150];
			var matr:Matrix = new Matrix();
			matr.createGradientBox(600, 300, 0, -150, -150);
			
			var spreadMethod:String = SpreadMethod.PAD;
			
			
			
			block = new Sprite();
			block.graphics.beginGradientFill(fillType, colors, alphas, ratios, matr, spreadMethod);
			block.graphics.lineStyle(0, 0xCCCCCC);
			block.graphics.drawRoundRectComplex(0, 0, 304, 116, 12, 12, 12, 12);
			
			 addChild(block);
			 
			this.filters = [myShadow];
			
			title = new text(90, 15, name, "1");
			 addChild(title);
			
			
			if (is_clear == 0 ) {
				rating = new text(90, 30, "Рейтинг:", "2");
				 addChild(rating);
				 
				rating_up = new Sprite();
				rating_up.x = 140;
				rating_up.y = 35;
				rating_up.graphics.beginFill(0x66CC00, 1);
				rating_up.graphics.moveTo(0, 10);
				rating_up.graphics.lineTo(5, 0);
				rating_up.graphics.lineTo(10, 10);
				rating_up.graphics.lineTo(5, 8);
				rating_up.graphics.lineTo(0, 10);
				rating_up.filters = [myBevel, myGlow];
				 addChild(rating_up);
				 
				rating_down = new Sprite();
				rating_down.x = 150;
				rating_down.y = 35;
				rating_down.graphics.beginFill(0xFF3300, 1);
				rating_down.graphics.moveTo(0, 0);
				rating_down.graphics.lineTo(5, 10);
				rating_down.graphics.lineTo(10, 0);
				rating_down.graphics.lineTo(5, 2);
				rating_down.graphics.lineTo(0, 0);
				rating_down.filters = [myBevel, myGlow];
				 addChild(rating_down);
			 
			 } 
			
		}
	}
}