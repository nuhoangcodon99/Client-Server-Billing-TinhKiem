-- 300052 
-- 大洗髓丹
-- 使用之后可以将所有的已分配点数变为潜能。


-- 脚本号
x300052_g_scriptId = 300052
x300052_g_ItemId = 30008004  -- 药水ID

--**********************************
-- 事件交互入口
--**********************************
function x300052_OnDefaultEvent( sceneId, selfId )

	-- 吃药洗点
	BeginEvent(sceneId)
		AddText(sceneId, "#Y姓i T T鼀 衋n")
		AddText(sceneId, " T韓h n錸g t誱 痼ng. Vui l騨g th� l読 sau")
		AddText(sceneId, " Function is temporary in closed. Please try again later")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	return 0;
	
	
end

--**********************************
-- 
--**********************************
function x300052_IsSkillLikeScript( sceneId, selfId)
	return 0
end
