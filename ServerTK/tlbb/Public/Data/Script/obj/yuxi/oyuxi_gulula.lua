--��ϪNPC
--��³��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x027002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"L�o gi� �� t� tr߾c t�i nay kh�ng bao gi� quan t�m �n v� con, m�t l�ng ch� ngh� �n con m� La B�c ��. #r#r, �i, nh� l�i h�i x�a ��n �ng theo �u�i ta �u�i �i kh�ng h�t, sao ta l�i ch�n m�t l�o gi� nh� v�y ch�!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
