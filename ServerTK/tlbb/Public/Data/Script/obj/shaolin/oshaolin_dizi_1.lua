--����NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x009030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  N�i n�y ch�nh l� v� l�m th�nh �a - Thi�u L�m T�. N�u c�c h� c�n gi�p ��, m�i �n g�n ch� c�ng ch�a t�m Tri Kh�ch t�ng")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
