package com.flamewar.copyright
{
	import com.flamewar.copyright.config.ConfigModel;
	import com.flamewar.copyright.data.CopyrightModel;
	import com.greensock.TweenLite;
	
	public class SlideCopyright extends Copyright
	{
		public function SlideCopyright(data:CopyrightModel, config:ConfigModel)
		{
			super(data, config);
		}
		
		override public function show(speed:Number=0, delay : Number = 0):void
		{
			TweenLite.to( textfield, speed, { x : this.stage.stageWidth - textfield.width - this.config.padding, delay : delay } );
		}
		
		override public function hide(speed:Number=0):void
		{
			TweenLite.to( textfield, speed, { x : this.stage.stageWidth } );
		}
	}
}