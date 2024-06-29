Include("\\script\\global\\autoexec_head.lua")
Include("\\script\\wumumenpai\\trapmapwumumenpai.lua")
--------------------------------------------------------
function add_RuongQuanDung()
	local tb_npc_hello = {
		{1758,3140},
		{1769,2981},
		{1807,2996},
		{1809,3098},
		{1895,3081},
		{1896,3140},
	}
	local nMapIndex = SubWorldID2Idx(92)
	for i=1,getn(tb_npc_hello) do
		local npcID = 2486
		local npcName = "T¸n L¹c Qu©n T­"
		local nNpcIndex = AddNpc(npcID,1,nMapIndex,(tb_npc_hello[i][1])*32,(tb_npc_hello[i][2])*32,0,npcName,0)
		SetNpcScript(nNpcIndex,"\\script\\wumumenpai\\tanlacquantu.lua") 	
	end
end

function add_DuocLieuTriThuong()
	local tb_npc_hello = {
		{725,2902},
		{700,2949},
		{660,2991},
		{611,2968},
	}
	local nMapIndex = SubWorldID2Idx(195)
	for i=1,getn(tb_npc_hello) do
		local npcID = 2487
		local npcName = "LiÖu Th­¬ng Th¶o D­îc"
		local nNpcIndex = AddNpc(npcID,1,nMapIndex,(tb_npc_hello[i][1])*32,(tb_npc_hello[i][2])*32,0,npcName,0)
		SetNpcScript(nNpcIndex,"\\script\\wumumenpai\\lieuthuongthaoduoc.lua") 	
	end
end

function add_DeTuBiThuong()
	local tb_npc_hello = {
		{1769,3188},
		{1765,3192},
		{1758,3201},
		{1754,3205},
	}
	local nMapIndex = SubWorldID2Idx(1042)
	for i=1,getn(tb_npc_hello) do
		local npcID = 2500
		local npcName = "§Ö Tö BÞ Th­¬ng"
		local nNpcIndex = AddNpc(npcID,50,nMapIndex,(tb_npc_hello[i][1])*32,(tb_npc_hello[i][2])*32,0,npcName,0)
		SetNpcScript(nNpcIndex,"\\script\\wumumenpai\\detubithuong.lua") 	
	end
end

function add_KimBinh()
	local tb_npc_hello = {
		{1976,2904},
		{1982,2908},
		{1981,2898},
		{1976,2890},
		{1966,2894},
		{1969,2884},
		{1974,2890},
		{1978,2909},
		{1985,2913},
	}
	local nMapIndex = SubWorldID2Idx(41)
	for i=1,getn(tb_npc_hello) do
		local npcID = 2498
		local npcName = "Kim Binh"
		local nNpcIndex = AddNpc(npcID,90,nMapIndex,(tb_npc_hello[i][1])*32,(tb_npc_hello[i][2])*32,0,npcName,0)
		SetNpcScript(nNpcIndex,"\\script\\wumumenpai\\kimbinh.lua") 	
	end
end

function add_NguoiThanBi()
	local tb_npc_hello = {
		{1580,2993},
	}
	local nMapIndex = SubWorldID2Idx(180)
	for i=1,getn(tb_npc_hello) do
		local npcID = 2496
		local npcName = "Ng­êi ThÇn BÝ"
		local nNpcIndex = AddNpc(npcID,50,nMapIndex,(tb_npc_hello[i][1])*32,(tb_npc_hello[i][2])*32,0,npcName,0)
		SetNpcScript(nNpcIndex,"\\script\\wumumenpai\\nguoithanbi.lua") 	
	end
end

function add_TuongLinh()
	local tb_npc_hello = {
		{1824,3438},
	}
	local nMapIndex = SubWorldID2Idx(90)
	for i=1,getn(tb_npc_hello) do
		local npcID = 2499
		local npcName = "T­íng LÜnh"
		local nNpcIndex = AddNpc(npcID,60,nMapIndex,(tb_npc_hello[i][1])*32,(tb_npc_hello[i][2])*32,0,npcName,0)
		SetNpcScript(nNpcIndex,"\\script\\wumumenpai\\tuonglinh.lua") 	
	end
end

function add_LaHienThanh()
	local nIndex = AddNpc(2488,40,SubWorldID2Idx(101),1448*32, 3277*32, 0,"La HiÕn Thµnh",0)
	SetNpcScript(nIndex,"\\script\\wumumenpai\\lahienthanh.lua")
end

wumumenpai_parserby = {

	{2484,179,1875, 2636, "\\script\\wumumenpai\\dutaumaihoalang.lua","Th­¬ng Gia"},

	{2475,1042,1625,3130,"\\script\\wumumenpai\\ngulien.lua","Ngò Liªn"},

	{2483,1042,1649,3023,"\\script\\wumumenpai\\nhacphiyquangia.lua","Nh¹c Phi Y Quan Gia"},

	{2476,1042,1524,3242,"\\script\\wumumenpai\\catkhang.lua","C¸t Khang"},

	{2477,1042,1528,3239,"\\script\\wumumenpai\\thunhue.lua","Th­ NhuÖ"},

	{2490,1042,1552,3067,"\\script\\wumumenpai\\luyenvutranggiaoquan.lua","LuyÖn Vò Trµng Gi¸o Quan"},

	{2472,1042,1775,3197,"\\script\\wumumenpai\\thanganh.lua","Thang Anh"},

	{2480,1042,1787,3205,"\\script\\wumumenpai\\ysu.lua","Y S­"},

	{2471,1042,1749,3254,"\\script\\wumumenpai\\thiphong.lua","Thi Phong"},

	{2469,1042,1683,3048,"\\script\\wumumenpai\\nguuthong.lua","Ng­u Th«ng"},

	{2473,1042,1601,3020,"\\script\\wumumenpai\\hankhoiphuong.lua","Hµn Khëi Ph­îng"},

	{2494,1042,1574,3210,"\\script\\wumumenpai\\manhmoi.lua","Manh Mèi"},

	{2468,1042,1693,3046,"\\script\\wumumenpai\\nhacloi.lua","Nh¹c L«i"},

	{2495,1042,1774,3256,"\\script\\wumumenpai\\thithe.lua","Thi ThÓ"},
	
	--{625,1042,1551,3198,"\\script\\changefeature\\npc\\box.lua","R­¬ng chøa ®å"},

	{625,1042,1558,3195,"\\script\\wumumenpai\\ruongchuado.lua","R­¬ng Chøa §å"},

	{2501,1042,1747,3220,"\\script\\wumumenpai\\detukhanghi2.lua","§Ö Tö Kh¶ Nghi"},

	{2501,1042,1601,3101,"\\script\\wumumenpai\\detukhanghi.lua","§Ö Tö Kh¶ Nghi"},

	{2501,1042,1643,3229,"\\script\\wumumenpai\\detukhanghi.lua","§Ö Tö Kh¶ Nghi"},

	{2501,1042,1707,3299,"\\script\\wumumenpai\\detukhanghi.lua","§Ö Tö Kh¶ Nghi"},

	{2501,193,1857,2819,"\\script\\wumumenpai\\detukhanghi3.lua","§Ö Tö Kh¶ Nghi"},

	{2470,1042,1693,3059,"\\script\\wumumenpai\\hanthuongduc.lua","Hµn Th­îng §øc"},

	{2474,1042,1591,2999,"\\script\\wumumenpai\\nhacdinh.lua","Nh¹c §×nh"},

	{241,1042,1773,3268,"\\script\\wumumenpai\\thuyenphu.lua","ThuyÒn Phu"},

	{241,1042,1688,3314,"\\script\\wumumenpai\\thuyenphu.lua","ThuyÒn Phu"},

	{2482,1042,1673,3304,"\\script\\wumumenpai\\nhacnhinuong.lua","Nh¹c NhÞ N­¬ng"},

	{2481,1042,1806,3237,"\\script\\wumumenpai\\dudaichuy.lua","D­ §¹i Chïy"},

	{2467,53, 1624,3197,"\\script\\wumumenpai\\vuhonduonghauquan.lua","Vò Hån §­êng HËu Qu©n"},
	{2467,20,3556,6187,"\\script\\wumumenpai\\vuhonduonghauquan.lua","Vò Hån §­êng HËu Qu©n"},
	{2467,99,1654,3196,"\\script\\wumumenpai\\vuhonduonghauquan.lua","Vò Hån §­êng HËu Qu©n"},
	{2467,100,1616,3172,"\\script\\wumumenpai\\vuhonduonghauquan.lua","Vò Hån §­êng HËu Qu©n"},
	{2467,101,1690,3114,"\\script\\wumumenpai\\vuhonduonghauquan.lua","Vò Hån §­êng HËu Qu©n"},
	{2467,121,1962,4511,"\\script\\wumumenpai\\vuhonduonghauquan.lua","Vò Hån §­êng HËu Qu©n"},
	{2467,153,1639,3219,"\\script\\wumumenpai\\vuhonduonghauquan.lua","Vò Hån §­êng HËu Qu©n"},
	{2467,174,1585,3272,"\\script\\wumumenpai\\vuhonduonghauquan.lua","Vò Hån §­êng HËu Qu©n"},
}

function add_allnpc_wumumenpai()
	wumumenpai_wumumenpaibynpc(wumumenpai_parserby)
	add_trap_wumumenpai()
	add_RuongQuanDung()
	add_DuocLieuTriThuong()
	add_DeTuBiThuong()
	add_KimBinh()
	add_NguoiThanBi()
	add_TuongLinh()
	add_LaHienThanh()
end

function wumumenpai_wumumenpaibynpc(Tab)
	for i = 1 , getn(Tab) do 
		SId = SubWorldID2Idx(Tab[i][2]);
		if (SId >= 0) then
			npcindex = AddNpc(Tab[i][1],1,SId,Tab[i][3]*32,Tab[i][4]*32,1,Tab[i][6]);
			SetNpcScript(npcindex, Tab[i][5]);
		end;
	end	
end

AutoFunctions:Add(add_allnpc_wumumenpai)