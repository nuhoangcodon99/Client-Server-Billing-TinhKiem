--����NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000044_OnDefaultEvent( sceneId, selfId,targetId )
local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  H� h�, �� kh�ng ph�i l� "..PlayerName..PlayerSex.."#{OBJ_luoyang_0015}")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
