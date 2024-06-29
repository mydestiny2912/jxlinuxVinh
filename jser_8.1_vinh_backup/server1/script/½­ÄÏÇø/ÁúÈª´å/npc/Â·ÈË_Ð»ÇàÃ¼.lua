-- ÁúÈª´å¡¡Â·ÈË¡¡Ğ»ÇàÃ¼
-- by£ºDan_Deng(2003-09-16)
Include("\\script\\lib\\awardtemplet.lua")

function main()
if (CalcEquiproomItemCount(6,1,5101,1) >= 1 and GetTask(14) == 110*256) then
Talk(1,"","Xin ®a t¹ vŞ ®¹i hiÖp ph¸i Vò Hån!")
ConsumeEquiproomItem(1,6,1,5101,-1)
SetTask(14,120*256)
Msg2Player("§· ph¸t vËt t­ sinh ho¹t cho T¹ Thanh My.") 
else
Talk(1,"","Trai tr¸ng trong th«n cña ta hÇu nh­ ®Òu bŞ b¾t ®i lİnh hÕt råi. Cßn sèng trë l¹i kh«ng ®­îc mÊy ng­êi. Chång ta ®· chÕt tõ hai n¨m tr­íc. M«t m×nh ta nu«i con thËt kh«ng ®¬n gi¶n. Muèn häc theo Khæng gi¸o thËt kh«ng dÔ chót nµo")
end
end;
