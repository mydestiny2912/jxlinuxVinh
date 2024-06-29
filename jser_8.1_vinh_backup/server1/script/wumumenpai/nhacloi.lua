Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
--------------------------------------------------------
function main()
		dofile("script/wumumenpai/nhacloi.lua")
		if (GetTask(12) == 390*256 and GetLevel() >= 60) then
			Say("<color=yellow>C¸c h¹ t×m ta cã viÖc g×?",3,"T¹i h¹ cã viÖc cÇn thØnh gi¸o ngµi/nvxuatsu5","§¸i nghÖ ®Çu s­ /#daiyitoushi_main(11)","Th«i/No")
		elseif (GetTask(12) == 430*256) then
			Say("<color=yellow>C¸c h¹ t×m ta cã viÖc g×?",3,"T¹i h¹ cã viÖc cÇn thØnh gi¸o ngµi/nvxuatsu9","§¸i nghÖ ®Çu s­ /#daiyitoushi_main(11)","Th«i/No")
		elseif (GetCamp() == 4 and GetLevel() >= 60 and GetLastFactionNumber() == 11 and GetTask(12) >= 440*256) then
			Say("<color=yellow>C¸c h¹ t×m ta cã viÖc g×?",3,"T¹i h¹ cã viÖc cÇn thØnh gi¸o ngµi/gianhaplaisumon","§¸i nghÖ ®Çu s­ /#daiyitoushi_main(11)","Th«i/No")
		elseif (GetCamp() >= 1 and GetCamp() <= 3 and GetLevel() >= 60 and GetLastFactionNumber() == 11 and GetTask(12) >= 440*256) then
			Say("<color=yellow>C¸c h¹ t×m ta cã viÖc g×?",3,"T¹i h¹ cã viÖc cÇn thØnh gi¸o ngµi/xuatsu","§¸i nghÖ ®Çu s­ /#daiyitoushi_main(11)","Th«i/No")
		else
			Say("<color=yellow>C¸c h¹ t×m ta cã viÖc g×?",3,"T¹i h¹ cã viÖc cÇn thØnh gi¸o ngµi/oldentence","§¸i nghÖ ®Çu s­ /#daiyitoushi_main(11)","Th«i/No")
		end	
end

function oldentence() 
Talk(1,"","Ng­êi cña bæn ®­êng ®Òu lµ anh hïng hµo kiÖt")
end 

function nvxuatsu5() 
Talk(3,"nvxuatsu6",""..GetName()..": Ch­ëng m«n, ta ®· t×m ®­îc manh mèi cña Vò Môc Di Th­, c¸i ®Æt ë Tµng Kinh C¸c lµ gi¶, mét m¶nh th­ ch­a ch¸y hÕt ®­îc t×m thÊy, cã vÎ nh­ Hµn Khëi Long s­ thóc ®· ®Õn bÕn tµu phİa §«ng.","Nh¹c L«i: §iÒu nµy lµ kh«ng thÓ, ta víi h¾n cã mèi th©m t×nh. Cã g× ®ã mê ¸m, h·y mau ®Õn bÕn tµu, nhÊt ®Şnh ph¶i b¶o vÖ Vò Môc Di Th­, ®ã lµ tİn vËt cña bæn m«n.")
end 

function nvxuatsu6() 
SetTask(12,400*256)
Msg2Player("§Õn bÕn tµu (221/203) ®iÒu tra.")  
end

function nvxuatsu9() 
Talk(6,"nvxuatsu10","Nh¹c L«i: Hµn Khëi Long thÕ nµo? Ng­¬i ®· ®em Vò Môc Di Th­ vÒ råi µ?",""..GetName()..": ThËt may lµ nã ch­a bŞ mÊt! Tuy nhiªn... Hµn s­ thóc ®· bŞ giÕt, vµ ng­êi ®¸nh c¾p còng chİnh lµ H¹ Tróy, Hµn s­ thóc ®· bŞ h¾n h·m h¹i, ta ®· giÕt chÕt h¾n ngay t¹i chç.","Nh¹c L«i: Khèn kiÕp, kh«ng thÓ tù tay giÕt chÕt tªn ph¶n ®å ®ã, ng­¬i lµm rÊt tèt, ®· b¶o vÖ ®­îc tİn vËt m«n ph¸i, ng­¬i cã thÓ xuÊt s­!")  
end  

function nvxuatsu10() 
	SetTask(12,440*256)
	SetCamp(4)
	SetCurCamp(4)
	SetRank(96)
	ConsumeEquiproomItem(1,6,1,5099,-1)
	Msg2Player("Hoµn thµnh nhiÖm vô XuÊt S­.") 
end  

function gianhaplaisumon() 
Talk(6,"gianhaplaisumon2",""..GetName()..": Ch­ëng m«n...","Nh¹c L«i: Ng­¬i c¶m thÊy thÕ nµo khi xuèng nói?",""..GetName()..": Sau khi phiªu b¹c giang hå, ta kh«ng k×m lßng ®­îc, c¶m thÊy rÊt nhí c¸c s­ huynh ®Ö...","Nh¹c L«i: Vò Hån ®­êng lu«n chµo ®ãn ng­¬i, ta sÏ cho phĞp ng­¬i ë l¹i, nÕu ng­¬i muèn.",""..GetName()..": §Ö tö xin ®ång ı, khi xuèng nói, ®Ö tö còng tİch gãp ®­îc mét sè tiÒn, ®èi víi ®Ö tö còng v« İch, tèt nhÊt lµ gãp vµo ng©n quü cña bæn ph¸i, cã thÓ coi nh­ chót lßng thµnh cña ®Ö tö")
end 

function gianhaplaisumon2() 
Describe("Nh¹c L«i: Tèt th«i, h·y giao cho ta 5 v¹n l­îng b¹c",2,"§­îc th«i/gianhaplaisumon3","§Ó ta suy nghÜ l¹i/no")
end 

function gianhaplaisumon3() 
	local nJxb = 50000
	if GetCash() < nJxb then
		Talk(1,"","Xin lçi, ®Ó ta chuÈn bŞ l¹i sau")
		return 1
	end
	Talk(1,"gianhaplaisumon4","Nh¹c L«i: Ta th¨ng cho ng­¬i lµm ThÇn Hµnh Qu©n, truyÒn thô vâ c«ng tuyÖt häc cña bæn m«n.")
end

function gianhaplaisumon4()
	Pay(50000)
	if HaveMagic(1981) >= 0 and HaveMagic(1982) >= 0 and HaveMagic(1971) >= 0 then
		SetCamp(1)
		SetCurCamp(1)
		SetRank(97)
		Msg2Player("Gia nhËp Vò Hån §­êng ch¸nh ph¸i.")
	else
		AddMagic(1981)
		AddMagic(1971)
		AddMagic(1982)
		SetCamp(1)
		SetCurCamp(1)
		SetRank(97)
		Msg2Player("Hoµn thµnh nhiÖm vô Trïng Ph¶n S­ M«n, häc ®­îc vâ c«ng <color=yellow>Vò Môc Di Th­, Trİ Dòng Siªu Lu©n, C¬ Xan Lç Nhôc<color>")
	end 
end

function xuatsu()
	Describe("Nh¹c L«i: Ng­¬i cã muèn xuèng nói kh«ng?",2,"Xin cho ®Ö tö ®­îc xuèng nói/xuatsu2","§Ö tö sÏ quay l¹i sau/no")
end

function xuatsu2()
	SetCamp(4)
	SetCurCamp(4)
end
