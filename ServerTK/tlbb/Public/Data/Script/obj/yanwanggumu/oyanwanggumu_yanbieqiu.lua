--NPC
--
--普通

--**********************************
--事件交互入口
--**********************************
function x040001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC对话
--**********************************
		AddText(sceneId,"C� 鸲i l鄊 vi甤 cho Ho鄋g 歇, 皙n ch猼 c鹡g ch� n d呔i m祎 t 黏t...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
