--�䵱NPC
--�ź�֥
--��ͨ

--**********************************
--�¼��������
--**********************************
function x012005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Nh�n b� d�ng c�a ng߽i, h�nh nh� kh�ng ���c vui v� cho l�m. C� c�n ta c�ng �i ch�i v�i ng߽i hay kh�ng?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
