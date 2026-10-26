local old_generate_gun = generate_gun

function generate_gun(cost, level, force_unshuffle)
	old_generate_gun(cost, level, force_unshuffle)
	local entity_id = GetUpdatedEntityID()
	local extra_spells = {
		'MANA_REDUCE',
		'CHAINSAW',
	}
	for i, spell in pairs(extra_spells) do
		if Random(0, 100) > 30 then
			-- AddGunAction(entity_id, 'MANA_REDUCE')
			AddGunAction(entity_id, spell)
			break
		end
	end
end
