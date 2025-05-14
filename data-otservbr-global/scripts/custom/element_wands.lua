local elementWand = Action()
local elements = {
    ["Holy"] = { index = 1 },
    ["Ice"] = { index = 2 },
    ["Fire"] = { index = 3 },
    ["Energy"] = { index = 4 },
    ["Death"] = { index = 5 },
    ["Earth"] = { index = 6 }
}


function elementWand.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local modal = ModalWindow{
        title = "Choose element",
        message = "Select the element you want to change to"
    }

    for elementName, elementObj in pairs(elements) do
        modal:addChoice(
            elementName,
            function(player, button, choice)
                if (button.name == 'Cancel') then
                    return true
                end
                if player:getStorageValue(Storage.WandOfElements) == elementObj.index then
                    player:sendCancelMessage('You are already using this element.')
                    player:getPosition():sendMagicEffect(CONST_ME_POFF)
                    return false
                end
                player:setStorageValue(Storage.WandOfElements, elementObj.index)
                player:sendTextMessage(MESSAGE_LOOK, 'Element changed to: ' .. elementName)
                player:save()
                return true
            end
        )
    end
    modal:addButton('Select')
    modal:addButton('Cancel')
    modal:sendToPlayer(player)
    return true
end

elementWand:id(34091, 43885, 43886, 34090, 43882, 43883, 47373, 47372, 49528, 49882, 49883, 49884, 49529, 49885, 49886, 49887)
elementWand:register()
