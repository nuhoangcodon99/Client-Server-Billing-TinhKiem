--����NPC
--֣����
--һ��

--**********************************
--�¼��������
--**********************************
function x001048_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	  local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " c� n߽ng "
		else
			PlayerSex = " c�c h�"
		end
		AddText(sceneId,"  "..PlayerName..PlayerSex..", c� ph�i l� �nh so b�, h�c h�i v� ngh�? V�y xin m�i l�n v� ��i")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
