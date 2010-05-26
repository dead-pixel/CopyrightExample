package com.flamewar.copyright.data
{
	public class CopyrightModel
	{
		private var _copyrightLabel : String;
		private var _rightsLabel : String;
		private var _copyrightSymbol : String;
		private var _companyName : String;
		private var _estSince : int;
		private var _link : String;

		public function get copyrightLabel():String
		{
			return _copyrightLabel || "";
		}

		public function set copyrightLabel(value:String):void
		{
			_copyrightLabel = value;
		}

		public function get rightsLabel():String
		{
			return _rightsLabel || "";
		}

		public function set rightsLabel(value:String):void
		{
			_rightsLabel = value;
		}

		public function get copyrightSymbol():String
		{
			return _copyrightSymbol || "";
		}

		public function set copyrightSymbol(value:String):void
		{
			_copyrightSymbol = value;
		}

		public function get companyName():String
		{
			return _companyName || "";
		}

		public function set companyName(value:String):void
		{
			_companyName = value;
		}

		public function get estSince():int
		{
			return _estSince || null;
		}

		public function set estSince(value:int):void
		{
			_estSince = value;
		}

		public function get link():String
		{
			return _link || "";
		}

		public function set link(value:String):void
		{
			_link = value;
		}

	}
}