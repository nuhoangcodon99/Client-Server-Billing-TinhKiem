--苏州NPC
--郑天寿
--一般

--**********************************
--事件交互入口
--**********************************
function x001048_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	  local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " c� n呓ng "
		else
			PlayerSex = " c醕 h�"
		end
		AddText(sceneId,"  "..PlayerName..PlayerSex..", c� ph鋓 l� 鸶nh so b�, h鱟 h鰅 v� ngh�? V xin m秈 l阯 v� 疣i")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
