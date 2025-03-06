package states.menus;

import data.ClientPrefs;
import data.CppAPI;
import data.Highscore;
import data.Progression;
import data.Song;
import data.WindowsData;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.addons.transition.FlxTransitionableState;
import flixel.effects.FlxFlicker;
import flixel.graphics.FlxGraphic;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.input.keyboard.FlxKey;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.tweens.misc.NumTween;
import flixel.util.FlxColor;
import flixel.util.FlxSignal.IFlxSignal;
import flixel.util.FlxTimer;
import lime.app.Application;
import lime.graphics.Image;
import lime.tools.WindowData;
import openfl.Lib;
import openfl.filters.BitmapFilter;
import openfl.filters.ShaderFilter;
import states.editors.MasterEditorMenu;
import states.game.CutsceneState;
import states.game.PlayState;
import states.menus.CreditsState;
import states.menus.FreeplaySelectorState.ColorSwap;
import states.options.OptionsState;
import states.substates.ResetScoreSubState;
import util.CoolUtil;
import util.Shaders;

using StringTools;

#if desktop
import util.Discord.DiscordClient;
#end

class UnfinishedState extends MusicBeatState
{
	var canPress:Bool = false;

	override function create()
	{
		super.create();

		FlxG.camera.alpha = 0;

		Lib.application.window.title = "Wednesday's Infidelity";

		var warnText:FlxText = new FlxText(0, 850, FlxG.width, "Thank you for downloading!".toUpperCase(), 21);

		warnText.setFormat("VCR OSD Mono", 80, FlxColor.PURPLE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(warnText);
		warnText.screenCenter();
		warnText.y -= 230;

		var warnText2:FlxText = new FlxText(0, 850, FlxG.width,
			"Hey! PixelBlitzBOI here! Thank you for downloading Wednesday's Infidelity D-Sides Expansion! This project is not an official update to Wednesday's Infidelity and I'm in no way shape or form associated with Box Funkin' or anyone from the W.I. Team (although I do wish that was the case, lmao). I hope you enjoy the mod!. \n\n\n\nPress Enter to Continue",
			21);

		warnText2.setFormat("VCR OSD Mono", 35, FlxColor.WHITE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		warnText2.fieldWidth = 1100;

		add(warnText2);

		warnText2.screenCenter();
		warnText2.y += 80;

		FlxTween.tween(FlxG.camera, {alpha: 1}, 1, {
			onComplete: function(_:FlxTween)
			{
				canPress = true;
			}
		});
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (canPress && (FlxG.keys.justPressed.SPACE || FlxG.keys.justPressed.ENTER))
		{
			canPress = false;

			FlxTween.cancelTweensOf(FlxG.camera);

			FlxTween.tween(FlxG.camera, {alpha: 0}, 1, {
				onComplete: function(_:FlxTween)
				{
					MusicBeatState.switchState(new TitleState());
				}
			});
		}
	}
}
