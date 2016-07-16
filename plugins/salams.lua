do

function run(msg, matches)
local reply_id = msg['id']
local text = 'Salm babyii🌪⚡️
            💋
💋🤖💋
   💋'
if matches[1] == 'سلام پسرم' or 'سلام' or 'Salm' or 'salam' then
    if is_sudo(msg) then
reply_msg(reply_id, text, ok_cb, false)
end
end 
end
return {
patterns = {
    "^سلام پسرم$",
    "^سلام$",
    "^Salm$",
    "^salam$"
},
run = run
}

end


