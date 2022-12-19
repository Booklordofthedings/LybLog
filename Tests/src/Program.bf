namespace Tests;
using System;
using LybLog;
class Program
{
	public static void Main()
	{
		Console.WriteLine("First step of testing. All basic logging functions");
		Log.Trace("This is a trace log");
		Log.Debug("This is a debug log");
		Log.Info("This is a info log");
		Log.Warn("This is a warn log");
		Log.Error("This is a error log");
		Log.Fatal("This is a fatal log");
		Console.ReadLine(.. scope .());

		Console.WriteLine("Second step of testing. Logging to the ide");
		Log.Settings.DoConsoleLog = false;
		Log.Settings.DoIdeLog = true;
		Log.Trace("This is a trace log");
		Log.Debug("This is a debug log");
		Log.Info("This is a info log");
		Log.Warn("This is a warn log");
		Log.Error("This is a error log");
		Log.Fatal("This is a fatal log");
		Console.ReadLine(.. scope .());

		Console.WriteLine("Third step of testing. Logging to a callback");
		Log.Settings.DoConsoleLog = false;
		Log.Settings.DoIdeLog = false;
		Log.Settings.DoCallbackLog = true;
		Log.Settings.Callbacks.Add(new => CallbackTest);
		Log.Trace("This is a trace log");
		Log.Debug("This is a debug log");
		Log.Info("This is a info log");
		Log.Warn("This is a warn log");
		Log.Error("This is a error log");
		Log.Fatal("This is a fatal log");
		Console.ReadLine(.. scope .());

		Console.WriteLine("Fourth step of testing. log levels. The followign logs should only show warn or higher");
		Log.Settings.DoCallbackLog = false;
		Log.Settings.DoConsoleLog = true;
		Log.Settings.LogLevel = .Warn;
		Log.Trace("This is a trace log");
		Log.Debug("This is a debug log");
		Log.Info("This is a info log");
		Log.Warn("This is a warn log");
		Log.Error("This is a error log");
		Log.Fatal("This is a fatal log");
		Console.ReadLine(.. scope .());

		Console.WriteLine("Fith step of testing. Logging to a File");
		Log.Settings.DoConsoleLog = false;
		Log.Settings.LogLevel = .Trace;
		Log.Settings.DoFileLog = true;
		Log.Settings.LogFilePath = "test.log";
		Log.Trace("This is a trace log");
		Log.Debug("This is a debug log");
		Log.Info("This is a info log");
		Log.Warn("This is a warn log");
		Log.Error("This is a error log");
		Log.Fatal("This is a fatal log");
		Console.ReadLine(.. scope .());

		Console.WriteLine("Sixth step of testing. Cleaning file upon initialization");
		Console.WriteLine("The test.log file should now be cleared");
		Log.Settings.ClearLogFileOnLoad = true;
		Console.ReadLine(.. scope .());

		Console.WriteLine("Seventh step of testing. File logger caching");
		Console.WriteLine("The file should still have no contents, since it waits for the cache to be fille");
		Log.Settings.CacheSize = 3;
		Log.Settings.DoConsoleLog = true;
		Log.Trace("This is a trace log");
		Log.Debug("This is a debug log");
		Log.Info("This is a info log");
		Console.WriteLine("It has been logged but no contents are in the file");
		Console.ReadLine(.. scope .());
		Log.Warn("This is a warn log");
		Log.Error("This is a error log");
		Console.WriteLine("Warn should be logged but error shouldnt due to cache sizes");
		Console.WriteLine("Once fatal is logged it should be though, since fatal forces a cache empty");
		Console.ReadLine(.. scope .());
		Log.Fatal("This is a fatal log");

		Console.ReadLine(.. scope .());


	}

	public static void CallbackTest(LogLevel p, String pMessage)
	{
		Console.WriteLine(scope $"{p.ToString(.. scope .())} This is a callback: {pMessage}");
	}
}