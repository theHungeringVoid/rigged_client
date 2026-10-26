dofile('data/scripts/lib/mod_settings.lua') -- see this file for documentation on some of the features.

local old_generate_gun = generate_gun

function generate_gun(cost, level, force_unshuffle)
	old_generate_gun(cost, level, force_unshuffle)
	local entity_id = GetUpdatedEntityID()

	local extra_spells = {}

	local mana = ModSettingGet('more_mana.MANA_REDUCE')
	if mana then
		table.insert(extra_spells, 'MANA_REDUCE')
	end

	local chainsaw = ModSettingGet('more_mana.CHAINSAW')
	if chainsaw then
		table.insert(extra_spells, 'CHAINSAW')
	end

	if Random(0, 100) > 00 then
        local spell = extra_spells[Random(1, #extra_spells)]
        AddGunAction(entity_id, spell)
		-- for i, spell in pairs(extra_spells) do
			-- if Random(0, 100) > 20 then
				-- -- AddGunAction(entity_id, 'MANA_REDUCE')
				-- AddGunAction(entity_id, spell)
				-- break
			-- end
		-- end
	end
end
