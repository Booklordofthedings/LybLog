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

### Installation
1. Download or clone the repo to your computer (Move it to your beeflibs folder if you plan on using LybLog in multiple projects)
2. Open your project in the BeefIde
3. Rightclick on your workspace
   - Select: "Add from Installed" if it is in your beeflibs folder
   - Select: "Add existing Project" if it is somehwere else
4. Find LybLog in the explorer and select its .toml file
5. Rightclick on your project in the workspace
6. Go to Properties -> Dependencies and check the box that says LybLog
7. In the file you want to use the logger add a using LybLog statement or simply say LybLog.Log.Methodname(Message). You can now use LybLog in your project

