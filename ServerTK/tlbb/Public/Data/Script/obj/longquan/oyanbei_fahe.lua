--³ƽ


--�ű���
x031006_g_scriptId = 031006

--��ӵ�е��¼�ID�б�
x031006_g_eventList={}

--**********************************
--�¼��б�
--**********************************
function x031006_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Nghe n�i Ph�p Ni�m s� huynh tr߾c khi xu�t gia �� c� quan h� �c bi�t v�i v� s� ph� ��c ki�m danh ti�ng L�i Ho�n, ch�ng bi�t th�c h� ra sao. #r#rC� �i�u, m�i n�m ti�t Thanh Minh �u th�y m�t n� th� ch� che m�t �n t�m s� huynh, nh�ng m� s� huynh kh�ng h� g�p m�t, h�, #r#rNghi�p ch߾ng!")
	for i, eventId in x031006_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x031006_OnDefaultEvent( sceneId, selfId,targetId )
	x031006_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x031006_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x031006_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x031006_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031006_g_eventList do
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
function x031006_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x031006_g_eventList do
		if missionScriptId == findId then
			x031006_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x031006_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x031006_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x031006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x031006_OnDie( sceneId, selfId, killerId )
end

