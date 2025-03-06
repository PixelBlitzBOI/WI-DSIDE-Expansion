var curSection = 0;
var stepDev = 0;

function onStepHit()
{
	if (curStep % 16 == 0)
	{
		curSection = Math.floor(curStep / 16);
	}

	stepDev = Math.floor(curStep % 16) + 1;

	switch (curStep)
	{
		
        case 544:
			PlayState.blackFuck = new FlxSprite().makeGraphic(FlxG.width * 3, FlxG.height * 3, fromRGB(0, 0, 0));
			PlayState.blackFuck.cameras = [PlayState.camOther];
			PlayState.add(PlayState.blackFuck);

			if (PlayState.blackFuck != null)
				FlxTween.tween(PlayState.blackFuck, {alpha: 0}, 0.0000000000000000000000000001);

		case 560:
			if (PlayState.blackFuck != null)
				FlxTween.tween(PlayState.blackFuck, {alpha: 1}, 4);
	}
}

function addCamZoom(game, hud)
{
	PlayState.camGame.zoom += game;
	PlayState.camHUD.zoom += hud;
}
