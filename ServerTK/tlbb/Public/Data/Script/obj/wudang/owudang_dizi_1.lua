--�䵱NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x012030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Vi�n chuy�n nh� �, thanh t�nh v� vi, ��y ch�nh l� n�i V� �ang. N�u b�n c�n s� gi�p ��, m�i �n t�m Tri kh�ch ��o nh�n � g�n ��y � nh� gi�p ��")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
