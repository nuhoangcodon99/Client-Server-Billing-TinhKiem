-- 苏州
--城门
--问路脚本
x500022_g_scriptId = 500022

-- 问路类型 type: 1 为二级菜单, 2 为直接问路
x500022_g_Signpost = {
	{ type=2, name="Nam M鬾", x=182, y=238, tip="Nam M鬾", desc="Nam M鬾 n痠 li玭 T鈟 H�", eventId=-1 },
	{ type=2, name="T鈟 M鬾", x=78, y=163, tip="T鈟 M鬾", desc="恤ng M鬾 n痠 li玭 K韓h H�", eventId=-1 },
	{ type=2, name="B M鬾", x=183, y=67, tip="B M鬾", desc="B M鬾 n痠 li玭 Th醝 H�", eventId=-1 },
}

--**********************************
--列举事件
--**********************************
function x500022_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500022_g_Signpost do
		AddNumText(sceneId, x500022_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500022_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500022_g_Signpost[GetNumText()]

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
