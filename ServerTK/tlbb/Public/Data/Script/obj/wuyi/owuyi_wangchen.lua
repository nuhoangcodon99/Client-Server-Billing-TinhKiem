--NPC����
--����
--��ͨ

--�ű���
x032112_g_scriptId = 032112

--��ӵ�е��¼�ID�б�
x032112_g_eventList={212123}

--**********************************
--�¼��б�
--**********************************
function x032112_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"жi ng߶i d� kh�ng qua tr�m n�m nh�ng �u c� �i�m k�t th�c, b�t lu�n Ъ v߽ng hay t߾ng �u l� b�nh d�n b�ch t�nh. V�y �i ng߶i trong th� gian n�y l� g� ? A di �� ph�t, th� ch�, ph�i ch�ng v�n � n�y c�ng �ang khi�n th� ch� b�i r�i?")
	for i, eventId in x032112_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x032112_OnDefaultEvent( sceneId, selfId,targetId )
	x032112_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x032112_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x032112_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x032112_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x032112_g_eventList do
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
function x032112_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x032112_g_eventList do
		if missionScriptId == findId then
			x032112_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x032112_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x032112_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x032112_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x032112_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x032112_OnDie( sceneId, selfId, killerId )
end

