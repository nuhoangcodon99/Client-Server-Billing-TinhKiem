--����NPC
--С��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x015004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ch߷ng m�n t� t� sau khi t� T� Ch�u v�, m�y ng�y li�n kh�ng thi�t �n u�ng, h�nh nh� c� nhi�u chuy�n t�m t�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
