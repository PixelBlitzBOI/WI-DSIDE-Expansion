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
			PlayState.curCamera.dadZoom = 0.85;
			PlayState.curCamera.bfZoom = 1;

		case 64:
			FlxTween.tween(PlayState.blackFuck, {alpha: 0}, 4);

		case 1088:
			PlayState.curCamera.dadZoom = 1;

		case 1216:
			PlayState.curCamera.dadZoom = 0.85;

		case 1616:
			PlayState.curCamera.dadZoom = 1;

		case 1760:
			FlxTween.tween(PlayState.blackFuck, {alpha: 1}, 1);
	}
}

function addCamZoom(game, hud)
{
	PlayState.camGame.zoom += game;
	PlayState.camHUD.zoom += hud;
}
