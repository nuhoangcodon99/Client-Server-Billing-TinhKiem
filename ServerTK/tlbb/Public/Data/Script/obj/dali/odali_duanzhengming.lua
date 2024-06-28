--������

--�ű���
x002005_g_scriptId = 002005

--��ӵ�е��¼�ID�б�
x002005_g_eventList={}
--x002005_g_eventList={200401,200402,200604,200701,201502,201601,201602,201701,201801,201901,201902}	

--**********************************
--�¼��б�
--**********************************
function x002005_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"  "..PlayerName..PlayerSex..", g�p c�c h� th�t vui qu�. �i, l� vua m�t n߾c, su�t ng�y vi�c tri�u ch�nh c� b�m l�y th�n, ph�i lo qu� nhi�u, kh�ng b�ng t�i Ni�m Hoa T� m� tu h�nh c�n t�t h�n")
	for i, eventId in x002005_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x002005_OnDefaultEvent( sceneId, selfId,targetId )
	x002005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002005_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002005_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x002005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002005_g_eventList do
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
function x002005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x002005_g_eventList do
		if missionScriptId == findId then
			x002005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x002005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x002005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x002005_OnDie( sceneId, selfId, killerId )
end
