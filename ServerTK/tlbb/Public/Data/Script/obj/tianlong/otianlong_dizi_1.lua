--����NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x013030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Thi�n Long T� l� m�t n�i � y�n t�nh tu h�nh c�a c�a Ph�t. N�u ng߽i c�n gi�p ��, h�y �n ch� g�n c�a Thi�n Long T� � t�m s� Tri Kh�ch nh� gi�p ��")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
