--����NPC
--Уξ
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000091_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  V߽ng ph� nghi�m m�t, kh�ng ���c �i l�i t�y ti�n!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
