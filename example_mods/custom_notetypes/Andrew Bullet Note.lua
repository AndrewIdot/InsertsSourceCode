function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Andrew Bullet Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'GUNNOTE_assets'); --Change texture
            setPropertyFromGroup('unspawnNotes', i, 'missHealth', 1);
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Andrew Bullet Note' then
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);

		local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'dodge';
		elseif noteData == 1 then
			animToPlay = 'dodge';
		elseif noteData == 2 then
			animToPlay = 'dodge';
		elseif noteData == 3 then
			animToPlay = 'dodge';
		end
		characterPlayAnim('dad', 'shoot', true);
		setProperty('dad.specialAnim', true);
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Andrew Bullet Note' then
		characterPlayAnim('dad', 'shoot', true);
		setProperty('dad.specialAnim', true);
	end
end