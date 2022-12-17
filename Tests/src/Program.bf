namespace Tests;
using System;
using LybLog;

class Program
{
	public static void Main()
	{
		Log.Settings.Callbacks.Add(new => Test);
		Log.Settings.Callbacks(.Debug, "Test");




		Console.ReadLine(.. scope .());
	}

	public static void Test(LogLevel pLvel, String message)
	{
		Console.WriteLine("This is the testing callback");
		Console.WriteLine(message);
	}
}