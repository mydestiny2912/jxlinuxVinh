Include("\\script\\lib\\awardtemplet.lua")


function main() 
	dofile("script/wumumenpai/manhmoi.lua")
	if (GetTask(12) == 370*256 and GetLevel() >= 50) then
		Talk(3,"nvxuatsu3","B¹n ®Õn chç Khëi Long s­ thóc nh­ng kh«ng t×m thÊy g×. Nh÷ng m¶nh giÊy ch­a ch¸y hÕt khiÕn b¹n chó ý","Bªn trªn cã nh÷ng manh mèi mËp mê: Vâ...S¸ch...Tay, nay...§«ng bÕn tµu...®i")
	end
end

function nvxuatsu3() 
	SetTask(12,380*256)
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,5098,1,0,0}, nBindState = -2}, "M¶nh GiÊy Ch¸y",1); 
	Msg2Player("Quay l¹i t×m Hµn Khëi Ph­îng.")  
end 