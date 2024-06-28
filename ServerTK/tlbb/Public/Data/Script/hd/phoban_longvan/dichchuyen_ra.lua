x000619_g_ScriptId = 000619
function x000619_OnDefaultEvent (sceneId, selfId, targetId )
	local truthongduoc = LuaFnGetCopySceneData_Param( sceneId, x000618_g_dathong)
	
	if truthongduoc == 3 then
		x000619_Tips(sceneId, selfId, targetId,"#{CSFB_KVK_110623_32}")
		AddNumText(sceneId, x000619_g_ScriptId,"R¶i khöi Vß½ng Lång",9, 68)
		AddNumText(sceneId, x000619_g_ScriptId,"V« phø bän Vß½ng Lång",11,69)	
		--x000619_Tips(sceneId,selfId,targetId,"#{CSFB_KVK_110623_30}")
		return
	elseif truthongduoc < 3 then
		x000619_Tips(sceneId, selfId, targetId,"#{CSFB_KVK_110623_33}")
		AddNumText(sceneId, x000619_g_ScriptId,"R¶i khöi Vß½ng Lång",9,70)
		AddNumText(sceneId, x000619_g_ScriptId,"V« phø bän Vß½ng Lång",11,71)
		return
	end
end
function x000619_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() ==68 or GetNumText() ==70  then
		NewWorld( sceneId, selfId, 2, 160, 86 )
		return
	end
	if GetNumText() ==69 or GetNumText() ==71 then
		x000619_Tips(sceneId, selfId,targetId,"#{CSFB_KVK_110623_30}")
		return
	end
end
function x000619_Tips(sceneId, selfId,targetId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
