--����NPC
--�κ��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x013012_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  B�n T߾ng ��i s� g�n ��y lu�n nh�c v�i ta v� 1 h�u b�i c�a �ng. Ng߶i �� ch�nh l� ch�nh l� ch�u trai c�a Ho�ng Th��ng, t�n l� �o�n D�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
