-- 大理
--生活技能大师
--问路脚本
x500046_g_scriptId = 500046

-- 问路类型 type: 1 为二级菜单, 2 为直接问路
x500046_g_Signpost = {
	{ type=2, name="姓i s� tr皀g tr鱰", x=277, y=167, tip="C鬾g T鬾 姓i Th鷆 ", desc="Mu痭 h鱟 l鄊 ru祅g xin t緄 ru祅g c黙 C鬾g T鬾 姓i Th鷆 g 恤ng M鬾 N礽, 鬾g ta � 痼. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="姓i s� khai th醕 m�", x=214, y=117, tip="邪ng Ho� Kim ", desc="Mu痭 h鱟 khai kho醤g xin t靘 邪ng Ho� Kim, 鬾g � ph韆 sau ti甿 binh kh�,  TAB ch韓h l� ch� vi猼 ch� \"Thi猼\" tr阯 b鋘 鸢", eventId=-1 },
	{ type=2, name="姓i s� h醝 thu痗", x=99, y=133, tip="L遳 K� N� ", desc="姓i s� l鄊 thu痗 L遳 K� N� � ti甿 d唼c n tr阯 疬秐g l緉 ph韆 T鈟. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Ng� phu", x=103, y=157, tip="M鴆 T� L錸g ", desc="Ng� phu M鴆 T� L錸g � h呔ng Nam 疬秐g l緉 ph韆 T鈟, c課h t豼 餴猰. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="姓i s� m� ngh�", x=207, y=195, tip="L� Minh Nguy畉 ", desc="姓i s� c鬾g ngh� L� Minh Nguy畉 � ph韆 sau Th呓ng Ph� . 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="姓i s� may v�", x=240, y=171, tip="Ho鄋g L錸g Ba ", desc="姓i s� may v� Ho鄋g L錸g Ba � h呔ng Nam 疬秐g l緉 ph韆 恤ng. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="姓i s� luy畁 kim", x=216, y=109, tip="Qu� Tam Chu� ", desc="姓i s� l� r鑞 Qu� Tam Ch鵼 � ph韆 sau ti甿 binh kh�. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="姓i s� n 錸", x=117, y=157, tip="胁 T� Phi ", desc="姓i s� n n呔ng 胁 T� Phi � h呔ng Nam 疬秐g l緉 ph韆 T鈟. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="姓i s� ch� du㧟", x=99, y=128, tip="Ph� 羞絥g Quy ", desc="姓i s� ch� d唼c Ph� 羞絥g Quy � h呔ng B 疬秐g l緉 ph韆 T鈟. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="重購配方", x=141, y=133, tip="小高", desc="#G重購配方：#W因某種不可控原因造成玩家已學會的#G加工材料類配方、饅頭配方、初/中/高級食材類配方、咫尺天涯配方#W丟失，可以到#G蘇州#W的#G小高（96，127）#W購買重#G購配方#W，其出售價格#G統一為1銀#W。", eventId=-1 },
	{ type=2, name="材料加工介紹", x=-1, y=-1, tip="", desc="#{CLJG_20071204}", eventId=-1 },	
}

--**********************************
--列举事件
--**********************************
function x500046_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500046_g_Signpost do
		AddNumText(sceneId, x500046_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500046_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500046_g_Signpost[GetNumText()]

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
