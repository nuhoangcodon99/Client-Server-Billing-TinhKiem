--����

--�ű���
x002023_g_scriptId = 002023

x002023_g_shoptableindex=1

--��ӵ�е��¼�ID�б�
x002023_g_eventList={210200,210201}

--**********************************
--�¼��б�
--**********************************
function x002023_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end
	BeginEvent(sceneId)
	AddText(sceneId,"  Binh kh� �, c�n ph�i s�c b�n, c�n ph�i ph� h�p "..PlayerName..PlayerSex..", xem xem binh kh� c�a ta � ��y, ch�c ch�n ph�i c� c�i h�p v�i tay ng߽i")
	AddNumText(sceneId,x002023_g_scriptId,"Ng߽i mu�n mua g� n�o?",7,0)
	for i, eventId in x002023_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x002023_OnDefaultEvent( sceneId, selfId,targetId )
	x002023_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002023_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText() == 0	then
		DispatchShopItem( sceneId, selfId,targetId, x002023_g_shoptableindex )
	end
	for i, findId in x002023_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x002023_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002023_g_eventList do
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
function x002023_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x002023_g_eventList do
		if missionScriptId == findId then
			x002023_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x002023_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002023_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x002023_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002023_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x002023_OnDie( sceneId, selfId, killerId )
end
