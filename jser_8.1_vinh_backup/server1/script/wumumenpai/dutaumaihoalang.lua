function main()	
	if (GetTask(12) == 80*256) then
		Talk(5,"nv2x5","Du TÈu M¹i Hãa Lang: VŞ anh hïng nµy, kh«ng biÕt c¸c h¹ ®· nghe ®Õn TuyÖt ThÕ Binh Khİ hay kh«ng?","Du TÈu M¹i Hãa Lang: Tr­íc ®©y ta ®· cøu mét ng­êi, ng­êi ®ã ®­îc mÖnh danh lµ thî rÌn thÇn bİ hiÕm cã. §Ó tr¶ ¬n, anh Êy ®· më lß luyÖn vµ biÕn nh÷ng nguyªn liÖu quı cña ta thµnh mét vò khİ cã uy lùc v« song!","Du TÈu M¹i Hãa Lang: Sau khi h¾n rêi ®i cã nãi r»ng, vŞ anh hïng thø 250 mµ ta gÆp sÏ lµ chñ nh©n cña lo¹i binh khİ nµy","Du TÈu M¹i Hãa Lang: Kh«ng ngê, ng­¬i chİnh lµ ng­êi ®ã.")
	else
		Talk(1,"","Ta cã rÊt nhiÒu vËt phÈm quı, ng­¬i muèn mua g×?")
	end	
end

function nv2x5()
	Describe("Du TÈu M¹i Hãa Lang: C¸c h¹ víi ta cã duyªn, kh«ng yªu cÇu g× kh¸c, chØ cÇn ®¹i hiÖp cho 1 nöa sè tiÒn nguyªn liÖu, ta sÏ ®em t¨ng binh khİ ®ã cho ®¹i hiÖp, ng­¬i thÊy thÕ nµo?",3,"Hõ, thËt lµ mét tªn gian th­¬ng, ta sÏ cho ng­¬i biÕt tay/nv2x6","§Ó ta suy nghÜ l¹i/no")
end

function nv2x6()
	local nNpcIndex = GetLastDiagNpc();
	DelNpc(nNpcIndex)
	SetTask(12,90*256)
	local indexNPC = AddNpcEx(2485, 30, 4, SubWorldID2Idx(179), 1875*32, 2636*32, 1, "Th­¬ng gia trë mÆt", 0)
	if indexNPC then
		SetNpcScript(indexNPC, "\\script\\wumumenpai\\danhdutaumaihoalang.lua")
	end
end
