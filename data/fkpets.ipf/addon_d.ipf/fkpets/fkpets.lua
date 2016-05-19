if _G["ADDONS"] == nil then _G["ADDONS"] = {}; end

_G["ADDONS"]["FKPETS"] = {};
FKPETS = _G["ADDONS"]["FKPETS"];

function FKPETS_ON_INIT(addon, frame)

	FKPETS.addon = addon;
	FKPETS.frame = frame;

	dofile("../addons/fkpets.lua");

end
