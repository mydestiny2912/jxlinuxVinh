Include("\\script\\lib\\awardtemplet.lua")

function OnDeath() 
	if GetTask(14) == 90*256 then
		SetTask(14,100*256)
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,5100,1,0,0}, nBindState = -2}, "T­íng LÜnh Thñ CÊp", 1);
		Msg2Player("Mang thñ cÊp quay vÒ gÆp Nh¹c §×nh.")  
	end
end 