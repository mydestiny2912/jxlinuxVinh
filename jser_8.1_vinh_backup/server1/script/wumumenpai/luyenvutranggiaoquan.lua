-----------------------------------------------------
function main() 
	dofile("script/wumumenpai/luyenvutranggiaoquan.lua")
	if GetTask(12) == 50*256 and GetLevel() >= 20 then
		Describe("LuyÖn Vò Trµng Gi¸o Quan: Ng­¬i cã muèn vµo vâ tr­êng b©y giê kh«ng?",2,"H·y ®­a ta vµo/nv2x2","§Ó ta suy nghÜ l¹i/no")
	elseif GetTask(12) == 340*256 and GetLevel() >= 50 then
		Describe("LuyÖn Vò Trµng Gi¸o Quan: Ng­¬i cã muèn vµo vâ tr­êng b©y giê kh«ng?",2,"H·y ®­a ta vµo/nv5x3","§Ó ta suy nghÜ l¹i/no")
	elseif GetTask(13) == 10*256 and GetLevel() >= 50 then
		Describe("LuyÖn Vò Trµng Gi¸o Quan: Ng­¬i cã muèn vµo vâ tr­êng b©y giê kh«ng?",2,"H·y ®­a ta vµo/nvkydanhdetu2","§Ó ta suy nghÜ l¹i/no")
	else
		Talk(1,"","LuyÖn Vò Trµng Gi¸o Quan: Muèn n©ng cao vâ c«ng, th× ph¶i chÞu khã häc hái vµ rÌn luyÖn.")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------
function nv2x2() 
	local npc1 = AddNpcEx(2478, 20, 0, SubWorldID2Idx(1042), 1502*32, 3091*32, 1, "C¸t Khang", 0)
	SetNpcScript(npc1, "\\script\\wumumenpai\\danhdienvotruong1.lua")
	local npc2 = AddNpcEx(2479, 20, 0, SubWorldID2Idx(1042), 1505*32, 3091*32, 1, "Th­ NhuÖ", 0)
	SetNpcScript(npc2, "\\script\\wumumenpai\\danhdienvotruong1.lua")	
	NewWorld(1042, 1508, 3089)
	SetFightState(1) 
end 
------------------------------------------------------------------------------------------------------------------------------------------
function nv5x3() 
	local npc1 = AddNpcEx(2493, 20, 0, SubWorldID2Idx(1042), 1507*32, 3091*32, 1, "Ng­u Th«ng", 0)
	SetNpcScript(npc1, "\\script\\wumumenpai\\tinhanhsuhuynh.lua")
	NewWorld(1042, 1508, 3089)
	SetFightState(1) 
	AddTimer(1 * 60 * 18, "OnTimeout", npc1) -- 1 phut
end 


function nvkydanhdetu2()
	local nIndex = AddNpc(2491, 1, SubWorldID2Idx(1042), 1502*32, 3091*32, 1, "C­êng Gi¶")
	SetNpcScript(nIndex,"\\script\\wumumenpai\\cuonggia.lua")
	AddTimer(1 * 60 * 18, "OnTimeout", nIndex) -- 5 phut
	NewWorld(1042,1508,3089)
	SetFightState(1) 
end

function OnTimeout(nNpcIndex)
	DelNpc(nNpcIndex);
end
------------------------