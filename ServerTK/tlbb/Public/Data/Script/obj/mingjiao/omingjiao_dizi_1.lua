--����NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x011030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Quang Minh ��nh l� c�m �a, kh�ng ���c �i l�i t�y ti�n! n�u ng߽i c�n gi�p ��, h�y t�i g�n ��i M�n t�m Tri Kh�ch S� nh� gi�p ��")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
