namespace LybLog;

using System;

interface ILoggingFormatter
{
	public void Format(LogLevel pLogLevel, String pMessage, String pFormatedString);
}