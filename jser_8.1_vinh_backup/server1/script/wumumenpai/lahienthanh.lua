function OnDeath () 
	if (GetTask(12) >= 280*256 and GetTask(12) <= 310*256 and GetLevel() >= 40) then
		local nIndex1 = AddNpc(2489,40,SubWorldID2Idx(101),1452*32,3273*32,1,"H푖 Y Nh쯰")
		SetNpcScript(nIndex1,"\\script\\wumumenpai\\hacynhan.lua")
		local nIndex2 = AddNpc(2489,40,SubWorldID2Idx(101),1446*32,3273*32,1,"H푖 Y Nh쯰")
		SetNpcScript(nIndex2,"\\script\\wumumenpai\\hacynhan.lua")
		local nIndex3 = AddNpc(2489,40,SubWorldID2Idx(101),1446*32,3281*32,1,"H푖 Y Nh쯰")
		SetNpcScript(nIndex3,"\\script\\wumumenpai\\hacynhan.lua")
		local nIndex4 = AddNpc(2489,40,SubWorldID2Idx(101),1455*32,3278*32,1,"H푖 Y Nh쯰")
		SetNpcScript(nIndex4,"\\script\\wumumenpai\\hacynhan.lua")
	end
end 

--function OnTimeout(nIndex)
--	DelNpc(nIndex);
--end