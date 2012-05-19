package data
{
	import flash.display.*;
	import flash.geom.Matrix;
	
	public class blocknation extends Sprite
	{
		private var block:Sprite;
		
		public function blocknation()
		{
			//var myBevel = new BevelFilter();
			//myBevel.angle = 90;
			//myBevel.distanse = 2;
			//myBevel.strength = 0.2;
			
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
			//block.filters = [myBevel];
			
			addChild(block);
		}
	}
}