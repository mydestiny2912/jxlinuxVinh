function main()
	local szTitle = "Xin chµo <color=red>"..GetName().."<color> ! BÊt kÓ ng­¬i thuéc ngò hµnh nµo, ng­¬i cã muèn gia nhËp <color=fire>Vò Hån §­êng<color> kh«ng?"
	local tbOpt=
	{
	"VÒ ph¸i/go_vuhon",
	"Gia nhËp Vò Hån vµ lµm nhiÖm vô ph¸i/VuHonPhai",
	"Gia nhËp Vò Hån vµ häc ®Õn skill 180/join_vuhon",
	"KÕt thóc ®èi tho¹i./no",
	}
	Say(szTitle, getn(tbOpt), tbOpt)
end

function go_vuhon()
	Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>Vò Hån §­êng<color>")
	NewWorld(1042, 1625, 3130)
end


function VuHonPhai()
	local FactionNumber = GetLastFactionNumber()
	if FactionNumber >= 0 then
		Talk(1, "", "C¸c h¹ ®ïa ta sao, ng­¬i ®· gia nhËp m«n ph¸i kh¸c råi.")
		return
	end
	if GetLevel()<10 then
		Talk(1, "", "H·y tù luyÖn tËp thªm ®Õn cÊp 10 råi quay l¹i ®©y.")
		return
	end
	SetSeries(3);
	SetFaction("wuhun");
	SetCamp(1);
	SetCurCamp(1);
	SetRank(90);
	SetLastFactionNumber(11);
	AddMagic(1972,0)
	AddMagic(1974,0)
	SetTask(12,10*256);
	AddItem(0,0,7,1,0,0) AddItem(0,0,8,1,0,0)
	Talk(1, "KickOutSelf", "Ng­¬i ®· gia nhËp thµnh c«ng ph¸i <color=fire>Vò Hån<color>")
	Msg2Player("Chóc mõng ng­êi ®· gia nhËp Vò Hån §­êng, nhËn danh hiÖu HËu CÇn §Ö Tö")
end

function join_vuhon()
	local FactionNumber = GetLastFactionNumber()
	if FactionNumber >= 0 then
		Talk(1, "", "C¸c h¹ ®ïa ta sao, ng­¬i ®· gia nhËp m«n ph¸i kh¸c råi.")
		return
	end
	local szTitle = "<color=red>"..GetName().."<color> ng­¬i cã ch¾c ch¾n muèn gia nhËp ph¸i <color=fire>Vò Hån<color> bän ta kh«ng?"
	local tbOpt ={
			"X¸c nhËn!/join_vuhon_sure",
			"Kh«ng./no",
		}
	Say(szTitle, getn(tbOpt), tbOpt)
end

-----------------------------------------------------------------------------------------------------------
function join_vuhon_sure()
	SetSeries(3);
	SetFaction("wuhun");
	SetCamp(1);
	SetCurCamp(1);
	SetRank(97);
	SetLastFactionNumber(11);
	AddMagic(1963,0)
	AddMagic(1964,0)
	AddMagic(1965,0)
	AddMagic(1971,0)
	AddMagic(1972,0)
	AddMagic(1974,0)
	AddMagic(1975,0)
	AddMagic(1976,0)
	AddMagic(1977,0)
	AddMagic(1979,0)
	AddMagic(1980,0)
	AddMagic(1981,0)
	AddMagic(1982,0)
	AddMagic(1967,20)--
	AddMagic(1983,20)--
	AddMagic(1984,20)--
                 AddMagic(1969,20)--
	AddMagic(1985,20)--
	AddMagic(1986,20)--180
	Talk(1, "KickOutSelf", "Ng­¬i ®· gia nhËp thµnh c«ng ph¸i <color=fire>Vò Hån<color>")
end