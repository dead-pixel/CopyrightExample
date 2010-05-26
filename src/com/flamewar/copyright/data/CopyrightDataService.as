package com.flamewar.copyright.data
{
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	public class CopyrightDataService extends EventDispatcher
	{
		public function loadXML( source : String ) : void
		{
			var xmlLoader : URLLoader = new URLLoader( new URLRequest( source ) );
			xmlLoader.addEventListener(Event.COMPLETE, handleXMLComplete);
			xmlLoader.addEventListener(IOErrorEvent.IO_ERROR, handleIOError );
		}
		
		private function handleIOError( e : IOErrorEvent ) : void
		{
			throw new Error( e.text );
		}
		
		private function handleXMLComplete( e : Event ) : void
		{
			try{
				var xml : XML = new XML( e.target.data );
			}
			catch(error:Error){
				throw new Error( error.errorID );
			}
			
			var data : CopyrightModel = new CopyrightModel();
			data.companyName = xml..companyName;
			data.copyrightLabel = xml..copyrightLabel;
			data.copyrightSymbol = xml..copyrightSymbol;
			data.estSince = xml..estSince;
			data.link = xml..link;
			data.rightsLabel = xml..rightsLabel;
			
			dispatchEvent( new CopyrightDataEvent( CopyrightDataEvent.DATA_LOADED, data ) );
		}
	}
}