--����NPC
--��ʦ
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000073_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", c� g� c�n ti�u c�c ch�ng t�i v�n chuy�n kh�ng? ��m b�o c�c h� v� c�ng y�n t�m")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
