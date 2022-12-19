namespace LybLog;

using System;
using System.IO;

extension LybLog
{
	///Will write all cached messages to the logfile if logfile is active
	public void Flush()
	{
		for(var i in _Cache)
		{
			File.WriteAllText(Settings.LogFilePath, scope $"{i}{Environment.NewLine}",true).IgnoreError();
		}

		ClearAndDeleteItems(_Cache);
	}
}