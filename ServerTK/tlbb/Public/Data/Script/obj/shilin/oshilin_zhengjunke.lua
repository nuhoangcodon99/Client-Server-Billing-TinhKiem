--ʯ��NPC
--֣����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x026005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta t�n l� Trinh Qu�n Kh�, ch� va cha �u �� �i xa r�i. C� c� ng�y n�o c�ng kh�c. Th�t ra c� c� kh�ng c�n kh�c, ch� v� cha r�i s� c� 1 ng�y quay v�.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
