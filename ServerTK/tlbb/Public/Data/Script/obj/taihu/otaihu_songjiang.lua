--����NPC
--�ν�
--��ͨ

--**********************************
--�¼��������
--**********************************
function x004007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Яi v�i t߾ng qu�n H� Di�n c�a ch�ng ta, m�t Minh Gi�o b� t� th� ch� l� chuy�n nh� m� th�i.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
