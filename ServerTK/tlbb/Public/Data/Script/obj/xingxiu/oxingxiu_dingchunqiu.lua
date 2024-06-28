--星宿NPC 
--掌门人
--丁春秋
--普通

x016000_g_scriptId = 016000        
x016000_g_eventList={229009,229012,808092,600026}

--**********************************
--事件交互入口
--**********************************
function x016000_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId," #{MenpaiInfo_005}")
		
		for i, eventId in x016000_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--事件列表选中一项
--**********************************
function x016000_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x016000_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_XINGSU )
			return
		end
	end
end
