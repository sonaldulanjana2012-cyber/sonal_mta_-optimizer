-- Sonal Low-End Optimizer for MTA: San Andreas
-- Client-side visual settings only. Does not affect other players or the server.
-- Type /sonal to toggle the lightweight visual preset.

local enabled = false

local function applyPreset(state)
    enabled = state

    if enabled then
        setFarClipDistance(500)
        setFogDistance(500)
        setCloudsEnabled(false)
        setBirdsEnabled(false)
        setHeatHaze(0)
        setBlurLevel(0)
        outputChatBox("#66FF99[Sonal]#FFFFFF Low-end visual preset enabled.", 255, 255, 255, true)
    else
        -- Restore conservative defaults; exact original server settings may vary.
        setFarClipDistance(1000)
        setFogDistance(1000)
        setCloudsEnabled(true)
        setBirdsEnabled(true)
        setHeatHaze(1)
        setBlurLevel(0)
        outputChatBox("#FFCC66[Sonal]#FFFFFF Visual preset disabled (default-like settings restored).", 255, 255, 255, true)
    end
end

addCommandHandler("sonal", function()
    applyPreset(not enabled)
end)

addEventHandler("onClientResourceStart", resourceRoot, function()
    outputChatBox("#66FF99[Sonal]#FFFFFF Optimizer loaded. Type /sonal to toggle.", 255, 255, 255, true)
end)

addEventHandler("onClientResourceStop", resourceRoot, function()
    -- Best-effort reset when resource stops.
    setFarClipDistance(1000)
    setFogDistance(1000)
    setCloudsEnabled(true)
    setBirdsEnabled(true)
    setHeatHaze(1)
    setBlurLevel(0)
end)
