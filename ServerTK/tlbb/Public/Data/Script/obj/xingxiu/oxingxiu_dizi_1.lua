--����NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x016030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  C� b�t k� v�n � g� ch�a r�, c� �n h�i Tri kh�ch s� c�a b�n ph�i  !!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
