-- i stole this script from the psych discord and slightly modified it please dont kill me

-- - andrew

--Script Config: Images
--Find these inside of mods/images
local ThreeImage = 'bitch'
local TwoImage = 'ready'
local OneImage = 'set'
local GoImage =	'go'

--Script Config Fade
--controls how the stuff fades out
local FadeTime = 0.5
local FadeEase = 'CircInOut'

function onCreate()--precaching and loading images and sounds

	makeLuaSprite('CountOne', OneImage, 0, 0)
	screenCenter('CountOne', 'xy')
	setObjectCamera('CountOne', 'other')
	setProperty('CountOne.alpha', 0)

	makeLuaSprite('CountTwo', TwoImage, 0, 0)
	screenCenter('CountTwo', 'xy')
	setObjectCamera('CountTwo', 'other')
	setProperty('CountTwo.alpha', 0)
	
	makeLuaSprite('CountThree', ThreeImage, 0, 0)
	screenCenter('CountThree', 'xy')
	setObjectCamera('CountThree', 'other')
	setProperty('CountThree.alpha', 0)
	
	makeLuaSprite('CountGO', GoImage, 0, 0)
	screenCenter('CountGO', 'xy')
	setObjectCamera('CountGO', 'other')
	setProperty('CountGO.alpha', 0)
	
	addLuaSprite('CountThree', true)
	addLuaSprite('CountTwo', true)
	addLuaSprite('CountOne', true)
	addLuaSprite('CountGO', true)
	
end

function onEvent(name, value1, value2)
	if name == "CustomCountdown" then
		text = value1;
		sound = value2;
		if text == 'three' and sound == 'on' then --Three
			setProperty('CountThree.alpha', 1)
			doTweenAlpha('ThreeFade', 'CountThree', 0, FadeTime, FadeEase)
		elseif text == 'two' and sound == 'on' then --Two
			setProperty('countdownReady.visible', false)
			setProperty('CountTwo.alpha', 1)
			doTweenAlpha('TwoFade', 'CountTwo', 0, FadeTime, FadeEase)
		elseif text == 'one' and sound == 'on' then --One
			setProperty('countdownSet.visible', false)
			setProperty('CountOne.alpha', 1)
			doTweenAlpha('OneFade', 'CountOne', 0, FadeTime, FadeEase)
		elseif text == 'go' and sound == 'on' then --Go!
			setProperty('countdownGo.visible', false)
			setProperty('CountGO.alpha', 1)
			doTweenAlpha('GoFade', 'CountGO', 0, FadeTime, FadeEase)
		elseif text == 'three' and sound == 'off' then --Three
			setProperty('CountThree.alpha', 1)
			doTweenAlpha('ThreeFade', 'CountThree', 0, FadeTime, FadeEase)
		elseif text == 'two' and sound == 'off' then --Two
			setProperty('countdownReady.visible', false)
			setProperty('CountTwo.alpha', 1)
			doTweenAlpha('TwoFade', 'CountTwo', 0, FadeTime, FadeEase)
		elseif text == 'one' and sound == 'off' then --One
			setProperty('countdownSet.visible', false)
			setProperty('CountOne.alpha', 1)
			doTweenAlpha('OneFade', 'CountOne', 0, FadeTime, FadeEase)
		elseif text == 'go' and sound == 'off' then --Go!
			setProperty('countdownGo.visible', false)
			setProperty('CountGO.alpha', 1)
			doTweenAlpha('GoFade', 'CountGO', 0, FadeTime, FadeEase)
		end
	end
end
