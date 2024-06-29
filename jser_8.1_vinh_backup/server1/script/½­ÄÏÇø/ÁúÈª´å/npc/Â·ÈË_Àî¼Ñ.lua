-- ÁúÈª´å¡¡Â·ÈË¡¡Àî¼Ñ
-- by£ºDan_Deng(2003-09-16)
Include("\\script\\lib\\awardtemplet.lua")

function main()
if (CalcEquiproomItemCount(6,1,5101,1) >= 1 and GetTask(14) == 130*256) then
Talk(1,"","Xin ®a t¹ vŞ ®¹i hiÖp ph¸i Vò Hån!")
ConsumeEquiproomItem(1,6,1,5101,-1)
SetTask(14,140*256)
Msg2Player("§· ph¸t vËt t­ sinh ho¹t cho Lı Giai.") 
else
Talk(1,"","Cha mÑ ta mÊt sím, ®¹i ca sung qu©n ®¸nh trËn, may nhê cã Hång Tô nu«i d­ìng, nÕu kh«ng ta ®· trë thµnh mét ng­êi c« ®éc")
end
end;
