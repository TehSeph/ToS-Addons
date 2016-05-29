if _G["DEVLOADER"] == nil then _G["DEVLOADER"] = {}; end

_G["DEVLOADER"]["FKPETS"] = {};
FKPETS = _G["DEVLOADER"]["FKPETS"];

FKPETS.addon = DEVLOADER.addon;
FKPETS.frame = DEVLOADER.frame;

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

	--if (FKPETS.isLoaded ~= true) then

		FKPETS.setHooks(FKPETS.fkMenus, "DIALOG_COMPANION");
		FKPETS.setHooks(FKPETS.fkStats, "UPDATE_COMPANION_TITLE");

		FKPETS.frame:ShowWindow(1);
		FKPETS.isLoaded = true;

		ui.SysMsg("[ADDON] F**k Pets loaded!");

	--end

end

FKPETS.init();
