namespace LybLog;

using System;
using System.Diagnostics;

extension LybLog
{
	private void Log(LogLevel pLL, String pMessage)
	{
		var fMessage = Settings.DefaultFormater.Format(pLL, pMessage, .. scope String());

		if(Settings.DoConsoleLog)
			Console.WriteLine(fMessage);

		if(Settings.DoIdeLog)
			Debug.WriteLine(fMessage);

		if(Settings.DoCallbackLog && Settings.Callbacks.HasListeners)
			Settings.Callbacks(pLL, pMessage);
			
		if(Settings.DoFileLog)
		{
			_Cache.Add(new String(fMessage));
			if(_Cache.Count > Settings.CacheSize)
				Flush();
		}
		Console.ForegroundColor = .White;
	}
}