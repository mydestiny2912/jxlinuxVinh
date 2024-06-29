Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
-------------------------------------------------
function main(sel)
dofile("script/wumumenpai/ysu.lua")
	if (GetLastFactionNumber() == 11 and GetTask(12) == 210*256 and GetLevel() >= 30) then
		Say("Y S­: Phiªu b¹c trªn giang hå kh«ng thÓ tr¸nh khái th­¬ng tÝch. Ta b¸n thuèc ch÷a bÖnh lµ chñ yÕu.",3,"Ta muèn chÕ d­îc liÖu trÞ th­¬ng/nv3x3","Giao dÞch/yes","Ta cã viÖc kh¸c/no");
	elseif (GetLastFactionNumber() == 11 or GetTask(13) >= 30*256) then 
		Say("Y S­: Phiªu b¹c trªn giang hå kh«ng thÓ tr¸nh khái th­¬ng tÝch. Ta b¸n thuèc ch÷a bÖnh lµ chñ yÕu.", 2,"Giao dÞch/yes", "Ta cã viÖc kh¸c/no");
	else
		Talk(1,"","Y S­: Ta chØ ch÷a trÞ cho ng­êi cña bæn ®­êng mµ th«i.")
	end
end

function nv3x3()
	Talk(4,"",""..GetName()..": §©y lµ th¶o d­îc mµ Thang Anh nhê giao cho Y S­, ngµi xem cã ph¶i lµ d­îc liÖu cÇn kh«ng?","Y S­: Tèt, ®Ó ta xem thö.","Y S­: ¸! §©y ®óng lµ thø ta ®ang cÇn.","Y S­: Cã qu¸ nhiÒu ng­êi bÞ th­¬ng, L·o phu h¬i yÕu, xin h·y gióp ta b«i d­îc liÖu ®Ó ch÷a th­¬ng cho c¸c ®Ö tö, sau ®ã b¸o c¸o cho Thang Anh biÕt t×nh h×nh.")			
	SetTask(12,220*256) ConsumeEquiproomItem(3,6,1,5096,-1)
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,5097,1,0,0},nCount=3,nBindState=-2},"D­îc LiÖu")
	Msg2Player("§Õn ch÷a th­¬ng cho c¸c ®Ö tö (221/199)")
end;

function yes()
Sale(65);  			
end;


function no()
end;
