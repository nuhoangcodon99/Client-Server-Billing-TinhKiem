--NPC
--
--��ͨ

--**********************************
--�¼��������
--**********************************
function x040001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC�Ի�
--**********************************
		AddText(sceneId,"C� �i l�m vi�c cho Ho�ng Ъ, �n ch�t c�ng ch� n�m d߾i m�t t�t �t...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
