--�ű���
x000087_g_scriptId = 000087

--��ӵ�е��¼�ID�б�
x000087_g_eventList = { 801011 }

--**********************************
--�¼��������
--**********************************
function x000087_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ch� c�n ng߽i c� thu�c nhu�m t�c l� c� th� thay �i ���c m�u t�c mu�n nhu�m")
		
		AddNumText( sceneId, x000087_g_scriptId, "Gi�i thi�u thay �i m�u t�c", 11, 10 )
		AddNumText(sceneId,x000087_g_scriptId,"Thay �i m�u t�c",6,2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000087_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
				AddText( sceneId, "#{function_help_060}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end

	if GetNumText() == 2 then
		-- �޸ķ�ɫ
		CallScriptFunction( 801011, "OnEnumerate",sceneId, selfId, targetId )
		return
	end

end
