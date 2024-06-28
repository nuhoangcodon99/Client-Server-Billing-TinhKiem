-- 125012
-- �����趨

--�ű���
x125012_g_scriptId = 125012

--��ӵ�е��¼�ID�б�
x125012_g_eventList={}

x125012_g_Position = {
				{x=143,z=151,name="Ph�m Chung Ly "},
				{x=28, z=152,name="Th�ch Th� S�ng "},
				{x=149,z=80,name="Уng иnh Th�ng "},
				{x=36, z=49,name="L��ng V�n K� "},
}

--**********************************
--�¼��б�
--**********************************
function x125012_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"C�c h� mu�n thi�t l�p �i�m ph�c sinh v�i t�i h� ?");
		for i, eventId in x125012_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		AddNumText( sceneId, x125012_g_scriptId, "�i�m ph�c sinh c�a t�i h� n�m � ��y" ,9 ,1  )
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x125012_OnDefaultEvent( sceneId, selfId,targetId )
	x125012_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x125012_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==1  then
		local nIndex = 0
		for i=1, 4  do
			if GetName(sceneId, targetId) == x125012_g_Position[i].name  then
				nIndex = i
			end
		end

		--SetPlayerDefaultReliveInfo( sceneId, selfId, "%100", "%100", "0", 
		--			sceneId, x125012_g_Position[nIndex].x, x125012_g_Position[nIndex].z )
		
		SetPlayerDefaultReliveInfoEx( sceneId, selfId, "%100", "%100", "0", 
						sceneId, 
						x125012_g_Position[nIndex].x, 
						x125012_g_Position[nIndex].z, 
						125020 )
					
		BeginEvent(sceneId)
			AddText(sceneId,"�i�m ph�c sinh c�a c�c h� �� ���c �t � ��y");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
		-- ��һ����Ч
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, 
										selfId, 152, 100 )
		
		return
	end
	for i, findId in x125012_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x125012_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x125012_g_eventList do
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
function x125012_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x125012_g_eventList do
		if missionScriptId == findId then
			x125012_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x125012_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x125012_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x125012_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x125012_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x125012_OnDie( sceneId, selfId, killerId )
end
