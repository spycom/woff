package adsocial.as3.commands
{
	public class LCCommand extends ILCCommand
	{
		public function LCCommand(message:String, type:String, timestamp:Number): void
		{
			this.message = message;
			this.type = type;
			this.timestamp = timestamp;
		}

	}
}