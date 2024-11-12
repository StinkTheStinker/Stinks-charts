-- https://gamebanana.com/mods/447880
notesToLookFor = {3, 0, 1, 2}
cheatingModChart = true
messWithNotePositions = true

function enableCheatingModchart()
  debugPrint('enabling')
  cheatingModChart = true
  messWithNotePositions = true
end
function onSpawnNote(id, data, type, sus)
  if cheatingModChart then
    setPropertyFromGroup('unspawnNotes', id, 'copyX', false)
    if sus then
      setPropertyFromGroup('unspawnNotes', id, 'offset.x', getPropertyFromGroup('unspawnNotes', id, 'width') / -2)
    else
      setPropertyFromGroup('unspawnNotes', id, 'flipX', getRandomBool(50))
      setPropertyFromGroup('unspawnNotes', id, 'flipY', getRandomBool(50))
    end
  end
end
function onUpdate()
  if not inGameOver then
    if messWithNotePositions then
      for i=0,getProperty('notes.length')-1 do
        local strum = getPropertyFromGroup('notes', i, 'mustPress') and 'playerStrums' or 'opponentStrums'
        setPropertyFromGroup('notes', i, 'x', getPropertyFromGroup(strum, notesToLookFor[getPropertyFromGroup('notes', i, 'noteData')+1], 'x'))
      end
    end
  end
end
