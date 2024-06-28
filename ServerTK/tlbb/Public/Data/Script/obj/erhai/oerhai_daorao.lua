--³ƽ


--�ű���
x024001_g_scriptId = 024001

--��ӵ�е��¼�ID�б�
x024001_g_eventList={808099, 808100, 808101, 808094}

--**********************************
--�¼��б�
--**********************************
function x024001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Ng߶i tr� tu�i, � ��y kh�ng ���c ch�y lung tung! #r#rNg߶i r�ng v� ng߶i s�i �u r�t ��ng s�, h�y xem t�nh h�nh trong l�ng, c�c h� s� hi�u b�n x�m l��c �� hung d� �n ��u. #r#rCon �߶ng l�n ph�a tr߾c t�n Tr� M� ��o, r�t nhi�u th߽ng nh�n v�n chuy�n tr� �n c�c n߾c xa x�i, tr߾c ��y ��i khi c�ng c� �i ng�a phi qua l�ng, ti�ng nh�c ng�a c� th� vang r�t xa...")
	for i, eventId in x024001_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x024001_OnDefaultEvent( sceneId, selfId,targetId )
	x024001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x024001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x024001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x024001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x024001_g_eventList do
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
function x024001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x024001_g_eventList do
		if missionScriptId == findId then
			x024001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x024001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x024001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x024001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x024001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x024001_OnDie( sceneId, selfId, killerId )
end

