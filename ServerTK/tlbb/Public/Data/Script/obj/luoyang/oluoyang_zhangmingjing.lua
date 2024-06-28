--����NPC		��ҩnpc		1ѧϰ��ҩ����		2��ҽ����˵��
--������
--��ͨ

--�ű���
x000108_g_ScriptId = 000108

--��ӵ�е��¼�Id�б�
--estudy_zhiyao = 713503
--elevelup_zhiyao = 713562
--edialog_zhiyao = 713602
--��ӵ�е��¼�ID�б�
x000108_g_eventList={713503,713562,250502}--,713602
--**********************************
--�¼��б�
--**********************************
function x000108_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Mu�n h�c t�p v� n�ng cao k� n�ng ch� d��c th� ph�i ch�m t�i ��y m� xem, mu�n s�ng ���c trong giang h� th� kh�ng th� thi�u m�t s� ph߽ng thu�c t�t")
		AddText(sceneId,"  B�m v�o h�c ch� d��c, c�c h� c� th� t� l�m m�t s� thu�c d�ng khi c�n k�p, h�y th� nhi�u l�n, c�c h� s� ph�t hi�n ra c�ng nhi�u ph߽ng ph�p ch� �an d��c")
		for i, eventId in x000108_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		AddNumText( sceneId, x000108_g_ScriptId, "Gi�i thi�u b�o ch� d��c", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x000108_OnDefaultEvent( sceneId, selfId,targetId )
	x000108_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000108_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_007}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x000108_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000108_g_ScriptId )
		return
	end
end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x000108_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000108_g_eventList do
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
function x000108_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x000108_g_eventList do
		if missionScriptId == findId then
			x000108_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x000108_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000108_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x000108_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000108_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x000108_OnDie( sceneId, selfId, killerId )
end
