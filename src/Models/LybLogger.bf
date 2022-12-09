namespace LybLog;

using System;
using System.Collections;
using LybLog.Models;

class LybLogger
{
	private LybOptions _LogOptions;
	private List<String> _Logs;
	private bool _HasOverwritten = false;

	public this()
	{
		_LogOptions = LybOptions.Default();
		_Logs = new .();
	}
	public ~this()
	{
		delete _Logs;
		delete _LogOptions;
	}

	public String Directory
	{
		public get
 		{
			 return _LogOptions._LogFileDirectory;
		}
		public set
		{
			_LogOptions._LogFileDirectory = new String(value);
		}
	}

	public function void(String, LybLogLevel) Callback
	{
		public get
		{
			//We dont rly want people to read this
			return _LogOptions._OnLogCallback;
		}
		public set
		{
			if(value == null)
				_LogOptions._LogToCallback = false;
			else
			{
				_LogOptions._OnLogCallback = value;
				_LogOptions._LogToCallback = true;
			}
		}
	}

	public bool LogToConsole
	{
		public get
		{
			return _LogOptions._LogToStd;
		}
		public set
		{
			_LogOptions._LogToStd = value;
		}
	}

	public bool OverwriteLogFile
	{
		public get
		{
			return _LogOptions._OverrideLogFile;
		}
		public set
		{
			_LogOptions._OverrideLogFile = value;
		}
	}

	public uint32 FlushMax
	{
		public get
		{
			return _LogOptions._MaxLogLength;
		}
		public set
		{
			_LogOptions._MaxLogLength = value;
		}
	}
}