--NPC
--
--�ű���
x000148_g_scriptId = 000148

--��ӵ�е��¼�ID�б�
x000148_g_eventList={500619, 500600, 500606, 500601, 500602, 500603, 500604, 500605, 500607, 500608, 500612, 500613, 500614, 500615, 500616}

--��ͨ

--**********************************
--�¼��������
--**********************************
function x000148_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC�Ի�
--**********************************
		AddText(sceneId,"Giang s�n b�i h� nh�n t�i xu�t, c�c l�nh phong tao s� b�ch ni�n. B� Nh�n v� Tri�u Thi�n S� c�a ��i L� l� huynh � �ng m�n. Nay tr�n giang h� xu�t hi�n nh�n t�i, ta vui m�ng kh�n xi�t. Con �߶ng v� h�c th� kh�ng h�t b�ng ph�ng. C�c h� c� ch� n�o kh�ng")
		for i, eventId in x000148_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000148_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000148_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x000148_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000148_g_eventList do
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
function x000148_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x000148_g_eventList do
		if missionScriptId == findId then
			x000148_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x000148_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000148_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x000148_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000148_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x000148_OnDie( sceneId, selfId, killerId )
end
