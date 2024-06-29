function OnDeath() 
	if (GetTask(12) >= 280*256 and GetTask(12) <= 310*256 and GetLevel() >= 40) then
		if (GetTask(12) == 280*256) then
			SetTask(12,290*256)
		elseif (GetTask(12) == 290*256) then
			SetTask(12,300*256)
		elseif (GetTask(12) == 300*256) then
			SetTask(12,310*256)
		elseif (GetTask(12) == 310*256) then
			SetTask(12,320*256)
		end

		if GetTask(12) == 320*256 then
			Msg2Player("La HiÕn Thµnh ®· bá ch¹y. Mau quay vÒ gÆp Thi Phong.")  
		end
	end
end 