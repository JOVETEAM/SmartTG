do

function run(msg, matches)
  return " لینک دعوت گروه ساپورت اسمارت : \n https://telegram.me/joinchat/CyZ5Jz52Mgcm0O79prc8fg\n-------------------------------------\nChannel: @SmartTG_CH"
  end
return {
  description = "shows support link", 
  usage = "tosupport : Return supports link",
  patterns = {
    "^support$",
    "^tosupport$",
    "^!tosupport$",
    "^/tosupport$",
    "^>tosupport$",
  },
  run = run
}
end
