--÷��NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x033001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Kh�ng ng� chuy�n h�ng ph�n son n�y b�n nhanh th�, xem ra l�n n�y ��n ��y r�t ��ng. �i qua th�o nguy�n, Lan L�ng qu�n ch�a c�n khen ng�i h�ng c�a ta, ta ph�i t�nh to�n k� xem chuy�n n�y ki�m bao nhi�u l�i...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
