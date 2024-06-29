function main(nNpcIdx)	
	if (GetTask(13) == 10*256) then
		Describe("C­êng Gi¶: L¹i mét kÎ kh«ng sî chÕt? NÕu ng­¬i ®ång ý vµ ®¸nh th¾ng ta, ta sÏ tÆng cho ng­¬i mét sè b¶o bèi",2,"Ta kh«ng nghÜ nh­ vËy! §éng thñ ®i/kydanhdetu2","§Ó ta nghÜ l¹i ®·/no")
	end	
end

function kydanhdetu2(nNpcIdx)
	Describe("C­êng Gi¶: ThËt ra, nÕu ng­¬i chÞu ®­îc 10 chiªu cña ta, ng­¬i sÏ v­ît qua. NÕu ng­¬i kh«ng chÞu ®ùng ®­îc, cã thÓ cÇu xin ta, ta sÏ cho ng­¬i ®i, ng­¬i cã nghÜ nh­ thÕ kh«ng?",2,"Ta thµ chÕt còng kh«ng ®Çu hµng/kydanhdetu3","§Ó ta suy nghÜ l¹i/no")
end

function kydanhdetu3(nNpcIdx)
	local nNpcIndex = GetLastDiagNpc();
	DelNpc(nNpcIndex)
	local indexNPC = AddNpcEx(2492, 50, 0, SubWorldID2Idx(1042), 1504*32, 3087*32, 1, "C­êng gi¶ hung h¨ng", 0)
	if indexNPC then
		SetNpcScript(indexNPC, "\\script\\wumumenpai\\cuonggia2.lua")
	end
end
