--÷��NPC
--�¼�
--��ͨ

--�ű���
x033009_g_scriptId = 033009

--��ӵ�е��¼�ID�б�
x033009_g_eventList={212113}

--**********************************
--�¼��б�
--**********************************
function x033009_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"G�n ��y Th�i D߽ng Hoa t� t� r�t hay n�i gi�n v� c�, l� l�ng th�t! C�ng ch�ng bi�t T� Vi t� t� b�n �� c� vi�c g� kh�ng, �� l�u r�i kh�ng c� tin t�c g� c�. #r#rC�ng ch�ng bi�t Kinh C�c �ang l�m c�i g�, m�y h�m nay c�m gi�c r�t n�ng n�, t�a nh� s�p c� g� �� x�y ra. �i, ch�c l� m�nh l�i �a ngh� r�i.")
		for i, eventId in x033009_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x033009_OnDefaultEvent( sceneId, selfId,targetId )
	x033009_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x033009_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x033009_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x033009_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x033009_g_eventList do
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
function x033009_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x033009_g_eventList do
		if missionScriptId == findId then
			x033009_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x033009_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x033009_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x033009_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x033009_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x033009_OnDie( sceneId, selfId, killerId )
end
