namespace LybLog;

using System;

extension LybLog
{
	#if !LOG_WARN && !LOG_INFO && !LOG_DEBUG && !LOG_TRACE
	[SkipCall]
	#endif
	///Unexpected things, that may be problems down the line but could be fixed by the program
	public void Warn(String pMessage)
	{
		if(Settings.LogLevel.Underlying <= LogLevel.Warn.Underlying)
		{ //Check wether we should even do this
			Console.ForegroundColor = Settings.Colors.Warn;
			Log(.Warn, scope .(scope $"[{DateTime.Now}]:[Warn]:{pMessage}"),pMessage);
		}
	}
}