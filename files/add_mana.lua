local old_generate_gun = generate_gun

function generate_gun(cost, level, force_unshuffle)
	old_generate_gun(cost, level, force_unshuffle)
	local entity_id = GetUpdatedEntityID()
	local extra_spells = {
		'MANA_REDUCE',
	}
	if Random(0, 100) > 30 then
		AddGunAction(entity_id, extra_spells[0])
	end
end
