package data;

import flixel.FlxG;

class Progression
{
	public static var beatMainWeek:Bool = false;
	public static var badEnding:Bool = false;
	public static var goodEnding:Bool = false;
	public static var beatHell:Bool = false;
	public static var goodEndingOswald:Bool = false;
	public static var badEndingOswald:Bool = false;
	public static var beatGoodOswald:Bool = false;
	public static var beatBadOswald:Bool = false;
	public static var beatOswald:Bool = false;

	public static var weekProgress:Map<String, {song:String, weekMisees:Int}> = [];

	public static function load()
	{
		if (FlxG.save.data.beatmainweek != null) // W.I SAVES
		{
			beatMainWeek = FlxG.save.data.beatmainweek;
		}
		if (FlxG.save.data.gotbadending != null)
		{
			badEnding = FlxG.save.data.gotbadending;
		}
		if (FlxG.save.data.gotgoodending != null)
		{
			goodEnding = FlxG.save.data.gotgoodending;
		}
		if (FlxG.save.data.beathell != null)
		{
			beatHell = FlxG.save.data.beathell;
		}

		// Oswald Week Stuff
		if (FlxG.save.data.gotoswaldbad != null)
		{
	     	badEndingOswald = FlxG.save.data.gotoswaldbad;
		}
		if (FlxG.save.data.gotoswaldgood != null)
		{
			goodEndingOswald = FlxG.save.data.gotoswaldgood;
		}
		if (FlxG.save.data.beatGoodOswald != null)
		{
			beatGoodOswald = FlxG.save.data.beatGoodOswald;
		}
		if (FlxG.save.data.beatBadOswald != null)
		{
			beatBadOswald = FlxG.save.data.beatGoodOswald;
		}
		if (FlxG.save.data.beatOswald != null)
			{
				beatOswald = FlxG.save.data.beatOswald;
			}

		// Week Progress Stuff
		if (FlxG.save.data.weekProgress != null)
		{
			weekProgress = FlxG.save.data.weekProgress;
		}
	}

	public static function save()
	{
		FlxG.save.data.beatmainweek = beatMainWeek;
		FlxG.save.data.gotbadending = badEnding;
		FlxG.save.data.gotgoodending = goodEnding;
		FlxG.save.data.beathell = beatHell;
		FlxG.save.data.gotoswaldbad = badEndingOswald;
		FlxG.save.data.gotoswaldgood = goodEndingOswald;
		FlxG.save.data.weekProgress = weekProgress;
		FlxG.save.data.beatOswald = beatOswald;

		FlxG.save.flush();
	}

	public static function reset()
	{
		beatMainWeek = false;
		badEnding = false;
		goodEnding = false;
		beatHell = false;
		goodEndingOswald = false;
		badEndingOswald = false;
		beatOswald = false;
		weekProgress = [];

		save();
	}
}
