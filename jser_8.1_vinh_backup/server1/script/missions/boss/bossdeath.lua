---------------------------------***Edit*By*Heart*Doldly***------------------------------------
IncludeLib("TASKSYS")
IncludeLib("LEAGUE")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\updateconfig\\tasklist.lua")
-----------------------------------------------------------------------------
DROPRATE_BOSS_HONOURRATE = {
		["V≠¨ng T∏"] = {350, 136},--739
		["Huy“n Gi∏c ßπi S≠"] = {350, 134},--740
		["ß≠Íng B t Nhi‘m"] = {350, 149},--741
		["Bπch Doanh Doanh"] = {350, 138},--742
		["Thanh Tuy÷t S≠ Th∏i"] = {350, 137},--743
		["Y™n Hi”u Tr∏i"] = {350, 168},--744
		["Hµ Nh©n Ng∑"] = {350, 171},--745
		["Tı ßπi Nhπc"] = {350, 171},--1367
		["Tuy“n C¨ Tˆ"] = {350, 144},--747
		["Gia LuÀt Tﬁ Ly"] = {350, 130},--563
		["Huy“n Nan ßπi S≠"] = {400, 130},--1365
		["ßoan MÈc Du÷"] = {400, 127},--565
		["CÊ B∏ch"] = {350, 141},--566
		["ßπo Thanh Ch©n Nh©n"] = {300, 130},--562
		["Chung Linh TÛ"] = {400, 130},--567
		["Hµ Linh Phi™u"] = {400, 130},--568
		["Lam Y Y"] = {250, 176},--582
		["Mπnh Th≠¨ng L≠¨ng"] = {300, 180},--583
		["ß≠Íng Phi Y’n"] = {300, 180},--1366
		["Thanh Li™n Tˆ"] = {300, 180},--1368
}

TSK_PLAYER_BOSSKILLED = 2598 
KILLBOSSEXPAWARD = 10000000
KILLBOSSNEAREXPAWARD = 8000000

tbDropAward = {
	[1] = {
		{szName="Bµn Nh≠Óc T©m Kinh",tbProp={6,1,12,1,0,0},nCount=3},
		{szName="Thi’t La H∏n",tbProp={6,1,23,1,0,0},nCount=3},
		{szName="Qu’ Hoa Tˆu",tbProp={6,1,125,1,0,0},nCount=2},
		{szName="Thi™n S¨n B∂o LÈ",tbProp={6,1,72,1,0,0},nCount=2},
		{szName="Ti™n Th∂o LÈ ß∆c Bi÷t",tbProp={6,1,1181,1,0,0},nCount=3},
		{szName="B∏ch Qu∂ LÈ",tbProp={6,1,73,1,0,0},nCount=2},
		{szName="Phi tËc hoµn l‘ bao",tbProp={6,1,2520,1,0,0},nCount=5},
		{szName="ßπi l˘c hoµn l‘ bao",tbProp={6,1,2517,1,0,0},nCount=5},
		{szName="PhÛc duy™n lÈ ti”u",tbProp={6,1,122,1,0,0},nCount=5},
		{szName="PhÛc duy™n lÈ trung",tbProp={6,1,123,1,0,0},nCount=5},
		{szName="PhÛc duy™n lÈ Æπi",tbProp={6,1,124,1,0,0},nCount=5},
	},
	[2] = {
		{szName = "B› K›p 120", tbProp={6,1,1125,1,0,0},nCount=1, nRate = 10},
		{szName="Lam ThÒy Tinh",tbProp={4,238,1,1,0,0},nCount=4, nRate = 20},
		{szName="Tˆ ThÒy Tinh",tbProp={4,239,1,1,0,0},nCount=4, nRate = 20},
		{szName="LÙc ThÒy Tinh",tbProp={4,240,1,1,0,0},nCount=4, nRate = 20},
		{szName="Tinh HÂng B∂o Thπch",tbProp={4,353,1,1,0,0},nCount=4, nRate = 20},
		{szName="V‚ l©m mÀt tﬁch",tbProp={6,1,26,1,0,0},nCount=3,nRate=5},
		{szName="T»y tÒy kinh",tbProp={6,1,22,1,0,0},nCount=3,nRate=5},
	},
	[3] = {
		{szName="An Bang",tbProp={0,random(216,219)},nQuality = 1,nRate = 1.5},
		{szName="ßﬁnh QuËc",tbProp={0,random(398,402)},nQuality = 1,nRate = 3.5},
	},
}

tbDropEquip = {
	["V≠¨ng T∏"] = {
		{szName="Hµm Thi™n Thıa Long Chi’n Ngoa",tbProp={0,20},nQuality=1,nRate=0.3},
		{szName="Ng˘ Long Thi™n M´n ThÛc Y™u ß∏i",tbProp={0,28},nQuality=1,nRate=0.3},
	},
	["Huy“n Gi∏c ßπi S≠"] = {
		{szName="PhÙc Ma Tˆ Kim C´n",tbProp={0,6},nQuality=1,nRate=0.3},
		{szName="T¯ Kh´ng Gi∏ng Ma GiÌi ßao",tbProp={0,11},nQuality=1,nRate=0.3},
		{szName="MÈng Long Ch›nh HÂng Cµ Sa",tbProp={0,2},nQuality=1,nRate=0.3},
		{szName="PhÙc Ma § Kim Nhuy‘n ßi“u",tbProp={0,8},nQuality=1,nRate=0.3},
	},
	["ß≠Íng B t Nhi‘m"] = {
		{szName="B®ng Hµn ß¨n Chÿ Phi ßao",tbProp={0,71},nQuality=1,nRate=100},
		{szName="Thi™n Quang ßﬁnh T©m Ng≠ng Th«n PhÔ",tbProp={0,77},nQuality=1,nRate=0.3},
		{szName="S©m Hoµng Phi Tinh ßoπt HÂn",tbProp={0,81},nQuality=1,nRate=0.3},
		{szName="ßﬁa Ph∏ch Hæc Di÷m Xung Thi™n Li™n",tbProp={0,87},nQuality=1,nRate=0.3},
	},
	["Bπch Doanh Doanh"] = {
		{szName="Minh ∂o Tµ S∏t ßÈc NhÀn",tbProp={0,61},nQuality=1,nRate=0.3},
		{szName="ChÛ Ph≠Óc Di÷t L´i C∂nh PhÔ",tbProp={0,67},nQuality=1,nRate=0.3},
	},
	["Thanh Tuy÷t S≠ Th∏i"] = {
		{szName="V´ Gian ˚ Thi™n Ki’m",tbProp={0,31},nQuality=1,nRate=0.3},
		{szName="V´ Tr«n Thanh T©m H≠Ìng Thi÷n Ch©u",tbProp={0,42},nQuality=1,nRate=0.3},
	},
	["Y™n Hi”u Tr∏i"] = {
		{szName="T™ Hoµng PhÙng Phi ßao",tbProp={0,46},nQuality=1,nRate=0.3},
		{szName="B›ch H∂i Uy™n ¶¨ng Li™n Hoµn ßao",tbProp={0,51},nQuality=1,nRate=0.3},
		{szName="B›ch H∂i HÂng Linh Kim Ti ß∏i",tbProp={0,53},nQuality=1,nRate=0.3},
	},
	["Hµ Nh©n Ng∑"] = {
		{szName="ßÂng Cıu Kh∏ng Long HÈ Uy”n",tbProp={0,94},nQuality=1,nRate=0.3},
		{szName="ßﬁnh Kh∏i LÙc Ng‰c Tr≠Óng",tbProp={0,96},nQuality=1,nRate=0.3},
	},
	["Tı ßπi Nhπc"] = {
		{szName="CÀp Phong Huy“n Ti Tam ßoπn C»m",tbProp={0,123},nQuality=1,nRate=0.3},
	},
	["Tuy“n C¨ Tˆ"] = {
		{szName="S≠¨ng Tinh Thi™n Ni™n Hµn Thi’t",tbProp={0,126},nQuality=1,nRate=0.3},
		{szName="L´i Khung Thi™n ßﬁa HÈ PhÔ",tbProp={0,132},nQuality=1,nRate=0.3},
		{szName="VÙ ∂o Bæc Minh ßπo Qu∏n",tbProp={0,136},nQuality=1,nRate=0.3},
	},
	["Gia LuÀt Tﬁ Ly"] = {
		{szName="Ma Hoµng ∏n Xu t HÊ Hπng Khuy™n",tbProp={0,107},nQuality=1,nRate=0.3},
		{szName="Ma Thﬁ S¨n H∂i S¨n HÂng L˝",tbProp={0,115},nQuality=1,nRate=0.3},
	},
	["Huy“n Nan ßπi S≠"] = {
		{szName="MÈng Long Huy“n Ti Ph∏t ß∏i",tbProp={0,3},nQuality=1,nRate=0.03},
		{szName="T¯ Kh´ng Gi∏ng Ma GiÌi ßao",tbProp={0,11},nQuality=1,nRate=0.3},
		{szName="MÈng Long Ch›nh HÂng Cµ Sa",tbProp={0,2},nQuality=1,nRate=0.3},
		{szName="PhÙc Ma § Kim Nhuy‘n ßi“u",tbProp={0,8},nQuality=1,nRate=0.3},
	},
	["ßoan MÈc Du÷"] = {
		{szName="Ma S∏t Qu˚ CËc U Minh Th≠¨ng",tbProp={0,101},nQuality=1,nRate=0.3},
	},
	["CÊ B∏ch"] = {
		{szName="K’ Nghi÷p B´n L´i Toµn Long Th≠¨ng",tbProp={0,21},nQuality=1,nRate=0.3},
		{szName="K’ Nghi÷p Huy“n VÚ Hoµng Kim Kh∂i",tbProp={0,22},nQuality=1,nRate=0.3},
		{szName="Ng˘ Phong L≠Óng Ng©n B∂o ßao",tbProp={0,26},nQuality=1,nRate=0.3},
	},
	["ßπo Thanh Ch©n Nh©n"] = {
		{szName="CÀp Phong Tam Thanh PhÔ",tbProp={0,122},nQuality=1,nRate=0.3},
	},
	["Chung Linh TÛ"] = {
		{szName="T™ Hoµng B®ng Tung C»m Uy”n",tbProp={0,49},nQuality=1,nRate=0.3},
		{szName="B›ch H∂i HÂng L®ng Ba",tbProp={0,54},nQuality=1,nRate=0.3},
	},
	["Hµ Linh Phi™u"] = {
		{szName="V´ Ma T»y T≠Óng Ng‰c Kh u",tbProp={0,39},nQuality=1,nRate=0.3},
		{szName="V´ Ma HÂng Truy Nhuy‘n Th∏p Hµi",tbProp={0,40},nQuality=1,nRate=0.3},
	},
	["Lam Y Y"] = {
		{szName="U Lung M∆c ThÔ Nhuy‘n L˝",tbProp={0,60},nQuality=1,nRate=0.3},
		{szName="U Lung Kim Xµ Ph∏t ß∏i",tbProp={0,56},nQuality=1,nRate=0.3},
	},
	["Mπnh Th≠¨ng L≠¨ng"] = {
		{szName="ßÂng Cıu Gi∏ng Long C∏i Y",tbProp={0,92},nQuality=1,nRate=0.3},
		{szName="ßÂng Cıu Ti“m Long Y™u ß∏i",tbProp={0,93},nQuality=1,nRate=0.3},
	},
	["ß≠Íng Phi Y’n"] = {
		{szName="Thi™n Quang Hoa VÚ Mπn Thi™n",tbProp={0,76},nQuality=1,nRate=0.3},
		{szName="Thi™n Quang ßﬁnh T©m Ng≠ng Th«n PhÔ",tbProp={0,77},nQuality=1,nRate=0.3},
		{szName="S©m Hoµng Phi Tinh ßoπt HÂn",tbProp={0,81},nQuality=1,nRate=0.3},
		{szName="ßﬁa Ph∏ch Hæc Di÷m Xung Thi™n Li™n",tbProp={0,87},nQuality=1,nRate=0.3},
		{szName="S©m Hoµng HÂn Gi∂o ThÛc Y™u",tbProp={0,83},nQuality=1,nRate=0.3},
	},
	["Thanh Li™n Tˆ"] = {
		{szName="L´i Khung Hµn Tung B®ng Bπch Qu∏n",tbProp={0,131},nQuality=1,nRate=0.3},
		{szName="L´i Khung Thi™n ßﬁa HÈ PhÔ",tbProp={0,132},nQuality=1,nRate=0.3},
		{szName="VÙ ∂o Thanh ∂nh Huy“n Ng‰c BÈi",tbProp={0,139},nQuality=1,nRate=0.3},
	},
}

function OnDeath(nNpcIndex)
	local szNpcName = GetNpcName(nNpcIndex)
	local nTeamSize = GetTeamSize();
	local szName;
	if (nTeamSize > 1) then
		for i = 1, nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain) == 1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s ph«n th≠Îng","Kinh nghi÷m TÊ ßÈi Gi’t BOSS hoµng kim"));
		end
	else
		szName = GetName();
		PlayerFunLib:AddExp(KILLBOSSEXPAWARD, 0, format("%s ph«n th≠Îng","Kinh nghi÷m C∏ Nh©n Æ∑ bπi BOSS hoµng kim"));
	end

	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s ph«n th≠Îng","Kinh nghi÷m ß¯ng Xung Quanh LÛc BOSS Hoµng Kim Bﬁ Ti™u Di÷t"));
	end
	
	local szNews = format("<color=green>ChÛc Mıng <color=yellow>%s<color> Tπi <color=yellow>%s<color> ß∑ Ti™u Di÷t Thµnh C´ng <color=yellow>%s<color> NhÀn ß≠Óc 10 Tri÷u Kinh Nghi÷m Vµ Ng≠Íi Xung Quanh NhÀn ß≠Óc 8 Tri÷u Kinh Nghi÷m<color>", szName, SubWorldName(SubWorld),GetNpcName(nNpcIndex));
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1,"","","\\script\\event\\msg2allworld.lua","battle_msg2allworld", szNews , "", "");

	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,tbDropEquip[szNpcName],format("killed_%s", szNpcName))
	tbDropTemplet:GiveAwardByRate(nNpcIndex, PlayerIndex,tbDropAward,format("killed_%s",GetNpcName(nNpcIndex)))
	----------------------BOSS ßÈc C´ Xu t Hi÷n-------------------------------------
	local nCount = GetTask(TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(TSK_PLAYER_BOSSKILLED, nCount);
	
	if (GetNpcParam(nNpcIndex, 1) == 1) then --19:30
		RemoteExecute("\\script\\mission\\boss\\bigboss.lua","ReduceGoldBossCount",0);
	end
end;

function OnTimer(npcindex, nTimeOut) 
	DelNpc(npcindex);
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------