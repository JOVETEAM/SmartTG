
local function run(msg, matches)
    if matches[1]:lower() == '+' and is_sudo(msg) then
        block_user("user#id"..matches[2],ok_cb,false)
        return "یوزر بلاک شد!"
    end
    if matches[1]:lower() == '-' and is_sudo(msg) then
	    unblock_user("user#id"..matches[2],ok_cb,false)
        return "یوزر آنبلاک شد!"
    end
return {
  patterns = {
	"^[Bb]lock (+) (%d+)$",
	"^[Bb]lock (-) (%d+)$",
  },
  run = run,
}
end
