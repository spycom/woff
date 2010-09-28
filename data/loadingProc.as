package data {

import flash.display.*;
import flash.utils.*;
import flash.events.*;
import flash.filters.*;
//import flash.text.*;
import flash.geom.Matrix; 

public class loadingProc extends Sprite {
	//private var center:Shape;
	//private var ball:Shape;
	//private var ball_:Shape;
	private var ball2:Shape;
	//private var ball2_:Shape;
	//private var ball3:Shape;
	private var ball3_:Shape;
	//private var ball4:Shape;
	private var timer:Timer;
	private var n:Number;
	private var n2:Number;
	private var n_:Number;
	private var n__:Number;
	
	private var filterArray:Array;
	private var centerFilterArray:Array;
	
	private var button:Shape;
	//private var text:TextField;
	private var button2:Shape;
	//private var text2:TextField;
	private var button3:Shape;
	//private var text3:TextField;
	
	public function loadingProc() {
		
		//var colors:Array = [0x43CD80, 0xBCD2EE , 0x43CD80]; 
		//var colors2:Array = [0x000088, 0xFFFF00, 0x43CD80];
		//var alphas:Array = [ 0.5 , 1, 0.5]; 
		//var ratios:Array = [0, 254, 255]; 
		//var spreadMethod:String = SpreadMethod.PAD; 
		//var interp:String = InterpolationMethod.LINEAR_RGB; 
		//var focalPtRatio:Number = 0; 
 
		var matrix:Matrix = new Matrix(); 
		var boxWidth:Number = 20; 
		var boxHeight:Number = 20; 
		var boxRotation:Number = 0; //Math.PI/4; // 45° 
		var tx:Number = 0; 
		var ty:Number = 0; 
		matrix.createGradientBox(boxWidth, boxHeight, boxRotation, tx, ty); 
		
		/*
		button = new Shape();
		button.graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios);
		button.graphics.lineGradientStyle(GradientType.LINEAR, colors2, alphas, ratios);
		button.graphics.drawRoundRectComplex(150, 60, 85, 20, 8, 15, 10, 5);
		
		button2 = new Shape();
		button2.graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios);
		button2.graphics.lineStyle(1);
		button2.graphics.drawRoundRectComplex(150, 100, 85, 20, 8, 15, 10, 5);
		
		button3 = new Shape();
		button3.graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios);
		button3.graphics.lineStyle(1);
		button3.graphics.drawRoundRectComplex(150, 140, 85, 20, 8, 15, 10, 5);
		
		
		text = new TextField();
		text.text = "PUSH!!!";
		text.autoSize = TextFieldAutoSize.LEFT;
		text.selectable = false;
		text.x = 170;
		text.y = 60;
		text.addEventListener(MouseEvent.MOUSE_DOWN, buttonDown);
		text.addEventListener(MouseEvent.MOUSE_OVER, buttonOver);
		text.addEventListener(MouseEvent.MOUSE_OUT, buttonOut);
		
		text2 = new TextField();
		text2.text = "PUSH!!!";
		text2.autoSize = TextFieldAutoSize.LEFT;
		text2.selectable = false;
		text2.x = 170;
		text2.y = 100;
		text2.addEventListener(MouseEvent.MOUSE_DOWN, buttonDown2);
		text2.addEventListener(MouseEvent.MOUSE_OVER, buttonOver2);
		text2.addEventListener(MouseEvent.MOUSE_OUT, buttonOut2);
		
		text3 = new TextField();
		text3.text = "PUSH!!!";
		text3.autoSize = TextFieldAutoSize.LEFT;
		text3.selectable = false;
		text3.x = 170;
		text3.y = 140;
		text3.addEventListener(MouseEvent.MOUSE_DOWN, buttonDown3);
		text3.addEventListener(MouseEvent.MOUSE_OVER, buttonOver3);
		text3.addEventListener(MouseEvent.MOUSE_OUT, buttonOut3);
		
		 * 
		 */
		 
		var gfilter:GlowFilter = new GlowFilter(0x8470FF);
		//var glow_filter:GlowFilter = new GlowFilter(0x8470FF, 1, 15, 15 ,5, 1, false, false);
		var bfilter:BlurFilter = new BlurFilter();
		var blur_filter:BlurFilter = new BlurFilter(3,3);
		var bevel_filter:BevelFilter = new BevelFilter();
		filterArray = new Array(gfilter,bfilter,bevel_filter);
		centerFilterArray = new Array(bevel_filter,blur_filter);
		/*
		center = new Shape();
		center.graphics.beginFill(0x000080,1);
		center.graphics.lineStyle(0);
		center.graphics.drawCircle(0, 0, 3);
		center.x = 50;
		center.y = 50;
		center.filters = centerFilterArray;
		 * 
		 
		
		ball = new Shape();
		ball.graphics.beginFill(0x0dccFF,1);
		ball.graphics.lineStyle(0);
		ball.graphics.drawCircle(0, 0, 5);
		ball.x = 50;
		ball.y = 50;
		ball.filters = filterArray;
		/*
		ball_ = new Shape();
		ball_.graphics.beginFill(0x0dccFF,0.3);
		ball_.graphics.lineStyle(0.5);
		ball_.graphics.drawCircle(0, 0, 3);
		ball_.x = 50;
		ball_.y = 50;
		//addChild(ball_);
		ball_.filters = filterArray;
		 * 
		 */
		
		ball2 = new Shape();
		ball2.graphics.beginFill(0x00cc0F,1);
		ball2.graphics.lineStyle(0);
		ball2.graphics.drawCircle(0, 0, 5);
		ball2.x = 50;
		ball2.y = 50;
		ball2.filters = filterArray;
		
		ball3_ = new Shape();
		ball3_.graphics.beginFill(0xEE7621,0.3);
		ball3_.graphics.lineStyle(0.5);
		ball3_.graphics.drawCircle(0, 0, 3);
		ball3_.x = 50;
		ball3_.y = 50;
		ball3_.filters = filterArray;
		
		timer = new Timer(30,0);
		timer.addEventListener(TimerEvent.TIMER, timerEvent);
		timer.start();
		
		n = 0;
		n2 = 0;
		//addChild(center);
		//addChild(ball4);
		//addChild(ball3); // фиолетовый
		addChild(ball3_);
		//addChild(ball);
		addChild(ball2);
		/*
		addChild(button);
		addChild(text);
		addChild(button2);
		addChild(text2);
		addChild(button3);
		addChild(text3);
		 * 
		 */
		
	}
	public function timerEvent(e:TimerEvent):void {
		
		n += Math.PI/20;
		n2 += Math.PI/10;
		/*
		center.x = mouseX;
		center.y = mouseY;
		 * 
		 */
		
		var cos:Number = Math.cos(n);
		///var cos2:Number = Math.cos(n2*n2);
		var sin:Number = Math.sin(n);
		
		//ball.x = mouseX + cos * 30;
		//ball.y = mouseY - cos2 * 20;
		
		ball2.x = mouseX - cos * 20;
		ball2.y = mouseY - sin * 40;
		
		ball3_.x = mouseX + cos * 25 - cos * 15;
		ball3_.y = mouseY - sin * 15;
		
		n__ = n_;
		n_ = n;
		
		
		e.updateAfterEvent();
	}
	
	public function off ():void {
		addChild(ball3_);
		//addChild(ball);
		addChild(ball2);
		
		removeChild(ball3_);
		//removeChild(ball);
		removeChild(ball2);
		//e.updateAfterEvent();
		 
	}
	
	public function on ():void {
		addChild(ball3_);
		//addChild(ball);
		addChild(ball2);
	}
	
	public function buttonDown (e:MouseEvent):void {
		button.filters = filterArray;
		
	}
	public function buttonOut (e:MouseEvent):void {
		button.filters = centerFilterArray;
	}
	
	public function buttonOver2 (e:MouseEvent):void {
		button2.filters = null;
	}
	
	public function buttonDown2 (e:MouseEvent):void {
		button2.filters = filterArray;
		
	}
	public function buttonOut2 (e:MouseEvent):void {
		button2.filters = centerFilterArray;
	}
	
	public function buttonOver3 (e:MouseEvent):void {
		button3.filters = null;
	}
	
	public function buttonDown3 (e:MouseEvent):void {
		button3.filters = filterArray;
		
	}
	public function buttonOut3 (e:MouseEvent):void {
		button3.filters = centerFilterArray;
	}
	
}	
}