--����NPC
--��������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x004008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Kh�ng bi�t ch�ng ta c�n ch� g� n�a? Mau k�t th�c vi�c � ��y, �i ra Ng�c M�n Quan chi vi�n cho D߽ng T߾ng qu�n.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
