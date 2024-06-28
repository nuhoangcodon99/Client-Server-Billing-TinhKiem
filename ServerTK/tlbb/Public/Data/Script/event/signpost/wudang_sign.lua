--武当
--问路脚本
x500064_g_scriptId = 500064

-- 问路类型 type: 1 为二级菜单, 2 为直接问路
x500064_g_Signpost = {
	{ type=2, name="B醝 ki猲 ch叻ng m鬾", x=77, y=85, tip="Ch叻ng m鬾", desc="Ch叻ng m鬾 � trong T� Ti陁 姓i 衖畁, ng呓i mu痭 t緄 b醝 ki猲 鬾g?  ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Gia nh V� 衋ng", x=77, y=85, tip="Tr呓ng Huy玭 T� ", desc="Ch叻ng m鬾 � T� Ti陁 姓i 衖畁, N猽 mu痭 gia nh ph醝 ta th� t緄 � 痼. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="H鱟 k� n錸g chi猲 黏u ph醝 V� 衋ng", x=82, y=84, tip="H鱟 k� n錸g chi猲 黏u ph醝 V� 衋ng", desc="Du Vi璶 S絥 � T� Ti陁 姓i 衖畁 c� th� d誽 ng呓i k� n錸g c黙 ph醝 V� 衋ng. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="H鱟 k� n錸g cu礳 s痭g ph醝 V� 衋ng", x=44, y=56, tip="H鱟 k� n錸g cu礳 s痭g ph醝 V� 衋ng", desc="H誧 V鈔 鹫o nh鈔 c� th� d誽 ng呓i luy畁 餫n, qua Thi阯 ki玼 c� th� t靘 疬㧟 鬾g. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="H鱟 V� 衋ng k� n錸g h� tr�", x=41, y=58, tip="H鱟 V� 衋ng k� n錸g h� tr�", desc="Ninh H� T鋘 nh鈔 c� th� d誽 ng呓i 姓o Ph醦, qua Thi阯 ki玼 c� th� t靘 疬㧟 鬾g. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="H鱟 k� n錸g c咿i th� ph醝 V� 衋ng", x=102, y=112, tip="H鱟 k� n錸g c咿i th�", desc="Tr呓ng Qu鈔 Phu � Nham Ngh頰 衖畁 s� d誽 ng呓i b鋘 l頽h c咿i 餴陁. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Mua v c咿i", x=101, y=115, tip="Mua v c咿i", desc="Ng呓i c� th� 皙n Tr呓ng Qu鈔 M� mua th� c咿i Ti阯 衖陁, 鬾g � Nham Ngh頰 衖畁. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Nhi甿 v� V� 衋ng", x=78, y=92, tip="Nhi甿 v� V� 衋ng", desc="N猽 ng呓i mu痭 l鄊 ch鷗 g� cho b眓 ph醝, h銀 t緄 tr呔c 鹫i 餴畁 T� Ti陁 t靘 Tr呓ng Trung H鄋h. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Ng叨i chuy阯 ch� c黙 ph醝 V� 衋ng", x=101, y=136, tip="Ng叨i chuy阯 ch� c黙 ph醝 V� 衋ng", desc="M誧 Th醝 Xung c黙 Ki猰 H� Ki玼 B c� th� d鏽 ng呓i t緄 L誧 D呓ng, 姓i L�, T� Ch鈛 ho c醕 m鬾 ph醝 kh醕. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Linh T韓h Phong", x=58, y=73, tip="Linh T韓h Phong", desc="姓i s� huynh L鈓 Linh T� qu鋘 l� vi甤 ra v鄌 Linh T韓h Phong, 鬾g � gi鎍 Thi阯 gi� v� 鹫i 餴畁 T� Ti陁. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="H鱟 khinh c鬾g ph醝 V� 衋ng", x=65, y=109, tip="Ng叨i d誽 khinh c鬾g V� 衋ng", desc="T竛h S� T鋘 Nh鈔 c黙 Tam Thanh 衖畁 c� th� giao cho ng呓i khinh c鬾g b眓 ph醝. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
}

--**********************************
--列举事件
--**********************************
function x500064_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500064_g_Signpost do
		AddNumText(sceneId, x500064_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500064_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500064_g_Signpost[GetNumText()]

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
