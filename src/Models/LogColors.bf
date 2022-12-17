namespace LybLog.Models;

using System;

class LogColors
{
	public ConsoleColor Trace {get; set;} = .Cyan;
	public ConsoleColor Debug {get; set;} = .Blue;
	public ConsoleColor Info {get; set;} = .Gray;
	public ConsoleColor Warn {get; set;} = .Yellow;
	public ConsoleColor Error {get; set;} = .Red;
	public ConsoleColor Fatal {get; set;} = .DarkRed;
}