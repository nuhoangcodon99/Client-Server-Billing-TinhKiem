--��Ǿ

--�ű���
x020003_g_scriptId = 020003

--��ӵ�е��¼�ID�б�
x020003_g_eventList={212125}--211102,211103,211104,211107,211106}	--211108,211105

--**********************************
--�¼��б�
--**********************************
function x020003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	local IsStepDone1 = IsHaveMission(sceneId,selfId,542)
	local IsStepDone2 = IsHaveMission(sceneId,selfId,543)
	local IsStepDone3 = IsHaveMission(sceneId,selfId,544)
	local IsStepDone4 = IsHaveMission(sceneId,selfId,548)
	
	--��ɡ����ĺ���������֮��
	if IsStepDone4 == 1 then
		AddText(sceneId,"  "..PlayerName.."#{OBJ_caoyuan_0004}")
	--û����ɡ��������������������족����Ӣ�۵�֤��������֮ǰ
	elseif IsStepDone1 == 0 and IsStepDone2 == 0 and IsStepDone3 == 0 then
		AddText(sceneId,"Ng߽i ch�nh l� "..PlayerName.."? #r#rCa ca t� #G Nh�n B�c#W g�i th� t�i n�i ng߽i l� 1 anh h�ng, k�u ta ti�p ��i t� t�. Nh�ng ta th�y ng߽i kh�ng gi�ng 1 anh h�ng")
	--��ɡ����ĺ���������֮ǰ
	else
		AddText(sceneId,"Ta kh�ng ph�i l� ng߶i ai n�i g� c�ng tin. N�u ng߽i th�c s� l� 1 anh h�ng, ta t� kh�c ti�p ��i ng߽i t� t�")
	end
	for i, eventId in x020003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x020003_OnDefaultEvent( sceneId, selfId,targetId )
	x020003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x020003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x020003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x020003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x020003_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x020003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x020003_g_eventList do
		if missionScriptId == findId then
			x020003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x020003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x020003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x020003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x020003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x020003_OnDie( sceneId, selfId, killerId )
end
