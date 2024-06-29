Include("\\script\\lib\\awardtemplet.lua")

------------------------------------------------
function main()
dofile("script/wumumenpai/nhacdinh.lua")
	if (GetTask(13) >= 30*256 and GetLevel() >= 90 and GetRepute() >= 240 and GetLastFactionNumber() == 11 and GetTask(14) == 0) then
		Describe("Nh¹c §×nh: Qu©n Kim thËt ®¸ng ghĞt, d¸m hñy hßa ­íc x©m ph¹m biªn giíi, giÕt ng­êi v« t«i. Theo tin b¸o vÒ, Kim T­íng qu©n v× sî bŞ ng­êi kh¸c lîi dông, h¾n ®ang h¹ tr¹i mét m×nh ë Phôc Ng­u S¬n T©y, ng­¬i h·y ®i giÕt h¾n ®Ó lµm an lßng d©n",2,"§­îc ta sÏ ®i ngay/nv9x1","§Ó ta suy nghÜ l¹i/no")
	elseif GetTask(14) == 60*256 then 
		Talk(3,"nv9x3",""..GetName()..": Th«ng tin t×nh b¸o kh«ng chİnh x¸c, qu©n Kim mai phôc kh¾p n¬i","Nh¹c §×nh: Ta còng nhËn thÊy cã mét vÊn ®Ò lín ë ®©y. Ta cã mét danh s¸ch c¸c ®Ö tö kh¶ nghi, hay mau kiÓm tra, nÕu h¾n ph¶n béi, xö ngay t¹i chç!")
	elseif GetTask(14) == 100*256 then
		Talk(6,"nv9x6","Nh¹c §×nh: Ng­¬i ®· t×m thÊy ch­a? ThËt sù cã gian tÕ?",""..GetName()..": Ta ®· biÕt ®­îc vŞ trİ cña Kim T­íng Qu©n vµ ®· lÊy ®­îc thñ cÊp cña h¾n","Nh¹c §×nh: §Ó ta xem","Nh¹c §×nh: Lµm tèt l¾m","Nh¹c §×nh: Kim T­íng qu©n ®· chÕt, qu©n Kim tan r·, ë ®©y cã mét chót ®å dïng, h·y ®em ph©n ph¸t cho nh÷ng ng­êi bŞ ¸p bøc, ®Ó hä tiÕp tôc sèng.")
	elseif GetTask(14) == 150*256 then
		Talk(3,"nv9x7",""..GetName()..": §©y lµ l¸ th­ cña nh÷ng ng­êi d©n göi lêi c¶m ¬n.","Nh¹c §×nh: §óng råi, ®©y lµ sù c«ng nhËn cña ng­êi d©n vÒ ng­¬i")
	else
		Talk(1,"","Nh¹c §×nh: Ng­¬i ®· nhËn ®­îc tin g× ch­a?")
	end;
end

function nv9x1()
SetTask(14,10*256)
Msg2Player("§Õn Phôc Ng­u S¬n T©y (247/181), tiªu diÖt qu©n Kim.")
end;

function nv9x3()
SetTask(14,70*256)
Msg2Player("T×m §Ö Tö Kh¶ Nghi (199/193), (218/201), (205/201), (212/206) ®Ó thÈm tra.") 
end;

function nv9x6()
	if (CalcEquiproomItemCount(6,1,5100,1) >= 1) then
		SetTask(14,110*256)
		ConsumeEquiproomItem(1,6,1,5100,-1)
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,5101,1,0,0},nCount = 4, nBindState=-2},"Sinh Ho¹t VËt T­",1); 
		Msg2Player("§Õn Long TuyÒn Th«n t×m T¹ Thanh My (195/200), M¹nh Bµ Bµ (207/204), Lı Giai (203/204), T©n Gia Gia (195/204) ph©n ph¸t nhu yÕu phÈm cho ng­êi bŞ ¸p bøc.") 
	else
		Talk(1,"","Thñ cÊp cña h¾n ®©u? Sao ta kh«ng thÊy!")
	end
end;

function nv9x7()
	if (CalcEquiproomItemCount(6,1,5102,1) >= 1) then
		if HaveMagic(1863) <= 0 and HaveMagic(1864) <= 0 then
			AddMagic(1983,1) AddMagic(1967,1)
			SetTask(14,160*256)
			ConsumeEquiproomItem(1,6,1,5102,-1)
			Msg2Player("Hoµn thµnh nhiÖm vô cÊp 90. Häc ®­îc <color=yellow>Kh¸t Èm Hung N« HuyÕt, TrÊn Biªn Thïy<color>") 
		else
			SetTask(14,160*256)
			ConsumeEquiproomItem(1,6,1,5102,-1)
			Msg2Player("Hoµn thµnh nhiÖm vô cÊp 90 cña ph¸i Vò Hån.") 
		end
	else
		Talk(1,"","NhiÖm vô ta giao cho ng­¬i ®i ph©n ph¸t vËt t­ ®· lµm xong ch­a?")
	end
end