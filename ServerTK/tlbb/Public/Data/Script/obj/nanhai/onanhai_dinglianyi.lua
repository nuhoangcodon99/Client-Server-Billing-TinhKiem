--�Ϻ�NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x034002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"S� ph�, s� n߽ng.... C� ��i s� huynh... Th� l�, th� l�, �u kh�ng c�n n�a sao? Hu hu... m�c k� t�i, t�i kh�ng mu�n s�ng n�a...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
