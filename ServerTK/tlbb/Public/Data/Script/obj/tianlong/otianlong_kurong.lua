--天龙NPC
--枯荣
--普通

--**********************************
--事件交互入口
--**********************************
function x013000_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  A Di 朽 Ph! H鎢 th叨ng v� th叨ng, song th� kh� dung, Nam B 恤ng T鈟, phi gi� phi kh鬾g!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
