function main() 
	if (GetTask(14) == 80*256) then
		Talk(3,"nv9x6","§Ö tö kh¶ nghi: A! §Ó ta nãi cho ng­¬i biÕt tin tøc cña Kim t­íng qu©n, ng­¬i ®õng giÕt ta, h¾n ®ang ë Phôc Ng­u S¬n §«ng.","§Ö tö kh¶ nghi: Ng­¬i sÏ cho ta 1 con ®­êng sèng ph¶i kh«ng?")
	end
end

function nv9x6()
	SetTask(14,90*256)
	Msg2Player("§Õn Phôc Ng­u S¬n §«ng (228/214) tiªu diÖt T­íng qu©n Kim.")  
end