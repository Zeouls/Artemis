----------------------------------------------------------------------------------
-------------------------------- Artemis LUA file --------------------------------
----------------------------------------------------------------------------------

-- This is a default script to be executed by Artemis.
-- You do not need to use this if you don't want to script. The default profiles
-- should provide you with a lot of functionality out of the box.
-- However, if you wan't to change the way profiles work, this is the ideal way 
-- go about it.

-- For docs and examples, see wiki: https://github.com/SpoinkyNL/Artemis/wiki/LUA

-- Note: You are editing a temporary file. Whenever you save this file the 
-- changes are applied to the profile and the script is restarted.

-- This event is raised after every profile update, before drawing.
function updateHandler(profile, eventArgs)
	-- In this example we only want to update once per frame when the keyboard is updated
    if eventArgs.DeviceType != "keyboard" then
        return
    end
	
	-- Custom update code here
end

-- This event is raised after every profile draw, after updating.
function drawHandler(profile, eventArgs)
	-- In this example we only want to draw to the keyboard
    if eventArgs.DeviceType != "keyboard" then
        return
    end
	
	-- Custom draw code here
end


-- Register the default events, you can rename/remove these if you so desire.
-- These events are raised every 40 ms (25 times a second).
Events.DeviceUpdating.add(updateHandler);
Events.DeviceDrawing.add(drawHandler);