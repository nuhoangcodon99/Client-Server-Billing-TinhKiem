--星宿NPC
--普通弟子
--普通

--**********************************
--事件交互入口
--**********************************
function x016030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  C� b k� v 皤 g� ch遖 r�, c� 皙n h鰅 Tri kh醕h s� c黙 b眓 ph醝  !!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
