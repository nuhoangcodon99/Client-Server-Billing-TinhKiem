--南海NPC
--岳仲秋
--普通

--**********************************
--事件交互入口
--**********************************
function x034004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"L� ti瑄 t� Ng誧 ng� bang ng鄖 c鄋g h瞡 x唼c, so v緄 con trai c黙 b� L� ch苙g kh醕 g� tr秈 v緄 v馽.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
