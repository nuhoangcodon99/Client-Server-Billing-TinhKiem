--��ɽNPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x017030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Trong Linh Th�u Cung ph�n l�n l� n� nh�n, c� nhi�u c�m k�. N�u ng߽i c�n gi�p ��, m�i �n tri kh�ch � t� g�n s�n m�n nh� gi�p ��")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
