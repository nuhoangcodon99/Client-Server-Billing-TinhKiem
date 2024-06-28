--���縱������npc

--�ű���
x402001_g_scriptId = 402001


--��ӵ�е��¼�ID�б�
x402001_g_eventList={401001}

--**********************************
--�¼��б�
--**********************************
function x402001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	
		AddNumText( sceneId, x402001_g_scriptId, "Gi�i thi�u K� Cu�c", 11, 10 )
		AddNumText( sceneId, x402001_g_scriptId, "R�i kh�i ph�ng ngh�", 9, 11 )
		AddNumText( sceneId, x402001_g_scriptId, "L�m sao �o�t k� thu ���c nhi�u kinh nghi�m", 11, 512 )

		for i, findId in x402001_g_eventList do
			CallScriptFunction( x402001_g_eventList[i], "OnEnumerate",sceneId, selfId, targetId )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x402001_OnDefaultEvent( sceneId, selfId,targetId )
	x402001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x402001_OnEventRequest( sceneId, selfId, targetId, eventId )

	local Numtext = GetNumText()

	if Numtext == 10 then
		BeginEvent(sceneId)	
			AddText( sceneId, "#{function_help_063}" )	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	elseif Numtext == 11 then
		BeginEvent(sceneId)	
			AddText( sceneId, "N�u �i ng� c�a ng߽i �u � ph�ng ngh�, m� ng߽i l�i m�t m�nh r�i �i, b�n h� b�i v�y kh�ng th� ti�n v�o v�n c�. Ng߽i x�c nh�n ph�i r�i kh�i sao?" )
			AddNumText( sceneId, x402001_g_scriptId, "X�c �nh", 8, 12 )
			AddNumText( sceneId, x402001_g_scriptId, "B� qua", 8, 13 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	elseif Numtext == 12 then
		if sceneId == 518 then
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 1,175,145)
		elseif sceneId == 193 then
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 2,275,95)
		elseif sceneId == 418 or sceneId == 419 then
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 0,268,87)
		end
		return
	elseif Numtext == 13 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	elseif Numtext == 512 then
		BeginEvent(sceneId)	
			AddText( sceneId, "#{QJ_20080522_03}" )	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	for i, findId in x402001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--�����¼�
--**********************************
function x402001_OnDie( sceneId, selfId, killerId )
end
