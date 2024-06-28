-- 苏州
--循环任务
--问路脚本
x500024_g_scriptId = 500024

-- 问路类型 type: 1 为二级菜单, 2 为直接问路
x500024_g_Signpost = {
	{ type=2, name="T� Ch鈛 T鄌 v s�", x=234, y=78, tip="L鴆 S� Tranh", desc="T� Ch鈛 T鄌 v S� L鴆 S� Tranh (234, 78) � b阯 c課h b猲 ph韆 恤ng B th鄋h T� Ch鈛. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Thu� lao", x=243, y=215, tip="H� Di阯 B醥 ", desc="H� Di阯 B醥 (243, 215) � tr呔c ph� nha Th鄋h 恤ng Nam, t靘 t緄 鬾g c� th� Nh nhi甿 v� b靚h ph鋘 lo課 thu� tr読. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Nhi甿 v� tr� hung", x=127, y=133, tip="Ng� Gi緄 ", desc="T眓g b� 馥u T� Ch鈛 V呓ng Gi緄 [127,133] � 疬秐g Ph鴑g Ki玼, 鬾g 餫ng t靘 ng叨i gi鷓 鬾g tr譶g tr� hung 鸢, c� kh� n錸g l 疬㧟 b鋘 鸢 B鋙 Th誧h. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="V醤 c�", x=174, y=147, tip="Tr呓ng D竎h Qu痗", desc="K� cu礳 ho誸 鸬ng s� Tr呓ng D竎h Qu痗 [174,147] � Tr課g Nguy阯 Tr叨ng. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Hoa S絥 lu ki猰", x=194, y=139, tip="T� Ki猰 L頽h ", desc="Lu ki猰 s� Hoa S絥 T� Ki猰 L頽h (194, 139) � Tr課g Nguy阯 Tr叨ng. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Li阯 ho鄋 ph� b鋘", x=62, y=162, tip="Ti玭 H皀g V� ", desc="Hi畊 鷜 T� Ch鈛 Ti玭 H皀g V� (62, 162) � ngo鄆 恤ng M鬾 th鄋h T� Ch鈛, c� th� t靘 鬾g l鉵h nhi甿 v� ph� b鋘 li阯 ho鄋. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
}

--**********************************
--列举事件
--**********************************
function x500024_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500024_g_Signpost do
		AddNumText(sceneId, x500024_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500024_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500024_g_Signpost[GetNumText()]

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
