package ru.vkontakte
{
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	import flash.net.URLVariables;
	
	public class VKApp
	{
		private var m_user_id:int;
		private var m_viewer_id:int;
		private var m_group_id:int;
		private var m_api_id:int;
		private var m_api_secret:String;
		private var m_test_mode:Boolean;
		private var m_valid:Boolean;
		
		public function VKApp(app_params:Object, api_id:int, api_secret:String, test_mode:Boolean) 
		{
			m_valid = (Number(app_params.api_id) == api_id); 
			m_user_id = Number(app_params.user_id);
			m_viewer_id = Number(app_params.viewer_id);
			m_group_id = Number(app_params.group_id);
			m_api_id = api_id;
			m_api_secret = api_secret;
			m_test_mode = test_mode;
		}

		public function get is_valid() : Boolean
		{
			return m_valid;
		}
		
		public function get_session(session:int) : VKSession
		{
			return new VKSession(this, session);
		}
		
		public function get session() : VKSession
		{
			return this.get_session(0);
		}
		
		public function get_user(user_id:int): VKUser
		{
			return new VKUser(this, user_id, (user_id == m_viewer_id));
		}		
		
		public function get user(): VKUser
		{
			return this.get_user(m_user_id);
		}
		
		public function get viewer() : VKUser
		{
			return this.get_user(m_viewer_id);
		}
		
		public function get viewer_id(): int
		{
			return m_viewer_id;
		}

		public function get user_id(): int
		{
			return m_user_id;
		}

		public function get group_id(): int
		{
			return m_group_id;
		}
		
		public function get me():Boolean
		{
			return ((m_user_id == m_viewer_id) || ((m_user_id == 0) && (m_group_id == 0)));
		}
		
		private function signature(params:Object):String 
		{
			var keys:Array = new Array();
			for (var k:String in params)
				keys.push(k);
			keys.sort();
			var sig:String = String(this.viewer_id);			
			for (var i:int = 0; i < keys.length; i++)
				sig = sig + keys[i] + "=" + params[keys[i]];
			sig = sig + m_api_secret;
			return MD5.encrypt(sig);
		}
		
		public function execute(params:Object, cb:Function):void
		{
			params.api_id = String(m_api_id);
			if (m_test_mode)
				params.test_mode = "1";
			params.sig = signature(params);
			var request:URLRequest = new URLRequest("http://api.vkontakte.ru/api.php");
			request.method = URLRequestMethod.GET;
			request.data = new URLVariables();
			for (var k:String in params)
				request.data[k] = params[k];

			var loader:URLLoader = new URLLoader();
			loader.dataFormat = URLLoaderDataFormat.TEXT;
			loader.addEventListener(Event.COMPLETE, function(event:Event):void {
				if (cb != null)	cb(XML(loader.data));
			})
			loader.load(request);
		}
		
		public function getVariable(key:int, cb:Function):void
		{
			if (key >= 1024) trace("WARNING: Application variables range 0-1023");
			var params:Object = {method: 'getVariable', key: String(key)};
			this.execute(params, cb);
		}

		public function putVariable(key:int, value:String, cb:Function):void
		{
			if (key >= 1024) trace("WARNING: Application variables range 0-1023");
			var params:Object = {method: 'putVariable', key: String(key), value: value};
			this.execute(params, cb);
		}

		public function getHighScores(cb:Function):void
		{
			var params:Object = {method: 'getHighScores'};
			this.execute(params, cb);
		}
		
		public function setHighScore(score:int, cb:Function):void
		{
			var params:Object = {method: 'getHighScores', score: String(score)};
			this.execute(params, cb);
		}
		
		public function setMaxScores(max_scores:int, cb:Function) : void
		{
			this.putVariable(17, String(max_scores), cb);
		}
		
		public function getServerTime(cb:Function):void
		{
			var params:Object = {method: 'getServerTime'};
			this.execute(params, cb);
		}
	}
}