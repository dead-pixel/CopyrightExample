package com.flamewar.copyright
{
	import com.flamewar.copyright.config.ConfigModel;
	import com.flamewar.copyright.data.CopyrightModel;
	
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;

	public class CopyrightTextFactory
	{
		protected var format : TextFormat;
		
		public function CopyrightTextFactory( config : ConfigModel ) : void
		{
			this.format = new TextFormat();
			format.font = config.font;
			format.size = config.size;
			format.color = config.color;
			format.bold = config.bold;
			format.underline = config.underlined;
			format.italic = config.italic;
		}
		
		public function create( data : CopyrightModel ) : TextField
		{
			return makeTextField( data );
		}
		
		protected function makeTextField( data : CopyrightModel ) : TextField
		{
			var tf : TextField = new TextField();
			
			var currentYear : Date = new Date();
			
			tf.text = data.copyrightLabel + 
				data.copyrightSymbol + " " + 
				data.estSince + "-" + currentYear.getFullYear().toString() + " " +
				data.companyName + ". " +
				data.rightsLabel + ".";
			
			tf.selectable = false;
			tf.autoSize = TextFieldAutoSize.LEFT;
			tf.setTextFormat( this.format );
			
			return tf;
		}
	}
}