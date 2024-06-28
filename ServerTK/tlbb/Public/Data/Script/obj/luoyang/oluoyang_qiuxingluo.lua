--������

--�ű���
x000122_g_scriptId = 000122

--��ӵ�е��¼�ID�б�
x000122_g_eventList={250551}	

--**********************************
--�¼��б�
--**********************************
function x000122_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Gi�i t�c c�u chu�n b� b�t �u r�i, b�n ch�t �i ���c, n�u c�c h� c� th�i gian, c� th� gi�p ta chuy�n l�i ch�ng?")
	for i, eventId in x000122_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		
	end
	
	AddNumText( sceneId, x000122_g_scriptId, "Gi�i thi�u th� t�n � L�c D߽ng", 11, 10 )
	AddNumText( sceneId, x000122_g_scriptId, "V� ho�t �ng T�c C�u", 11, 11 )
	
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x000122_OnDefaultEvent( sceneId, selfId,targetId )
	x000122_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000122_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_075}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	
	if GetNumText() == 11 then
		BeginEvent(sceneId)	
			AddText(sceneId,"#BT�c C�u");
			AddText( sceneId, "#{CUJU_INFO}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	for i, findId in x000122_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x000122_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000122_g_eventList do
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
function x000122_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x000122_g_eventList do
		if missionScriptId == findId then
			x000122_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x000122_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000122_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x000122_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000122_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x000122_OnDie( sceneId, selfId, killerId )
end
