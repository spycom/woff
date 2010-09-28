package ru.vkontakte
{
	public class VKSession 
	{
		private var m_app:VKApp;
		private var m_id:int;
		
		public function VKSession(app:VKApp, session_id:int = 0)
		{
			m_app = app;
			m_id = session_id;
		}
		
		public function get id() : int
		{
			return m_id;
		}
				
		public function getVariable(key:int, cb:Function):void
		{
			if ((key < 2048) || (key > 3071))
				trace("WARNING session variables only in range 2048-3071'")
			var params:Object = {method: 'getVariable', key: String(key)};
			if (m_id)
				params.session = String(m_id);
			m_app.execute(params, cb);
		}

		public function putVariable(key:int, value:String, cb:Function):void
		{
			if ((key < 2048) || (key > 3071))
				trace("WARNING session variables only in range 2048-3071'")
			var params:Object = {method: 'putVariable', key: String(key), value: value};
			if (m_id)
				params.session = String(m_id);
			m_app.execute(params, cb);
		}

		public function getUserVariable(key:int, cb:Function):void
		{
			if ((key < 3072) || (key > 4095))
				trace("WARNING user session variables only in range 3072-4095'")
			var params:Object = {method: 'getVariable', key: String(key)};
			if (m_id)
				params.session = String(m_id);
			m_app.execute(params, cb);
		}

		public function putUserVariable(key:int, value:String, cb:Function):void
		{
			if ((key < 3072) || (key > 4095))
				trace("WARNING user session variables only in range 3072-4095'")
			var params:Object = {method: 'putVariable', key: String(key), value: value};
			if (m_id)
				params.session = String(m_id);
			m_app.execute(params, cb);
		}

		public function sendMessage(message:String, cb:Function):void
		{
			var params:Object = {method: 'sendMessage', message: message};
			if (m_id)
				params.session = String(m_id);
			m_app.execute(params, cb);
		}
		
		public function getMessages(cb:Function, messages_to_get:int = -1): void
		{
			var params:Object = {method: 'getMessages'};
			if (m_id)
				params.session = String(m_id);
			if (messages_to_get >= 0)
				params.messages_to_get = messages_to_get;
			m_app.execute(params, cb);
		}

	}	
}