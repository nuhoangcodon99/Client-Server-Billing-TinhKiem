--����NPC
--��̹֮
--��ͨ

--**********************************
--�¼��������
--**********************************
x000017_g_scriptId = 17
x000017_g_eventList={173}	--808090:��ȡ���ƻ	--add by xindefeng

function x000017_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"  Ti�u th� A T�, �p...�p nh� ti�n tr�i...th�t mu�n...mu�n ng�y n�o c�ng ���c g�p n�ng..")
	
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
