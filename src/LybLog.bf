namespace LybLog;

using System;
using System.IO;
using System.Collections;

class LybLog
{
	private static LybLog _Object ~ delete _; //Singleton instance goes here
	public LybLogSettings Settings {get; private set;} = new .() ~ delete _; //Storing the settings in its own class makes the base cleaner
	private List<String> _Cache = new .() ~ Flush(); //Allows file writes to be done in batches

	//Singleton logic
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

}