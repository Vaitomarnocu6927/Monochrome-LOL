function onEvent(name, value1, value2)
	if name == "HideHud" then
		doTweenAlpha('camHUD','camHUD', 0, 1, 'linear')
		runTimer('wait', value1);
	end
	function onTimerCompleted(tag, loops, loopsleft)
		if tag == 'wait' then
			doTweenAlpha('camHUD','camHUD', 1, 1, 'linear') 
		end
	end
end