# LybLog - A simple logger for beeflang

```cs
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

### Basics
- LybLog is a singleton and has somewhat resonable default settings, so for its default usage you can simply just call the basic functions and pass in your message and it will work fine for you. The basic functions provided are: Trace, Debug, Info, Warn, Error and Fatal
- Log levels or log severity are the importance of what is being logged. LybLog provides 6 common log levels, which are as follows.
  - Trace: The lowest log level, used to give detailed information about what one specific part of the program is doing.
  - Debug: Information, such as variable values used to debug the program.
  - Info: General information about the programs state, like a system that has been loaded sucessfully or wether the program connected to a server.
  - Warn: Something is not how it is supposed to be but the program can still continue and might be able to ignore it, but might also error in the future.
  - Error: An error occured and now a part of the program wont execute correctly. It might still be possible to recover from this.
  - Fatal: An error occured that forces the entire program to stop
  
### Preprocessor
While you can simply just set your log level to a higher level for release builds, the log level is still a dynamic value so there will always be a check left which might have an impact on the performance of the program. By using a workspace define preprocessor you can set a minimal log level at compile time, which should cause some performance improvements without needing to remove trace calls.

### Settings
The settings object on the logger can be used to set specific settings at runtime.  
Settings that start with "Do" toggle the thing they are about, such as wether it should log to console or a file  
Settings also provides a color option for the console, alllows the user to set the logfilepath and has an option to clear the logfile on every new program start.
```
Log.Settings.DoConsoleLog = true;
Log.Settings.DoIdeLog = true;
Log.Settings.Colors.Debug = .Blue;
Log.Settings.LogFilePath = ".log";
```
### Callbacks 
Callbacks are a way for the user to get information back about when something is being logged.  
Settings has a callback even object which the user can register events to that will be called when a log function is called.
```
Log.Settings.Callbacks.Add(new => MyMethodName);
```
The callback itself gets the log level of the message aswell as an unformatted message string and can do with that whatever it wants.

### Formatter
As a user you may need a custom formatter so the settings object also has an IFormatter interface, which you can inherit from to create your own message formatter.