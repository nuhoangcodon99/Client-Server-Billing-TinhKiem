-- 苏州
--购买物品
--问路脚本
x500021_g_scriptId = 500021

-- 问路类型 type: 1 为二级菜单, 2 为直接问路
x500021_g_Signpost = {
	{ type=2, name="Ph鴆 s裞 餴猰", x=217, y=88, tip="T� Qu� Cao ", desc="詎g ch� ph鴆 s裞 餴猰 T� Qu� Cao (217, 88) � g B Th�. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Ti甿 trang s裞", x=217, y=81, tip="T� V� Song ", desc="B� ch� ti甿 trang s裞 T� V� Song (217, 81) � g B Th�. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="C豠 h鄋g Tr鈔 Th�", x=87, y=142, tip="V鈔 Phi Phi ", desc="Ph叨ng ch� tr鵱g 餴瑄 V鈔 Phi Phi (87, 142) � Tr鵱g 餴瑄 ph叨ng h呔ng B 疬秐g l緉 ph韆 T鈟. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Ti甿 thu痗", x=99, y=155, tip="H� Ph皀 ", desc="詎g ch� ti甿 thu痗 H� Ph皀 (99, 155) � Nam M鬾 T鈟 th�. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="T豼 餴猰", x=190, y=168, tip="Bao Th� Vinh ", desc="詎g ch� t豼 餴猰 Bao Th� Vinh (190, 168) � c豠 t豼 餴猰 ph韆 Nam Tr課g Nguy阯 tr叨ng. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Ti甿 t誴 h骯", x=128, y=173, tip="T鬾 T� V� ", desc="詎g ch� ti甿 t誴 h骯 T鬾 T� V� (128, 173) � h呔ng Nam 疬秐g Ph鴑g Ki玼. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="B鋙 Th誧h th呓ng nh鈔", x=110, y=133, tip="Ph誱 姓i Th鄋h ", desc="Th呓ng nh鈔 B鋙 Th誧h Ph誱 姓i Th鄋h (110, 133) � 疬秐g l緉 ph韆 恤ng T鈟 Th�. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
}

--**********************************
--列举事件
--**********************************
function x500021_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500021_g_Signpost do
		AddNumText(sceneId, x500021_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500021_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500021_g_Signpost[GetNumText()]

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
