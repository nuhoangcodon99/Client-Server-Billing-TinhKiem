--大理NPC
--丁缅
--普通

--**********************************
--事件交互入口
--**********************************
function x003005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"T� sau khi x鋣 ra chuy畁, tinh th c鬾g t� nh� t鬷 v鏽 kh鬾g 疬㧟 t痶, kh鬾g r� c鬾g t� 疸 nh靚 th g�?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
