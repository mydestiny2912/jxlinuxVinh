IL("TITLE"); -- quan li title
--Include("\\script\\vng_lib\\files_lib.lua") -- to read file
-- ChangeOwnFeature(0, -1, nSettingsIdx,  nHelm, nArmor, nWeapon, nHorse)
-- 0 lµ vÜnh viÔn, ®i chung w -1 ®Ó kh«ng set thêi gian
-- 1 lµ cã tÝnh thêi gian, sè thø 2 lµ gi©y * 18
-- nSettingsIdx: -1 lµ nam, -2 lµ n÷
-- b¾t ®Çu tõ 0 lµ h×nh d¹ng npc trong npcs.txt


function main()
	dofile("script/item/lessmoneygift.lua")
	--ITEM_TO_CHECK = loadsavevalue("settings/changefeature/ngoaitrang.txt")
	local ITEM_TO_CHECK = GetTaskTemp(168)
	--Msg2Player("Task value: <color=yellow>"..ITEM_TO_CHECK)
	if ITEM_TO_CHECK== -1 then
		ITEM_TO_CHECK = 4
	end
	local nHelm, nArmor, nWeapon, nHorse, nMaskNPC = GetPlayerFeature(PlayerIndex)
	local nSettingsIdx = -1 - GetSex()
	local nChange = 0
	local step = -1
	local item_type = ""
	--Msg2Player("ITEM_TO_CHECK: <color=yellow>"..ITEM_TO_CHECK)
	if ITEM_TO_CHECK == 4 then
		nChange = nHorse + step
		nHorse = nChange
		item_type = "ngùa"
		ChangeOwnFeature(0, -1, nSettingsIdx,  nHelm, nArmor, nWeapon, nHorse, nMaskNPC)
	elseif ITEM_TO_CHECK == 3 then
		nChange = nWeapon + step
		nWeapon = nChange	
		item_type = "vò khÝ"
		ChangeOwnFeature(0, -1, nSettingsIdx,  nHelm, nArmor, nWeapon, nHorse, nMaskNPC)
	elseif ITEM_TO_CHECK == 2 then
		nChange = nArmor + step
		nArmor = nChange	
		item_type = "¸o"
		ChangeOwnFeature(0, -1, nSettingsIdx,  nHelm, nArmor, nWeapon, nHorse, nMaskNPC)
	elseif ITEM_TO_CHECK == 1 then
		nChange = nHelm + step
		nHelm = nChange	
		item_type = "mò"
		ChangeOwnFeature(0, -1, nSettingsIdx,  nHelm, nArmor, nWeapon, nHorse, nMaskNPC)
	elseif ITEM_TO_CHECK == 0 then
		nChange = nMaskNPC + step
		nMaskNPC = nChange	
		item_type = "MÆt n¹"
		ChangeOwnFeature(0, -1, nMaskNPC)
	end
	Msg2Player("ID "..item_type..": <color=yellow>"..nChange)
	return 1
end
