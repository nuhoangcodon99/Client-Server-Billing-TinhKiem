-- 苏州
--循环任务
--问路脚本
x500028_g_scriptId = 500028

-- 问路类型 type: 1 为二级菜单, 2 为直接问路
x500028_g_Signpost = {
	{ type=2, name="姓i t鬾g s�", x=266, y=139, tip="聈 D� T�", desc="聈 D� T� (266, 139) c� th� gi鷓 ng呓i c叨ng h骯 trang b� v� gi醡 鸶nh t� ch trang b�. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
}

--**********************************
--列举事件
--**********************************
function x500028_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500028_g_Signpost do
		AddNumText(sceneId, x500028_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500028_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500028_g_Signpost[GetNumText()]

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
