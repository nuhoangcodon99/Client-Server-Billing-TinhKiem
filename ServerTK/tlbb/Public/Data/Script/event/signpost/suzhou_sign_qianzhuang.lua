-- 苏州
--循环任务
--问路脚本
x500027_g_scriptId = 500027

-- 问路类型 type: 1 为二级菜单, 2 为直接问路
x500027_g_Signpost = {
	{ type=2, name="V鈔 Th� Ti玭 Trang l鉶 b鋘", x=93, y=177, tip="V呓ng phu nh鈔 ", desc="B� ch� ti玭 trang V呓ng Phu nh鈔 (93, 177) � ti玭 trang h呔ng nam 疬秐g l緉 ph韆 T鈟, n� b礳 c黙 b� c� th� gi鷓 ng呓i c gi� v ph v� ng鈔 l唼ng. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
}

--**********************************
--列举事件
--**********************************
function x500027_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500027_g_Signpost do
		AddNumText(sceneId, x500027_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500027_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500027_g_Signpost[GetNumText()]

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
