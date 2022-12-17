namespace LybLog;

using System;
using System.Diagnostics;

extension LybLog
{
	private void Log(LogLevel pLL, String pMessage, String pRawMessage)
	{
		if(Settings.DoConsoleLog)
			Console.WriteLine(pMessage);

		if(Settings.DoIdeLog)
			Debug.WriteLine(pMessage);

		if(Settings.DoCallbackLog && Settings.Callbacks.HasListeners)
			Settings.Callbacks(pLL, pRawMessage);
			
		if(Settings.DoFileLog)
		{
			_Cache.Add(pMessage);
			if(_Cache.Count > Settings.CacheSize)
				Flush();
		}
	}
}