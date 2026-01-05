local API = {};
local HardBans = {"1293792120","1993687031","604430770","1222680","6225378520","7166779222"};
local IPBans = {};
local Warnings = {["10200076979"] = {Reason = "Off-topic Report + N-words",Moderator = "Gregory909"},["7394266117"] = {Reason = "Off-topic Report",Moderator = "Gregory909"},["9984847441"] = {Reason = "Off-topic Report",	Moderator = "Gregory909"}, ["9021590842"] = {Reason = "Off-topic Report",Moderator = "Gregory909"},["9824352500"] = {Reason = "Off-topic Report",Moderator = "Gregory909"},["9528456159"] = {Reason = "Off-topic Report",Moderator = "Gregory909"},["9707598727"] = {Reason = "Off-topic Report",Moderator = "Gregory909"},["8564588441"] = {Reason = "Off-topic Report",Moderator = "Gregory909"}};
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
