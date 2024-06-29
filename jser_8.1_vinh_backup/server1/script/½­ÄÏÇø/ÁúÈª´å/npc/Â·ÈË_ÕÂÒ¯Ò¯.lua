-- ÁúÈª´å¡¡Â·ÈË¡¡ÕÂÒ¯Ò¯
-- by£ºDan_Deng(2003-09-16)
Include("\\script\\lib\\awardtemplet.lua")

function main()
if (CalcEquiproomItemCount(6,1,5101,1) >= 1 and GetTask(14) == 140*256) then
Talk(1,"","Xin ®a t¹ vŞ ®¹i hiÖp ph¸i Vò Hån!")
ConsumeEquiproomItem(1,6,1,5101,-1)
SetTask(14,150*256)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,5102,1,0,0},nCount = 1, nBindState=-2},"Th­ C¶m T¹",1);
Msg2Player("§· ph¸t vËt t­ sinh ho¹t cho T©n Gia Gia. H·y quay vÒ b¸o c¸o víi Nh¹c §×nh.") 
else
Talk(1,"","Long xuÊt Vu thö, TuyÒn ®éng vu thø. Long TuyÒn th«n cña chóng ta vèn lµ n¬i ®Şa linh nh©n kiÖt. Ttr­íc ®©y ta ®· xem bãi, quÎ nãi r»ng n¬i ®©y ngµy sau sÏ xuÊt hiÖn ®¹i anh hïng ")
end
end;
