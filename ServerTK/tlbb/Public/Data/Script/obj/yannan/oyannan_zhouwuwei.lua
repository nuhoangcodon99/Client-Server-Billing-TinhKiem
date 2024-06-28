--����η

--�ű���
x018005_g_scriptId = 018005


--��ӵ�е��¼�ID�б�
x018005_g_eventList={808103, 808104, 808105, 808094}--210900,210901,210906, 210409}

--**********************************
--�¼��б�
--**********************************
function x018005_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"C�ng vi�c b�o v� an ninh � Nh�n M�n Quan hi�n nay ch� y�u ph�n th�nh ba b� ph�n: ��i so�i Ch�ng Th� Ho�nh ph� tr�ch �i ph� v�i ��o ph� T�n Gia Tr�i � ph�a nam Nh�n M�n Quan; ph� so�i Kh�c �oan ph� tr�ch �i ph� v�i qu�n Li�u � ph�a b�c Nh�n M�n Quan; gi�m qu�n M� Th�a S�nh ph� tr�ch gi�m s�t, ��n �c c�ng vi�c c�a hai v� nguy�n so�i.")
	for i, eventId in x018005_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x018005_OnDefaultEvent( sceneId, selfId,targetId )
	x018005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x018005_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x018005_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x018005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x018005_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x018005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x018005_g_eventList do
		if missionScriptId == findId then
			x018005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x018005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x018005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x018005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x018005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x018005_OnDie( sceneId, selfId, killerId )
end
