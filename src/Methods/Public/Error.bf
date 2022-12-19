namespace LybLog;

using System;

extension LybLog
{
	#if !LOG_ERROR && !LOG_WARN && !LOG_INFO && !LOG_DEBUG && !LOG_TRACE
	[SkipCall]
	#endif
	///An error in the execution of a specific part of the code, program can still continue
	public void Error(String pMessage)
	{
		if(Settings.LogLevel.Underlying <= LogLevel.Trace.Underlying)
		{ //Check wether we should even do this
			Console.ForegroundColor = Settings.Colors.Error;
			Log(.Error, pMessage);
		}
	}
}