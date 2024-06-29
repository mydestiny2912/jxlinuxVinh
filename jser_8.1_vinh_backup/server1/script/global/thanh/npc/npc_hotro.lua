IncludeLib("SETTING")
IncludeLib("ITEM");
IncludeLib("FILESYS")
Include("\\script\\lib\\player.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")


--Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\tanthu\\head.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\gm\\functions_goldplatiumitems.lua") --lÊy ®å hoµng kim, b¹ch kim-----
Include("\\script\\global\\thinh\\hotro\\functions_points.lua")

tbGiveSkill60 ={}
TakIsGetSkill = 2685
TakIsGetItemKimPhong = 2687

function tbGiveSkill60:MainDialog()
	local tbOpt = {}
	tinsert(tbOpt, {"NhËn hæ trî t©n thñ vµ cÊp 60", tbGiveSkill60.GetSkillSupport, {tbGiveSkill60}})
	tinsert(tbOpt, {"NhËn KÜ N¨ng sau Khi Gia NhËp M«n Ph¸i", tbGiveSkill60.GetSkill, {tbGiveSkill60}})	
	tinsert(tbOpt, {"NhËn trang bÞ Thanh C©u", tbGiveSkill60.GetThanhCau, {tbGiveSkill60}})
	tinsert(tbOpt, {"Hñy bá "})
	CreateNewSayEx("Mêi ®¹i hiÖp chän", tbOpt)
end
 

function tbGiveSkill60:GetThanhCau( )
	if(GetLevel() < 60 )then
		Talk(1,"","CÊp 60 trë lªn míi ®­îc nhËn!")
		return
	end
	
	take_xp_equip_1(1, 905, 0)
	
end

function tbGiveSkill60:GetSkill()

	if (GetTask(TakIsGetSkill) > 0) then
		return Talk(1, "", "§¹i hiÖp kh«ng ph¶i ®· nhËn kÜ n¨ng råi hay sao!")
	end

	if(GetLevel() < 10)then
		return Talk(1, "", "Hç trî nµy chØ dµnh cho t©n thñ cÊp 10 trë lªn!")
	end

	local nFaction = GetLastFactionNumber()
  	if nFaction < 0 then
  		Talk(1, "", "Ch­a gia nhËp m«n ph¸i, ch­a thÓ nhËn phÇn th­ëng nµy!")
  		return
  	end

  	local tbSkill = TB_DAIYITOUSHI_FACTS[nFaction + 1].tbSkillID
  	if not tbSkill then
  		Talk(1, "", "ThÊt b¹i, xin liªn hÖ GM!")
  		return
  	end
  	
  	for key, val in tbSkill do
	  	if key ~= 150 and key ~= "150" and key ~= 120 and key ~= "120" and key ~= 90 and key ~= "90" then	
	  		--print("==key "..key)
	  		for i = 1, getn(val) do
	  			AddMagic(val[i], 0)
	  		end
	  	end	 	
  	end
  	
  	SetTask(TakIsGetSkill, 1)
  	Talk(1, "", "NhËn kÜ n¨ng thµnh c«ng, xin kiÓm tra l¹i! ")
  	Msg2Player("NhËn skill m«n ph¸i thµnh c«ng")
  	
end

function tbGiveSkill60:GetSkillSupport()

	if(GetLevel() > 120)then
		return Talk(1, "", "Hç trî nµy chØ dµnh cho t©n thñ d­íi cÊp 120")
	end
	
	local nCurLevel = GetLevel()
	local nAddLevel = 60 - nCurLevel
	ST_LevelUp(nAddLevel)

	-- body
	if (GetSkillState(440) > 0) then
		return Talk(1, "", "Trªn ng­êi ®¹i hiÖp kh«ng ph¶i ®· cã kÜ n¨ng nµy råi hay sao?")
	end
	if (GetSkillState(987) > 0) then
		return Talk(1, "", "Trªn ng­êi ®¹i hiÖp kh«ng ph¶i ®· cã kÜ n¨ng nµy råi hay sao?")
	end
	AddSkillState(440,1,1,64800*24,1)
	AddSkillState(987,1,1,64800*24,1)
	Msg2Player("B¹n nhËn phÇn th­ëng thµnh c«ng")
end 

------------------------------------------------------------------------------------------------------------

function main() 
	tbGiveSkill60:MainDialog()
end
 
