--苏州NPC
--王珪
--一般

--**********************************
--事件交互入口
--**********************************
function x001008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  S� 鹫i nh鈔, t� l� pha ch� l n鄖 kh鬾g sai ch�?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
