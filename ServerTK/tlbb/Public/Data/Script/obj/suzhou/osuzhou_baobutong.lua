--����NPC
--����ͬ
--һ��

--**********************************
--�¼��������
--**********************************
function x001018_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Phi d�, phi d�, ��ng ra l� \"C�ng t�n b�i hoang l� n�i xu�n, ng߶i �i l�i � n�i xu�n ngo�i\" m�i ph�i")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
