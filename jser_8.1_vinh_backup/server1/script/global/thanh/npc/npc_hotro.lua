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
Include("\\script\\global\\gm\\functions_goldplatiumitems.lua") --l�y �� ho�ng kim, b�ch kim-----
Include("\\script\\global\\thinh\\hotro\\functions_points.lua")

tbGiveSkill60 ={}
TakIsGetSkill = 2685
TakIsGetItemKimPhong = 2687

function tbGiveSkill60:MainDialog()
	local tbOpt = {}
	tinsert(tbOpt, {"Nh�n h� tr� t�n th� v� c�p 60", tbGiveSkill60.GetSkillSupport, {tbGiveSkill60}})
	tinsert(tbOpt, {"Nh�n K� N�ng sau Khi Gia Nh�p M�n Ph�i", tbGiveSkill60.GetSkill, {tbGiveSkill60}})	
	tinsert(tbOpt, {"Nh�n trang b� Thanh C�u", tbGiveSkill60.GetThanhCau, {tbGiveSkill60}})
	tinsert(tbOpt, {"Shop VIP", tbGiveSkill60.OpenShopVip, {tbGiveSkill60}})
	tinsert(tbOpt, {"H�y b� "})
	CreateNewSayEx("M�i ��i hi�p ch�n", tbOpt)
end

function tbGiveSkill60:OpenShopVip()
	Sale(188)	
end 

function tbGiveSkill60:GetThanhCau( )
	if(GetLevel() < 60 )then
		Talk(1,"","C�p 60 tr� l�n m�i ���c nh�n!")
		return
	end
	
	take_xp_equip_1(1, 905, 0)
	
end

function tbGiveSkill60:GetSkill()

	if (GetTask(TakIsGetSkill) > 0) then
		return Talk(1, "", "��i hi�p kh�ng ph�i �� nh�n k� n�ng r�i hay sao!")
	end

	if(GetLevel() < 10)then
		return Talk(1, "", "H� tr� n�y ch� d�nh cho t�n th� c�p 10 tr� l�n!")
	end

	local nFaction = GetLastFactionNumber()
  	if nFaction < 0 then
  		Talk(1, "", "Ch�a gia nh�p m�n ph�i, ch�a th� nh�n ph�n th��ng n�y!")
  		return
  	end

  	local tbSkill = TB_DAIYITOUSHI_FACTS[nFaction + 1].tbSkillID
  	if not tbSkill then
  		Talk(1, "", "Th�t b�i, xin li�n h� GM!")
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
  	Talk(1, "", "Nh�n k� n�ng th�nh c�ng, xin ki�m tra l�i! ")
  	Msg2Player("Nh�n skill m�n ph�i th�nh c�ng")
  	
end

function tbGiveSkill60:GetSkillSupport()

	if(GetLevel() > 120)then
		return Talk(1, "", "H� tr� n�y ch� d�nh cho t�n th� d��i c�p 120")
	end
	
	local nCurLevel = GetLevel()
	local nAddLevel = 60 - nCurLevel
	ST_LevelUp(nAddLevel)

	-- body
	if (GetSkillState(440) > 0) then
		return Talk(1, "", "Tr�n ng��i ��i hi�p kh�ng ph�i �� c� k� n�ng n�y r�i hay sao?")
	end
	if (GetSkillState(987) > 0) then
		return Talk(1, "", "Tr�n ng��i ��i hi�p kh�ng ph�i �� c� k� n�ng n�y r�i hay sao?")
	end
	AddSkillState(440,1,1,64800*24,1)
	AddSkillState(987,1,1,64800*24,1)
	Msg2Player("B�n nh�n ph�n th��ng th�nh c�ng")
end 

------------------------------------------------------------------------------------------------------------

function main() 
	tbGiveSkill60:MainDialog()
end
 
