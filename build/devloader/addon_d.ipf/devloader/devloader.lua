if _G["DEVLOADER"] == nil then _G["DEVLOADER"] = {}; end

DEVLOADER = _G["DEVLOADER"];
DEVLOADER.isLoaded = false;

function DEVLOADER.init()

	for filename in io.popen([[dir "..\addons\devloader" /b]]):lines() do
		dofile("../addons/devloader/" .. filename);
	end

	DEVLOADER.isLoaded = true;

end

function DEVLOADER_ON_INIT(addon, frame)

	DEVLOADER.addon = addon;
	DEVLOADER.frame = frame;

	if (DEVLOADER.isLoaded == false) then
		DEVLOADER.init();
	end

end
