namespace LybLog;

using System;

extension LybLog
{
	#if !LOG_FATAL && !LOG_ERROR && !LOG_WARN && !LOG_INFO && !LOG_DEBUG && !LOG_TRACE
	[SkipCall]
	#endif
	///Unable to continue executing
	public void Fatal(String pMessage)
	{
		if(Settings.LogLevel.Underlying <= LogLevel.Fatal.Underlying)
		{ //Check wether we should even do this
			Console.ForegroundColor = Settings.Colors.Fatal;
			Log(.Fatal, pMessage);
		}
	}
}