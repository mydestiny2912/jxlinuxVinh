function main()
	local szTitle = "Xin chµo <color=red>"..GetName().."<color> ! Ng­¬i cã muèn gia nhËp <color=fire>Vò Hån §­êng<color> kh«ng?"
	local tbOpt=
	{
	"VÒ ph¸i/go_vuhon",
	"Gia nhËp Vò Hån/join_vuhon",
	"KÕt thóc ®èi tho¹i./no",
	}
	Say(szTitle, getn(tbOpt), tbOpt)
end

function go_vuhon()
	Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>Vò Hån ®­êng<color>")
	NewWorld(1042, 1625, 3130)
end

function join_vuhon()
	local FactionNumber = GetLastFactionNumber()
	local nSeries = GetSeries()
	if nSeries ~= 3 then
		Talk(1, "", "ChØ nh©n vËt hÖ Háa míi cã thÓ gia nhËp Vò Hån §­êng")
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
	local szTitle = "<color=red>"..GetName().."<color> ng­¬i cã ch¾c ch¾n muèn gia nhËp ph¸i <color=fire>Vò Hån<color> bän ta kh«ng?"
	local tbOpt ={
			"X¸c nhËn!/join_vuhon_sure",
			"Kh«ng./no",
		}
	Say(szTitle, getn(tbOpt), tbOpt)
end

-----------------------------------------------------------------------------------------------------------
function join_vuhon_sure()
	SetFaction("wuhun");
	SetCamp(1);
	SetCurCamp(1);
	SetRank(90);
	SetLastFactionNumber(11);
	SetTask(4406,10*256);
	add_wh(GetLevel())
	Msg2Faction("%s tõ nµy gia nhËp Vò Hån, ®Õn b¸i kiÕn c¸c vÞ s­ huynh, xin c¸c vÞ chiÕu cè!",GetName())
	Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Vò Hån §­îc HËu Qu©n")
	Talk(1, "KickOutSelf", "Ng­¬i ®· gia nhËp thµnh c«ng ph¸i <color=fire>Vò Hån<color>")
end