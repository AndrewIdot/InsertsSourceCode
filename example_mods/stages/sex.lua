function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'tf2', 0, 0);
	setScrollFactor('stageback', 1, 1);
	screenCenter('stageback', 'xy')

	addLuaSprite('stageback', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end