package com.flamewar.copyright
{
	import com.flamewar.copyright.data.CopyrightModel;
	import com.flamewar.copyright.config.ConfigModel;

	public class CopyrightFactory
	{
		public static function create( data : CopyrightModel, config : ConfigModel, type : String = "" ) : Copyright
		{
			return makeCopyright( data, config, type );
		}
		
		protected static function makeCopyright( data : CopyrightModel, config : ConfigModel, type : String = "" ) : Copyright
		{
			switch( type ){
				case "slide" :
					return new SlideCopyright( data, config );
					break;
				default : 
					return new Copyright( data, config );
					break;
			}
		}
	}
}