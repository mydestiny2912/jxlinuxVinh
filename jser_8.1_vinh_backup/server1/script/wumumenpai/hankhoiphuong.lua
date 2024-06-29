	function main() 
dofile("script/wumumenpai/hankhoiphuong.lua")
	if (GetTask(12) == 360*256 and GetLevel() >= 60) then
		Talk(4,"nvxuatsu1","Hµn Khëi Ph­îng: S­ ®Ö, mau ®Õn ®©y",""..GetName()..": S­ huynh cÇn ta gióp g× sao?","Hµn Khëi Ph­îng: Hoµn Nhan Hång LiÖt cã t©m ®ia bÊt chİnh, ®· ®Ó ı ®Õn Vò Môc Di Th­, l·o tÆc th­êng xuyªn ph¸i ng­êi ®Õn trém",""..GetName()..": Cã chuyÖn nh­ vËy sao? S­ huynh nhÊt ®Şnh ph¶i cÈn träng...")
	elseif (GetTask(12) == 380*256 and GetLevel() >= 60) then
		Talk(3,"nvxuatsu4",""..GetName()..": Ta kh«ng t×m thÊy Hµn s­ thóc, nh­ng t×m thÊy 1 İt m¶nh giÊy bŞ ®èt cßn sãt l¹i, s­ huynh h·y xem qua","Hµn Khëi Ph­îng: Khèn kiÕp, Khëi Long s­ thóc nhÊt ®Şnh ®· x¶y ra chuyÖn råi. Sù t×nh cÊp b¸ch ng­¬i h·y lËp tøc ®i b¸o c¸o víi ch­ëng m«n")
	else
		Talk(1,"","Hµn Khëi Ph­îng: NÕu gÆp Kim nh©n, nhÊt ®Şnh ph¶i giÕt chÕt chóng ®Ó an ñi vong linh cña s­ thóc.")
	end
end

function nvxuatsu1() 
	Describe("Hµn Khëi Ph­îng: §a t¹ s­ ®Ö, cho nªn ta vµ Hµn Khëi Long s­ thóc thay phiªn nhau canh g¸c ë ®©y c¶ ngµy lÉn ®ªm. H«m nay ®Õn ®Õn phiªn Khëi Long s­ thóc, mµ vÉn ch­a tíi, ta kh«ng thÓ rêi ®i, ng­¬i h·y gióp ta t×m Khëi Long s­ thóc ®i",2,"§­îc råi, ta sÏ ®i ngay/nvxuatsu2","Ta cã viÖc kh¸c/no")
end 

function nvxuatsu2() 
	SetTask(12,370*256)
	Msg2Player("§Õn (196/200) t×m Manh Mèi.")  
end 

function nvxuatsu4() 
SetTask(12,390*256)
ConsumeEquiproomItem(1,6,1,5098,-1)
Msg2Player("§Õn gÆp ch­ëng m«n Nh¹c L«i (211/190) b¸o c¸o t×nh h×nh.")  
end 