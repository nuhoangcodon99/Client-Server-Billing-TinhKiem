--����NPC
--��ʦʦ
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000027_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Hoa bi�t l�m sao ��nh r�i r�ng, y�n ng� t�ng quen li�ng c�nh v�. M�t m�nh b�i h�i l�i th�m v߶n nh�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
