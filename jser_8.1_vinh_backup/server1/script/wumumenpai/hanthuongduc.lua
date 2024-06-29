function main(sel)
	dofile("script/wumumenpai/hanthuongduc.lua")
	if (GetCamp() == 4 and GetLevel() >= 60 and GetTask(13) == 0) then
		Describe("Hµn Th­îng §øc: Muèn trë thµnh ®Ö tö kı danh cña bæn ph¸i, ph¶i ®¸nh b¹i ®Ö tö cã tªn tuæi nhÊt. Ng­¬i cã muèn kh¶o nghiÖm kh«ng",2,"§­îc, ta sÏ ®i ngay/nvkydanhdetu","§Ó ta suy nghÜ l¹i/no")
	elseif GetTask(13) == 20*256 then
		Talk(3,"nvkydanhdetu4",""..GetName()..": Ta ®· v­ît qua kh¶o nghiÖm.","Hµn Th­îng §øc: Ta thùc sù kh«ng nh×n lÇm ng­¬i, b©y giê ng­¬i lµ kı danh ®Ö tö cña bæn m«n, h·y ch¨m chØ luyÖn tËp.")
	else
		Talk(1,"","Hµn Th­îng §øc: Khiªn sÏ b¶o vÖ ®­îc th©n thÓ, cßn ®ao dïng ®Ó tÊn c«ng.")
	end
end

function nvkydanhdetu() 
SetTask(13,10*256)
Msg2Player("§Õn DiÔn Vâ Tr­êng (194/191) tØ thİ vâ c«ng.") 
end


function nvkydanhdetu4() 
SetTask(13,30*256)
AddRepute(1) 
Msg2Player("Hoµn thµnh nhiÖm vô Kı danh ®Ö tö. Ng­¬i ®· trë thµnh ®Ö tö kı danh Vò Hån §­êng, nhËn ®­îc 1 ®iÓm danh väng.") 
end 