--����NPC
--Ѿ��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x005002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Khi �o�n l�o gia ch�a t�i, ti�u th� ng�y n�o c�ng kh�c, khuy�n th� n�o c�ng ch�ng ���c. Nh�ng �o�n l�o gia v�a �n ti�u th� �� vui v� ngay r�i.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
