--���츱��NPC
--��ͨ

--**********************************
--�¼��������
--**********************************
function x155002_OnDefaultEvent(sceneId, selfId,targetId)
	BeginEvent(sceneId);
		AddText(sceneId,"Ch�c m�ng hai v� t�n lang v� t�n n߽ng B�ch ni�n h�o h�p, t�o �c qu� t�!");
	EndEvent(sceneId);
	DispatchEventList(sceneId,selfId,targetId);
end

