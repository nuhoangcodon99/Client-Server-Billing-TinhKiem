--����ľNPC
--����
--**********************************
--�¼��������
--**********************************
function x044507_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC�Ի�
--**********************************
		AddText(sceneId,"Th�nh th� L�u Lan c� v�i vi�n ng�c trai trong xa m�c, nh�ng ng�y ng�y c�t t�ng d�n v�i l�m kh�ng bi�t n�i n�o...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
