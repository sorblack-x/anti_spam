do

function run(msg, matches)
send_contact(get_receiver(msg), "+12533287550", "RSM", "BOT", ok_cb, false)
end

return {
patterns = {
"^!botnumber$"

},
run = run
}

end
--Copyright; @sorblack
--Persian Translate; @sorblack
--ch : @RSM_team
--کپی بدون ذکر منبع حرام است
