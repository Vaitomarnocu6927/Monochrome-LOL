function onCreate()
	setProperty('camHUD.alpha', 0.75);
	setProperty('skipCountdown', true);
	setProperty('cameraSpeed', 10);
	setPropertyFromClass('FlxTransitionableState', 'skipNextTransIn', true);
	setPropertyFromClass('FlxTransitionableState', 'skipNextTransOut', true);
	changeAssets(false);
end

function onStepHit()
	if curStep == 128 then
	changeAssets(true);
	end
	if curStep == 1664 then
	setProperty('cameraSpeed', 1.25);
	setProperty('defaultCamZoom', 0.6);
	end
end

function hideArrows()
	setPropertyFromGroup('opponentStrums',0,'alpha','0')
	setPropertyFromGroup('opponentStrums',1,'alpha','0')
	setPropertyFromGroup('opponentStrums',2,'alpha','0')
	setPropertyFromGroup('opponentStrums',3,'alpha','0')
end

function changeAssets(x)
	setProperty('boyfriend.visible', false);
	hideArrows();
	setProperty('camHUD.visible', x);
end