--���츱��NPC
--��ͨ

--**********************************
--�¼��������
--**********************************
function x155004_OnDefaultEvent(sceneId, selfId,targetId)
	BeginEvent(sceneId);
		AddText(sceneId,"Nh�n v� t�n lang k�a, �p trai qu�! Mong m�t ng�y n�o t�i c�ng ���c l�m t�n n߽ng.");
	EndEvent(sceneId);
	DispatchEventList(sceneId,selfId,targetId);
end

