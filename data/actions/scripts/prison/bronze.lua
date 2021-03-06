local config = {
    daily = false,
	centerBronzeRoomPosition = Position(33565, 32416, 12)
	}
	bronze = {x=33570, y=32418, z=12}

function onUse(cid, item, fromPosition, itemEx)
	local player = Player(cid)
	if not player then
		return true
	end
				local specs, spec = Game.getSpectators(config.centerBronzeRoomPosition, false, false, 16, 16, 16, 16)
		for i = 1, #specs do
			spec = specs[i]
			if spec:isPlayer() then
				return true
			end

			spec:remove()
		end
	if(item.itemid == 22606) then
		if(itemEx.itemid == 22636) then
	        if player:getStorageValue(1) and #Game.getSpectators(bronze, false, true, 16, 16, 16, 16) == 0 then
		doTeleportThing(cid, bronze)
	        doSummonCreature("zavarash", {x=33565, y=32418, z=12})
		doRemoveItem(item.uid, 1)
			end
    end
   end
	return true
end