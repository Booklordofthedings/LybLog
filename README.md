# LybLog - A simple logger for beeflang

```
namespace MyProgram;

using LybLog;

class Program
{
	public static void Main()
	{
		Log.Settings.DoFileLog = true; //Log to a logfile
		Log.Info("Started the program");
		Log.Warn("About to close the program");
	}
}
```

### Table of contents
- Installation
- Basics
  - Logging
  - Log Levels
- Preprocessor
- Settings
- Callbacks
- Formatting

