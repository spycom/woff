package data {
	import flash.display.*;	
	import flash.filters.*;
	import data.text;
	import flash.net.*;
	import flash.events.*;
	
	public class buyBudgetTableClass extends Sprite {

private var buyBudgetSprite:Sprite;
private var buyBudgetErrorSprite:Sprite;
private var buyBudgetFon:Sprite;
private var buyBudgetText:text;
private var buyBudgetErrorText:text;
private var buyBudgetText2:text;
private var buyBudgetText3:text;
private var myShadow___:DropShadowFilter;
public var new_current_tournament_:int;
public var current_tax_:int;
//private var serv:String = "http://woff73.valuehost.ru/woff_images/";
public var woff_sig_:String; 
public var woff_uid_:int;
public var woff_general_request_:URLRequest;
public var woff_api_:String;

 public function buyBudgetTableClass(woff_uid2:int):void{
 		
 		//woff_sig_ = woff_sig; 
		woff_uid_ = woff_uid2;
 	 	myShadow___ = new DropShadowFilter();
 	 	
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
			buyBudgetFon.graphics.lineStyle(2);
			buyBudgetFon.graphics.drawRoundRect(0, 0, 265, 100, 35);
			buyBudgetFon.addEventListener(MouseEvent.CLICK, buyBudgetClose);
				
		
		
		buyBudgetText = new text(140, 6, "Купить бюджет", "12");
		buyBudgetText.addEventListener(MouseEvent.CLICK, buyBudgetClose);
		
		buyBudgetText2 = new text(130, 26, "Купить 10 миллионов", "12");
		buyBudgetText2.addEventListener(MouseEvent.CLICK, buyBudget_req_max);
		
		buyBudgetText3 = new text(130, 40, "Купить 1 миллионов", "12");
		buyBudgetText3.addEventListener(MouseEvent.CLICK, buyBudget_req_q);
		
		buyBudgetErrorText = new text(140, 67, "error?", "12");
		buyBudgetErrorText.addEventListener(MouseEvent.CLICK, buyBudgetClose);
		
		//addChild(buyBudgetSprite);
			buyBudgetSprite.addChild(buyBudgetFon);
			buyBudgetSprite.addChild(buyBudgetText);
			buyBudgetSprite.addChild(buyBudgetText2);
			buyBudgetSprite.addChild(buyBudgetText3);
		
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
		buyBudgetText3.setText("Купить 1 миллион за "+current_tax_/10+" МР");
		buyBudgetErrorText.setText(" ");
	}
	 
	 
	
	public function buyBudgetClose(e:MouseEvent):void {
		removeChild(buyBudgetSprite);
	}
	
	 
	private function buyBudget_req_max(e:MouseEvent):void {
				
				woff_general_request_ = new URLRequest(woff_api_);
				woff_general_request_.method = URLRequestMethod.GET;
		
				var time:Date = new Date();
				var params:Object = {method: "buyBudget", time:time, id_tm: new_current_tournament_, q:"max"};
				
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
					buyBudgetSprite.addChild(buyBudgetText2);
					buyBudgetSprite.addChild(buyBudgetText3);
					buyBudgetSprite.addChild(buyBudgetErrorText);
					
						buyBudgetErrorText.setText( woff_answer.error.text());
				}
				
			
			 }
			
			private function updateInfo(e:Event):void {
			 	var woff_answer:XML = new XML(e.target.data);
				
				if (String(woff_answer.transferred.text()) !== "") {
					addChild(buyBudgetSprite);
						
					buyBudgetSprite.addChild(buyBudgetFon);
					buyBudgetSprite.addChild(buyBudgetText);
					buyBudgetSprite.addChild(buyBudgetText2);
					buyBudgetSprite.addChild(buyBudgetText3);
					buyBudgetSprite.addChild(buyBudgetErrorText);
					
						buyBudgetErrorText.setText("Снято " + woff_answer.transferred.text() + " MP");
				}
				
				//buyBudgetSprite.parent.parent.parent.parent.all_txt4.setText("MP: " + woff_answer.profile.MP.text());
				//buyBudgetSprite.parent.setMP();
			}
 }
}