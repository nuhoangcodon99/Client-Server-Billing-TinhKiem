--���츱��NPC
--��ͨ

--**********************************
--�¼��������
--**********************************
function x155006_OnDefaultEvent(sceneId, selfId,targetId)
	BeginEvent(sceneId);
		AddText(sceneId,"C�c h� xem v� t�n n߽ng kia, xinh �p l�m sao! Mong ng�y n�o �� t�i h� c�ng ���c l�m t�n lang.");
	EndEvent(sceneId);
	DispatchEventList(sceneId,selfId,targetId);
end

