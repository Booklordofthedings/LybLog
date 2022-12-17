namespace LybLog;

using System;
using System.IO;
using System.Collections;

class LybLog
{
	private static LybLog _Object ~ delete _;

	public static LybLog Log
	{
		get
		{
			if(_Object == null)
				_Object = new .();

			return _Object;
		}
		private set {}
	}

	private this() {} //Private constructor so no one else can create this object


	public LybLogSettings Settings {get; private set;} = new .() ~ delete _;
	private List<String> _Cache = new .() ~ delete _;
}