do

 function run(msg, matches)
 local ch = '1047933447'..msg.to.id
 local fuse = 'درخواست گروه جدید!\n\nId : ' .. msg.from.id .. '\n\nName: ' .. msg.from.print_name ..'\n\nUsername: @' .. msg.from.username ..'\n\nMessage From: '..msg.to.id.. '\n\nThe Pm:\n' .. matches[1]
 local fuses = '!printf user#id' .. msg.from.id


   local text = matches[1]
   local chat = "chat#id"..1047933447

  local sends = send_msg(chat, fuse, ok_cb, false)
  return 'درخواست شما ارسال شد!\nگروه شما درحال بررسی است!'

 end
 end
 return {

  description = "SuperGroup request",

  usage = "",
  patterns = {
  "^reqgp$"

  },
  run = run
 }
--by @MehdiHS
