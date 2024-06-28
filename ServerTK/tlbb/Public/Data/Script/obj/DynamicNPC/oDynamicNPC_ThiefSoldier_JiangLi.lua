--̫��NPC
--�췴����
--��ͨ

--�ű���
x050014_g_ScriptId	= 050014

--��ӵ�е��¼�ID�б�
x050014_g_EventList	= { 050015 }
--��ȡ�������͵ȼ�
x050014_g_minLevel			= 20

--**********************************
--�¼��б�
--**********************************
function x050014_UpdateEventList( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		AddText( sceneId, "Ng�y nay thi�n h� �ng lo�n, b�n b� gi�c c߾p, Tri�u �inh v� mu�n mau ch�ng d�p y�n, ra hi�u tri�u c�c v� gi�p �� d�p lo�n. Ng߶i c� c�ng d�p lo�n s� ���c phong t߾c hi�u" )
		CallScriptFunction( x050014_g_EventList[1], "OnEnumerate", sceneId, selfId, targetId )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
	
end

--**********************************
--�¼��������
--**********************************
function x050014_OnDefaultEvent( sceneId, selfId, targetId )
	x050014_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x050014_OnEventRequest( sceneId, selfId, targetId, eventId )

	for i, findId in x050014_g_EventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--���ܴ�NPC������
--**********************************
function x050014_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x050014_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			return
		end
	end

end

--**********************************
--�ܾ���NPC������
--**********************************
function x050014_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )

	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x050014_g_EventList do
		if missionScriptId == findId then
			x050014_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--�������Ѿ���������
--**********************************
function x050014_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x050014_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--�ύ�����������
--**********************************
function x050014_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	for i, findId in x050014_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end

end

--**********************************
--�����¼�
--**********************************
function x050014_OnDie( sceneId, selfId, killerId )
end
