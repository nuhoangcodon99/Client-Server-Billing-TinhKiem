-- 125014
-- ĞŞÀí×°±¸

--½Å±¾ºÅ
x125014_g_scriptId = 125014

--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x125014_g_eventList={}

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x125014_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"TÕi hÕ có th¬ sØa chæa t¤t cä các trang b¸ trên 40, bao g°m các loÕi vû khí và ğ° trang sÑc, nhßng khi tÕi hÕ sØa chæa tÖ l® thành công không phäi là 100% , nªu các hÕ không có b¤c kÏ phän ğ±i nào thì ğ¬ tôi sØ chæa giúp các hÕ")
		AddNumText(sceneId,x125014_g_scriptId,"Tôi mu¯n sØa chæa trang b¸",6,1)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x125014_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, -1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19810313 )	
	end
end

