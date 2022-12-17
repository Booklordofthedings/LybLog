namespace LybLog;
/*
	This file creates a global acessor for the logger class,
	Allowing the user to do Log.Warn and not having to do LybLog.Log.Warn
*/

public static
{
	public static LybLog Log
	{
		get { return LybLog.Log; }
		private set; //Its a singleton so we dont rly want people to set it
	}
}