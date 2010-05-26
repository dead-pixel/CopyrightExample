package com.flamewar.copyright.data
{
	
	import flash.events.Event;
	
	public class CopyrightDataEvent extends Event
	{
		public static const DATA_LOADED : String = "data loaded";
		
		public var data : CopyrightModel;
		
		public function CopyrightDataEvent(type:String, data : CopyrightModel)
		{
			this.data = data;
			super(type, false, false);
		}
		
		override public function clone():Event
		{
			return new CopyrightDataEvent( this.type, this.data );
		}
	}
}