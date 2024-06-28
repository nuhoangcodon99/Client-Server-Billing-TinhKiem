--½��˪

--�ű���
x003004_g_scriptId = 003004

--��ӵ�е��¼�ID�б�
x003004_g_eventList={}--210307}--210306,210305

--**********************************
--�¼��б�
--**********************************
function x003004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"T� ��i quan nh�n v� c�ng cao c߶ng, hi�u bi�t, phong � ng�i ng�i, mu�n g� cho ai c�ng n�n l�y ng߶i nh� T� ��i quan nh�n.")
	for i, eventId in x003004_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--�¼��������
--**********************************
function x003004_OnDefaultEvent( sceneId, selfId,targetId )
	x003004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x003004_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x003004_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x003004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x003004_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x003004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x003004_g_eventList do
		if missionScriptId == findId then
			x003004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x003004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x003004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x003004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x003004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x003004_OnDie( sceneId, selfId, killerId )
end
