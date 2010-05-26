package com.flamewar.copyright.config
{

	public class ConfigService
	{
		public function loadConfig( data : Object ) : ConfigModel
		{
			var config : ConfigModel = new ConfigModel();
			config.speed = data.speed;
			config.delay = data.delay;
			config.padding = data.padding;
			config.font = data.font;
			config.size = data.size;
			config.color = data.color;
			config.bold = data.bold;
			config.italic = data.italic;
			config.underlined = data.underlined;
			
			return config;
		}
	}
}