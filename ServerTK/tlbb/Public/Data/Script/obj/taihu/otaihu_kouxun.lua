--����NPC
--��������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x004004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"H�nh qu�n ��nh tr�n m�i m�t chi�n thu�t, chi�n l��c r�t quan tr�ng, nh�ng ta cho r�ng ���c l�ng ng߶i c�n quan tr�ng h�n. K� n�o ���c l�ng d�n l� ���c c� thi�n h�.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
