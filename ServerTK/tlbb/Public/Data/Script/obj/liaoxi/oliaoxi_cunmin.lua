--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x021005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ch�ng t�i hi�n t�i b� m� ph� t�n c�ng, ch� y�u l� v� ng߶i M�ng C� qu� �t, l�i kh�ng bi�t �o�n k�t. Nh�t �nh s� c� ng�y m�t v� Khan v� ��i s� l�nh ��o d�n M�ng C� �i t�i chi�n th�ng.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
