--�ܷ�

--�ű���
x018001_g_scriptId = 018001


--��ӵ�е��¼�ID�б�
x018001_g_eventList={}--210902}

--**********************************
--�¼��б�
--**********************************
function x018001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Ho�n quan gi�m s�t qu�n l�nh M� Th�a S�nh th߶ng xuy�n c߾p c�a c�a d�n l�nh � ch� Nh�n M�n, t߾ng qu�n ho�n quan L�c Ph�ng Ti�n thu�c h� c�a �ng ta c�n th߶ng xuy�n �em qu�n �i c߾p c�a d�n l�nh d�n t�c Kh� нn, g�i vi�c n�y l� \"c߾p th�o c�c\", c� l�c c�n xu�ng c߾p th�o c�c c�a ng߶i d�n t�c H�n. C� theo �� n�y, trong m�t b�ch t�nh tr�m h�, qu�n l�nh ch�ng kh�c n�o l� �c qu�.")
	for i, eventId in x018001_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x018001_OnDefaultEvent( sceneId, selfId,targetId )
	x018001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x018001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x018001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x018001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x018001_g_eventList do
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
function x018001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x018001_g_eventList do
		if missionScriptId == findId then
			x018001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x018001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x018001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x018001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x018001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x018001_OnDie( sceneId, selfId, killerId )
end
