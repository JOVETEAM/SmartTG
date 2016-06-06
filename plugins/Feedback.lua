do
 function run(msg, matches)
 
 local fuse = 'نظر جدیدی از یوزر "..(msg.from.username or msg.from.id).."\nایدی: ['..msg.from.id..']\nنام: ' .. msg.from.print_name ..'\nیوزرنیم: @' .. msg.from.username .. '\n\nپیام:\n\n' .. matches[1] 
 local fuses = '!printf user#id' .. msg.from.id
 
 
   local text = matches[1]
   local chat = "chat#id"..YourChatId 
   --like : local chat = "chat#id"..12345678
   
  local sends = send_msg(chat, fuse, ok_cb, false)
  return 'تشکر بابت ارسال نظر شما کاربر['..msg.from.id..']'
 
 end
 end
 return {
  
  description = "Feedback",
 
  usage = "feedback message",
  patterns = {
  "^[Ff]eedback (.*)$"
 
  },
  run = run
 }
