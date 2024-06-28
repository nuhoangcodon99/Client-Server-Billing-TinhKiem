--��ϪNPC
--����
--��ͨ

x027004_g_scriptId = 027004

--��ӵ�е��¼�ID�б�
x027004_g_eventList={212111}

--**********************************
--�¼��б�
--**********************************
function x027004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"T�i sao ��i thanh mai tr�c m� t� nh� sau khi tr߷ng th�nh c� nh�t �nh ph�i s�ng b�n nhau? #r#rTa th�y th�t kh� hi�u. T�i sao m�i ng߶i �u cho r�ng nh� v�y l�..., ta c� n�n c�u A Thi M� kh�ng? N�ng l� b�n h�u t�t nh�t, nh�ng... #r#rT�i sao? T�i sao? Ngay c� A Y Na �u cho r�ng ta v� A Thi M� l� ��i kim �ng ng�c n�?")
	for i, eventId in x027004_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x027004_OnDefaultEvent( sceneId, selfId,targetId )
	x027004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x027004_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x027004_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x027004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x027004_g_eventList do
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
function x027004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x027004_g_eventList do
		if missionScriptId == findId then
			x027004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x027004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	
	for i, findId in x027004_g_eventList do
		if 212111 == findId then
			CallScriptFunction( 212111, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x027004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x027004_g_eventList do
		if 212111 == findId then
			CallScriptFunction( 212111, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x027004_OnDie( sceneId, selfId, killerId )
end
