do
local function run(msg, matches)
local sudo = 230477839
    if matches[1]:lower() == "insudo" then
       channel_invite_user("chat#id"..msg.to.id, 'user#id'..sudo, ok_cb, false)
    end
end
 
return {
  patterns = {
    "^([Ii]nsudo)$",
    "^[!/]([Ii]nsudo)$",
  },
  run = run
}
end
