--��ϪNPC
--��ʫ��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x027005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"L� ng߽i c�u ta? A H�c, A H�c ca � ��u?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
