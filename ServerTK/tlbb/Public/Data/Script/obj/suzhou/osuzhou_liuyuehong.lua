--����NPC
--���º�
--һ��
x001025_g_ScriptId = 1025

x001025_g_ControlScript = 808071


--**********************************
--�¼��������
--**********************************
function x001025_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"  B�t �u t� ��y, ch�ng ch� ���c y�u m�nh ta, th߽ng m�nh ta, kh�ng ���c d�i l�a ta, ph�i l�m h�t nh�ng vi�c ta mu�n nh�")
		CallScriptFunction( x001025_g_ControlScript, "OnEnumerate",sceneId, selfId, targetId )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


function x001025_OnEventRequest( sceneId, selfId, targetId, eventId )
  
	if eventId == x001025_g_ControlScript then
		CallScriptFunction( x001025_g_ControlScript, "OnDefaultEvent",sceneId, selfId, targetId )
		return
	end

end
