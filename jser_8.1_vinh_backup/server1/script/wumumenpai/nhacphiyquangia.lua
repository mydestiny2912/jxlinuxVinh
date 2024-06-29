Include("\\script\\lib\\progressbar.lua")

---------------------------------------------------------------------
local _GetFruit = function(nItemIndex)
	ConsumeEquiproomItem(1,6,1,5094,-1)
	SetTask(12,30*256) NewWorld(1042,1624,3130)
	Talk(1,"","ThÊt m· ng« giang thïy trø tiªn, duy c«ng nh­îng qu¶n ®éc tranh tiªn. <enter> Tr­¬ng hoµng m¹o h­u tam thiªn sÜ, thè chñ cµn kh«n thËp lôc niªn.")
end

local _OnBreak = function()
	Msg2Player("Qu¸ tr×nh thu thËp bÞ gi¸n ®o¹n.")
end

function main()
	dofile("script/wumumenpai/nhacphiyquangia.lua")
	if (GetTask(12) == 20*256 and GetLevel() >= 10) then
		tbProgressBar:OpenByConfig(10, %_GetFruit,{nItemIdx}, %_OnBreak)
	end
end

