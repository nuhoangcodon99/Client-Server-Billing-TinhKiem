--����NPC
--�����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000028_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  Ai n�i qu�c l� c�ng ti�n c�a Cao Ly Qu�c ch�ng ta b� m�t? N�i l�o, kh�ng h� c� chuy�n ��. "..PlayerName..PlayerSex..", n�u c�n nghe c� ng߶i n�i b�y, h�y d�t h�n v� ��y g�p ta, ta ph�i h�i xem con m�t n�o c�a h�n �� nh�n th�y qu�c l� b� m�t")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
