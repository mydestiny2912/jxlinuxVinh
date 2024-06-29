function main(sel)
	if (GetLastFactionNumber() == 11 or GetTask(13) >= 30*256) then 
		Say("D­ §¹i Chïy: §Ó thi ®Êu trong ®Êu tr­êng, vò khİ lµ mét thø kh«ng thÓ thiÕu.", 2,"Giao dŞch/yes", "Ta cã viÖc kh¸c/no")
	else
		Say("D­ §¹i Chïy: Ch­ëng M«n cã lÖnh c¸c ®Ö tö bæn m«n kh«ng ®­îc cung cÊp vò khİ cho ng­êi ngoµi!")
	end
end;

function yes()
Sale(37)			
end;


function no()
end;
