--����NPC
--�˲�֮
--һ��

--**********************************
--�¼��������
--**********************************
function x001005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Tr߽ng L�i huynh v� H� Ch� huynh t�i hoa �u cao h�n t�i h� r�t nhi�u")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
