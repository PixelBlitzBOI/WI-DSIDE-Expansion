var curSection = 0;
var stepDev = 0;

function onStepHit()
{
	switch (curStep)
	{
		case 60:
			PlayState.addCinematicBars(0.75, 12);

			PlayState.camZooming = false;

			FlxTween.tween(FlxG.camera, {zoom: 1}, 3);

			FlxTween.tween(PlayState.camHUD, {alpha: 0}, 1);
		case 123:
			PlayState.removeCinematicBars(1);
			FlxTween.tween(PlayState.camHUD, {alpha: 1}, 1);
			PlayState.cameraStageZoom = true;
		case 400:
			PlayState.addCinematicBars(0.75, 12);

			PlayState.camZooming = false;

			FlxTween.tween(FlxG.camera, {zoom: 1}, 3);
		case 784:
			PlayState.removeCinematicBars(1);
	}
}
