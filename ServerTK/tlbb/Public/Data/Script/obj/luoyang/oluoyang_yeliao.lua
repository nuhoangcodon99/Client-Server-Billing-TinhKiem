--����NPC
--ҵ��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000096_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", Nh�n M�n Quan �ang ��nh nhau ph�i kh�ng? Sao m� nhi�u d�n ch�y n�n th�?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
