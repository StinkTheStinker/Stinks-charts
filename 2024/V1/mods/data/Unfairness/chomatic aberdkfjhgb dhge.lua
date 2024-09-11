function onDestroy()
  setPropertyFromClass('ClientPrefs', 'ghostTapping', true)
end

function onCreate()
  setPropertyFromClass('ClientPrefs', 'ghostTapping', false)
end
