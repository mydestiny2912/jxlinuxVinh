IncludeLib("SETTING")

function main()
	dofile("script/wumumenpai/ngulien.lua")
	local UTask_wh = GetTask(12)
	if (UTask_wh == 10*256 and GetLevel() >= 10) then
		Say("Ngò Liªn: HiÖp sÜ ®Õn bæn ®­êng cã chuyÖn g× kh«ng?",3,"Ta cÇn gióp ®ì/TimHieuMonPhai","Ta cã viÖc kh¸c/nv1x1","KÕt thóc ®èi tho¹i./No")
	elseif (UTask_wh == 30*256 and GetLevel() >= 10) then
		Say("Ngò Liªn: HiÖp sÜ ®Õn bæn ®­êng cã chuyÖn g× kh«ng?",3,"Ta cÇn gióp ®ì/TimHieuMonPhai","Ta cã viÖc kh¸c/nv1x3","KÕt thóc ®èi tho¹i./No")
	else
		Say("Ngò Liªn: HiÖp sÜ ®Õn bæn ®­êng cã chuyÖn g× kh«ng?",3,"Ta cÇn gióp ®ì/TimHieuMonPhai","KÕt thóc ®èi tho¹i./No")
	end
end

function nv1x1()
	Say("Ngò Liªn: Chµo mõng gia nhËp Bæn §­êng, ®©y lµ TÕ phÈm, h·y cÇm lÊy ®i b¸i tÕ Nh¹c Phi T­íng Qu©n!",3,"Ta ®i ngay/nv1x2","Ta cã viÖc kh¸c ph¶i lµm/No")
end

function nv1x2()
	if (CalcEquiproomItemCount(6,1,5094,1) == 0) then
		local nIndex = AddItem(6,1,5094,1,0,0) SetItemBindState(nIndex, -2) SetTask(12,20*256) NewWorld(1042, 1648, 3024)
	else
		NewWorld(1042, 1648, 3024)
	end
end

function nv1x3()
AddMagic(1964)
AddMagic(1975)
SetRank(91)
SetTask(12,40*256)
Msg2Player("Hoµn thµnh nhiÖm vô b¸i tÕ Nh¹c Phi. Häc ®­îc vâ c«ng Vò Hån §ao Ph¸p vµ Vò Hån ThuÉn Ph¸p, ®­îc phong lµ Trung Qu©n!")
end

function TimHieuMonPhai()
	Say("Ngò Liªn: Th× ra lµ S­ ®iÖt, cÇn gióp g× kh«ng?",3,"T×m hiÓu ®ång m«n/TimDongMon","T×m hiÓu nhiÖm vô m«n ph¸i/TimHieuNhiemVu","KÕt thóc ®èi tho¹i./No")
end

function TimDongMon()
Say("Ngò Liªn: Ng­¬i muèn t×m ai?",14,
	"Ta biÕt råi/No",
                 "T×m Nh¹c L«i/#TimViTriNpc(1)",
	"T×m Ng­u Th«ng/#TimViTriNpc(2)",
	"T×m Hµn Th­îng §øc/#TimViTriNpc(3)",
	"T×m Thi Phong/#TimViTriNpc(4)",
	"T×m Thang Anh/#TimViTriNpc(5)",
	"T×m Hµn Khëi Ph­îng/#TimViTriNpc(6)",
	"T×m Nh¹c §×nh/#TimViTriNpc(7)",
	"T×m C¸t Khang/#TimViTriNpc(8)",
	"T×m Th­ NhuÖ/#TimViTriNpc(9)",
	"T×m Y S­/#TimViTriNpc(10)",
	"T×m D­ §¹i Chïy/#TimViTriNpc(11)",
	"T×m Nh¹c NhÞ N­¬ng/#TimViTriNpc(12)")
end

function TimViTriNpc(NpcPos)
	if (NpcPos == 1) then
		Say("<color=yellow>Nh¹c L«i:<color>\n<color=red>VÞ trÝ tr­íc Trung Dòng §­êng, täa ®é: 211,190!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(1)")
	elseif (NpcPos == 2) then
		Say("<color=yellow>Ng­u Th«ng:<color>\n<color=red>VÞ trÝ tr­íc Trung Dòng §­êng, täa ®é: 210,190!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(2)")
	elseif (NpcPos == 3) then
		Say("<color=yellow>Hµn Th­îng §øc:<color>\n<color=red>VÞ trÝ tr­íc Trung Dòng §­êng, täa ®é: 211,191!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(3)")
	elseif (NpcPos == 4) then
		Say("<color=yellow>Thi Phong:<color>\n<color=red>NhËn nhiÖm vô m«n ph¸i cÊp 40, täa ®é: 218,203!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(4)")
	elseif (NpcPos == 5) then
		Say("<color=yellow>Thang Anh:<color>\n<color=red>VÞ trÝ Giíi §­êng, täa ®é: 211,199!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(5)")
	elseif (NpcPos == 6) then
		Say("<color=yellow>Hµn Khëi Ph­îng:<color>\n<color=red>VÞ trÝ Bµn Long §µi, täa ®é: 200,188!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(6)")
	elseif (NpcPos == 7) then
		Say("<color=yellow>Nh¹c §×nh:<color>\n<color=red>VÞ trÝ Bµn Long §µi, täa ®é: 199,187!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(7)")
	elseif (NpcPos == 8) then
		Say("<color=yellow>C¸t Khang:<color>\n<color=red>VÞ trÝ Cù T­îng §µi, täa ®é: 190,202!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(8)")
	elseif (NpcPos == 9) then
		Say("<color=yellow>Th­ NhuÖ:<color>\n<color=red>VÞ trÝ Cù T­îng §µi, täa ®é: 190,202!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(9)")
	elseif (NpcPos == 10) then
		Say("<color=yellow>Y S­:<color>\n<color=red>VÞ trÝ Giíi §­êng, täa ®é: 223,200!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(10)")
	elseif (NpcPos == 11) then
		Say("<color=yellow>D­ §¹i Chïy:<color>\n<color=red>VÞ trÝ TiÖm Binh KhÝ, täa ®é: 226,202!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(11)")
	elseif (NpcPos == 12) then
		Say("<color=yellow>Nh¹c NhÞ N­¬ng:<color>\n<color=red>VÞ trÝ TiÖm Trang BÞ, täa ®é: 208,206!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(12)")
	end
end

function TimHieuNhiemVu()
Say("Ngò Liªn: Ng­¬i muèn t×m hiÓu nhiÖm vô nµo?",10,
	"Ta biÕt råi/No",
	"NhiÖm vô cÊp 10/#NhiemVuMonPhai(1)",
	"NhiÖm vô cÊp 20/#NhiemVuMonPhai(2)",
	"NhiÖm vô cÊp 30/#NhiemVuMonPhai(3)",
	"NhiÖm vô cÊp 40/#NhiemVuMonPhai(4)",
	"NhiÖm vô cÊp 50/#NhiemVuMonPhai(5)",
	"NhiÖm vô XuÊt S­/#NhiemVuMonPhai(6)",
	"NhiÖm vô Trïng Ph¶n S­ M«n/#NhiemVuMonPhai(7)",
	"NhiÖm vô Ký Danh §Ö Tö/#NhiemVuMonPhai(8)",
	"NhiÖm vô cÊp 90/#NhiemVuMonPhai(9)")
end

function NhiemVuMonPhai(nNV)
	if (nNV == 1) then
		Say("<color=yellow>NhiÖm vô cÊp 10: TÕ B¸i Anh Hån<color>\n<color=red>§èi tho¹i víi Ngò Liªn, tiÕp nhËn nhiÖm vô b¸i tÕ Nh¹c Phi!<color>")
	elseif (nNV == 2) then
		Say("<color=yellow>NhiÖm vô cÊp 20: Trõ Gian DiÖt ¸c<color>\n<color=red>§èi tho¹i víi C¸t Khang hoÆc Th­ NhuÖ, tiÕp nhËn nhiÖm vô gi¸o huÊn Du TÈu M¹i Hãa Lang!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(8)")
	elseif (nNV == 3) then
		Say("<color=yellow>NhiÖm vô cÊp 30: ChiÕn HËu C«ng Sù<color>\n<color=red>§èi tho¹i víi Thang Anh, tiÕp nhËn nhiÖm vô thu thËp qu©n giíi vµ trÞ liÖu cho c¸c ®Ö tö bæn ®­êng<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(5)")
	elseif (nNV == 4) then
		Say("<color=yellow>NhiÖm vô cÊp 40: MËt Trõ NÞnh ThÇn<color>\n<color=red>§èi tho¹i víi Thi Phong, tiÕp nhËn nhiÖm vô tiªu diÖt La HiÕn Thµnh tr¶ thï cho Nh¹c Phi<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(4)")
	elseif (nNV == 5) then
		Say("<color=yellow>NhiÖm vô cÊp 50: Kh¶o NghiÖm Vâ NghÖ<color>\n<color=red>§èi tho¹i víi Ng­u Th«ng, tiÕp nhËn nhiÖm vô tØ thÝ DiÔn Vâ Tr­êng<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(2)")
	elseif (nNV == 6) then
		Say("<color=yellow>NhiÖm vô XuÊt S­: Vò Môc Di Th­ ThËt Gi¶<color>\n<color=red>§èi tho¹i víi Hµn Khëi Ph­îng, tiÕp nhËn nhiÖm vô ®i t×m Vò Môc Di Th­!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(6)")
	elseif (nNV == 7) then
		Say("<color=yellow>NhiÖm vô Trïng Ph¶n S­ M«n:<color>\n<color=red>§èi tho¹i víi Nh¹c L«i, tiÕp nhËn nhiÖm vô xin gia nhËp l¹i bæn ®­êng<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(1)")
	elseif (nNV == 8) then
		Say("<color=yellow>NhiÖm vô Ký Danh §Ö Tö:<color>\n<color=red>§èi tho¹i víi Hµn Th­îng §øc, tiÕp nhËn nhiÖm vô gi¸o huÊn C­êng Gi¶!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(3)")
	elseif (nNV == 9) then
		Say("<color=yellow>NhiÖm vô cÊp 90: DiÖt Gi¸n §iÖp<color>\n<color=red>§èi tho¹i víi Nh¹c §×nh,, tiÕp nhËn nhiÖm vô tiªu diÖt T­íng LÜnh ®· ®Çu qu©n cho bän Kim Quèc!<color>",2,"KÕt thóc ®èi tho¹i./#SetMovePos(7)")
	end
end

function SetMovePos(nPos)
local nMap,_,_ = GetWorldPos()
	if (nMap == 1042) then
		if (nPos == 1) then
			ST_SyncMiniMapObj(1688*32,3040*32)
		elseif (nPos == 2) then
			ST_SyncMiniMapObj(1680*32,3040*32)
		elseif (nPos == 3) then
			ST_SyncMiniMapObj(1688*32,3056*32)
		elseif (nPos == 4) then
			ST_SyncMiniMapObj(1744*32,3248*32)
		elseif (nPos == 5) then
			ST_SyncMiniMapObj(1688*32,3184*32)
		elseif (nPos == 6) then
			ST_SyncMiniMapObj(1600*32,3008*32)
		elseif (nPos == 7) then
			ST_SyncMiniMapObj(1592*32,2992*32)
		elseif (nPos == 8) then
			ST_SyncMiniMapObj(1520*32,3232*32)
		elseif (nPos == 9) then
			ST_SyncMiniMapObj(1520*32,3232*32)
		elseif (nPos == 10) then
			ST_SyncMiniMapObj(1784*32,3200*32)
		elseif (nPos == 11) then
			ST_SyncMiniMapObj(1808*32,3232*32)
		elseif (nPos == 12) then
			ST_SyncMiniMapObj(1664*32,3296*32)
		end
	end
end