--苏州NPC
--孙山
--一般

--**********************************
--事件交互入口
--**********************************
function x001023_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ha ha, ng叨i 鸩 cu痠 c鵱g l� T鬾 S絥, hi玭 lang c騨 鹧ng sau T鬾 S絥!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
