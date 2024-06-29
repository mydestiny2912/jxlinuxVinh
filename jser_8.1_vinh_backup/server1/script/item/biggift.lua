Include("\\script\\global\\thinh\\hotro\\functions_ngoaitrang.lua")
Include("\\script\\changefeature\\feature_man.lua")

function main()
	dofile("script/item/biggift.lua")
	switch_check_feature()
	return 1
end

function switch_check_feature()
	local szTitle = "Xin chµo! §¹i hiÖp muèn kiÓm ngo¹i trang g×?"
	local tbOpt =
	{
		"Ngùa/#choose_check_feature(4)",
		"Vò KhÝ/#choose_check_feature(3)",
		"Ao gi¸p/#choose_check_feature(2)",
		"Mò/#choose_check_feature(1)",
		"MÆt n¹/#choose_check_feature(0)",
		"C¸c chøc n¨ng vÒ ngo¹i trang/ngoaitrang",
		"NhËn bao l× x×/nhanlixi",
		"Tho¸t/no",
	}
	Say(szTitle, getn(tbOpt), tbOpt)
end


function nhanlixi()
	AddItem(6,1,13,1,0,0,0)
	AddItem(6,1,14,1,0,0,0)
	Msg2Player("§· nhËn 2 bao l× x×.")
end

function choose_check_feature(num)
	SetTaskTemp(168, num)
end