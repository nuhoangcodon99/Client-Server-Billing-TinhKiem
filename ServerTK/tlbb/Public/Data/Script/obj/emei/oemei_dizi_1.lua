--����NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x015030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Hoan ngh�nh ng߽i t�i Nga My S�n. n�u ng߽i c�n gi�p ��, h�y t�i g�n S�n M�n t�m Tri Kh�ch S� � nh� gi�p ��")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
