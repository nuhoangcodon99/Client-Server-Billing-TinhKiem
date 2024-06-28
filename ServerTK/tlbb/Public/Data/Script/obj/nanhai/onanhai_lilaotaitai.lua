--�Ϻ�NPC
--����̫̫
--��ͨ

x034006_g_eventList = {212112}

--**********************************
--�¼��������
--**********************************
function x034006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Con trai ta d� kh�ng c�n n�a, nh�ng n� v�n s�ng! N� v�nh vi�n s�ng � Li�u T�y!")
		for i, eventId in x034006_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ˢ���¼�
--**********************************
function x034006_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x034006_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x034006_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x034006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x034006_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x034006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end


