if _G["ADDONS"] == nil then _G["ADDONS"] = {}; end

_G["ADDONS"]["COLOREDITEMNAMES"] = {};
COLOREDITEMNAMES = _G["ADDONS"]["COLOREDITEMNAMES"];

function COLOREDITEMNAMES_ON_INIT(addon, frame)

	COLOREDITEMNAMES.addon = addon;
	COLOREDITEMNAMES.frame = frame;

	dofile("../addons/coloreditemnames/coloreditemnames.lua");

end
