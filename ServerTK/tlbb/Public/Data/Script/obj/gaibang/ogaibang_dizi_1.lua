--ؤ��NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x010030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  N�i ��y l� t�ng �� c�a C�i Bang. N�u ng߽i c�n gi�p ��, h�y �n ch� g�n c�ng vi�n t�m Tri Kh�ch C�i gi�p cho")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
