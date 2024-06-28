-- 苏州
--生活技能
--问路脚本
x500023_g_scriptId = 500023

-- 问路类型 type: 1 为二级菜单, 2 为直接问路
x500023_g_Signpost = {
		{ type=2, name="姓i s� tr皀g tr鱰", x=64, y=200, tip="L鈓 Ho� T竛h ", desc="Ra kh鰅 T� Ch鈛 恤ng M鬾 餴 v� h呔ng Nam, qua 1 c鈟 c nh� s� nh靚 th 姓i s� tr皀g tr鱰 L鈓 H騛 T竛h (64, 200) . 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
		{ type=2, name="姓i s� khai th醕 m�", x=259, y=132, tip="Tr呓ng Ti瑄 H� ", desc="姓i s� khai kho醤g Tr呓ng Ti瑄 H� (259, 132) trong ti甿 v� kh� � Th鄋h 恤ng. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
		{ type=2, name="姓i s� h醝 thu痗", x=106, y=109, tip="V呓ng Th Chi ", desc="姓i s� h醝 th鋙 d唼c V呓ng Th Chi (106, 109) � T鈟 Th�. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
		{ type=2, name="姓i s� c鈛 c�", x=238, y=77, tip="T叻ng B靚h ", desc="姓i s� c鈛 c� T叻ng B靚h (238, 77) � b猲 B 恤ng th鄋h. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
		{ type=2, name="姓i s� m� ngh�", x=109, y=130, tip="Tg Tam T飊h ", desc="姓i s� c鬾g ngh� Tg Tam T飊h (109, 130) � T鈟 Th�. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
		{ type=2, name="姓i s� may v�", x=211, y=90, tip="D� Ho� Long ", desc="姓i s� may m D� H骯 Long (211, 90) � g B Th�. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
		{ type=2, name="姓i s� luy畁 kim", x=251, y=151, tip="Ti猼 Ch鷆 ", desc="喧c ki猰 鹫i s� Ti猼 Ch鷆 (251, 151) � ti甿 v� kh� th鄋h 恤ng. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
		{ type=2, name="姓i s� n 錸", x=189, y=173, tip="Tr� Ho� ", desc="姓i s� n n呔ng Tr� Ho� (189, 173) � c豠 ti甿 thu痗 ph韆 B Tr課g Vi阯 Tr叨ng. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
		{ type=2, name="重購配方", x=96, y=127, tip="小高", desc="#G重購配方：#W因某種不可控原因造成玩家已學會的#G加工材料類配方、饅頭配方、初/中/高級食材類配方、咫尺天涯配方#W丟失，可以到#G蘇州#W的#G小高（96，127）#W購買重#G購配方#W，其出售價格#G統一為1銀#W。", eventId=-1 },
		{ type=2, name="材料加工介紹", x=-1, y=-1, tip="", desc="#{CLJG_20071204}", eventId=-1 },	
}

--**********************************
--列举事件
--**********************************
function x500023_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500023_g_Signpost do
		AddNumText(sceneId, x500023_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500023_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500023_g_Signpost[GetNumText()]

	if signpost.type == 1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. "：")
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
