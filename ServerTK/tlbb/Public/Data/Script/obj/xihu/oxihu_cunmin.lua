--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x030005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"H� B�o Th�n hi�n gi� kh�ng ���c y�n t�nh ��u.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
