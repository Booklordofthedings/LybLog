namespace LybLog;
using System;
using System.IO;

class LybLogSettings
{
	//General Settings

	///Current log level, only logs of higher priority than this one will be logged
	public LogLevel LogLevel {get; set;} = .Trace;

	///Event callback for the log message
	public ref Event<delegate void(LogLevel, String)> Callbacks {get; set;} ~ _.Dispose();

 	private String _LogFilePath = new String(".log") ~ delete _;
	///Path in relation to the executing path where the logfile will be save
	public String LogFilePath {
		get
		{
			return _LogFilePath;
		}
		set
		{
			delete _LogFilePath;
			_LogFilePath = new String(value);
		}
	} 

	///How many messages should be written to the cache before it dumps into the logfile
	public uint32 CacheSize {get; set;} = 1;

	///What colors to use for the console output
	public LogColors Colors {get; set;} = new .() ~ delete _;

	public ILoggingFormatter DefaultFormater {get; set;} = new LoggingFormatter() ~ delete _;
	//Toggle Settings

	///Should the logger output to the console
	public bool DoConsoleLog {get; set; } = true;

	///Should the event callbacks be called
	public bool DoCallbackLog {get; set; } = true;

	///Should the logger output to the ide console
	public bool DoIdeLog {get; set; } = false;

	///Should the logger write to the logfile
	public bool DoFileLog {get; set; } = false;

	private bool _ClearLogFileOnLoad = false;
	///Should the logfile be cleared when the application first writes to it
	public bool ClearLogFileOnLoad
	{
		get
		{
			return _ClearLogFileOnLoad;
		}
		set
		{
			if(value == true)
			{ //Clear the logfile
				var res = File.WriteAllText(LogFilePath, "");
			}

			_ClearLogFileOnLoad = value;
		}
	}

}