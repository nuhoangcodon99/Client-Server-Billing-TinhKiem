--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x018007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"H� �u l� ch�ng sinh c�a ��i T�ng, �u sinh s�ng � Nh�n M�n Quan �� m�y �i r�i, �t v�ng �t b�c c�ng kh�ng b�ng �t nh� m�nh. H� s� kh�ng b� �i.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
