--���츱��NPC
--��ͨ

--**********************************
--�¼��������
--**********************************
function x155003_OnDefaultEvent(sceneId, selfId,targetId)
	BeginEvent(sceneId);
		AddText(sceneId,"Anh h�ng ch�a c� � trung nh�n sao? N�u ch�a c�, � ta gi�i thi�u 1 ng߶i nh�?");
	EndEvent(sceneId);
	DispatchEventList(sceneId,selfId,targetId);
end

