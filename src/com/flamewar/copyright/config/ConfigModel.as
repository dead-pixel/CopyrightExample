package com.flamewar.copyright.config
{
	public class ConfigModel
	{
		private var _padding : int;
		private var _speed : Number;
		private var _delay : Number;
		private var _font : String;
		private var _size : int;
		private var _color : int;
		private var _bold : Boolean;
		private var _underlined : Boolean;
		private var _italic : Boolean;

		public function get padding():int
		{
			return _padding || 10;
		}

		public function set padding(value:int):void
		{
			_padding = value;
		}

		public function get speed():Number
		{
			return _speed || 0.5;
		}

		public function set speed(value:Number):void
		{
			_speed = value;
		}

		public function get delay():Number
		{
			return _delay || 0.5;
		}

		public function set delay(value:Number):void
		{
			_delay = value;
		}

		public function get italic():Boolean
		{
			return _italic || false;
		}

		public function set italic(value:Boolean):void
		{
			_italic = value;
		}

		public function get underlined():Boolean
		{
			return _underlined || false;
		}

		public function set underlined(value:Boolean):void
		{
			_underlined = value;
		}

		public function get bold():Boolean
		{
			return _bold || false;
		}

		public function set bold(value:Boolean):void
		{
			_bold = value;
		}

		public function get color():int
		{
			return _color || 0x000000;
		}

		public function set color(value:int):void
		{
			_color = value;
		}

		public function get size():int
		{
			return _size || 12;
		}

		public function set size(value:int):void
		{
			_size = value;
		}

		public function get font():String
		{
			return _font || "Arial";
		}

		public function set font(value:String):void
		{
			_font = value;
		}

	}
}