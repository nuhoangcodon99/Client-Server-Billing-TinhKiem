--洛阳NPC
--书僮
--普通

--**********************************
--事件交互入口
--**********************************
function x000036_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Sau khi l鉶 gia ho鄋 th鄋h <<T� tr� th鬾g gi醡>>, s裞 kh鰁 疸 r suy nh唼c, l読 th叨ng xuy阯 b r祅 vi甤 n呔c, th khi猲 m鱥 ng叨i lo lg")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
