--����NPC
--����
--һ��

--**********************************
--�¼��������
--**********************************
function x001014_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Tr�n c� thi�n ��ng, d߾i c� T�, H�ng. C�nh �p c�a T� Ch�u c�c h� �� t�ng th�y ch�a?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
