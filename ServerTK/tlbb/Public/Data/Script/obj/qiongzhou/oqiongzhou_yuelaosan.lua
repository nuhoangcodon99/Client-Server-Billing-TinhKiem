--����NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x035004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"G�n ��y Nh�c L�o Nh� ta c� b�i m�t v� s� ph� m�i � ��i L�, b�n l�nh kh�ng h� b�nh th߶ng. Kh�ng n�i ��u kh�c, ch� m�t tuy�t k� \"L�ng Ba Vi B�\" c�a s� ph� th�i, ch�c th� gian n�y kh�ng c� k� th� 2. #r#rL�n n�y v� Qu�nh Ch�u, ch� y�u l� �n ��n phu nh�n ta.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
