--÷��NPC
--�ʲ�
--��ͨ

--**********************************
--�¼��������
--**********************************
function x033004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Kinh C�c ��i h� ph�p n�i r�t ph�i, Mai L�nh m�i chuy�n l�n b� kh�ng c� g� n�m ngo�i t�nh to�n c�a ��i h� ph�p. Ch�ng ta c� l�m theo � c�a ��i h� ph�p, cho d� ch�t h�ng v�n l�n c�ng sung s߾ng h�n s�ng m� h� m� qu�ng.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
