-- 苏州问路脚本
x500020_g_scriptId = 500020

-- 问路类型 type: 1 为二级菜单, 2 为直接问路
x500020_g_Signpost = {
		{ type=1, name="L鄊 sao gia nh m鬾 ph醝?", eventId=500049, x=0, y=0, tip=" ", desc=" " },
		{ type=2, name="Nh kinh nghi甿 nh鈔 痿i?", x=164, y=80, tip="Th Tr靚h", desc="Ng呓i c� th� � ch� Th Tr靚h (164, 80) l鉵h g 痿i kinh nghi甿, 鬾g � g B M鬾 T� Ch鈛. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
		{ type=1, name="Mua c醕 lo読 v ph", eventId=500021, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Ta mu痭 r鑞 luy畁 b鋘 l頽h", eventId=500022, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="H鱟 k� n錸g s痭g m鬾 ph醝", eventId=500023, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Nhi甿 v� v� ph� b鋘", eventId=500024, x=0, y=0, tip=" ", desc=" " },
			{ type=1, name="Th�", eventId=500025, x=0, y=0, tip=" ", desc=" " },
			{ type=1, name="D竎h tr誱", eventId=500026, x=0, y=0, tip=" ", desc=" " },
			{ type=1, name="Ti玭 trang", eventId=500027, x=0, y=0, tip=" ", desc=" " },
			{ type=1, name="Trang b� c叨ng h骯 v� gi醡 鸶nh", eventId=500028, x=0, y=0, tip=" ", desc=" " },
			{ type=1, name="T緄 tr� s醫 kh�", eventId=500029, x=0, y=0, tip=" ", desc=" " },
}
--{ type=2, name="东升客栈", x=100.7, y=124.2, tip="苏州东升客栈", desc="苏州最大的客栈之一，三教九流聚集之地。" },

--**********************************
--列举事件
--**********************************
function x500020_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500020_g_Signpost do
		AddNumText(sceneId, x500020_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500020_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500020_g_Signpost[GetNumText()]

	if GetNumText()==1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			AddText(sceneId, "Xin t緄 m鱥 d竎h tr誱 c黙 c醕 th鄋h th� ( Tab c� th� m� b鋘 鸢 ra tra t靘 k� hi畊 ch� #GD竎h#W) chuy琻 t緄 m鬾 ph醝 m� c醕 h� mu痭 b醝 s�. Sau khi t緄 m鬾 ph醝 h銀  v鄌 #GNg叨i d鏽 疬秐g cho m鬾 ph醝 #W l� c� th� h鰅 疬㧟 v� tr� b醝 s�. Ho  ph韒 TAB m� b鋘 鸢 t靘 k� hi畊 ch� #GS� #W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 111, 160, "L� Th譨 Phong " )
		return
	end

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
