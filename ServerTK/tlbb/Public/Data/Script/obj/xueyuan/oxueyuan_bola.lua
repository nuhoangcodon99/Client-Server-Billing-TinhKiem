--NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x021201_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC�Ի�
--**********************************
		AddText(sceneId,"Ng�n Nhai Tuy�t Nguy�n n�i n�i nguy c� th�t m�nh, � trong n�y ho�t �ng n�n c�n th�n.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
