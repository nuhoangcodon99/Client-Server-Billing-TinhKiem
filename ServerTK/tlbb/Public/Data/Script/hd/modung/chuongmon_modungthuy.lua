--NPC Chß·ng môn Mµ Dung
--Author: mrhong@2gvn
--Date: 1/3/2012

x000505_g_scriptId = 000505
x000505_g_eventList={229009}

function x009005_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)

		AddText(sceneId,"#{GUSU_MENPAI_36}")
		if GetMenPai(sceneId, selfId) == 9 and GetHumanMenpaiPoint(sceneId, selfId) ~= 0 then 
			for i, findId in x000505_g_eventList do
				--CallScriptFunction( x000505_g_eventList[i], "OnEnumerate",sceneId, selfId, targetId )
			end
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
function x000505_OnDefaultEvent( sceneId, selfId,targetId )
	x009005_UpdateEventList( sceneId, selfId,targetId )
end
function x000505_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000505_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, 9 )
			return
		end
	end
end
