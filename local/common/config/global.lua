function GetRoleDataVersion ()
	-- 其它值 = SS
	-- 1 = TQ 比 (SS) 多了 "体形" 和 "肤色"
	-- 2 = SS 韩国版 全部人物放到当前场景内
	return 0;
end

ROLE_SKIN_COLOR = 
{
	[1] = {255,	255, 255},
	[2] = {255,   0,   0},
	[3] = {  0, 255, 255},
	[4] = {255,   0, 255},
	[5] = {  0,   0, 255},
};

function GetRoleSkinColor (index)
	index = tonumber(index);
	local color = nil;
	if (index and index > 0 and index <= table.getn(ROLE_SKIN_COLOR)) then
		index = index + 1;
		color = ROLE_SKIN_COLOR[index];
	end
	if color == nil then
		color = ROLE_SKIN_COLOR[1];
	end
	return color[1], color[2], color[3];
end

