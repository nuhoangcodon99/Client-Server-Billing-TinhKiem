--����NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000046_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  L�c D߽ng c� hoa M�u нn qu� th�t danh b�t h� truy�n, s�nh ngang Hoa S�n Tr� c�a Cao Ly ta. Nghe n�i th�nh T� Ch�u c�a tri�u T�ng r�t t߽i �p,"..PlayerName..PlayerSex..", �� t�ng �n �� ch�a?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
