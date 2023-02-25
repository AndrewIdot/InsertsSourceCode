function onUpdate(elapsed)
	if curStep >= 0 and curStep < 9999 then
		songPos = getSongPosition()
		local currentBeat = (songPos/5000)*(curBpm/60)

		noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 350 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
		noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 350 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)

		noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 350 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
		noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 350 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)

	end
end

function onCreate()
	makeLuaText('credits', 'Screw you!', 512, 10, 690)
	setTextFont('credits', 'comic-sans.ttf')
	addLuaText('credits')
	
	setTextAlignment('credits', 'left')
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if not isSustainNote then
        setProperty('health', getProperty('health') - 0.01)
	end
end

-- partially stolen from a dnb psych port lol
-- im sorry psych engine discord for pretty much helping the d&b porters even though I find the mod to be neat
-- though technically speaking they wont ask dumb shit about moving arrows and health drain anymore because I just made this???