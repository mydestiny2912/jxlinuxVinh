Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\npcdailog.lua")
--Include("\\script\\update_feature\\songbac\\npc_choixeng.lua")
Include("\\script\\lib\\log.lua")
--------------------------------------------------------
tbSongBac = {}
tbSongBac.TienXu	 = 12								 --Task Xu
tbSongBac.TiLeWin	 = 30								 --TØ LÖ Win Cho Tµi XØu - Ch½n LÎ
tbSongBac.Member	 = 25								 --TØ LÖ Cho Member Win O¼n Tï T×
tbSongBac.Balane	 = 15								 --TØ LÖ 2 Bªn Hßa Nhau O¼n Tï T×
tbSongBac.ChuSongBac	 = 60								 --TØ LÖ Cho Admin Win O¼n Tï T×
tbSongBac.MaxCount	 = 1000							 --Giíi H¹n Xu Tham Gia Ch¬i
tbSongBac.StartTime	 = 1							 --Thêi Gian Më Cöa
tbSongBac.EndTime	 = 9999							 --Th¬i Gian KÕt Thóc
tbSongBac.TimeChat = "Thêi Gian Më Cöa Tõ <color=red>08h:00<color> §Õn <color=red>22h:00<color> Hµng Ngµy"

tbSongBac.FormulaList = {
	[1]={szName="Ta Muèn Ch¬i BÇu Cua"},
	[2]={szName="Ta Muèn Ch¬i Tµi XØu"},
	[3]={szName="Ta Muèn Ch¬i Ch½n LÎ"},
	[4]={szName="Ta Muèn Ch¬i O¼n Tï T×"},
	[5]={szName="Ta Muèn Ch¬i §¸nh XÌng"},
}

tbSongBac.SelecList = {
	[1]={szName="Xem Th«ng Tin §Æt Cöa"},
	[2]={szName="Ta Muèn Ch¬i 1 V¸n"},
	[3]={szName="Tµi"},
	[4]={szName="XØu"},
	[5]={szName="Ch½n"},
	[6]={szName="LÎ"},
	[7]={szName="KÐo"},
	[8]={szName="Bóa"},
	[9]={szName="Bao"},
	[10]={szName="Xem KÕt Qu¶ §Æt C­îc"},
	[11]={szName="Ta Muèn Thö 1 V¸n Xem Sao"},
	[12]={szName="N¹p XÌng"},
	[13]={szName="Ta Muèn Rót XÌng"},
	[14]={szName="Ta Muèn B¸n XÌng"},
	[15]={szName="Ta Muèn Mua XÌng"},
}
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function tbSongBac:ThamGia()
local nTimes = tonumber(GetLocalDate("%H%M"))
local szTitle = "Xin Chµo! Ta Më Sßng B¹c §· NhiÒu N¨m Råi, Kh«ng BiÕt\nCã Bao NhiÒu Anh Hïng HiÖp SÜ Vµo §©y Th¸ch §Êu Vui\nCh¬i Gi¶i TrÝ Cã Th­ëng, Ng­¬i Cã Muèn Thö 1 V¸n Kh«ng BiÕt §©u §æi §êi."
	if (ChuSongBac == 1) then
		if (nTimes >= self.StartTime and nTimes < self.EndTime) then
			local tbOpt = {
				{self.FormulaList[1].szName, tbSongBac.BauCua, {tbSongBac}},
				{self.FormulaList[2].szName, tbSongBac.TaiXiu, {tbSongBac}},
				{self.FormulaList[3].szName, tbSongBac.ChanLe, {tbSongBac}},
				{self.FormulaList[4].szName, tbSongBac.DatCuocXu, {tbSongBac}},
				{self.FormulaList[5].szName, tbSongBac.ChoiXeng, {tbSongBac}},
				{"Th«i Ta Kh«ng Ch¬i N÷a"},
			}
			CreateNewSayEx(szTitle, tbOpt)
		else
			Talk(1,"","<color=yellow>"..self.TimeChat.."<color>")
		end
	else
		Talk(1,"","<color=red>TÝnh N¨ng Nµy §· T¹m §ãng<color>")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------Ch¬i BÇu Cua----------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function tbSongBac:BauCua()
	local szTitle = "C¸c H¹ H·y Chän Cöa Nµo"
	local tbOpt = {
		{self.SelecList[1].szName, showFishGate},
		{self.SelecList[2].szName, OnChoseKind},
		{"Hñy Bá"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------Ch¬i Tµi XØu-----------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function tbSongBac:TaiXiu()
	local szTitle = "C¸c H¹ H·y Chän Cöa Nµo"
	local tbOpt = {
		{self.SelecList[3].szName, tbSongBac.DatCuocTai, {tbSongBac}},
		{self.SelecList[4].szName, tbSongBac.DatCuocXiu, {tbSongBac}},
		{"Hñy Bá"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
-------------------------------Tµi----------------------------------------------------->>
function tbSongBac:DatCuocTai()
	AskClientForNumber("DatCuocTai",0,self.MaxCount,"Xu §Æt C­îc")
end
	
function DatCuocTai(num)
local nTienXu = HN_GetTaskID(tbSongBac.TienXu)
local nXu = CalcEquiproomItemCount(4,417,1,1)
	if (nXu >= 1) then
		if (nXu >= num) then
			ConsumeEquiproomItem(num,4,417,1,-1) HN_SetTaskID(tbSongBac.TienXu,nTienXu+num)
			Talk(1,"KetQuaTai","<color=yellow>"..GetName().." <color=green>§· §Æt C­îc <color=red>"..num.."<color> Xu<color> Chän [<color=fire>Tµi<color>]")
		else
			Talk(1,"","C¸c H¹ Kh«ng §ñ TiÒn §Æt C­îc §Þnh Lõa Ta H¶")
		end
	else
		Talk(1,"","Ng­¬i Kh«ng Cã TiÒn Mµ D¸m Ch¬i Sßng B¹c H¶")
	end	
end

function KetQuaTai()
	local tbAward = {
		{nRate = tbSongBac.TiLeWin,
			pFun = function (nItemCount, szLogTitle)
				Talk(1,"Win","<color=green>KÕt Qu¶ LÇn Nµy: [<color=fire>Tµi<color>]")
			end,
		},
		{nRate = 100-tbSongBac.TiLeWin,
			pFun = function (nItemCount, szLogTitle)
				Talk(1,"close","<color=green>KÕt Qu¶ LÇn Nµy: [<color=fire>XØu<color>]")
			end,
		},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,1)
end
------------------------------XØu-------------------------------------------------->>
function tbSongBac:DatCuocXiu()
	AskClientForNumber("DatCuocXiu",0,self.MaxCount,"Xu §Æt C­îc")
end
	
function DatCuocXiu(num)
local nTienXu = HN_GetTaskID(tbSongBac.TienXu)
local nXu = CalcEquiproomItemCount(4,417,1,1)
	if (nXu >= 1) then
		if (nXu >= num) then
			ConsumeEquiproomItem(num,4,417,1,-1) HN_SetTaskID(tbSongBac.TienXu,nTienXu+num)
			Talk(1,"KetQuaXiu","<color=yellow>"..GetName().." <color=green>§· §Æt C­îc <color=red>"..num.."<color> Xu<color> Chän [<color=fire>XØu<color>]")
		else
			Talk(1,"","C¸c H¹ Kh«ng §ñ TiÒn §Æt C­îc §Þnh Lõa Ta H¶")
		end
	else
		Talk(1,"","Ng­¬i Kh«ng Cã TiÒn Mµ D¸m Ch¬i Sßng B¹c H¶")
	end	
end

function KetQuaXiu()
	local tbAward = {
		{nRate = tbSongBac.TiLeWin,
			pFun = function (nItemCount, szLogTitle)
				Talk(1,"Win","<color=green>KÕt Qu¶ LÇn Nµy: [<color=fire>XØu<color>]")
			end,
		},
		{nRate = 100-tbSongBac.TiLeWin,
			pFun = function (nItemCount, szLogTitle)
				Talk(1,"close","<color=green>KÕt Qu¶ LÇn Nµy: [<color=fire>Tµi<color>]")
			end,
		},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,1)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------Ch¬i Tµi XØu-----------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function tbSongBac:ChanLe()
	local szTitle = "C¸c H¹ H·y Chän Cöa Nµo Ch½n H·y LÎ"
	local tbOpt = {
		{self.SelecList[5].szName, tbSongBac.DatCuocChan, {tbSongBac}},
		{self.SelecList[6].szName, tbSongBac.DatCuocLe, {tbSongBac}},
		{"Hñy Bá"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
-------------------------------Ch½n----------------------------------------------------->>
function tbSongBac:DatCuocChan()
	AskClientForNumber("DatCuocChan",0,self.MaxCount,"Xu §Æt C­îc")
end
	
function DatCuocChan(num)
local nTienXu = HN_GetTaskID(tbSongBac.TienXu)
local nXu = CalcEquiproomItemCount(4,417,1,1)
	if (nXu >= 1) then
		if (nXu >= num) then
			ConsumeEquiproomItem(num,4,417,1,-1) HN_SetTaskID(tbSongBac.TienXu,nTienXu+num)
			Talk(1,"KetQuaChan","<color=yellow>"..GetName().." <color=green>§· §Æt C­îc <color=red>"..num.."<color> Xu<color> Chän [<color=fire>Ch½n<color>]")
		else
			Talk(1,"","C¸c H¹ Kh«ng §ñ TiÒn §Æt C­îc §Þnh Lõa Ta H¶")
		end
	else
		Talk(1,"","Ng­¬i Kh«ng Cã TiÒn Mµ D¸m Ch¬i Sßng B¹c H¶")
	end
end

function KetQuaChan()
	local tbAward = {
		{nRate = tbSongBac.TiLeWin,
			pFun = function (nItemCount, szLogTitle)
				Talk(1,"Win","<color=green>KÕt Qu¶ LÇn Nµy: [<color=fire>Ch½n<color>]")
			end,
		},
		{nRate = 100-tbSongBac.TiLeWin,
			pFun = function (nItemCount, szLogTitle)
				Talk(1,"close","<color=green>KÕt Qu¶ LÇn Nµy: [<color=fire>LÎ<color>]")
			end,
		},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,1)
end
------------------------------LÎ-------------------------------------------------->>
function tbSongBac:DatCuocLe()
	AskClientForNumber("DatCuocLe",0,self.MaxCount,"Xu §Æt C­îc")
end
	
function DatCuocLe(num)
local nTienXu = HN_GetTaskID(tbSongBac.TienXu)
local nXu = CalcEquiproomItemCount(4,417,1,1)
	if (nXu >= 1) then
		if (nXu >= num) then
			ConsumeEquiproomItem(num,4,417,1,-1) HN_SetTaskID(tbSongBac.TienXu,nTienXu+num)
			Talk(1,"KetQuaLe","<color=yellow>"..GetName().." <color=green>§· §Æt C­îc <color=red>"..num.."<color> Xu<color> Chän [<color=fire>LÎ<color>]")
		else
			Talk(1,"","C¸c H¹ Kh«ng §ñ TiÒn §Æt C­îc §Þnh Lõa Ta H¶")
		end
	else
		Talk(1,"","Ng­¬i Kh«ng Cã TiÒn Mµ D¸m Ch¬i Sßng B¹c H¶")
	end
end

function KetQuaLe()
	local tbAward = {
		{nRate = tbSongBac.TiLeWin,
			pFun = function (nItemCount, szLogTitle)
				Talk(1,"Win","<color=green>KÕt Qu¶ LÇn Nµy: [<color=fire>LÎ<color>]")
			end,
		},
		{nRate = 100-tbSongBac.TiLeWin,
			pFun = function (nItemCount, szLogTitle)
				Talk(1,"close","<color=green>KÕt Qu¶ LÇn Nµy: [<color=fire>Ch½n<color>]")
			end,
		},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,1)
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------Ch¬i O¼n Tï T×-----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function tbSongBac:DatCuocXu()
	AskClientForNumber("DatCuocXu",0,self.MaxCount,"Xu §Æt C­îc")
end
	
function DatCuocXu(num)
local nTienXu = HN_GetTaskID(tbSongBac.TienXu)
local nXu = CalcEquiproomItemCount(4,417,1,1)
	if (nXu >= 1) then
		if (nXu >= num) then
			ConsumeEquiproomItem(num,4,417,1,-1) HN_SetTaskID(tbSongBac.TienXu,nTienXu+num)
			Talk(1,"OanTuTi","<color=yellow>"..GetName().." <color=green>§· §Æt C­îc <color=red>"..num.."<color> Xu<color> Tham Gia Ch¬i O¼n Tï T×")
		else
			Talk(1,"","C¸c H¹ Kh«ng §ñ TiÒn §Æt C­îc §Þnh Lõa Ta H¶")
		end
	else
		Talk(1,"","Ng­¬i Kh«ng Cã TiÒn Mµ D¸m Ch¬i Sßng B¹c H¶")
	end
end

function OanTuTi()
	local szTitle = "Nµo B¾t §Çu Ch¬i Nµo 1,2,3 Ra C¸i G× Ra C¸i Nµy"
	local tbOpt = {
		{tbSongBac.SelecList[7].szName, DatCuocKeo},
		{tbSongBac.SelecList[8].szName, DatCuocBua},
		{tbSongBac.SelecList[9].szName, DatCuocBao},
		{"Hñy Bá"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function DatCuocKeo()
	local tbAward = {
		{nRate = tbSongBac.Member,
			pFun = function (nItemCount, szLogTitle)
				Talk(2,"Win","<color=green>"..GetName().." Chän [<color=fire>KÐo<color>]\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tVS\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tChñ Sßng B¹c Chän [<color=fire>Bao<color>]","<color=green>"..GetName().." §· Dµnh Th¾ng Cuéc")
			end,
		},
		{nRate = tbSongBac.Balane,
			pFun = function (nItemCount, szLogTitle)
				Talk(2,"ChoiLai","<color=green>"..GetName().." Chän [<color=fire>KÐo<color>]\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tVS\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tChñ Sßng B¹c Chän [<color=fire>KÐo<color>]","<color=green>2 Bªn Hßa Nhau Ta Ch¬i L¹i NhÐ")
			end,
		},
		{nRate = tbSongBac.ChuSongBac,
			pFun = function (nItemCount, szLogTitle)
				Talk(2,"close","<color=green>"..GetName().." Chän [<color=fire>KÐo<color>]\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tVS\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tChñ Sßng B¹c Chän [<color=fire>Bóa<color>]","<color=green>Chñ Sßng Bµi §· Dµnh Th¾ng Cuéc")
			end,
		},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,1)
end

function DatCuocBua()
	local tbAward = {
		{nRate = tbSongBac.Member,
			pFun = function (nItemCount, szLogTitle)
				Talk(2,"Win","<color=green>"..GetName().." Chän [<color=fire>Bóa<color>]\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tVS\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tChñ Sßng B¹c Chän [<color=fire>KÐo<color>]","<color=green>"..GetName().." §· Dµnh Th¾ng Cuéc")
			end,
		},
		{nRate = tbSongBac.Balane,
			pFun = function (nItemCount, szLogTitle)
				Talk(2,"ChoiLai","<color=green>"..GetName().." Chän [<color=fire>Bóa<color>]\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tVS\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tChñ Sßng B¹c Chän [<color=fire>Bóa<color>]","<color=green>2 Bªn Hßa Nhau Ta Ch¬i L¹i NhÐ")
			end,
		},
		{nRate = tbSongBac.ChuSongBac,
			pFun = function (nItemCount, szLogTitle)
				Talk(2,"close","<color=green>"..GetName().." Chän [<color=fire>Bóa<color>]\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tVS\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tChñ Sßng B¹c Chän [<color=fire>Bao<color>]","<color=green>Chñ Sßng Bµi §· Dµnh Th¾ng Cuéc")
			end,
		},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,1)
end

function DatCuocBao()
	local tbAward = {
		{nRate = tbSongBac.Member,
			pFun = function (nItemCount, szLogTitle)
				Talk(2,"Win","<color=green>"..GetName().." Chän [<color=fire>Bao<color>]\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tVS\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tChñ Sßng B¹c Chän [<color=fire>Bóa<color>]","<color=green>"..GetName().." §· Dµnh Th¾ng Cuéc")
			end,
		},
		{nRate = tbSongBac.Balane,
			pFun = function (nItemCount, szLogTitle)
				Talk(2,"ChoiLai","<color=green>"..GetName().." Chän [<color=fire>Bao<color>]\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tVS\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tChñ Sßng B¹c Chän [<color=fire>Bao<color>]","<color=green>2 Bªn Hßa Nhau Ta Ch¬i L¹i NhÐ")
			end,
		},
		{nRate = tbSongBac.ChuSongBac,
			pFun = function (nItemCount, szLogTitle)
				Talk(2,"close","<color=green>"..GetName().." Chän [<color=fire>Bao<color>]\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tVS\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tChñ Sßng B¹c Chän [<color=fire>KÐo<color>]","<color=green>Chñ Sßng Bµi §· Dµnh Th¾ng Cuéc")
			end,
		},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,1)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------Ch¬i XÌng-----------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function tbSongBac:ChoiXeng()
	local tbOpt = {
		{self.SelecList[10].szName, XemKetQua},
		{self.SelecList[11].szName, ChoiNgay},
		{self.SelecList[12].szName, NapXeng},
		{self.SelecList[13].szName, RutXeng},
		{self.SelecList[14].szName, DoiXeng},
		{self.SelecList[15].szName, MuaXeng},
		{"Hñy Bá"},
	}
	CreateNewSayEx("<color=yellow>C¸c H¹ HiÖn §ang Cã: <color=red>"..HN_GetTaskID(nDiemTichLuy).."<color> §iÓm TÝch Lòy\nCã Muèn Thö V¸n VËn May Kh«ng BiÕt §©u §æi §êi<color>", tbOpt)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------KÕt Qu¶ Trao Th­ëng-----------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Win()
local tbXu = HN_GetTaskID(tbSongBac.TienXu)*2
tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=tbXu},1) HN_SetTaskID(tbSongBac.TienXu,0)
Msg2SubWorld("Chóc Mõng "..GetName().." §· Th¾ng Chñ Sßng Bµi NhËn §­îc "..tbXu.." Xu")
logplayer("dulieu/songbac.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t §· Th¾ng Chñ Sßng Bµi NhËn §­îc "..tbXu.." TiÒn Xu")
end

function ChoiLai()
local tbXu = HN_GetTaskID(tbSongBac.TienXu)
tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=tbXu},1) HN_SetTaskID(tbSongBac.TienXu,0) Msg2Player("2 Bªn Hßa Nhau "..GetName().." NhËn L¹i TiÒn Xu")
end

function close()
Msg2SubWorld("Ha...Ha...! Ng­¬i §· Thua Råi.") HN_SetTaskID(tbSongBac.TienXu,0)
logplayer("dulieu/songbac.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t §· Thua Chñ Sßng Bµi")
end

function logplayer(zFile,szMsg)
	local handle = openfile(zFile,"a")
	write(handle,format("%s\n",szMsg));
	closefile(handle);
end

function main()
dofile("script/global/dicegame.lua")
tbSongBac:ThamGia()
end;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------