function main(sel)
	if GetTask(14) == 10*256 and GetLevel() >= 90 then
		Talk(2,"nv9x2","Th× ra lµ mét c¸i bÉy, giÕt hÕt bän chóng vµ tho¸t khái vßng v©y")
	end
end;

function nv9x2() 
	SetTask(14,20*256)
	Msg2Player("GiÕt hÕt bän qu©n Kim.")  
end 