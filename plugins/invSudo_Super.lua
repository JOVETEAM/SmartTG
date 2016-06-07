--Created by @MehdiHS
--Telegram.me/MehdiHS
do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
 if matches[1] == 'addp' then
        chat = 'channel#'..msg.to.id
        user1 = 'user#'..230477839
        channel_invite(channel, user1, callback, false)
	return "درحال دعوت مدیر کل..."
      end
if matches[1] == 'adde' then
        chat = 'channel#'..msg.to.id
        user2 = 'user#'..152506796
        channel_invite(channel, user2, callback, false)
	return "درحال دعوت مدیر..."
      end
 
 end

return {
  description = "Invite Sudo and Admin", 
  usage = {
    "/addsudo : invite Bot Sudo", 
	},
  patterns = {
    "^(addp)",
    "^(adde)",
    "^([Aa]ddsudo)",
    "^([Aa]ddsupport)",
  }, 
  run = run,
}


end
