--���츱��NPC
--��ͨ

--**********************************
--�¼��������
--**********************************
function x155007_OnDefaultEvent(sceneId, selfId,targetId)
	BeginEvent(sceneId);
		AddText(sceneId,"Ch�c m�ng hai v� t�n lang t�n n߽ng, trai t�i g�i s�c, h�nh ph�c �n b�c �u.");
	EndEvent(sceneId);
	DispatchEventList(sceneId,selfId,targetId);
end

