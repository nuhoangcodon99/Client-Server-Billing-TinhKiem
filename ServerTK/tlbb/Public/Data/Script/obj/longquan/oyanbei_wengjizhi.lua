--³ƽ


--�ű���
x031003_g_scriptId = 031003

--��ӵ�е��¼�ID�б�
x031003_g_eventList={212119}

--**********************************
--�¼��б�
--**********************************
function x031003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Khi tr߾c tu�i nh� kh�ng suy ngh�, c� ng� ch� c�n th�ch l� n�n c� d�nh l�y, ch�ng h� ngh� s� g�y sai l�m. #r#rNh� ca v� t�c th�nh cho ta m� ph�i xu�t gia, A Thanh v� nh� ca m� su�t �i th� ph�n, ta, ta, ta th�c l� c� t�i!")
	for i, eventId in x031003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x031003_OnDefaultEvent( sceneId, selfId,targetId )
	x031003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x031003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x031003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x031003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031003_g_eventList do
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
function x031003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x031003_g_eventList do
		if missionScriptId == findId then
			x031003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x031003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x031003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x031003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x031003_OnDie( sceneId, selfId, killerId )
end

