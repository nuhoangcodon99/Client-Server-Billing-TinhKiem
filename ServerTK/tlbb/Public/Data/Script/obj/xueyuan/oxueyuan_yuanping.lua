--NPC
--Ԭƽ
--��ͨ

--**********************************
--�¼��������
--**********************************
function x021202_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC�Ի�
--**********************************
		AddText(sceneId,"Ng߽i g�p qua b� phong � kh�i b�ng l�  c� nh�n sao? Th�t mu�n bi�t h�n l� nh� th� n�o �n......")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
