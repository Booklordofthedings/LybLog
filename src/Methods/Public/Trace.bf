namespace LybLog;

using System;

extension LybLog
{
	#if !LOG_TRACE
	[SkipCall]
	#endif
	///Step by step information about the program
	public void Trace(String pMessage)
	{
		if(Settings.LogLevel.Underlying <= LogLevel.Trace.Underlying)
		{ //Check wether we should even do this
			Console.ForegroundColor = Settings.Colors.Trace;
			Log(.Trace, pMessage);
		}
	}
}