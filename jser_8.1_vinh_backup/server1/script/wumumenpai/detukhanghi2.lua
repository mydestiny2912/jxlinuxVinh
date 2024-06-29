function main()
	dofile("script/wumumenpai\detukhanghi2.lua")
	if GetTask(14) == 70*256 then
		Talk(10,"nv9x5",""..GetName()..": Qu©n Kim thËt ®¸ng ghÐt, l¹i d¸m xem th­êng m«n ph¸i ta!","§Ö tö kh¶ nghi: §óng vËy, ta nghe nãi T­íng qu©n Kim cè ý ®i mét m×nh, cßn loan tin kh«ng cã ng­êi Trung Nguyªn nµo d¸m ®ông ®Õn h¾n.",""..GetName()..": ChuyÖn ®ã cã thËt kh«ng?.","§Ö tö kh¶ nghi: §óng vËy, ta ®· nghe ®­îc do ng­êi b¹n ta ph¸t hiÖn ra, kh«ng tin, ng­¬i cã thÓ ®Õn ®ã xem thö cã Kim Quèc t­íng qu©n kh«ng?",""..GetName()..": Tªn nµy ®¸ng nghi ngê, ng­¬i sÏ ph¶i m¾c bÉy cña ta",""..GetName()..": Tõ tin tøc Vò Hån §­êng ta ph¸t hiÖn ra lé tr×nh mµ qu©n Kim ®i qua, ­íc tÝnh sÏ hµnh ®éng trong vµi ngµy tíi, hä sÏ phôc kÝch ë Vò Di S¬n. Hy väng sÏ göi ng­êi ®Õn ®ã","§Ö tö kh¶ nghi: ThËt qu¸ tèt, ta cã viÖc. Ta ®i tr­íc ®©y",""..GetName()..": §­îc råi, hÑn gÆp l¹i.",""..GetName()..": Ta ph¶i theo dâi xem h¾n cã ®Õn Vò Di S¬n ®Ó b¸o tin kh«ng.")
	end
end;

function nv9x5()
	SetTask(14,80*256)
	Msg2Player("§Õn Vò Di S¬n (232/176), theo dâi t×nh h×nh.")  
end