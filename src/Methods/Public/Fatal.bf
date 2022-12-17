namespace LybLog;

using System;

extension LybLog
{
	#if !LOG_FATAL && !LOG_ERROR && !LOG_WARN && !LOG_INFO && !LOG_DEBUG && !LOG_TRACE
	[SkipCall]
	#endif
	///Unable to continue executing
	public void Fatal()
	{

	}
}