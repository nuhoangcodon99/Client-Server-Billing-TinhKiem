--����NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000097_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  Y�n t�m, "..PlayerName..PlayerSex..", ta nh�t �nh s� n� l�c tham gia cu�c thi")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
