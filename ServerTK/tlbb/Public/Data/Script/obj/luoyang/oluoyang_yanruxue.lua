--�ű���
x000088_g_scriptId = 000088

--��ӵ�е��¼�ID�б�
x000088_g_eventList = { 801010 }

--**********************************
--�¼��������
--**********************************
function x000088_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Hoa t� phi�u du thu� t� l�u, t� xanh nh�n nh�t t� ti�ng s�u, xu�n �m thu s߽ng th߽ng tay �o, �y th�ng m�t v�nh tr�ng l��i c�u. �� kh�ng bi�t n�i c�ng ai, sao kh�ng �i ki�u t�c xem sao?")
		
		AddNumText( sceneId, x000088_g_scriptId, "Gi�i thi�u thay �i ki�u t�c", 11, 10 )
		
		AddNumText(sceneId,x000088_g_scriptId,"Thay �i ki�u t�c",6,1)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000088_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)
				AddText( sceneId, "#{function_help_061}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	
	if GetNumText() == 1 then
		-- �޸ķ���
		CallScriptFunction( 801010, "OnEnumerate",sceneId, selfId, targetId )
		return
	end

end
