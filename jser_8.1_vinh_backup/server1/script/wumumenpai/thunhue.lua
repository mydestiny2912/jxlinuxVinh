Include("\\script\\wumumenpai\\catkhang.lua")

---------------------------------------------------------------
function main() 
	dofile("script/wumumenpai/thunhue.lua")
	if (GetTask(12) == 40*256) and GetLevel() >= 20  then
		Talk(13,"nv2x",""..GetName()..": Hai ng­êi ®ang tranh c·i vÒ viÖc g× vËy?","Th­ NhuÖ: Ta cã mét thanh kiÕm cùc k× s¾c bĞn, cã thÓ ph¸ vì mäi thø trªn ®êi nµy.","C¸t Khang: Ta cã mét chiÕc khiªn cùc k× hiÕm, cã kh¶ n¨ng phßng thñ tuyÖt vêi, cã thÓ chèng l¹i mäi lo¹i vò khİ.","Th­ NhuÖ: Thanh kiÕm cña ta lµ mét b¶o vËt vµ chiÕc khiªn bŞ vì tr«ng thËt gi¶ t¹o.","C¸t Khang: Ví vÈn! KiÕm cña ng­¬i ®· r¸ch n¸t, khiªn cña ta kh«ng sî ng­¬i.",""..GetName()..": Ta ®· hiÓu, kh«ng biÕt hai vŞ cã thÓ cho ta m­în 2 mãn binh khİ ®ã xem qua ®­îc kh«ng.","C¸t Khang: TÊt nhiªn.","Th­ NhuÖ: Ng­¬i h·y xem cÈn thËn.","Sau khi kiÓm tra, nhËn ra hai lo¹i binh khİ nµy ®Òu lµ vò khİ b×nh th­êng, Ta kh«ng biÕt ai chŞu tr¸ch nhiÖm cho viÖc nµy.",""..GetName()..": Tèt h¬n hÕt lµ hai vŞ h·y cïng ta ®Õn DiÔn vâ tr­êng ®Ó thi ®Êu, ai th¾ng sÏ chøng tá ng­êi ®ã ®óng.","C¸t Khang: §­îc, chóng ta ®i.","Th­ NhuÖ: L­ìi kiÕm còa ta kh«ng cã m¾t, ta kh«ng chŞu tr¸ch nhiÖm khi lµm tæn th­¬ng ng­êi.") 
	elseif (GetTask(12) == 50*256) and GetLevel() >= 20 then
		Talk(1,"","Th­ NhuÖ: Bän ta ®îi ng­¬i ë S©n luyÖn vâ")
	elseif GetTask(12) == 70*256 and GetLevel() >= 20 then
		Talk(3,"nv2x4","C¸t Khang: T¹i sao l¹i nh­ vËy? T¹i sao kiÕm vµ khiªn cña chóng ta l¹i kh«ng chèng chŞu næi?","C¸t Khang: Ng­¬i cã thÓ gióp chóng ta t×m tªn th­¬ng gia ®· b¸n vò khİ ®Ó hái cho ra lÏ ®­îc kh«ng?")	
	elseif GetTask(12) == 100*256 and GetLevel() >= 20 then
		Talk(1,"nv2x6",""..GetName()..": Du TÈu M¹i Hãa Lang ®· bŞ ta d¹y cho mét bµi häc, kh«ng d¸m lõa huynh n÷a ®©u","C¸t Khang: ThËt c¸m ¬n c¸c h¹, ®©y lµ cuèn bİ kİp vâ c«ng mµ ta ®· häc ®­îc, c¸c h¹ ®em vÒ luyÖn tËp, sau nµy sÏ rÊt cã İch.")	
	else
		Talk(1,"","Th­ NhuÖ: H·y th­êng xuyªn ®Õn gÆp ta.")
	end
end