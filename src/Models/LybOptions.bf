namespace LybLog.Models;

using System;

class LybOptions
{
	public LybLogLevel _LogSeverity; //What calls should actually be logged, can be dynamically changed
	public String _LogFileDirectory; //Where to save the log file
	public bool _OverrideLogFile; //Wether the log file should be overwriten whenever the system is stared
	public bool _LogToStd; //Wether the program should call console.writeline on a given input
	public bool _LogToCallback; //Wether to call the callback function when a log event happens
	public function void(String, LybLogLevel) _OnLogCallback; //The function to call when a log event happends
	public uint32 _MaxLogLength; //The maximum amount of stored logs before it will be flushed

	///Returns a sensible default option selection
	public static LybOptions Default()
	{
		var toReturn = new LybOptions();
		toReturn._LogSeverity = .Info;
		toReturn._LogFileDirectory = new String(".log");
		toReturn._OverrideLogFile = false;
		toReturn._LogToStd = true;
		toReturn._LogToCallback = false;
		toReturn._OnLogCallback = null;
		toReturn._MaxLogLength = 0;
		return toReturn;
	}

	public ~this()
	{
		delete _LogFileDirectory;
	}
}