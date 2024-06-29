Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\lib\\timerlist.lua")
Include("\\script\\lib\\player.lua")
Include("\\script\\lib\\basic.lua") 

function main() 
	dofile("script/wumumenpai/thiphong.lua")
	if (GetTask(12) == 260*256 and GetLevel() >= 40)  then
		Talk(3,"nv4x1","Thi Phong: Ng­¬i ®Õn rÊt ®óng lóc, theo tin t×nh b¸o, triÒu ®×nh ®· cö La HiÕn Thµnh lµm sø gi¶ ®Õn T­¬ng D­¬ng ®Ó cÇu hßa Kim Quèc","Thi Phong: La HiÕn Thµnh vèn lµ mét tªn quan nhá trong vô ¸n oan cña Nh¹c t­íng quan , kh«ng ngê b©y giê h¾n ®· trë thµnh thõa t­íng, h¾n lµ 1 kÎ ph¶n béi, rÊt dÔ thay ®æi b¶n chÊt. Nh©n danh bæn ®­êng, ng­¬i h·y lËp tøc ®i tiªu diÖt tªn gian tÆc nµy?")
	elseif GetTask(12) == 320*256 then
		Talk(3,"nv4x4","Thi Phong: Ng­¬i ®· giÕt chÕt La HiÕn Thµnh ch­a?","Thi Phong: Ng­¬i l¹i ®Ó h¾n ch¹y tho¸t sao? Khèn kiÕp, ta hËn kh«ng thÓ mét kiÕm chĞm chÕt tªn ¸c tÆc La HiÕn Thµnh!")
	else
		Talk(1,"","Thi Phong: §õng øc hiÕp kÎ yÕu, nh­ng nÕu gÆp kÎ ¸c th× tuyÖt ®èi kh«ng tha!")
	end
end

function nv4x1() 
	Talk(1,"nv4x2","NhËn nhiÖm vô tiªu diÖt La HiÕn Thµnh, tr¶ thï cho Nh¹c Phi")
end

function nv4x2()
	Describe("Thi Phong: H«m nay lµ mét c¬ héi tèt. H¾n sÏ ®i ngang qua §¹o H­¬ng Th«n, ®©y lµ n¬i phôc kİch tuyÖt vêi, h·y nhanh chãng ®Õn ®ã tiªu diÖt h¾n",2,"§­îc ta sÏ ®i ngay/nv4x3","Ta cã viÖc kh¸c/no")
end

function nv4x3() 
	SetTask(12,280*256)
	AddNote("§Õn §¹o H­¬ng Th«n (181/204), tiªu diÖt La HiÕn Thµnh.") 
	Msg2Player("§Õn §¹o H­¬ng Th«n (181/204), tiªu diÖt La HiÕn Thµnh.")  
	--local nIndex = AddNpc(2488,1,SubWorldID2Idx(101),1448*32,3277*32,0,"La HiÕn Thµnh")
	--SetNpcScript(nIndex,"\\script\\wumumenpai\\lahoan.lua")
	--AddTimer(1800*18,"OnTimeout",nIndex)
end 

function nv4x4() 
	SetTask(12,330*256)
	SetRank(94)
	AddMagic(1963)
	AddMagic(1979)
	Msg2Player("Hoµn thµnh nhiÖm vô cÊp 40, häc ®­îc <color=yellow>Né Ph¸ch Thiªn Nhai<color> vµ <color=yellow>TriÒu Thiªn KhuyÕt<color>")  
end

--function OnTimeout(nIndex)
--	DelNpc(nIndex);
--end 