--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002052_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  V߽ng Phi h�ng ng�y �n kh�ng ngon, ng� kh�ng y�n. N�u c� ti�p t�c nh� v�y s� �nh h߷ng �n long th�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
