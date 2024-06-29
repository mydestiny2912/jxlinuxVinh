Include("\\script\\lib\\getrectangle_point.lua") 

function add_trap_wumumenpai()
	local tbpoint =
	{
		tbtoppoint={1576,2992},
		nleftstep = 6,
		nrightstep = 3,
	}
	local nMapID = 180--Long Cung §éng
	local szScriptfile = "\\script\\wumumenpai\\trap1.lua"
	local tballpoint = getRectanglePoint(tbpoint)
	for nx,tbp in tballpoint do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile)
	end
	
	local tbpoint2 =
	{
		tbtoppoint={1979,2901},
		nleftstep = 6,
		nrightstep = 3,
	}
	local nMapID = 41--Phôc Ng­u S¬n T©y
	local szScriptfile_2 = "\\script\\wumumenpai\\trap2.lua"
	local tballpoint_2 = getRectanglePoint(tbpoint2)
	for nx,tbp in tballpoint_2 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile_2)
	end
end