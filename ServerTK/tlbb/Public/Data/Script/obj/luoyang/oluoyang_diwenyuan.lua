--����NPC
--����Զ
--��ͨ

--�ű���
x000083_g_scriptId = 000083

x000083_g_missionName = "Thay �i tr�n doanh"

--��ӵ�е��¼�ID�б�
x000083_g_eventList={250503}
--**********************************
--�¼��б�
--**********************************
function x000083_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"  Gi�a tr߶ng t� th�, s�ng ch�t t�i m�nh, �i�n t�n v�o gi�y sinh t� n�y r�i l� kh�ng ���c thay �i n�a, c�c h� ph�i ngh� cho th�t k�!");
		--��������ɹ��������
		if GetCurCamp (sceneId, selfId) == 1 then
			AddNumText(sceneId, x000083_g_scriptId,"Kh�i ph�c l�i tr�n doanh ban �u",6,0);
		--���������������
		else
			AddNumText(sceneId,x000083_g_scriptId,"Уt l�i th�nh tr�n doanh PK",6,1);
		end
		for i, eventId in x000083_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


--**********************************
--�¼��������
--**********************************
function x000083_OnDefaultEvent( sceneId, selfId,targetId )
	x000083_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000083_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
			SetCurCamp (sceneId, selfId, 0)
		BeginEvent(sceneId)
  			AddText(sceneId,"C�c h� �� kh�i ph�c l�i tr�n doanh ban �u");
  		EndEvent(sceneId)
  		DispatchMissionTips(sceneId,selfId)
	elseif	GetNumText()==1	then
		SetCurCamp (sceneId, selfId, 1 )
		BeginEvent(sceneId)
	  		AddText(sceneId,"C�c h� �� kh�i ph�c l�i tr�n doanh PK");
		EndEvent(sceneId)
	  	DispatchMissionTips(sceneId,selfId)
	end
	for i, findId in x000083_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x000083_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000083_g_eventList do
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
function x000083_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x000083_g_eventList do
		if missionScriptId == findId then
			x000083_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x000083_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000083_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x000083_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000083_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x000083_OnDie( sceneId, selfId, killerId )
end
