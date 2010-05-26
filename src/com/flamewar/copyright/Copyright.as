package com.flamewar.copyright
{
	import com.flamewar.copyright.config.ConfigModel;
	import com.flamewar.copyright.data.CopyrightModel;
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public class Copyright extends Sprite
	{
		private var data : CopyrightModel;
		protected var config : ConfigModel;
		protected var textfield : TextField;
		
		public function Copyright(data : CopyrightModel, config : ConfigModel)
		{
			this.buttonMode = this.useHandCursor = this.mouseEnabled = true;
			
			this.data = data;
			this.config = config;
			
			var factory : CopyrightTextFactory = new CopyrightTextFactory( config );
			textfield = factory.create( data );
			
			addEventListener(MouseEvent.CLICK, handleClick);
			addEventListener(Event.ADDED_TO_STAGE, init)
		}
		
		protected function init( e : Event ) : void
		{
			textfield.x = this.stage.stageWidth - textfield.width - config.padding;
			textfield.y = this.stage.stageHeight - textfield.height - config.padding;
			addChild( textfield );
			
			hide();
			show(config.speed, config.delay);
		}
		
		private function handleClick( e : MouseEvent ) : void
		{
			navigateToURL( new URLRequest( data.link ), "_self" );
		}
		
		public function show(speed : Number = 0, delay : Number = 0) : void
		{
			this.visible = true;
		}
		
		public function hide(speed : Number = 0) : void
		{
			this.visible = false;
		}
	}
}