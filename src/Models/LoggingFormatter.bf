namespace LybLog;

using System;

class LoggingFormatter : ILoggingFormatter
{
	void ILoggingFormatter.Format(LogLevel pLogLevel, System.String pMessage, System.String pFormatedString)
	{
		switch(pLogLevel)
		{
			case .Trace:
				pFormatedString.Append(scope $"[{DateTime.Now}]:[TRACE]:{pMessage}");
			case .Debug:
				pFormatedString.Append(scope $"[{DateTime.Now}]:[DEBUG3]:{pMessage}");
			case .Info:
				pFormatedString.Append(scope $"[{DateTime.Now}]:[INFO]:{pMessage}");
			case .Warn:
				pFormatedString.Append(scope $"[{DateTime.Now}]:[WARN]:{pMessage}");
			case .Error:
				pFormatedString.Append(scope $"[{DateTime.Now}]:[ERROR]:{pMessage}");
			case .Fatal:
				pFormatedString.Append(scope $"[{DateTime.Now}]:[FATAL]:{pMessage}");
		}
	}
}