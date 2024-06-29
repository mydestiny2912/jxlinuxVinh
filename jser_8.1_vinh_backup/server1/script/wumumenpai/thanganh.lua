---------------------------------------------
function main()
dofile("script/wumumenpai/thanganh.lua")
	if (GetTask(12) == 110*256) and GetLevel() >= 30 then
		Describe("Thang Anh: Bän ta võa tiªu diÖt c¸c ®¬n vÞ c¬ giíi vµ c¬ së cña ®Þch, ta cÇn c¸c ®Ö tö ®i thu håi nh÷ng vËt t­. C¸c h¹ cã gióp ta ®­îc kh«ng?",2,"Ta sÏ ®i ngay/nx3x1","Xin lçi, ta cã viÖc kh¸c/no")
	elseif GetTask(12) == 170*256 and GetLevel() >= 30 then 
		Talk(3,"nx3x2",""..GetName()..": TÊt c¶ vËt t­ ®· ®­îc thu håi, xin h·y kiÓm tra l¹i.","Thang Anh: Tèt, nh­ng hiÖn t¹i cã mét sè ®Ö tö ®ang bÞ th­¬ng nÆng. Ng­¬i h·y mau ®i thu thËp d­îc liÖu trÞ th­¬ng!")	
	elseif GetTask(12) == 250*256 and GetLevel() >= 30 then 
		Talk(3,"nx3x4",""..GetName()..": Mét sè ®Ö tö bÞ th­¬ng ®· ®­îc ch÷a trÞ, vÉn cßn rÊt nhiÒu ®Ö tö kh¸c ®ang chê ®Õn l­ît, cã vÎ Y S­ h¬i giµ yÕu mét chót.","Thang Anh: Haiz! L·o ThÇn y ®· lín tuæi råi, nªn ph¶i t×m thªm ng­êi míi th«i. LÇn nµy ng­¬i lµm tèt l¾m, ®©y lµ phÇn th­ëng dµnh cho ng­¬i.")	
	else
		Talk(1,"","Thang Anh: Cã chuyÖn tèt th× ®õng quªn ta nhÐ!")	
	end
end

function nx3x1() 
	SetTask(12,120*256)
	--NewWorld(92, 1758, 3140)
	--SetFightState(1)
	Msg2Player("§Õn Thôc C­¬ng S¬n (219/196),(221/186),(227/187),(226/194),(237/192),(237/196) ®Ó thu håi vËt t­.") 
end 

function nx3x2() 
	ConsumeEquiproomItem(5,6,1,5095,-1)
	SetTask(12,180*256)
	--NewWorld(195, 721, 2905)
	--SetFightState(1)
	Msg2Player("Giao vËt t­ thµnh c«ng, ®Õn Nh¹n §·ng S¬n (90/181),(87/184),(82/187),(76/185) ®Ó h¸i thuèc.") 
end 

function nx3x4() 
	SetTask(12,260*256)
	SetRank(93)
	AddMagic(1977)
	AddMagic(1965)
	Msg2Player("Hoµn thµnh nhiÖm vô cÊp 30. Häc ®­îc <color=yellow>H¸m S¬n KÝch<color> vµ <color=yellow>ThØnh Anh §Ò NhuÖ L÷<color>") 
end 