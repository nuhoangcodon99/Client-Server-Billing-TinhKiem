--����NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002011_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  Mu�n luy�n v� c�ng t�t, tr� th�nh h� v� ho�ng gia nh� ch�ng ta kh�ng? "..PlayerName..PlayerSex..", ng߽i c� th� b�i m�t trong c�u ��i m�n ph�i, Ng� Hoa ��n c� ng߶i ch� d�n c�a c�u ��i m�n ph�i, ng߽i h�y t�i c�c ��i m�n ph�i xem, kh�ng ch�ng c� thu ho�ch b�t ng�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
