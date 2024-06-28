-- 苏州
--循环任务
--问路脚本
x500026_g_scriptId = 500026

-- 问路类型 type: 1 为二级菜单, 2 为直接问路
x500026_g_Signpost = {
	{ type=2, name="L� Th譨 Phong ", x=111, y=160, tip="L� Th譨 Phong ", desc="詎g ch� D竎h tr誱 L� Th譨 Phong (111, 160) � tr阯 疬秐g h呔ng 恤ng Nam M鬾 T鈟 Th�. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
}

--**********************************
--列举事件
--**********************************
function x500026_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500026_g_Signpost do
		AddNumText(sceneId, x500026_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500026_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500026_g_Signpost[GetNumText()]

	if signpost.type == 1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			CallScriptFunction( signpost.eventId, "OnEnumerate", sceneId, selfId, targetId )
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	elseif signpost.type == 2 then
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, signpost.x, signpost.y, signpost.tip )

		BeginEvent(sceneId)
			AddText(sceneId, signpost.desc)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	end

end
