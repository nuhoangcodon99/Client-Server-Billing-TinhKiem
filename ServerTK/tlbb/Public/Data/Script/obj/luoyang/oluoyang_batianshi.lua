--����NPC
--����ʯ
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000019_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  Kh�o th�t "..PlayerName..PlayerSex..", th� n�o l�i g�p nhau � ��y. ��i L� m�i l�n tham gia cu�c thi t�c c�u, �u ch� l� ph� Th�i t� ��c s�ch m� th�i")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
