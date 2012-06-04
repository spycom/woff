package adsocial.as3 {
	import adsocial.as3.constants.ADEvent;
	import adsocial.as3.utils.JSON;
	
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.events.TimerEvent;
	import flash.geom.Rectangle;
	import flash.net.URLRequest;
	import flash.system.Security;
	import flash.utils.Timer;
	import adsocial.as3.constants.AdType;

    public class ADSocialAd {		
		private static var bar:MovieClip;
		private static var adsocial_ad:MovieClip;
		
		private static var adClipLoaders:Object = new Object();
		
		private static var _preloadTimer:Timer = new Timer(700);
	
        public static function getVersion():String {
            return ADSocialServices.getVersion();
        }
		private static var _options:Object;
		
        public static function showPreGameAd(options:Object):void {
			
			var DEFAULTS:Object = {
				adType:				AdType.PRELOAD,
				ad_timeout: 		3000,
				fadeout_time: 		250,
				regpt: 				"o",
				method: 			"showPreloaderAd",
				color: 				0xB5002B,
				background: 		0xFFFFFF,
				outline: 			0x002F6C,
				no_progress_bar: 	false,
				ad_started: 		function ():void { if(this is MovieClip) { this.clip.stop(); }},
				ad_finished: 		function ():void { if(this is MovieClip) { this.clip.play(); }},
				ad_failed: 			function ():void { trace("[ADSocialAd] Couldn't load an ad, make sure that your game's local security sandbox is configured for Access Network Only and that you are not using ad blocking software"); },
				ad_loaded: 			function (width:Number, height:Number):void { },
				ad_skipped: 		function ():void { },
				ad_progress: 		function (percent:Number):void { },
				ad_clicked:			function ():void { }
			};
			
			options = mergeOptions(options, DEFAULTS);
			ADSocialAd.setOptions(options.adType, options);
			
			var clip:DisplayObjectContainer = options.clip;
			
			var ad_timeout:Number = options.ad_timeout;
			
			if (options.skip) {
				ad_timeout = 0;
			}
			
			delete options.ad_timeout;
			
			var fadeout_time:Number = options.fadeout_time;
			
			delete options.fadeout_time;
			
			if (!ADSocialAd.load(options)) {
				options.ad_failed();
				options.ad_finished();
				return;
			}
			
			options.ad_started();
			
			var mc:MovieClip = new MovieClip();
			clip.addChild(mc);
			mc.name = "_adsocial_ad";
			adsocial_ad = mc;
			
			/* Center the clip */
			
			var wh:Array = ADSocialAd._getRes(options);
			var w:Number = wh[0];
			var h:Number = wh[1];
			mc.x = w * 0.5;
			mc.y = h * 0.5;
			
			var chk:MovieClip = new MovieClip();
			mc.addChild(chk);
			chk.name = "_adsocial_ad_wait";
			mc._adsocial_ad_wait = chk;
			
			chk.x = w * -0.5;
			chk.y = h * -0.5;
			
			bar = new MovieClip();
			chk.addChild(bar);
			bar.name = "_adsocial_ad_bar";
			chk._adsocial_ad_bar = bar;
			
			if (options.no_progress_bar) {
				bar.visible = false;
				delete options.no_progress_bar;
			} else {
				bar.x = 10;
				bar.y = h - 20;
			}
			
			var bar_color:uint = options.color;
			delete options.color;
			
			var bar_background:uint = options.background;
			delete options.background;
			
			var bar_outline:uint = options.outline;
			delete options.outline;
			
			var backing:MovieClip = new MovieClip();
			bar.addChild(backing);
			backing.name = "_outline";
			bar._outline = backing;
			backing.graphics.beginFill(bar_background);
			backing.graphics.moveTo(0, 0);
			backing.graphics.lineTo(w - 20, 0);
			backing.graphics.lineTo(w - 20, 10);
			backing.graphics.lineTo(0, 10);
			backing.graphics.lineTo(0, 0);
			backing.graphics.endFill();
			
			var inside:MovieClip = new MovieClip();
			bar.addChild(inside);
			inside.name = "_inside";
			bar._inside = inside;
			inside.graphics.beginFill(bar_color);
			inside.graphics.moveTo(0, 0);
			inside.graphics.lineTo(w - 20, 0);
			inside.graphics.lineTo(w - 20, 10);
			inside.graphics.lineTo(0, 10);
			inside.graphics.lineTo(0, 0);
			inside.graphics.endFill();
			inside.scaleX = 0;
			
			var outline:MovieClip = new MovieClip();
			bar.addChild(outline);
			bar._outline = outline;
			outline.name = "_outline";
			outline.graphics.lineStyle(0, bar_outline, 100);
			outline.graphics.moveTo(0, 0);
			outline.graphics.lineTo(w - 20, 0);
			outline.graphics.lineTo(w - 20, 10);
			outline.graphics.lineTo(0, 10);
			outline.graphics.lineTo(0, 0);
			
			bar.graphics.lineStyle(0, bar_outline, 100);
			bar.graphics.moveTo(0, 0);
			bar.graphics.lineTo(w - 20, 0);
			bar.graphics.lineTo(w - 20, 10);
			bar.graphics.lineTo(0, 10);
			bar.graphics.lineTo(0, 0);
		}
		public static function showCenterAd(options:Object):void {
			var DEFAULTS:Object = {
				adType:				AdType.CENTER,
				ad_timeout: 		3000,
				fadeout_time: 		250,
				regpt: 				"o",
				method: 			"showCenterAd",
				color: 				0xB5002B,
				background: 		0xFFFFFF,
				outline: 			0x002F6C,
				no_progress_bar: 	false,
				ad_started: 		function ():void { },
				ad_finished: 		function ():void { },
				ad_failed: 			function ():void { trace("[ADSocialAd] Couldn't load an ad, make sure that your game's local security sandbox is configured for Access Network Only and that you are not using ad blocking software"); },
				ad_loaded: 			function (width:Number, height:Number):void { },
				ad_skipped: 		function ():void { },
				ad_progress: 		function (percent:Number):void { },
				ad_clicked:			function ():void { }
			};
			
			options = mergeOptions(options, DEFAULTS);
			ADSocialAd.setOptions(options.adType, options);
			
			if (!ADSocialAd.load(options)) {
				options.ad_failed();
				options.ad_finished();
				return;
			}
			
			options.ad_started();
		}
		public static function showHorisontalAd(options:Object):void {
			var DEFAULTS:Object = {
				adType:				AdType.HORISONTAL,
				ad_timeout: 		3000,
				fadeout_time: 		250,
				regpt: 				"o",
				method: 			"showCenterAd",
				color: 				0xB5002B,
				background: 		0xFFFFFF,
				outline: 			0x002F6C,
				no_progress_bar: 	false,
				ad_started: 		function ():void { },
				ad_finished: 		function ():void { },
				ad_failed: 			function ():void { trace("[ADSocialAd] Couldn't load an ad, make sure that your game's local security sandbox is configured for Access Network Only and that you are not using ad blocking software"); },
				ad_loaded: 			function (width:Number, height:Number):void { },
				ad_skipped: 		function ():void { },
				ad_progress: 		function (percent:Number):void { },
				ad_clicked:			function ():void { }
			};
			
			options = mergeOptions(options, DEFAULTS);
			ADSocialAd.setOptions(options.adType, options);
			
			if (!ADSocialAd.load(options)) {
				options.ad_failed();
				options.ad_finished();
				return;
			}
			
			options.ad_started();

		}
		
		private static function drawTestStuff(obj:Sprite):void {
			obj.graphics.beginFill(0);
			obj.graphics.drawRect(0,0,100,100);
			obj.graphics.endFill();
		}
		
		private static function load(options:Object):Boolean {
			//Local connection setup
			ADSocialServices.setupConnection(options.adType);
			var adSwfPath:String = "http://jupiter.adsocial.ru/app/AdAS3v2.swf";
			if(options.adSWFURL != undefined)
			{
				adSwfPath = options.adSWFURL;
			}
			
			if (adSwfPath.indexOf("?") == -1)
			{
				adSwfPath += "?appType=" + options.adType;
			}
			else
			{
				adSwfPath += "&appType=" + options.adType;
			}
			
			//As swf loader setup
			var adClipLoader:Loader = new Loader();
			adClipLoaders[options.adType] = adClipLoader;
			var request:URLRequest = new URLRequest(adSwfPath);

			if (options.adType == AdType.PRELOAD)
			{
				adClipLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,
					function(event:Event):void {
						bar.visible = false;
						_preloadTimer.addEventListener(TimerEvent.TIMER, stageProgressHandler);
						_preloadTimer.start();
					});
				adClipLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,
					function(event:IOErrorEvent):void {
						options.ad_failed();
						finishAndCleanup(options.adType);
						options.ad_finished();
					});
				adClipLoader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,
					function(event:ProgressEvent):void {
						(bar._inside as MovieClip).scaleX = event.bytesLoaded / event.bytesTotal;
					});
			}
			else
			{
				adClipLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,
					function(event:Event):void {
					});
				adClipLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,
					function(event:IOErrorEvent):void {
						options.ad_failed();
						finishAndCleanup(options.adType);
						options.ad_finished();
					});
				adClipLoader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,
					function(event:ProgressEvent):void { });
			}
			allowDomains(adSwfPath);
			(options.clip as DisplayObjectContainer).addChild(adClipLoader);
			adClipLoader.load(request);
			return true;
		}
		
		private static function stageProgressHandler(event:TimerEvent):void {
			var percent:Number = Math.floor(100 * (ADSocialAd.getOptions(AdType.PRELOAD).clip as DisplayObject).stage.loaderInfo.bytesLoaded / (ADSocialAd.getOptions(AdType.PRELOAD).clip as DisplayObject).stage.loaderInfo.bytesTotal);
			var objectToSend:Object = { event: { name:ADEvent.AD_STAGE_PROGRESS, data:percent }};
			ADSocialServices.sendMessage(JSON.serialize(objectToSend), ADEvent.AD_STAGE_PROGRESS, AdType.PRELOAD);
		}
	
		public static function _getRes(options:Object):Array {
			var w:Number = 0;
			var h:Number = 0;
			if (options.hasOwnProperty("res")) {
				var xy:Array = options.res.split("x");
				w = parseFloat(xy[0]);
				h = parseFloat(xy[1]);
			}
			if ((w == 0 || h == 0) && ((options.clip as DisplayObject).stage != null))
			{
				w = (options.clip as DisplayObject).stage.stageWidth;
				h = (options.clip as DisplayObject).stage.stageHeight;
			}
			return [w, h];
		}
		private static function mergeOptions(options:Object, defaults:Object):Object {
			var optcopy:Object = {};
			var k:String;
			for (k in defaults) {
				optcopy[k] = defaults[k];
			}
			if (options) {
				for (k in options) {
					optcopy[k] = options[k];
				}
			}
			return optcopy;
		}
		private static function allowDomains(server:String):String {
			var hostname:String = server.split("/")[2].split(":")[0];
			
			if( flash.system.Security.sandboxType == "application")
				return hostname;
			
			flash.system.Security.allowDomain("*");
			flash.system.Security.allowDomain(hostname);
			flash.system.Security.allowInsecureDomain("*");
			flash.system.Security.allowInsecureDomain(hostname);
			return hostname;
		}
		public static function finishAndCleanup(adType:String):void {
			if ( adClipLoaders[adType]!= null && (getOptions(adType).clip as DisplayObjectContainer).contains(adClipLoaders[adType] as Loader))
			{
				(getOptions(adType).clip as DisplayObjectContainer).removeChild(adClipLoaders[adType] as Loader);
			}
			if(adType == AdType.PRELOAD)
			{
				if ((getOptions(adType).clip as DisplayObjectContainer).contains(adsocial_ad))
				{
					(getOptions(adType).clip as DisplayObjectContainer).removeChild(adsocial_ad);
				}
				
				if(_preloadTimer != null)
				{
					_preloadTimer.stop();
					_preloadTimer.removeEventListener(TimerEvent.TIMER, stageProgressHandler);
					_preloadTimer = null;
				}
			}
			ADSocialServices.disconnect(adType);
		}
		public static function setOptions(optionsType:String, optionsValue:Object):void {
			if (_options == null)
			{
				_options = new Object();
			}
			if (_options[optionsType] != null)
			{
				trace("Dublicate options definition for type: " + optionsType);
			}
			_options[optionsType] = optionsValue;
		}
		public static function getOptions(optionsType:String):Object {
			return _options[optionsType];
		}

    }
}
