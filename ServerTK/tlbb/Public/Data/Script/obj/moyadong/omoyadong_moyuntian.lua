--NPC
--
--��ͨ

--**********************************
--�¼��������
--**********************************
function x018112_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC�Ի�
--**********************************
		AddText(sceneId,"N�y Ma Nhai еng ch�nh l� n�i T�n gia tr�i ph� t� t�p, n�u c�ng l�c kh�ng ��, t�t nh�t t�m v�i �ng b�n ti�n v�o c� v� an to�n.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
