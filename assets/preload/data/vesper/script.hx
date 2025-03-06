var curSection = 0;
var stepDev = 0;

function onStepHit()
{
	switch (curStep)
	{
		case 382:
			PlayState.addCinematicBars(1);

			FlxTween.tween(PlayState.camHUD, {alpha: 0}, 1);

			PlayState.isCameraOnForcedPos = true;

			PlayState.followChars = false;
        case 383:
			PlayState.camFollow.set(600, 0);

			PlayState.cameraStageZoom = false;

			PlayState.defaultCamZoom = 0.6;
        case 384:
			PlayState.gf.animation.callback = function(name, frameNumber, frameIndex)
			{
				if (name == "spawn" && frameNumber == 6 && PlayState.infernogroundparts["p1"] != null)
				{
					PlayState.remove(PlayState.gf);
					PlayState.insert(PlayState.members.indexOf(PlayState.infernogroundparts["p1"]) - 1, PlayState.gf);
				}
			};

			PlayState.gf.alpha = 1;

			PlayState.isCameraOnForcedPos = false;

			PlayState.followChars = true;
        case 385:
			PlayState.curCamera.dadZoom = 1;
        case 442:
			FlxTween.tween(PlayState.camHUD, {alpha: 1}, 1);
			PlayState.cameraStageZoom = true;
        case 442:
			PlayState.curCamera.dadZoom = 1.5;
		case 512:
			PlayState.removeCinematicBars(1);
        case 513:
			PlayState.curCamera.dadZoom = 0.67;
    }
}