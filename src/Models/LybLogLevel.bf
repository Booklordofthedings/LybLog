namespace LybLog.Models;

public enum LybLogLevel
{
 Trace = 0, //Log every single call
 Debug = 1, //Information only needed on debug
 Info = 2, //General Information
 Warning = 3, //Unintended behavior might lead to errors down the line
 Error = 4, //An error occured that could be recovered from
 Fatal = 5 //Unrecoverable error occured, the program will be terminated
}