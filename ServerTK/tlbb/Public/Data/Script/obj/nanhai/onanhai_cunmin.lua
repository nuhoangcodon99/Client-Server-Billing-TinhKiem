--�Ϻ�NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x034004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"L� ti�u t� Ng�c ng� bang ng�y c�ng h�n x��c, so v�i con trai c�a b� L� ch�ng kh�c g� tr�i v�i v�c.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
