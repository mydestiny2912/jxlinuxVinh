Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
function main()
	local szTitle = "Xin chµo <color=red>"..GetName().."<color> ! BÊt kÓ ng­¬i thuéc ngò hµnh nµo, ng­¬i cã muèn gia nhËp <color=fire>Tiªu Dao<color> hay kh«ng?"
	local tbOpt=
	{
		"§Õn ph¸i/go_tieudao",
		"Gia nhËp Tiªu Dao vµ lµm nhiÖm vô m«n ph¸i/TieuDaoPhai",
		"Gia nhËp Tiªu Dao vµ häc ®Õn max skill 180/join_tieudao",
		"KÕt thóc ®èi tho¹i./no",
	}
	Say(szTitle, getn(tbOpt), tbOpt)
end

function go_tieudao()
	Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>Tiªu Dao ph¸i<color>")
	NewWorld(1046, 1641, 3288)
end


function TieuDaoPhai()
	local FactionNumber = GetLastFactionNumber()
	local nSeries = GetSeries()
	if nSeries ~= 4 then
		Talk(1, "", "ChØ cã nh©n vËt hÖ Thæ míi cã thÓ gia nhËp Tiªu Dao")
		return
	end
	if FactionNumber >= 0 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i kh¸c råi.")
		return
	end
	if GetLevel()<10 then
		Talk(1, "", "H·y tù luyÖn tËp thªm ®Õn cÊp 10 råi quay l¹i ®©y.")
		return
	end
	SetFaction("xiaoyao");
	SetCamp(3);
	SetCurCamp(3);
	SetRank(98);
	nt_setTask(137,71)
	SetTask(4464,10*256);
	SetLastFactionNumber(12);
	add_xy(GetLevel())
	Msg2Faction("%s tõ h«m nay vµo ph¸i Tiªu Dao, nay ®Õn b¸i kiÕn c¸c vÞ s­ huynh, mong h·y chiÕu cè!",GetName())
	---AddItem(0,0,7,1,0,0) AddItem(0,0,8,1,0,0)
	AddNote("NhËp ph¸i Tiªu Dao nhËn danh hiÖu Tiªn §¶o C­ SÜ")
	Msg2Player("Chóc mõng ng­¬i ®· gia nhËp ph¸i Tiªu Dao, nhËn danh hiÖu Tiªn §¶o C­ SÜ")
	Talk(1, "KickOutSelf", "Ng­¬i ®· gia nhËp thµnh c«ng ph¸i <color=fire>Tiªu Dao<color>")
end

function join_tieudao()
	local FactionNumber = GetLastFactionNumber()
	if FactionNumber >= 0 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i kh¸c råi.")
		return
	end
	local szTitle = "<color=red>"..GetName().."<color> ng­¬i cã ch¾c ch¾n muèn gia nhËp ph¸i <color=fire>Tiªu Dao<color> hay kh«ng?"
	local tbOpt ={
			"X¸c nhËn!/join_tieudao_sure",
			"Kh«ng./no",
		}
	Say(szTitle, getn(tbOpt), tbOpt)
end

-----------------------------------------------------------------------------------------------------------
function join_tieudao_sure()
	SetFaction("xiaoyao");
	SetCamp(3);
	SetCurCamp(4);
	SetRank(89);
	SetSeries(4);
	SetLastFactionNumber(12);
                 AddMagic(1904,1)-- danh thuong
	AddMagic(1881,0)-- level 10
	AddMagic(1905,0)-- level 10

	AddMagic(1882,0)-- level 20
	AddMagic(1906,0)-- level 20

	AddMagic(1883,0)-- level 30

	AddMagic(1885,0)-- level 40
	AddMagic(1907,0)-- level 40

	AddMagic(1887,0)-- level 50
	AddMagic(1909,0)-- level 50

	AddMagic(1888,0)-- level 60
	AddMagic(1889,0)-- level 60
                 AddMagic(1890,0)-- level 60

	AddMagic(1891,20)---- level 90
	AddMagic(1910,20)---- level 90

	AddMagic(1894,20)---- level 120

	AddMagic(1896,20)---- level 150
	AddMagic(1911,20)---- level 150

	AddMagic(1901,20)---- level 180
	Talk(1, "KickOutSelf", "Ng­¬i ®· gia nhËp thµnh c«ng ph¸i <color=fire>Tiªu Dao<color>")
end