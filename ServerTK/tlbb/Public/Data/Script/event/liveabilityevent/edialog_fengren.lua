--�Ի��¼� 

--�ű���
x713605_g_ScriptId = 713605

--**********************************
--������ں���
--**********************************
function x713605_OnDefaultEvent( sceneId, selfId, targetId )
	dialog = "#{event_liveabilityevent_0005}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713605_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713605_g_ScriptId,"T�m hi�u may m�c",11,-1)
end

--**********************************
--����������
--**********************************
function x713605_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x713605_OnAccept( sceneId, selfId, AbilityId )
end
