namespace LybLog;

using System;

extension LybLog
{
	#if !LOG_INFO && !LOG_DEBUG && !LOG_TRACE
	[SkipCall]
	#endif
	///General step information, such as a system being loaded
	public void Info(String pMessage)
	{
		if(Settings.LogLevel.Underlying <= LogLevel.Info.Underlying)
		{ //Check wether we should even do this
			Console.ForegroundColor = Settings.Colors.Info;
			Log(.Info, pMessage);
		}
	}
}