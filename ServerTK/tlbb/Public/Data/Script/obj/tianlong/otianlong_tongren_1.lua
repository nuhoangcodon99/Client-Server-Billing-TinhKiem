--大理NPC
--天仙妹妹
--普通

--**********************************
--事件交互入口
--**********************************
function x714006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Y猽 huy畉 c黙 th� th醝 d呓ng ph� kinh bao g癿: trung ph�, v鈔 m鬾, thi阯 ph�, hi畃 b醕h, x韈h tr誧h, kh眓g t痠, li畉 khuy猼, kinh c�, th醝 uy阯, ng� t�, thi猽 th呓ng")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
