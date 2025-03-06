var curSection = 0;
var stepDev = 0;

function onCreate()
{
	PlayState.blackFuck = new FlxSprite().makeGraphic(FlxG.width * 3, FlxG.height * 3, fromRGB(0, 0, 0));
	PlayState.blackFuck.cameras = [PlayState.camOther];
	PlayState.add(PlayState.blackFuck);
}

function onStepHit()
{
	if (curStep % 16 == 0)
	{
		curSection = Math.floor(curStep / 16);
	}
	stepDev = Math.floor(curStep % 16) + 1;

	switch (curStep)
	{
		case 1:
			PlayState.curCamera.dadZoom = 0.75;
			PlayState.curCamera.bfZoom = 0.75;

		case 8:
			FlxTween.tween(PlayState.blackFuck, {alpha: 0}, 6);
		case 128:
			PlayState.curCamera.dadZoom = 0.85;
			PlayState.curCamera.bfZoom = 0.85;

		case 383:
			PlayState.curCamera.dadZoom = 1;
			PlayState.curCamera.bfZoom = 1;
			FlxTween.tween(PlayState.blackFuck, {alpha: 1}, 0.0000000000000000000000000000000000000000000000000000000000000001);
			FlxTween.tween(PlayState.blackFuck, {alpha: 0}, 1);

		case 640:
			PlayState.curCamera.dadZoom = 0.75;
			PlayState.curCamera.bfZoom = 0.75;
			PlayState.addCinematicBars(1, 7);
		    FlxTween.tween(PlayState.voidBG, {alpha: 0}, 1);

		case 1023:
			FlxTween.tween(PlayState.voidBG, {alpha: 1}, 1);

			PlayState.removeCinematicBars(1);
			PlayState.curCamera.dadZoom = 0.9;
			PlayState.curCamera.bfZoom = 0.9;

		case 1279:
			PlayState.curCamera.dadZoom = 0.8;
			PlayState.curCamera.bfZoom = 0.8;
			PlayState.addCinematicBars(1, 7);
		    FlxTween.tween(PlayState.voidBG, {alpha: 0.5}, 1);
		
		case 1535:
			PlayState.curCamera.bfZoom = 0.9;
			PlayState.removeCinematicBars(1);
			FlxTween.tween(PlayState.voidBG, {alpha: 0}, 1);
		
		case 1663:
			PlayState.curCamera.dadZoom = 0.5;
			PlayState.addCinematicBars(1);

		case 1791:
			PlayState.curCamera.dadZoom = 0.9;
			PlayState.curCamera.bfZoom = 0.9;
			PlayState.removeCinematicBars(1);
			FlxTween.tween(PlayState.voidBG, {alpha: 1}, 1);
        case 2048:
		    PlayState.curCamera.dadZoom = 0.8;
			PlayState.curCamera.bfZoom = 0.8;
			PlayState.addCinematicBars(1);
		    FlxTween.tween(PlayState.voidBG, {alpha: 0.5}, 1);

		case 2176:
			FlxTween.tween(PlayState.voidBG, {alpha: 0.1}, 1);
	}
}

function addCamZoom(game, hud)
{
	PlayState.camGame.zoom += game;
	PlayState.camHUD.zoom += hud;
}
