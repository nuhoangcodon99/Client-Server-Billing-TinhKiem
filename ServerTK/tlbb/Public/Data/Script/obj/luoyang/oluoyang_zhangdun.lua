--��

--�ű���
x000006_g_scriptId = 000006

--��ӵ�е��¼�ID�б�
x000006_g_eventList={201511,201512,50015}		

--**********************************
--�¼��б�
--**********************************
function x000006_UpdateEventList( sceneId, selfId,targetId )

	BeginEvent(sceneId)

		local strText = "  Ng�y nay thi�n h� �ng lo�n, b�n b� gi�c c߾p. Tri�u ��nh mu�n mau ch�ng y�n x� t�c, cho mu�n d�n cu�c s�ng thanh b�nh, k�u g�i c�c anh h�ng ra tay tr� gi�p d�p lo�n. Ng߶i c� c�ng d�p lo�n s� ���c b�n Th�a t߾ng phong t�ng t߾c hi�u cao qu�"
		AddText( sceneId, strText )
	
	for i, eventId in x000006_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x000006_OnDefaultEvent( sceneId, selfId,targetId )
	x000006_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000006_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000006_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x000006_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000006_g_eventList do
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
function x000006_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x000006_g_eventList do
		if missionScriptId == findId then
			x000006_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x000006_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x000006_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x000006_OnDie( sceneId, selfId, killerId )
end
