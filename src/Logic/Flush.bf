namespace LybLog;

using System.IO;

extension LybLogger
{
	///Attempts to output the log into logfile and returns the result
	public bool Flush()
	{
	 	var res = File.WriteAllLines(_LogOptions._LogFileDirectory, _Logs, _LogOptions._OverrideLogFile && _HasOverwritten == false ? false : true);

		_HasOverwritten = true;

		if(res case .Err)
			return false;
		else
			return true;
	}
}