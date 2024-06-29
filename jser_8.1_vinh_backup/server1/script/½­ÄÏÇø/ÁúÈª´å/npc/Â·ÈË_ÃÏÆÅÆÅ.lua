-- ÁúÈª´å¡¡Â·ÈË¡¡ÃÏÆÅÆÅ
-- by£ºDan_Deng(2003-09-16)
Include("\\script\\lib\\awardtemplet.lua")

function main()
if (CalcEquiproomItemCount(6,1,5101,1) >= 1 and GetTask(14) == 120*256) then
Talk(1,"","Xin ®a t¹ vÞ ®¹i hiÖp ph¸i Vò Hån!")
ConsumeEquiproomItem(1,6,1,5101,-1)
SetTask(14,130*256)
Msg2Player("§· ph¸t vËt t­ sinh ho¹t cho M¹nh Bµ Bµ.") 
else
Talk(1,"","Long TuyÒn th«n tr­íc kia vèn lµ mét n¬i yªn b×nh. Tõ khi Hoµng ®Õ dêi ®«, n¬i ®©y b¾t ®Çu lo¹n, vî mÊt chång, con mÊt cha ")
end
end;