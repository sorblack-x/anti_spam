local function run(msg, matches)

  local receiver = get_receiver(msg)
    if matches[1] == "pam" and is_sudo(msg) then
    local num = matches[2]
     local text = matches[3]
        for i=1,num do
            send_large_msg(receiver, text)
        end
  end
end
 
return {
  patterns = {
  "^[Ss](pam) (%d+) (.*)$",
  },
  run = run,
}
--Copyright; @sorblack
--Persian Translate; @sorblack
--ch : @RSM_team
--کپی بدون ذکر منبع حرام است
