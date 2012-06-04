package adsocial.as3.messaging
{
	import adsocial.as3.commands.ILCCommand;
	import adsocial.as3.commands.LCCommand;
	import adsocial.as3.constants.ADEvent;
	import adsocial.as3.constants.ADSocialInteractionType;
	import adsocial.as3.constants.DataEventNames;
	import adsocial.as3.utils.JSON;
	import adsocial.as3.constants.AdType;
	
	import flash.display.Stage;
	import flash.events.DataEvent;
	import flash.events.EventDispatcher;
	import flash.events.StatusEvent;
	import flash.net.LocalConnection;
	
	public class MessageQueue
	{
		private var _connected:Boolean = false;
		
		private var _queue:Array;
		private var _eventDispatcher:EventDispatcher;
		private var _stage:Stage;
		private var _adType:String;
		
		public static const MESSAGE_RECEIVED_PRELOAD:String = "adsocial.as3.messaging.MessageRecievedPreload";
		public static const MESSAGE_RECEIVED_CENTER:String = "adsocial.as3.messaging.MessageRecievedCenter";
		public static const MESSAGE_RECEIVED_HORISONTAL:String = "adsocial.as3.messaging.MessageRecievedHorisontal";
		
		public function MessageQueue(adType:String)
		{
			this._adType = adType;
			_eventDispatcher = new EventDispatcher();
		}
		public function connect(stage:Stage):void {
			this._stage = stage;
			
			this._stage.addEventListener(getEventNameFrom(), stageDataEventHandler);
			_connected = true;
		}
		private function stageDataEventHandler(event:DataEvent):void {
			receiveMessage(event.data)
		}
		public function addListener(listener:Function):void {
			_eventDispatcher.addEventListener(getEventNameMessageRecieved(), listener);
		}
		public function getEventNameTo():String {
			switch(_adType)
			{
			case AdType.PRELOAD:
				return DataEventNames.TO_AD_SWF;
			case AdType.CENTER:
				return DataEventNames.TO_CENTER_AD_SWF;
			case AdType.HORISONTAL:
				return DataEventNames.TO_HORISONTAL_AD_SWF;
			}
			return null;
		}
		public function getEventNameFrom():String {
			switch(_adType)
			{
			case AdType.PRELOAD:
				return DataEventNames.FROM_AD_SWF;
			case AdType.CENTER:
				return DataEventNames.FROM_CENTER_AD_SWF;
			case AdType.HORISONTAL:
				return DataEventNames.FROM_HORISONTAL_AD_SWF;
			}
			return null;
		}
		public function getEventNameMessageRecieved():String {
			switch(_adType)
			{
			case AdType.PRELOAD:
				return MESSAGE_RECEIVED_PRELOAD;
			case AdType.CENTER:
				return MESSAGE_RECEIVED_CENTER;
			case AdType.HORISONTAL:
				return MESSAGE_RECEIVED_HORISONTAL;
			}
			return null;
		}
		public function sendMessage(message:Object, type:String):void {
			var dataEvent:DataEvent;
			dataEvent = new DataEvent(getEventNameTo());
			dataEvent.data = message as String;
			this._stage.dispatchEvent(dataEvent);
		}
		
		public function receiveMessage(message:String):void {
			var dataEvent:DataEvent;
			dataEvent = new DataEvent(getEventNameMessageRecieved());
			dataEvent.data = message;
			_eventDispatcher.dispatchEvent(dataEvent);
		}
		
		public function disconnect():void {
			if(_connected)
			{
				this._stage.removeEventListener(getEventNameFrom(), stageDataEventHandler);
				_connected = false;
			}
		}
	}
}