--�ʱ���

--�ű���
x025003_g_scriptId = 025003

--��ӵ�е��¼�ID�б�
x025003_g_eventList={}

--**********************************
--�¼��б�
--**********************************
function x025003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Ha ha, ch� bao l�u n�a, m�i th� � ��y �u l� c�a ta! #r#rT�t c� m�i th�, t�t c� m�i th� �u l� c�a ta! #r#rHa ha ha ha ha ha..");
	for i, eventId in x025003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x025003_OnDefaultEvent( sceneId, selfId,targetId )
	x025003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x025003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x025003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x025003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x025003_g_eventList do
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
function x025003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x025003_g_eventList do
		if missionScriptId == findId then
			x025003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x025003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x025003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x025003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x025003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x025003_OnDie( sceneId, selfId, killerId )
end
