--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x021006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"��i Li�u ta t�p trung r�t nhi�u l�c l��ng tinh nhu�, t�ng th�m �p l�c � Nh�n M�n Quan; Li�u T�y ch� c�n nh�ng b�n gi� y�u nh� b�n ta, �ng ph� v�i b�n m� ph� nh� th�n long �n hi�n th�y �u ch�ng th�y �u�i.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
