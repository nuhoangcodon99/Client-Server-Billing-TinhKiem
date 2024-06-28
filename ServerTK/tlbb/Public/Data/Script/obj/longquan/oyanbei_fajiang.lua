--³ƽ


--�ű���
x031008_g_scriptId = 031008

--��ӵ�е��¼�ID�б�
x031008_g_eventList={}

--**********************************
--�¼��б�
--**********************************
function x031008_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"A Di �� Ph�t, ��t tr߾c xu�ng n�i �i h�a duy�n, nghe n�i Nh�n Nam Nh�n B�c �u �ang k�ch chi�n v�i qu�n Li�u, thi�n tai thi�n tai, qu�c gia c� chi�n tranh, ch� kh� cho l� d�n tr�m h� m� th�i!")
	for i, eventId in x031008_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x031008_OnDefaultEvent( sceneId, selfId,targetId )
	x031008_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x031008_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x031008_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x031008_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031008_g_eventList do
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
function x031008_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x031008_g_eventList do
		if missionScriptId == findId then
			x031008_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x031008_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031008_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x031008_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x031008_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x031008_OnDie( sceneId, selfId, killerId )
end

