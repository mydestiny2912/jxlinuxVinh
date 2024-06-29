function main() 
	dofile("script/wumumenpai/nguuthong.lua")
	if (GetTask(12) == 330*256 and GetLevel() >= 50)  then
		Talk(3,"nv5x1","Ng­u Th«ng: Ng­¬i cã muèn häc thªm vâ c«ng hay kh«ng? §¸nh víi ta 1 trËn, ta sÏ d¹y cho ng­¬i",""..GetName()..": Vâ c«ng cña s­ huynh qu¶ thËt cao c­êng, t¹i h¹ nµo d¸m...")
	elseif (GetTask(12) == 350*256 and GetLevel() >= 50) then
		Talk(3,"nv5x4",""..GetName()..": Cã ph¶i ta ®· thµnh c«ng v­ît qua bµi kiÓm tra!","Ng­u Th«ng: S­ ®Ö! kh«ng tÖ, kh«ng tÖ! NhÊt ®Şnh ph¶i ch¨m chØ h¬n n÷a...")
	else
		Talk(1,"","Ng­u Th«ng: NÕu cã kÎ nµo d¸m b¾t n¹t ng­¬i, h·y kªu tªn ta, ®¶m b¶o bän chóng sÏ sî vì mËt!")
	end
end

function nv5x1() 
Describe("Ng­u Th«ng: §õng nhiÒu lêi, ta sÏ ®îi ng­¬i ë s©n tØ vâ",2,"§­îc råi, ta sÏ ®Õn ®ã/nv5x2","Ta cã viÖc kh¸c/no")
end 

function nv5x2() 
	SetTask(12,340*256) 
	Msg2Player("§Õn s©n tØ vâ (194,191).")  
end 

function nv5x4() 
	SetTask(12,360*256)
	SetRank(95) AddMagic(1980)
	Msg2Player("Hoµn thµnh nhiÖm cÊp 50, häc ®­îc <color=yellow>C« T­¬ng B¸ch ChiÕn Hµm<color>")  
end 