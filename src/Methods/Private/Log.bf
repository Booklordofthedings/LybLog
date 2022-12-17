namespace LybLog;

using System;

extension LybLog
{
	private void Log(LogLevel pLL, String pMessage, String pRawMessage)
	{
		if(Settings.DoConsoleLog)
			Console.WriteLine(pMessage);
		if(Settings.DoIdeLog)
			System.Diagnostics.Debug.WriteLine(pMessage);

	}
}