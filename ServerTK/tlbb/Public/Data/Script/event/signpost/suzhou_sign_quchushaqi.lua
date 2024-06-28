-- 苏州
--循环任务
--问路脚本
x500029_g_scriptId = 500029

-- 问路类型 type: 1 为二级菜单, 2 为直接问路
x500029_g_Signpost = {
	{ type=2, name="T緄 tr� s醫 kh�", x=201, y=82, tip="Tuy猼 Tr鷆 Li阯 ", desc="Tuy猼 Tr鷆 Li阯 (201, 82) � g B M鬾. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
}

--**********************************
--列举事件
--**********************************
function x500029_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500029_g_Signpost do
		AddNumText(sceneId, x500029_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500029_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500029_g_Signpost[GetNumText()]

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
