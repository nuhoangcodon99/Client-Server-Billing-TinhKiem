--��ϪNPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x027007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"B� C� L� L�p ��ng l� th�n y, d�ng thu�c c�a b� �y, b�nh g� c�ng kh�i...tuy lu�n c� nh�ng t�c d�ng ph� k� l�.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
