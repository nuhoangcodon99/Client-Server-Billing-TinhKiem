--NPC
--�����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x021200_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC�Ի�
--**********************************
		AddText(sceneId,"Ng߽i nghe n�i qua  chim c�nh c�t gi�  h�nh ph�c n�y truy�n thuy�t sao?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
