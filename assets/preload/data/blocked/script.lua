function onUpdate(elapsed)
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
	    setProperty('inCutscene', true)
		loadSong('Cheating')
	end
end