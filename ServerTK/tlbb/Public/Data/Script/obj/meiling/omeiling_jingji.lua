--÷��NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x033003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"� ��u c� �p b�c, � �� c� �u tranh. S�n Vi�t H� Ph�p ch�ng ta kh�ng th� gi�ng nh� t� ti�n, ch�u �p b�c c�a S�n Vi�t n� t� t� n�a! Cho d� �i n�y ch�ng ta th�t bո, th� con ch�u ch�ng ta c�ng ti�p t�c �u tranh �n c�ng!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
