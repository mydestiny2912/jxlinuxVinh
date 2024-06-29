function OnDeath() 
	if GetTask(12) == 50*256 and GetLevel() >= 20 then
		SetTask(12,60*256)
	elseif GetTask(12) == 60*256 and GetLevel() >= 20 then
		SetTask(12,70*256) NewWorld(1042,1554,3065) SetFightState(0)
		Msg2Player("ß∑ Æ∏nh bπi C∏t Khang vµ Th≠ Nhu÷, quay lπi g∆p C∏t Khang.") 
	end
end 