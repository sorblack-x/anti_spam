do 
 local function run(msg, matches) 
 local bot_id = 165951290
 local fbot1 = 134843111  
     if matches[1] == 'bye' and is_admin(msg) or msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_sudo(msg) then 
        chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false) 
     elseif msg.action.type == "chat_del_user" and msg.action.user.id == tonumber(fbot1) then 
        send_large_msg("chat#id"..msg.to.id, 'گروهت بدست تیم قدرتمند و حرفه ای سربلک نابود شد.  \n', ok_cb, false) 
        chat_add_user("chat#id"..msg.to.id, 'user#id'..fbot1, ok_cb, false) 
     end 
 end 
   
 return { 
   patterns = { 
     "^(bye)$", 
     "^!!tgservice (.+)$", 
   }, 
   run = run 
 } 
 end
