local botplayshit = 0

function onUpdate()
	if botPlay and botplayshit == 0 then
		triggerEvent('Change Character', 0, 'bf-tf2machine')
		setTextString('botplayTxt', 'HI I AM VERY BAD AT THE GAME')
		setTextFont('botplayTxt', 'tf2build.ttf')
		botplayshit = 1
	end
	if not botPlay and botplayshit == 1 then
		triggerEvent('Change Character', 0, 'bf')
		botplayshit = 0
	end
end