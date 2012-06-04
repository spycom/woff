package adsocial.as3 {
	import adsocial.as3.constants.ADEvent;
	import adsocial.as3.constants.ADSocialInteractionType;
	import adsocial.as3.constants.AdType;
	import adsocial.as3.messaging.MessageQueue;
	import adsocial.as3.utils.JSON;
	import adsocial.as3.utils.StringUtil;
	
	import flash.display.DisplayObject;
	import flash.events.DataEvent;
	import flash.events.StatusEvent;
	import flash.net.LocalConnection;

	public class ADSocialServices {
//		private static var _messageQueue:MessageQueue;
		private static var _messageQueues:Object;
		
		private static function getQueue(adType:String):MessageQueue {
			if (_messageQueues == null)
			{
				_messageQueues = new Object();
			}
			return _messageQueues[adType];
		}
		
		public static function setupConnection(adType:String):void {
			var messageQueue:MessageQueue = new MessageQueue(adType);
			messageQueue.connect((ADSocialAd.getOptions(adType).clip as DisplayObject).stage);
			switch(adType)
			{
			case AdType.PRELOAD:
				messageQueue.addListener(receiveMessagePreload);
				break;
			case AdType.CENTER:
				messageQueue.addListener(receiveMessageCenter);
				break;
			case AdType.HORISONTAL:
				messageQueue.addListener(receiveMessageHorisontal);
				break;
			}
			
			if (_messageQueues == null)
			{
				_messageQueues = new Object();
			}
			_messageQueues[adType] = messageQueue;
		}
		public static function sendMessage(message:Object, messageType:String, adType:String = null):void {
			if(adType == null)
			{
				adType = AdType.PRELOAD;
			}
			trace("API Sending message (adType = " + adType + "): )" + message);
			getQueue(adType).sendMessage(message, messageType);
		}
		public static function receiveMessagePreload(dataEvent:DataEvent = null):void {
			receiveMessage(dataEvent, AdType.PRELOAD);
		}
		public static function receiveMessageCenter(dataEvent:DataEvent = null):void {
			receiveMessage(dataEvent, AdType.CENTER);
		}
		public static function receiveMessageHorisontal(dataEvent:DataEvent = null):void {
			receiveMessage(dataEvent, AdType.HORISONTAL);
		}
		public static function receiveMessage(dataEvent:DataEvent, adType:String):void {
			var message:String = dataEvent.data;

			trace("API Recieved message (adType = " + adType + "): " + dataEvent.data);
			
			if(message == null || adType == null)
			{
				return;
			}
			var json:JSON = new JSON();
			var event:Object = JSON.deserialize(message).event;
			var data:Object;

			switch (event.name) {
				case ADEvent.AD_STARTED:
					ADSocialAd.getOptions(adType).ad_started();
				break;
				case ADEvent.AD_FINISHED:
					ADSocialAd.finishAndCleanup(adType);
					ADSocialAd.getOptions(adType).ad_finished();
				break;
				case ADEvent.AD_FAILED:
					ADSocialAd.getOptions(adType).ad_failed();
				break;
				case ADEvent.AD_CLICKED:
					if (ADSocialAd.getOptions(adType).ad_clicked != null)
					{
						ADSocialAd.getOptions(adType).ad_clicked();
					}
				case ADEvent.AD_LOADED:
					data = event.data;
					if (data != null && data.hasOwnProperty("height") && data.height != null && data.hasOwnProperty("height") && data.width)
					{
						ADSocialAd.getOptions(adType).ad_loaded(data.width,  data.height);
					}
				break;
				case ADEvent.AD_SKIPPED:
					ADSocialAd.getOptions(adType).ad_skipped();			
					break;
				case ADEvent.AD_PROGRESS:
					data = event.data;
					if (data != null)
					{
						ADSocialAd.getOptions(adType).ad_progress(data);
					}
				break;
				case ADEvent.AD_GET_CONFIG:
					var res:Array = ADSocialAd._getRes(ADSocialAd.getOptions(adType));
					var optionsToSend:Object = {width:res[0],
					height:res[1],
					gameId:ADSocialAd.getOptions(adType).id };
					var fieldsToPass:Array = new Array("debug", "teaserURL", "socNetwork", "glm", "glw", "glo", "autoStart", "vkAPIParameters", "muteSound", "closeOnClick", "useFaceTopDesign", "sex", "bdate", "vkId");
					var q:Object = ADSocialAd.getOptions(adType);
					for each(var field:String in fieldsToPass)
					{
						if (ADSocialAd.getOptions(adType)[field] != undefined)
						{
							optionsToSend[field] = ADSocialAd.getOptions(adType)[field];
						}
					}
					var objectToSend:Object = {event:{name:"AD_SEND_CONFIG",data:optionsToSend}};
					var stringToSend:String = JSON.serialize(objectToSend);
					sendMessage(stringToSend, "AD_SEND_CONFIG", adType);
				break;
				case ADEvent.AD_GET_STAGE_PROGRESS:
					var percent:Number = Math.floor(100 * (ADSocialAd.getOptions(adType).clip as DisplayObject).stage.loaderInfo.bytesLoaded / (ADSocialAd.getOptions(adType).clip as DisplayObject).stage.loaderInfo.bytesTotal);
					objectToSend = { event: { name:ADEvent.AD_STAGE_PROGRESS, data:percent }};
					ADSocialServices.sendMessage(JSON.serialize(objectToSend), ADEvent.AD_STAGE_PROGRESS, adType);
				break;

			}
		}
		
		public static function disconnect(adType:String):void {
			if(_messageQueues != null && _messageQueues[adType])
			{
				getQueue(adType).disconnect();
			}
		}
	   
		public static function getVersion():String {
			return "0.7.0";
		}
	}
}
