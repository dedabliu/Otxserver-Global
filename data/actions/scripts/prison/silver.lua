local config = {
    daily = false,
	centerSilverRoomPosition = Position(33526, 32418, 12)
	}
	silver = {x=33527, y=32419, z=12}

function onUse(cid, item, fromPosition, itemEx)
	local player = Player(cid)
	if not player then
		return true
	end
	if(item.itemid == 22604) then
		if(itemEx.itemid == 22638) then
	        if player:getStorageValue(1) and #Game.getSpectators(silver, false, true, 16, 16, 16, 16) == 0 then
		doTeleportThing(cid, silver)
	        doSummonCreature("terofar", {x=33524, y=32418, z=12})
		doRemoveItem(item.uid, 1)
			end
		end
	end
			local specs, spec = Game.getSpectators(config.centerSilverRoomPosition, false, false, 16, 16, 16, 16)
		for i = 1, #specs do
			spec = specs[i]
			if spec:isPlayer() then
				return true
			end

			spec:remove()
		end
	return true
end