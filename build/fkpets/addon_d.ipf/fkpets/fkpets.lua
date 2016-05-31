--[[ v1.0.0 ]]--

if _G["ADDONS"] == nil then _G["ADDONS"] = {}; end

_G["ADDONS"]["FKPETS"] = {};
FKPETS = _G["ADDONS"]["FKPETS"];

function FKPETS_ON_INIT(addon, frame)
	FKPETS.addon = addon;
	FKPETS.frame = frame;
	FKPETS.init();
end

function FKPETS.fkMenus(actor, isOn)
	return; -- Do nothing
end

function FKPETS.fkStats(frame, handle)

	_G["UPDATE_COMPANION_TITLE_OLD"](frame, handle);

	local frame = tolua.cast(frame, "ui::CObject");

	local StGauge = GET_CHILD_RECURSIVELY(frame, "StGauge");
	local HpGauge = GET_CHILD_RECURSIVELY(frame, "HpGauge");
	local pcinfo_bg_L = GET_CHILD_RECURSIVELY(frame, "pcinfo_bg_L");
	local pcinfo_bg_R = GET_CHILD_RECURSIVELY(frame, "pcinfo_bg_R");

	StGauge:ShowWindow(0);
	HpGauge:ShowWindow(0);
	pcinfo_bg_L:ShowWindow(0);
	pcinfo_bg_R:ShowWindow(0);

	frame:Invalidate()

end

function FKPETS.setHooks(newFunction, oldFunction)
	-- This is the SET_HOOK function directly from Excrulon's utility.lua

	local storedFunction = oldFunction .. "_OLD";

	if _G[storedFunction] == nil then
		_G[storedFunction] = _G[oldFunction];
		_G[oldFunction] = newFunction;
	else
		_G[oldFunction] = newFunction;
	end

end

function FKPETS.init()

	if (FKPETS.isLoaded ~= true) then

		FKPETS.setHooks(FKPETS.fkMenus, "DIALOG_COMPANION");
		FKPETS.setHooks(FKPETS.fkStats, "UPDATE_COMPANION_TITLE");
		--ui.SysMsg("[DEVLOADER] F**k Pets loaded!");
		FKPETS.isLoaded = true;

	end

end
