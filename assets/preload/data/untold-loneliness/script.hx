var curSection = 0;
var stepDev = 0;

function onCreate()
{
	PlayState.camZooming = false;
}

function onStepHit()
{
	if (curStep % 16 == 0)
	{
		curSection = Math.floor(curStep / 16);
	}

	stepDev = Math.floor(curStep % 16) + 1;

	if (curSection >= 43 && curSection <= 58)
	{
		if (curStep % 8 == 0)
		{
			addCamZoom(0.15, 0.06);
		}
	}

	if (curStep == 792)
	{
		addCamZoom(0.15, 0.06);
	}

	if (curSection >= 24 && curSection <= 31)
	{
		if (stepDev == 1 || stepDev == 7)
		{
			addCamZoom(0.15, 0.06);
		}
		if (stepDev == 13 || stepDev == 15)
		{
			addCamZoom(0.2, 0.07);
		}
	}

	if (curSection >= 33 && curSection <= 48 || curSection >= 82 && curSection <= 144)
	{
		if (curStep % 4 == 0)
		{
			addCamZoom(0.2, 0.07);

			/*
				var beatdev = (curStep % 4) % 2;

				if (beatdev == 0)
				{
					FlxTween.tween(PlayState.camHUD, {y: -1000}, ((60 / PlayState.SONG.bpm) * 1000));
				}

				if (beatdev == 1)
				{
					FlxTween.tween(PlayState.camHUD, {y: 0}, ((60 / PlayState.SONG.bpm) * 1000));
				}
			 */
		}
	}

	if (curStep == 1384 || curStep == 1308)
	{
		addCamZoom(0.2, 0.07);
	}

	switch (curStep)
	{
		case 1:
			PlayState.cutsceneText.alpha = 0;
			PlayState.cutsceneText.visible = true;
			PlayState.cutsceneText.size = 32;
			PlayState.cutsceneText.fieldWidth = 1000;
			PlayState.cutsceneText.x = 170;
			PlayState.cutsceneText.y = 600;
		case 208:
			PlayState.addCinematicBars(0.5, 12);
			FlxTween.tween(FlxG.camera, {zoom: 1.2}, 3.62);

			FlxTween.tween(PlayState.cutsceneText, {alpha: 1}, 0.5);

			PlayState.cutsceneText.text = "Alright, Alright";

			PlayState.followChars = false;
			PlayState.isCameraOnForcedPos = true;
			PlayState.camFollow.set(PlayState.dad.getGraphicMidpoint().x + 70, PlayState.dad.getGraphicMidpoint().y);

			PlayState.camHUD.alpha = 1;
		case 233:
			PlayState.cutsceneText.text = "Let's get this over with.";
			PlayState.cutsceneText.setFormat(Paths.font("vcr.ttf"), 32, fromRGB(214, 32, 32), CENTER, FlxTextBorderStyle.OUTLINE, fromRGB(0, 0, 0));
		case 258:
			FlxTween.tween(PlayState.cutsceneText, {alpha: 0}, 0.5, {
				onComplete: function(twn)
				{
					PlayState.cutsceneText.text = "";
					PlayState.cutsceneText.setFormat(Paths.font("vcr.ttf"), 32, fromRGB(255, 255, 255), CENTER, FlxTextBorderStyle.OUTLINE, fromRGB(0, 0, 0));
				}
			});
			PlayState.followChars = true;
			PlayState.removeCinematicBars(0.5);
		case 792:
			PlayState.curCamera.bfZoom = 1.3;

			PlayState.curCamera.dadZoom = 1.3;

			PlayState.addCinematicBars(1);
		case 1048:
			PlayState.followChars = false;
			PlayState.isCameraOnForcedPos = true;
			PlayState.camZooming = false;

			FlxTween.tween(PlayState.camHUD, {alpha: 0}, 0.3);

			FlxTween.tween(FlxG.camera, {zoom: 1.1}, 2);

			PlayState.camFollow.set(PlayState.dad.getGraphicMidpoint().x - 70, PlayState.dad.getGraphicMidpoint().y);

			FlxTween.tween(PlayState.cutsceneText, {alpha: 1}, 0.2);

			PlayState.cutsceneText.text = "In the end, we all..";
		case 1072:
			PlayState.cutsceneText.setFormat(Paths.font("vcr.ttf"), 40, fromRGB(214, 32, 32), CENTER, FlxTextBorderStyle.OUTLINE, fromRGB(0, 0, 0));
			PlayState.cutsceneText.text = "DIE.";
			PlayState.cutsceneText.size = 36;
			PlayState.camZooming = false;
			FlxTween.cancelTweensOf(FlxG.camera);
			FlxTween.tween(FlxG.camera, {zoom: 1.3}, 0.2, {
				onComplete: function(twn)
				{
					FlxG.camera.zoom = 1.3;
					new FlxTimer().start(0.25, function(tmr)
					{
						FlxTween.tween(FlxG.camera, {zoom: 1.1}, 0.2, {
							ease: FlxEase.quadInOut,
							onComplete: function(twn)
							{
								FlxTween.tween(FlxG.camera, {zoom: 1.2}, 7);
							},
						});
					});
				}
			});
		case 1080:
			PlayState.cutsceneText.setFormat(Paths.font("vcr.ttf"), 32, fromRGB(255, 255, 255), CENTER, FlxTextBorderStyle.OUTLINE, fromRGB(0, 0, 0));
			PlayState.cutsceneText.text = "Why should I, even try.";
			PlayState.camFollow.set(PlayState.dad.getGraphicMidpoint().x + 170, PlayState.dad.getGraphicMidpoint().y);
		case 1110:
			PlayState.cutsceneText.text = "Gun in hand, my life shall end..";
			PlayState.cutsceneText.applyMarkup("Gun in hand, $my life shall end..$",
				[new FlxTextFormatMarkerPair(new FlxTextFormat(fromRGB(214, 32, 32)), "$")]);
			PlayState.camFollow.set(PlayState.dad.getGraphicMidpoint().x - 70, PlayState.dad.getGraphicMidpoint().y);
		case 1140:
			PlayState.cutsceneText.setFormat(Paths.font("vcr.ttf"), 32, fromRGB(214, 32, 32), CENTER, FlxTextBorderStyle.OUTLINE, fromRGB(0, 0, 0));
			PlayState.cutsceneText.text = "MY SUFFERING SHALL BE KNOWN, FRIEND!";
			PlayState.camFollow.set(PlayState.dad.getGraphicMidpoint().x + 170, PlayState.dad.getGraphicMidpoint().y - 10);
		case 1168:
			FlxTween.tween(PlayState.cutsceneText, {alpha: 0}, 0.5, {
				onComplete: function(twn)
				{
					PlayState.cutsceneText.text = "";
					PlayState.cutsceneText.setFormat(Paths.font("vcr.ttf"), 32, fromRGB(255, 255, 255), CENTER, FlxTextBorderStyle.OUTLINE, fromRGB(0, 0, 0));
				}
			});

			PlayState.followChars = true;
			PlayState.camZooming = true;

			FlxTween.tween(PlayState.camHUD, {alpha: 1}, 1);
			PlayState.healthBar.alpha = 0;
			PlayState.healthBarBG.alpha = 0;
			PlayState.iconP1.alpha = 0;
			PlayState.iconP2.alpha = 0;
			PlayState.scoreGroup.alpha = 0;
			PlayState.timeBarBG.alpha = 0;
			PlayState.timeBar.alpha = 0;
			PlayState.timeTxt.alpha = 0;
		case 1176:
			PlayState.cutsceneText.text = "";
		case 1270:
			PlayState.followChars = false;
			PlayState.isCameraOnForcedPos = true;
			PlayState.camZooming = false;
			PlayState.camFollow.set(PlayState.dad.getGraphicMidpoint().x + 70, PlayState.dad.getGraphicMidpoint().y);
		case 1297:
			PlayState.cutsceneText.setFormat(Paths.font("vcr.ttf"), 46, fromRGB(214, 32, 32), CENTER, FlxTextBorderStyle.OUTLINE, fromRGB(0, 0, 0));
			PlayState.cutsceneText.alpha = 1;
			PlayState.cutsceneText.text = "RAAAH!";
		case 1304:
			PlayState.cutsceneText.setFormat(Paths.font("vcr.ttf"), 32, fromRGB(255, 255, 255), CENTER, FlxTextBorderStyle.OUTLINE, fromRGB(0, 0, 0));
			PlayState.cutsceneText.text = "";

			PlayState.healthBar.alpha = 1;
			PlayState.healthBarBG.alpha = 1;
			PlayState.iconP1.alpha = 1;
			PlayState.iconP2.alpha = 1; // poop
			PlayState.scoreGroup.alpha = 1;
			PlayState.timeBarBG.alpha = 1;
			PlayState.timeBar.alpha = 1;
			PlayState.timeTxt.alpha = 1;

			PlayState.followChars = true;
			PlayState.camZooming = true;
			PlayState.curCamera.bfZoom = 1;

			PlayState.curCamera.dadZoom = 0.8;

			PlayState.removeCinematicBars(0.5);
		case 1808:
			PlayState.camFollow.set(PlayState.dad.getGraphicMidpoint().x + 70, PlayState.dad.getGraphicMidpoint().y);
			PlayState.followChars = false;
			PlayState.isCameraOnForcedPos = true;
			PlayState.camZooming = false;
		case 1816:
			PlayState.followChars = true;
			PlayState.camZooming = true;

		case 2072:
			PlayState.addCinematicBars(1);

			PlayState.curCamera.bfZoom += 0.2;

			PlayState.curCamera.dadZoom += 0.2;
		case 2328:
			PlayState.removeCinematicBars(1);

			PlayState.curCamera.bfZoom -= 0.2;

			PlayState.curCamera.dadZoom -= 0.2;

			FlxTween.tween(PlayState.camHUD, {alpha: 0}, 1.5);
	}
}

function addCamZoom(game, hud)
{
	PlayState.camGame.zoom += game;
	PlayState.camHUD.zoom += hud;
}
