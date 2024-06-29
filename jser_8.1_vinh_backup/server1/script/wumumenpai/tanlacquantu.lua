Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")
--------------------------------------------------
local nHideTime = 80
---------------------------------------------------------------------------------------------------------------------------------------------------------------
local _OnBreak = function()
	Msg2Player("Thu thÀp Æ∑ bﬁ gi∏n Æoπn.")
end
----------------------------------------------------------------------
local _GetAward = function(nNpcIndex, dwNpcId)

	if nNpcIndex <= 0 or GetNpcId(nNpcIndex) ~= dwNpcId then
		return
	end
	
	if IsNpcHide(nNpcIndex) == 1 then
		return 0
	end

	if CalcFreeItemCellCount() < 1 then
		Talk(1,"","H∑y chıa 1 ´ trËng r≠¨ng hµnh trang")
		return
	end

	if (GetTask(12) == 120*256) then
		SetTask(12,130*256)
	elseif (GetTask(12) == 130*256) then
		SetTask(12,140*256)
	elseif (GetTask(12) == 140*256) then
		SetTask(12,150*256)
	elseif (GetTask(12) == 150*256) then
		SetTask(12,160*256)
	elseif (GetTask(12) == 160*256) then
		SetTask(12,170*256)
	end
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,5095,1,0,0},nCount=1,nBindState = -2},"T∏n Lπc Qu©n T≠")
	HideNpc(nNpcIndex, %nHideTime * 18)
	if (GetTask(12) == 170*256) then 
		Msg2Player("Quay v“ g∆p Thang Anh giao vÀt t≠.") 
	end
end 
--------------------------------------------------------------------------------------------------------------------------------------
function main()
	dofile("script/wumumenpai/tanlacquantu.lua")
	local nNpcIndex = GetLastDiagNpc()
	local dwNpcId = GetNpcId(nNpcIndex)
	if GetTask(12) >= 120*256 and GetTask(12) <= 160*256 and GetLevel() >= 30 then
		tbProgressBar:OpenByConfig(7, %_GetAward, {nNpcIndex, dwNpcId}, %_OnBreak)
	end
end
---------------------------------------------------------------------------------------------------------------------------