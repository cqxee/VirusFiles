local function ChangePhoto(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local abbs = DevAbs:get("DevProxTEAM:Photo"..result.id_)
if not result.profile_photo_ then 
if abbs then 
Dev_Abs(msg.chat_id_, msg.id_, 1, "حذف كل صوره مضروب بوري، 😹💔", 1, 'html')
DevAbs:del("DevProxTEAM:Photo"..result.id_) 
end
end
if result.profile_photo_ then 
if abbs and abbs ~= result.profile_photo_.big_.persistent_id_ then 
local abbs_text = {
"وتف الصوره حريقه، 🤤♥️",
"طالع حلو في الصوره الجديده عادي نرتبط؟ ، 🤤♥️",
"حطيت صوره جديده في بنت جديده ولا ايه، 😹♥️",
"امم اموت انا و اعيد السنه، 🤤♥️",
}
abbs3 = math.random(#abbs_text)
Dev_Abs(msg.chat_id_, msg.id_, 1, abbs_text[abbs3], 1, 'html')
end  
DevAbs:set("DevProxTEAM:Photo"..result.id_, result.profile_photo_.big_.persistent_id_) 
end
end
end,nil) 
end
end

end
return {
DevProx = ChangePhoto
}