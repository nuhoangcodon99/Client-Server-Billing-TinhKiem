--����NPC
--���Ƴ�
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002012_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", l�u l�m kh�ng g�p, ho�ng th��ng �ang ��i c�c h� �y")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
