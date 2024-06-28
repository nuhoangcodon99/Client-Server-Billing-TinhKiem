-- 大理
--购买物品
--问路脚本
x500042_g_scriptId = 500042

-- 问路类型 type: 1 为二级菜单, 2 为直接问路
x500042_g_Signpost = {
	{ type=2, name="Ti甿 binh kh�", x=216, y=133, tip="B� L呓ng ", desc="Ti甿 binh kh� � h呔ng B 疬秐g l緉 ph韆 恤ng. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Ph鴆 s裞 餴猰", x=238, y=171, tip="Ho鄋g C鬾g 姓o ", desc="Ph鴆 s裞 餴猰 � L� Nam 疬秐g l緉 ph韆 恤ng. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Ti甿 trang s裞", x=248, y=171, tip="Ti瑄 Thoa ", desc="Ti甿 trang s裞 � L� Nam 疬秐g l緉 ph韆 恤ng. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="C豠 h鄋g Tr鈔 Th�", x=265, y=128, tip="V鈔 Phi陁 Phi陁 ", desc="Ti甿 tr鈔 th� � L� B 疬秐g l緉 ph韆 恤ng, h呔ng 恤ng B c黙 D竎h tr誱. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Ti甿 thu痗", x=102, y=131, tip="L� Tam Th ", desc="Ti甿 thu痗 � L� B 疬秐g l緉 ph韆 T鈟. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="T豼 餴猰", x=110, y=159, tip="胁 T� 孝ng ", desc="T豼 餴猰 � L� Nam 疬秐g l緉 ph韆 T鈟, � 痼 c� th� mua 疬㧟 c醕 lo読 th馽 ph 瓞 h癷 ph鴆. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Ti甿 t誴 h骯", x=57, y=131, tip="Cao Th錸g T叨ng ", desc="Ti甿 t誴 h骯 � 疬秐g l緉 ph韆 T鈟, c課h ru祅g, 餴 v� h呔ng B. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
}

--**********************************
--列举事件
--**********************************
function x500042_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500042_g_Signpost do
		AddNumText(sceneId, x500042_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500042_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500042_g_Signpost[GetNumText()]

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
