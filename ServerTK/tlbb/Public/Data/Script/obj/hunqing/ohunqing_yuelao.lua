--���츱��NPC
--��ͨ

--**********************************
--�¼��������
--**********************************
function x155001_OnDefaultEvent(sceneId, selfId,targetId)
	BeginEvent(sceneId);
		AddText(sceneId,"N�u c�c h� c� � trung nh�n, c� th� c�ng �n t�m ta, ta c� th� gi�p c�c h� ch� tr� h�n s�.");
	EndEvent(sceneId);
	DispatchEventList(sceneId,selfId,targetId);
end

