--³ƽ


--�ű���
x032001_g_scriptId = 032001

--��ӵ�е��¼�ID�б�
x032001_g_eventList={212123}

--**********************************
--�¼��б�
--**********************************
function x032001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Ch� em c�a b� t�c S�n Vi�t r�t �u t�. #r#rT� Vi d�u d�ng hi�n l�nh, m�i ng߶i �u th�ch. Th�y Ti�n thanh t�nh nh� nh�n, ch�n ch�n th�ng minh, h�n n�a Ph� Dung t� t�.....")
	for i, eventId in x032001_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x032001_OnDefaultEvent( sceneId, selfId,targetId )
	x032001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x032001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x032001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x032001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x032001_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x032001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x032001_g_eventList do
		if missionScriptId == findId then
			x032001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x032001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x032001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x032001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x032001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x032001_OnDie( sceneId, selfId, killerId )
end

