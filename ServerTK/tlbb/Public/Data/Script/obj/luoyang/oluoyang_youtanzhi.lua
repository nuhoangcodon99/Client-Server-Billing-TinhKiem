--洛阳NPC
--游坦之
--普通

--**********************************
--事件交互入口
--**********************************
x000017_g_scriptId = 17
x000017_g_eventList={173}	--808090:领取招牌活动	--add by xindefeng

function x000017_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"  Ti瑄 th� A T�, 皓p...皓p nh� ti阯 tr秈...th mu痭...mu痭 ng鄖 n鄌 c鹡g 疬㧟 g n鄋g..")
	
	for i, eventId in x000017_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000017_OnDefaultEvent( sceneId, selfId,targetId )
	x000017_UpdateEventList( sceneId, selfId, targetId )
end

function x000017_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	for i, findId in x000017_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnEventRequest",sceneId, selfId, targetId )
			return
		end
	end
end
