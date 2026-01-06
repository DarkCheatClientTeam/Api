local API = {};
local HardBans = {"1293792120","1993687031","604430770","1222680","6225378520","7166779222","10035014576"};
local IPBans = [];
local Warnings = {"8564588441":{"Moderator":"Gregory909","Reason":"Off-topic Report"},"9707598727":{"Moderator":"Gregory909","Reason":"Off-topic Report"},"9021590842":{"Moderator":"Gregory909","Reason":"Off-topic Report"},"10200076979":{"Moderator":"Gregory909","Reason":"Off-topic Report + N-words"},"9528456159":{"Moderator":"Gregory909","Reason":"Off-topic Report"},"7394266117":{"Moderator":"Gregory909","Reason":"Off-topic Report"},"9824352500":{"Moderator":"Gregory909","Reason":"Off-topic Report"},"9984847441":{"Moderator":"Gregory909","Reason":"Off-topic Report"}};
function API:GetHardBans()
	return HardBans;
end;
function API:GetIPBans()
	return IPBans;
end;
function API:GetWarnings()
	return Warnings;
end;
function API:IsHardBanned(player)
	return table.find(HardBans, tostring(player.UserId)) ~= nil;
end;
function API:HasWarning(userId)
	return Warnings[tostring(userId)] ~= nil;
end;

function API:IsIPBanned(ip)
	return table.find(IPBans, tostring(ip)) ~= nil;
end;

return API;
