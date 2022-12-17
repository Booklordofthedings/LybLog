namespace Tests;
using System;
using LybLog;

class Program
{
	public static void Main()
	{
		Log.Settings.CacheSize = 0;




		Console.ReadLine(.. scope .());
	}

	public static void Test(LogLevel pLvel, String message)
	{
		Console.WriteLine("This is the testing callback");
		Console.WriteLine(message);
	}
}