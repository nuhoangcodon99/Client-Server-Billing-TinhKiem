--÷��NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x033005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta th�y d�ng ph�n son c�a Th�m ti�n sinh c�ng �p l�m, th�m m�t ch�t m� h�ng c�ng �p. �, l�ng mi c�ng ph�i s�a m�t ch�t.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
