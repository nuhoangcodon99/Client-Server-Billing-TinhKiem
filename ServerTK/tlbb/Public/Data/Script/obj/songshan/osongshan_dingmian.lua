--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x003005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"T� sau khi x�y ra chuy�n, tinh th�n c�ng t� nh� t�i v�n kh�ng ���c t�t, kh�ng r� c�ng t� �� nh�n th�y g�?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
