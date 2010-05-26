package
{
	import com.flamewar.copyright.Copyright;
	import com.flamewar.copyright.CopyrightFactory;
	import com.flamewar.copyright.SlideCopyright;
	import com.flamewar.copyright.config.ConfigModel;
	import com.flamewar.copyright.config.ConfigService;
	import com.flamewar.copyright.data.CopyrightDataEvent;
	import com.flamewar.copyright.data.CopyrightDataService;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	public class CopyrightExample extends Sprite
	{
		private var flashvars : Object;
		
		public function CopyrightExample()
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init( e : Event ) : void
		{
			flashvars = this.loaderInfo.parameters;
			
			var copyrightData : CopyrightDataService = new CopyrightDataService();
			copyrightData.addEventListener(CopyrightDataEvent.DATA_LOADED, handleDataLoaded);
			copyrightData.loadXML( flashvars.dataSource );
		}
		
		private function handleDataLoaded(e : CopyrightDataEvent) : void
		{
			var configService : ConfigService = new ConfigService();
			var config : ConfigModel = configService.loadConfig( this.loaderInfo.parameters );
			
			var copyright : Copyright = CopyrightFactory.create( e.data, config, loaderInfo.parameters.type );
			addChild( copyright );
		}
	}
}