namespace LybLog;

using System;

extension LybLog
{
	#if !LOG_DEBUG && !LOG_TRACE
	[SkipCall]
	#endif
	///Variable values needed for debugging
	public void Debug(String pMessage)
	{
		if(Settings.LogLevel.Underlying <= LogLevel.Debug.Underlying)
		{ //Check wether we should even do this
			Console.ForegroundColor = Settings.Colors.Debug;
			Log(.Debug, pMessage);
		}
	}
}