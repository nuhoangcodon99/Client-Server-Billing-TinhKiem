--�ʱ���

--�ű���
x025002_g_scriptId = 025002

--��ӵ�е��¼�ID�б�
x025002_g_eventList={}

--**********************************
--�¼��б�
--**********************************
function x025002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"��y l� Quan Nguy�t ��nh � Th߽ng S�n, ph�a tr߾c ch�nh l� Nh� H�i, v�o m�i ��m tr�ng, Nh� H�i phong ��nh n߾c t�nh, �nh tr�ng s�ng v�ng v�c h�a trong m�t h�, nh� ng�n v�n v� sao l�p l�nh, mu�n ng�n con s�ng b�c l�n t�n. #r#rV�ch n�i �i di�n l� V�ng Tuy�t Nhai, ��ng tr�n v�ch n�i �� c� th� nh�n th�y tuy�t tr�ng tr�n ��nh Tang S�n. Tuy�t tr�ng phau phau nh� kho�c chi�c �o tr�ng tinh, d߾i �nh m�t tr�i chi�u r�i, tr�ng s�ng long lanh. #r#rC�nh �p nh� v�y m� �� l�u m� sao kh�ng c� ai d�m t�i th߷ng th�c...");
	for i, eventId in x025002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x025002_OnDefaultEvent( sceneId, selfId,targetId )
	x025002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x025002_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x025002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x025002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x025002_g_eventList do
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
function x025002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x025002_g_eventList do
		if missionScriptId == findId then
			x025002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x025002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x025002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x025002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x025002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x025002_OnDie( sceneId, selfId, killerId )
end
