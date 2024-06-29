Include("\\script\\global\\autoexec_head.lua")
--------------------------------------------------------

xiaoyao_parserby = {

	{625,1046,1674,3323,"\\script\\changefeature\\npc\\box.lua","R­¬ng chøa ®å"},
	{2525,1046,1645,3281, "\\script\\xiaoyao\\npc\\huongchinam.lua", "H­íng Chi Nam"},
	{2529,1046,1697,3151, "\\script\\xiaoyao\\npc\\camdong.lua", "CÇm §ång"},
	{2530,1046,1696,3168, "\\script\\xiaoyao\\npc\\kiemdong.lua", "KiÕm §ång"},
	{2528,1046,1578,3251, "\\script\\xiaoyao\\npc\\lunglinh.lua", "Lung Linh"},
	{2524,1046,1629,3216, "\\script\\activitysys\\npcdailog.lua", "V¨n B¸n S¬n"},
	{2526,1046,1666,3112, "\\script\\activitysys\\npcdailog.lua", "LiÔu Tam BiÕn"},
	{2527,1046,1750,3225, "\\script\\xiaoyao\\npc\\lythaungoc.lua", "Ch­ëng M«n Lý ThÊu Ngäc"},
	{1846,1046,1726,3426, "\\script\\xiaoyao\\npc\\thuyenphu.lua", "ThuyÒn Phu"},
	
	{2528,53, 1609,3215,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","Tiªu Dao MËt Sø"},
	{2528,20,3575,6222,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","Tiªu Dao MËt Sø"},
	{2528,99,1691,3193,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","Tiªu Dao MËt Sø"},
	{2528,100,1641,3209,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","Tiªu Dao MËt Sø"},
	{2528,101,1703,3125,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","Tiªu Dao MËt Sø"},
	{2528,121,1966,4480,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","Tiªu Dao MËt Sø"},
	{2528,153,1650,3201,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","Tiªu Dao MËt Sø"},
	{2528,174,1579,3267,"\\script\\xiaoyao\\npc\\detu_xiaoyao.lua","Tiªu Dao MËt Sø"},
}


function add_allnpc_xiaoyao()
	xiaoyao_xiaoyaobynpc(xiaoyao_parserby)
end

function xiaoyao_xiaoyaobynpc(Tab)
	for i = 1 , getn(Tab) do 
		SId = SubWorldID2Idx(Tab[i][2]);
		if (SId >= 0) then
			npcindex = AddNpc(Tab[i][1],1,SId,Tab[i][3]*32,Tab[i][4]*32,1,Tab[i][6]);
			SetNpcScript(npcindex, Tab[i][5]);
		end;
	end	
end

AutoFunctions:Add(add_allnpc_xiaoyao)