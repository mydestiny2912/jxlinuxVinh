Include("\\script\\lib\\awardtemplet.lua")

function OnDeath () 
	if GetTask(12) == 420*256 and GetLevel() >= 50 then
		SetTask(12,430*256)
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,5099,1,0,0},nCount=1,nBindState = -2},"Vò Môc Di Th­")
		Talk(1,"","§· lÊy ®­îc Vò Môc Di Th­, quay vÒ t×m <color=yellow>Nh¹c L«i<color>")
		Msg2Player("LÊy ®­îc Vò Môc Di Th­, quay vÒ gÆp Ch­ëng M«n Nh¹c L«i.")  
	end
end 
