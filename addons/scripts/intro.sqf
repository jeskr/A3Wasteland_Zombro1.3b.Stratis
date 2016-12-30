sleep 90;

private ["_messages", "_timeout"];

_messages = [
    ["A3Wasteland", worldName],
	["Welcome", (name player)],
	["READ THE RULES!", "You find them in the menu in the Map"],
	["Saving Occurs Every 3 Minutes", "If you're in a vehicle, get out, scroll on it and select Force Save before the server restart or it may not save your current location."],
	["Remember To", "Lock all base parts, War-chests and Crates to ensure their saving."],
	["Earplugs", "Put in your earplugs by using the END key."],
	["Holster", "Holster And UN-Holster your Weapon by using the H key."],
	["Server", "Restarts every 3 hours."]
//	["Donations", "Please visit www.arma-dillo.dk and donate. Its not FREE to keep server running."]
];

_timeout = 10;
{
	private ["_title", "_content", "_titleText"];
	uiSleep 2;
	_title = _x select 0;
	_content = _x select 1;
	_titleText = format[("<t font='TahomaB' size='0.40' color='#a81e13' align='left' shadow='1' shadowColor='#000000'>%1</t><br /><t shadow='1'shadowColor='#000000' font='TahomaB' size='0.60' color='#FFFFFF' align='left'>%2</t>"), _title, _content];
	[_titleText,[safezoneX + safezoneW - 0.8,0.50],[safezoneY + safezoneH - 0.8,0.7],_timeout,0.5] spawn BIS_fnc_dynamicText;
	uiSleep (_timeout * 1.1);
} forEach _messages;
