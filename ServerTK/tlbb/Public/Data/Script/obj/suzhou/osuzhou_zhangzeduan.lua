--����NPC
--�����
--һ��

--**********************************
--�¼��������
--**********************************
function x001011_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  M�y ng�y n�a l� t�i ti�t thanh minh r�i. B�n T� Ch�u l�c �� nh�t �nh ��ng vui l�m. N�u c� th� �em c�nh v�t �p � c�a T� Ch�u v�o trong tranh v� th� hay bi�t m�y")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
