local function run(msg)   
    local data = load_data(_config.moderation.data)   
     if data[tostring(msg.to.id)]['settings']['lock_adstag'] == 'yes' then
if not is_momod(msg) then
    send_large_msg(get_receiver(msg), "کاربر @" .. msg.from.username .. " تبلیغات تگ اینجا مجاز نیست!")
    chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
    local msgads = 'ForbiddenAdText'
    local receiver = msg.to.id
    send_large_msg('chat#id'..receiver, msg.."\n", ok_cb, false)
      end
   end
end
return {
patterns = {
"#(.*)",
"@(.*)"
},
run = run
}
