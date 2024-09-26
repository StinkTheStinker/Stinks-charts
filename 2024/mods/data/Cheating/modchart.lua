--Arrow swap Enemy with plyaer Repeating

function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)

--Player Notes

noteTweenX('defaultPlayerStrumX0', 4, defaultPlayerStrumX0 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX('defaultPlayerStrumX1', 5, defaultPlayerStrumX1 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX('defaultPlayerStrumX2', 6, defaultPlayerStrumX2 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX('defaultPlayerStrumX3', 7, defaultPlayerStrumX3 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)

--Opponent Notes

noteTweenX('defaultOpponentStrumX0', 0, defaultOpponentStrumX0 + 320 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX('defaultOpponentStrumX1', 1, defaultOpponentStrumX1 + 320 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX('defaultOpponentStrumX2', 2, defaultOpponentStrumX2 + 320 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX('defaultOpponentStrumX3', 3, defaultOpponentStrumX3 + 320 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
end
