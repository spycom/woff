package data {
	import flash.display.*;
	import flash.net.*;
	import flash.events.*;
	import flash.text.*;

	public class woff  {
		
		private var apiMethod:String;
		private var woff_request:URLRequest;
		//private var woff_loader:URLLoader;
		private var w:URLVariables;
		
	public function woff() {
			
		//var woff_uid:String = "555";
		//var woff_secret:String = 'DuIP8H5HnE';
		//var test_mode:Number = 1;
	
		woff_request = new URLRequest("http://woff73.valuehost.ru/api.php");
  		woff_request.method = URLRequestMethod.GET;
	
		
		//var _sig2:String = woff_uid + 'method='+apiMethod+woff_secret;
		//var sig2:String = MD5.encrypt(_sig2); // используем метод hash класса md5 и получаем сигнатуру
  		w = new URLVariables();
  		//w.method = method;
		woff_request.data = w;
   		
   		
		
	}
	
	
}
}