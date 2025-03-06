var curSection = 0;
var stepDev = 0;

function onCreate()
{
	FlxTween.tween(blackFuck, {alpha: 0}, 0.1);

	PlayState.blackFuck = new FlxSprite().makeGraphic(FlxG.width * 3, FlxG.height * 3, fromRGB(0, 0, 0));
	PlayState.blackFuck.cameras = [PlayState.camOther];
	PlayState.add(PlayState.blackFuck);

	FlxTween.tween(blackFuck, {alpha: 0}, 0.1);
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
			PlayState.cutsceneText.alpha = 0;
			PlayState.cutsceneText.visible = true;
			PlayState.cutsceneText.size = 32;
			PlayState.cutsceneText.fieldWidth = 1000;
			PlayState.cutsceneText.x = 170;
			PlayState.cutsceneText.y = 600;
            PlayState.curCamera.dadZoom = 1;
			PlayState.curCamera.dadPos = [420.95, 370];

		case 496:
			PlayState.curCamera.dadPos = [320.95, 50];

            PlayState.curCamera.dadZoom = 0.8;
			PlayState.removeCinematicBars(1);

		case 512:
			PlayState.curCamera.dadZoom = 1;

		case 1535:
			PlayState.cutsceneText.setFormat(Paths.font("vcr.ttf"), 32, fromRGB(255, 255, 255), CENTER, FlxTextBorderStyle.OUTLINE, fromRGB(0, 0, 0));
			FlxTween.tween(PlayState.cutsceneText, {alpha: 1}, 0.5);

			PlayState.cutsceneText.text = "How could this happen";

		case 1550:
			PlayState.cutsceneText.text = "This is";

		case 1552:
			PlayState.cutsceneText.text = "This is hard to imagine";

		case 1567:
			PlayState.cutsceneText.text = "What";

		case 1568:
			PlayState.cutsceneText.text = "What have I done?";

		case 1583:
			PlayState.cutsceneText.text = "What";

		case 1584:
			PlayState.cutsceneText.text = "What must be done?!";

		case 1600:
			PlayState.cutsceneText.text = "I can't believe this...";

		case 1616:
			PlayState.cutsceneText.text = "Let me be dismissed!";

		case 1632:
			PlayState.cutsceneText.text = "WHY AM I EVEN";

		case 1648:
			PlayState.cutsceneText.setFormat(Paths.font("vcr.ttf"), 32, fromRGB(214, 32, 32), CENTER, FlxTextBorderStyle.OUTLINE, fromRGB(0, 0, 0));
			PlayState.cutsceneText.text = "ON THIS LIST";

		case 1664:
			PlayState.cutsceneText.setFormat(Paths.font("vcr.ttf"), 32, fromRGB(255, 255, 255), CENTER, FlxTextBorderStyle.OUTLINE, fromRGB(0, 0, 0));
			PlayState.cutsceneText.text = "Keep on making";

		case 1680:
			PlayState.cutsceneText.text = "those mistakes";

		case 1694:
			PlayState.cutsceneText.text = "those mistakes and";

		case 1696:
			PlayState.cutsceneText.text = "I'll keep causing";

		case 1712:
			PlayState.cutsceneText.text = "all those quakes";

		case 1728:
			PlayState.cutsceneText.text = "Chaos, trouble";

		case 1742:
			PlayState.cutsceneText.text = "Chaos, trouble all";

		case 1744:
			PlayState.cutsceneText.text = "taste so sour...";

		case 1760:
			PlayState.cutsceneText.text = "WASTING TIME";

		case 1770:
			PlayState.cutsceneText.text = "WASTING TIME WILL";

		case 1772:
			PlayState.cutsceneText.text = "WASTING TIME WILL ONLY";

		case 1776:
			PlayState.cutsceneText.setFormat(Paths.font("vcr.ttf"), 32, fromRGB(214, 32, 32), CENTER, FlxTextBorderStyle.OUTLINE, fromRGB(0, 0, 0));
			PlayState.cutsceneText.text = "GET BY AN HOUR";

		case 1788:
			FlxTween.tween(PlayState.cutsceneText, {alpha: 0}, 0.5, {
				onComplete: function(twn)
				{
					PlayState.cutsceneText.text = "";
					PlayState.cutsceneText.setFormat(Paths.font("vcr.ttf"), 32, fromRGB(255, 255, 255), CENTER, FlxTextBorderStyle.OUTLINE, fromRGB(0, 0, 0));
				}
			});

		case 2432:
			PlayState.curCamera.dadPos = [500.95, 150];
			PlayState.curCamera.dadZoom = 0.6;

		case 2496:
			PlayState.camOther.alpha = 1;
			
			FlxTween.tween(blackFuck, {alpha: 1}, 4);

	}
}

function addCamZoom(game, hud)
{
	PlayState.camGame.zoom += game;
	PlayState.camHUD.zoom += hud;
}
