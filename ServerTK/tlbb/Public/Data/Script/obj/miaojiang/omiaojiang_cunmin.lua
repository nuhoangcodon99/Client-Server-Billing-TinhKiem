--�置NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x029005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"H�m nay ta u�ng r��u m�i pha, g�i l� H�c Mi�u t�u, c�m gi�c r�t d� ch�u. C� ��i s� c� tr�nh � pha r��u th�t kh�ng ai s�nh n�i.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
