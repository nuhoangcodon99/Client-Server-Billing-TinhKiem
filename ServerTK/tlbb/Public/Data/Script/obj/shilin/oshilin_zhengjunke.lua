--石林NPC
--郑君可
--普通

--**********************************
--事件交互入口
--**********************************
function x026005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta t阯 l� Trinh Qu鈔 Kh�, ch� va cha 皤u 疸 餴 xa r癷. C� c� ng鄖 n鄌 c鹡g kh骳. Th ra c� c� kh鬾g c kh骳, ch� v� cha r癷 s� c� 1 ng鄖 quay v�.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
