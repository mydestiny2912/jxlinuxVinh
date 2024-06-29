function main() 
	dofile("script/wumumenpai/thithe.lua")
	if (GetTask(12) == 400*256 and GetLevel() >= 50)  then
		Talk(3,"nvxuatsu7","Y phôc nµy rÊt gièng cña H¹ Tróy...nh­ng khu«n mÆt ®· bŞ hñy ho¹i kh«ng thÓ nh×n râ","Nh×n qua Thi ThÓ t×nh cê t×m thÊy manh mèi ®Ó l¹i, nã chØ ®Õn Long Cung §éng.")
	else
		Talk(1,"","Thi ThÓ:... ...")
	end
end

function nvxuatsu7() 
SetTask(12,410*256) 
Msg2Player("§Õn <color=yellow>Long Cung §éng (197/187)<color> T×m Vò Môc Di Th­.")  
end 