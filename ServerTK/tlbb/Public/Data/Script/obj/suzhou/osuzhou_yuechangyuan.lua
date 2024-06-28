-- ����NPC
-- ����Բ
-- ��������

x050001_g_scriptId = 050001

--��ӵ�е��¼�ID�б�
x050001_g_eventList = { 050017, 808064, 050020 } --050009,

x050001_g_ControlScript = 050009

--**********************************
--�¼��б�
--**********************************
function x050001_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		if CallScriptFunction( x050001_g_ControlScript, "IsMidAutumnPeriod", sceneId, selfId ) > 0 then
			AddText( sceneId, "    ��m r�m trung thu, hoa �p tr�ng tr�n, x�m ng� b�nh th߶ng b�y the g�m" ..
				"L�u cao m�y n�i di�n t�u nh�c qu�n huy�n. Nh�ng ch�nh trong gi�y ph�t n�y, t߾ng s� c�a ta �ang c� g�ng chi�n �u v�i gi�c � bi�n gi�i" ..
				", m�i c� th� gi�i r�c r� c�a ch�ng ta" )
		else
			AddText( sceneId, "    T� h�c s� c� c�u vi�t r�t hay, ng߶i c� l�c bi hoan ly h�p.#r" ..
				"Tr�ng c� l�c tr�n l�c khuy�t, vi�c c�ng c� l�c kh� ki�n to�n. Tuy ��m nay tr�ng kh�ng tr�n, nh�ng " ..
				"trong l�ng ta, tr�ng v� ng߶i c�ng gi�ng nhau, lu�n �o�n vi�n" )
		end

		local i, eventId
		for i, eventId in x050001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
		--AddNumText(sceneId, x050001_g_scriptId, "��������", 11, 1010);
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��������
--**********************************
function x050001_OnDefaultEvent( sceneId, selfId, targetId )
	x050001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x050001_OnEventRequest( sceneId, selfId, targetId, eventId )
	local Num = GetNumText();
	if(Num == 1010) then
		BeginEvent(sceneId);
			AddNumText(sceneId, 808064, "#{ZQHD_20070916_010}", 11, 705 )
			AddNumText(sceneId, 050017, "#{ZQHD_20070916_011}", 11, 10);
			AddNumText(sceneId, 050020, "#{ZQHD_20070916_012}", 11, 102);
		EndEvent(sceneId);
		DispatchEventList(sceneId,selfId,targetId)
	end
	local i, findId
	for i, findId in x050001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x050001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	for i, findId in x050001_g_eventList do
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
function x050001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	local i, findId
	for i, findId in x050001_g_eventList do
		if missionScriptId == findId then
			x050001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end
