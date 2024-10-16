function onCreatePost()
    runHaxeCode 'Main.fpsVar.visible = false;'
    makeLuaText 'fpsTxt'
    setObjectCamera('fpsTxt', 'other')
    runHaxeCode "game.getLuaObject('fpsTxt').setBorderStyle(Type.resolveEnum('flixel.text.FlxTextBorderStyle').NONE);"
    setProperty('fpsTxt.x', 10)
    setProperty('fpsTxt.y', 3)
    setProperty('fpsTxt.size', 20)
    addLuaText 'fpsTxt'

end
function onDestroy()
	runHaxeCode 'Main.fpsVar.visible = true;'
end
function onCreate()
    for i,lib in pairs{'ClientPrefs', 'Conductor', 'Math', 'Highscore', 'Type', 'Main', 'Note'} do
        addHaxeLibrary(lib)
    end
    addHaxeLibrary('FPS', 'openfl.display')
end
function onUpdatePost()
	local fps = runHaxeCode 'return Main.fpsVar.currentFPS;'
    setProperty('fpsTxt.text', 'FPS: '..tostring(fps))
end