function OnDeath () 
	if GetTask(12) == 90*256 and GetLevel() >= 20 then
		SetTask(12,100*256)
		Msg2Player("Quay l¹i gÆp C¸t Khang.") 
		AddNote("Quay l¹i gÆp C¸t Khang.")
		Talk(1,"","Du TÈu M¹i Hãa Lang: Xin h·y tha cho ta, ta sÏ kh«ng bao giê d¸m n÷a!")
	end
	local npcindex = AddNpc(2484, 1, SubWorldID2Idx(179), 1875*32, 2636*32, 1, "Th­¬ng gia");
	SetNpcScript(npcindex, "\\script\\wumumenpai\\dutaumaihoalang.lua")
end 