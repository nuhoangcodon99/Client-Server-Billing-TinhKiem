-- 苏州
--循环任务
--问路脚本
x500025_g_scriptId = 500025

-- 问路类型 type: 1 为二级菜单, 2 为直接问路
x500025_g_Signpost = {
	{ type=2, name="Ph叨ng ch� Tr鵱g 衖瑄 ph叨ng", x=87, y=142, tip="V鈔 Phi Phi ", desc="Ph叨ng ch� tr鵱g 餴瑄 V鈔 Phi Phi (87, 142) � Tr鵱g 餴瑄 ph叨ng h呔ng B 疬秐g l緉 ph韆 T鈟. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
}

--**********************************
--列举事件
--**********************************
function x500025_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500025_g_Signpost do
		AddNumText(sceneId, x500025_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500025_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500025_g_Signpost[GetNumText()]

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
