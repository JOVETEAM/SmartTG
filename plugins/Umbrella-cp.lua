do
local function admin_list(msg)
    local data = load_data(_config.moderation.data)
        local admins = 'admins'
        if not data[tostring(admins)] then
        data[tostring(admins)] = {}
        save_data(_config.moderation.data, data)
        end
        local message = 'Admins :\n'
        for k,v in pairs(data[tostring(admins)]) do
                message = message .. '> @' .. v .. ' [' .. k .. '] ' ..'\n'
        end
        return message
end
local function run(msg, matches)
local uptime = io.popen('uptime'):read('*all')
local admins = admin_list(msg)
local data = load_data(_config.moderation.data)
local group_link = data[tostring(1047933447)]['settings']['set_link'] --put your support id here
local github = 'github.com/GrayHatP'
local space = '______________________________'
if not group_link then
return ''
end
return "مشحصات فنی سرور\n مدت آنلاین :"..uptime.."\nIntel Core i7 Procesor\nCPU : 2 Core\nRAM : 2 GB\nHDD : 60 GB SSD\nIP : 2 Num\nPort : 1 GB/s\n"..space.."\nGitHub Smart :\n"..github.."\n توسئه دهندگان :\nسازنده و صاحب امتیاز: #SmartTeam\n"..admins.."\n"..space.."\nپلهای ارتباطی :\nکانال : https://telegram.me/SmatTG_CH\n لینک ساپورت :\n"..group_link
end
return {
patterns = {
"^[Ss]mart$",
},
run = run
}
end
