--����NPC
--����ͥ
--��������

--**********************************
--�¼��������
--**********************************
function x000053_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Hi�n t�i th߽ng h�i thi�u h�ng, c�c h� ��i v�i ng�y n�a h�ng t�i")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
