package data {
	import data.text;
	
	import flash.display.*;
	import flash.events.*;
	import flash.filters.*;
	import flash.net.*;
	import flash.utils.Timer;
	
	public class buyBudgetTableClass extends Sprite {

private var buyBudgetSprite:Sprite;
private var buyBudgetErrorSprite:Sprite;
private var buyBudgetFon:Sprite;
private var scroll_line:Sprite;
private var buyBudgetText:text;
private var buyBudgetErrorText:text;
private var buyBudgetText2:text;
private var buyBudgetText3:text;
private var closeButton:text;
private var myShadow___:DropShadowFilter;
public var new_current_tournament_:int;
public var current_tax_:int;
public var current_pay:int;
public var current_amount:int;
//private var serv:String = "http://woff73.valuehost.ru/woff_images/";
public var woff_sig_:String; 
public var woff_uid_:int;
public var woff_general_request_:URLRequest;
public var woff_api_:String;
private var buyBudgetButtonSprite:Sprite;
public var scroll:Loader;
public var scrollTimer:Timer;
public var myGlow:GlowFilter;
public var myGlow_i:GlowFilter;
private var myShadow:DropShadowFilter;

 public function buyBudgetTableClass(woff_uid2:int):void{
 		
 		//woff_sig_ = woff_sig; 
		woff_uid_ = woff_uid2;
 	 	myShadow___ = new DropShadowFilter();
 	 	
		myShadow = new DropShadowFilter();
		myShadow.inner = true;
		
		
 		buyBudgetSprite = new Sprite();
		buyBudgetSprite.x = 190;
		buyBudgetSprite.y = 170;
		buyBudgetSprite.filters = [myShadow___];
		
		buyBudgetErrorSprite = new Sprite();
		buyBudgetErrorSprite.x = 190;
		buyBudgetErrorSprite.y = 170;
		buyBudgetErrorSprite.filters = [myShadow___];
		/*
		buyBudgetFon = new Loader();
		buyBudgetFon.load(new URLRequest("http://woff73.valuehost.ru/woff_images/" + "img5/profile.png"));
		buyBudgetFon.scaleX = 0.75;
		buyBudgetFon.scaleY = 0.5;
		//buyBudgetFon.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
		buyBudgetFon.addEventListener(MouseEvent.CLICK, buyBudgetClose);
		 * 
		 */
		
		buyBudgetFon = new Sprite();
			buyBudgetFon.graphics.beginFill(0xFFFFFF,1);
			buyBudgetFon.graphics.lineStyle(2, 0x666666);
			buyBudgetFon.graphics.drawRoundRect(0, 0, 270, 130, 35);
			//buyBudgetFon.addEventListener(MouseEvent.CLICK, buyBudgetClose);
			buyBudgetFon.addEventListener(MouseEvent.MOUSE_OUT, scrollUp);
		
		
		buyBudgetText = new text(135, 6, "Купить бюджет", "save_offer");
		buyBudgetText.addEventListener(MouseEvent.CLICK, buyBudgetClose);
		
		buyBudgetText2 = new text(135, 59, "Купить 10 миллионов", "12");
		buyBudgetText2.addEventListener(MouseEvent.CLICK, buyBudget_req_max);
		buyBudgetText2.addEventListener(MouseEvent.MOUSE_OVER, buyOver);
		buyBudgetText2.addEventListener(MouseEvent.MOUSE_OUT, buyOut);
		
		buyBudgetButtonSprite = new Sprite();
		buyBudgetButtonSprite.graphics.beginFill(0xFFFFFF,1);
		buyBudgetButtonSprite.graphics.lineStyle(1, 0x999999);
		buyBudgetButtonSprite.graphics.drawRoundRect(30, 57, 205, 20, 20);
		buyBudgetButtonSprite.filters = [myShadow];
		buyBudgetButtonSprite.addEventListener(MouseEvent.MOUSE_OVER, buyOver);
		buyBudgetButtonSprite.addEventListener(MouseEvent.MOUSE_OUT, buyOut);
		
		
		//buyBudgetText3 = new text(130, 40, "Купить 1 миллионов", "12");
		//buyBudgetText3.addEventListener(MouseEvent.CLICK, buyBudget_req_q);
		
		buyBudgetErrorText = new text(135, 80, "error?", "12");
		buyBudgetErrorText.addEventListener(MouseEvent.CLICK, buyBudgetClose);
		
		closeButton = new text(135, 102, "ЗАКРЫТЬ", "save_offer");
		closeButton.addEventListener(MouseEvent.CLICK, buyBudgetClose);
		closeButton.addEventListener(MouseEvent.MOUSE_OVER, closeOver);
		closeButton.addEventListener(MouseEvent.MOUSE_OUT, closeOut);
		
		
		scroll_line = new Sprite();
		scroll_line.graphics.beginFill(0xFFFFFF,0.1);
		scroll_line.graphics.lineStyle(0.1);
		scroll_line.graphics.drawRoundRect(25, 42, 220, 1, 0);
		//buyBudgetscroll_line.addEventListener(MouseEvent.CLICK, buyBudgetClose);
		
		myGlow = new GlowFilter(); 
		myGlow.color = 0x00FF00;
		
		myGlow_i = new GlowFilter(); 
		myGlow_i.color = 0x6699FF;
		myGlow_i.inner = true;
		
		scroll = new Loader();
		scroll.load(new URLRequest("http://woff73.valuehost.ru/woff_images/" + "img5/page.png"));
		scroll.addEventListener(MouseEvent.MOUSE_DOWN, scrollDown);
		scroll.addEventListener(MouseEvent.MOUSE_UP, scrollUp);
			this.addEventListener(MouseEvent.MOUSE_UP, scrollUp);
		scroll.filters = [myGlow];
		
		scroll.x = 215;
		scroll.y = 30;
		
		scrollTimer = new Timer(1, 0);
		scrollTimer.addEventListener(TimerEvent.TIMER, scrollTimerEvent);
		
		//addChild(buyBudgetSprite);
			buyBudgetSprite.addChild(buyBudgetFon);
			buyBudgetSprite.addChild(buyBudgetText);
			buyBudgetSprite.addChild(buyBudgetButtonSprite);
			buyBudgetSprite.addChild(buyBudgetText2);
			//buyBudgetSprite.addChild(buyBudgetText3);
			buyBudgetSprite.addChild(scroll_line);
			buyBudgetSprite.addChild(scroll);
			buyBudgetSprite.addChild(closeButton);
		
	}
	/*
	public function setApi(woff_api2:String):void {
		//woff_api_ = woff_api2;
	}
	 * 
	 */
	 public function setTournament(id_tm:int):void {
		
		new_current_tournament_ = id_tm;
	}
	public function setTax(tax:int):void {
		
		current_tax_ = tax;
	}
	public function buyBudgetOpen():void {
		addChild(buyBudgetSprite);
		buyBudgetText2.setText("Купить 10 миллионов за "+current_tax_+" МР");
		//buyBudgetText3.setText("Купить 1 миллион за "+current_tax_/10+" МР");
		buyBudgetErrorText.setText(" ");
	}
	 
	 
	
	public function buyBudgetClose(e:MouseEvent):void {
		removeChild(buyBudgetSprite);
	}
	
	 
	private function buyBudget_req_max(e:MouseEvent):void {
				
				woff_general_request_ = new URLRequest(woff_api_);
				woff_general_request_.method = URLRequestMethod.GET;
		
				var time:Date = new Date();
				var params:Object = {method: "buyBudget", time:time, id_tm: new_current_tournament_, q:current_amount};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig_ = String(woff_uid_);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig_ = woff_sig_ + keys[i] + "=" + params[keys[i]];
						
				woff_sig_ = woff_sig_ + "DuIP8H5HnE";
				
			
				
				woff_sig_ = MD5.encrypt(woff_sig_); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig_);
				params.uid = String(woff_uid_);
					
				
				woff_general_request_.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request_.data[k] = params[k];
					
			
				
				var buyBudgetLoader:URLLoader = new URLLoader();
				buyBudgetLoader.addEventListener(Event.COMPLETE, errorEvent);
				buyBudgetLoader.addEventListener(Event.COMPLETE, updateInfo);
				buyBudgetLoader.load(woff_general_request_);
				 
				 
				 removeChild(buyBudgetSprite);
			}
			 
			private function buyBudget_req_q(e:MouseEvent):void {
				
				woff_general_request_ = new URLRequest(woff_api_);
				woff_general_request_.method = URLRequestMethod.GET;
		
				var time:Date = new Date();
				var params:Object = {method: "buyBudget", time:time, id_tm: new_current_tournament_, q:"1"};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				woff_sig_ = String(woff_uid_);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig_ = woff_sig_ + keys[i] + "=" + params[keys[i]];
						
				woff_sig_ = woff_sig_ + "DuIP8H5HnE";
				
				//params.test = woff_sig;
				
				woff_sig_ = MD5.encrypt(woff_sig_); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig_);
				params.uid = String(woff_uid_);
					
				
				woff_general_request_.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request_.data[k] = params[k];
					
			//setMethod("buyBudget");
				
				var buyBudgetLoader:URLLoader = new URLLoader();
				buyBudgetLoader.addEventListener(Event.COMPLETE, errorEvent);
				buyBudgetLoader.addEventListener(Event.COMPLETE, updateInfo);
				buyBudgetLoader.load(woff_general_request_);
				 
				 
				 removeChild(buyBudgetSprite);
			}
			
			 private function errorEvent(e:Event):void {
			 	var woff_answer:XML = new XML(e.target.data);
				
				if (String(woff_answer.error.text()) !== "") {
					addChild(buyBudgetSprite);
						
					buyBudgetSprite.addChild(buyBudgetFon);
					buyBudgetSprite.addChild(buyBudgetText);
					buyBudgetSprite.addChild(buyBudgetButtonSprite);
					buyBudgetSprite.addChild(buyBudgetText2);
					//buyBudgetSprite.addChild(buyBudgetText3);
					buyBudgetSprite.addChild(scroll_line);
					buyBudgetSprite.addChild(scroll);
					buyBudgetSprite.addChild(buyBudgetErrorText);
					buyBudgetSprite.addChild(closeButton);
					
						buyBudgetErrorText.setText( woff_answer.error.text());
				}
				
			
			 }
			private function scrollDown(e:MouseEvent):void {
				scrollTimer.start(); 
				myGlow.color = 0x0389af;
				scroll.filters = [myGlow];
			}
			
			private function scrollUp(e:MouseEvent):void {
				scrollTimer.stop();
				myGlow.color = 0x00FF00;
				scroll.filters = [myGlow];
			}
			
			private function buyOver(e:MouseEvent):void {
				buyBudgetButtonSprite.filters = [myGlow_i];	
			}
			private function buyOut(e:MouseEvent):void {
				buyBudgetButtonSprite.filters = [myShadow];
			}
			
			private function closeOver(e:MouseEvent):void {
				closeButton.filters = [myGlow];	
			}
			private function closeOut(e:MouseEvent):void {
				closeButton.filters = [];
			}
			
			
			private function scrollTimerEvent(e:TimerEvent):void {
				if (mouseX < 430 && mouseX > 220) {
				scroll.x = mouseX -205;
				} else {
					
				}
				
				if (scroll.x < 50) {
					buyBudgetText2.setText("Купить 1 миллион за "+current_tax_/10+" МР");
					current_pay = current_tax_/10;
					current_amount = 1;
				} else {
					if (scroll.x <67) {
						current_amount = 2;
						current_pay = current_tax_/10 * current_amount;
						buyBudgetText2.setText("Купить 2 миллиона за "+current_pay+" МР");
						
						
					} else {
						if (scroll.x <79) {
							current_amount = 3;
							current_pay = current_tax_/10 * current_amount;
							buyBudgetText2.setText("Купить 3 миллиона за "+current_pay+" МР");
							
							
						} else {
							if (scroll.x <91) {
								current_amount = 4;
								current_pay = current_tax_/10 * current_amount;
								buyBudgetText2.setText("Купить 4 миллиона за "+current_pay+" МР");
								
								
							} else {
								if (scroll.x <105) {
									current_amount = 5;
									current_pay = current_tax_/10 * current_amount;
									buyBudgetText2.setText("Купить 5 миллионов за "+current_pay+" МР");
									
									
								} else {
									if (scroll.x <124) {
										current_amount = 6;
										current_pay = current_tax_/10 * current_amount;
										buyBudgetText2.setText("Купить 6 миллионов за "+current_pay+" МР");
										
										
									} else {
										if (scroll.x <147) {
											current_amount = 7;
											current_pay = current_tax_/10 * current_amount;
											buyBudgetText2.setText("Купить 7 миллионов за "+current_pay+" МР");
											
										} else {
											if (scroll.x <170) {
												current_amount = 8;
												current_pay = current_tax_/10 * current_amount;
												buyBudgetText2.setText("Купить 8 миллионов за "+current_pay+" МР");
												
											} else {
												if (scroll.x <195) {
													current_amount = 9;
													current_pay = current_tax_/10 * current_amount;
													buyBudgetText2.setText("Купить 9 миллионов за "+current_pay+" МР");
													
												} else {
													current_amount = 10;
													current_pay = current_tax_/10 * current_amount;
													buyBudgetText2.setText("Купить 10 миллионов за "+current_pay+" МР");
													
													
												}
											}
										}
									}
								}
							}
						}
						
					}
				}
				
			}
			
			private function updateInfo(e:Event):void {
			 	var woff_answer:XML = new XML(e.target.data);
				
				if (String(woff_answer.transferred.text()) !== "") {
					addChild(buyBudgetSprite);
						
					buyBudgetSprite.addChild(buyBudgetFon);
					buyBudgetSprite.addChild(buyBudgetText);
					buyBudgetSprite.addChild(buyBudgetButtonSprite);
					buyBudgetSprite.addChild(buyBudgetText2);
					//buyBudgetSprite.addChild(buyBudgetText3);
					buyBudgetSprite.addChild(scroll_line);
					buyBudgetSprite.addChild(scroll);
					buyBudgetSprite.addChild(buyBudgetErrorText);
					buyBudgetSprite.addChild(closeButton);
					
						buyBudgetErrorText.setText("Снято " + woff_answer.transferred.text() + " MP");
				}
				
				//buyBudgetSprite.parent.parent.parent.parent.all_txt4.setText("MP: " + woff_answer.profile.MP.text());
				//buyBudgetSprite.parent.setMP();
			}
 }
}