-- 大理
--门派传送人
--问路脚本
x500041_g_scriptId = 500041

-- 问路类型 type: 1 为二级菜单, 2 为直接问路
x500041_g_Signpost = {
	{ type=2, name="Thi猽 L鈓", x=187, y=122, tip="Tu� D竎h ", desc="T錸g Tu� D竎h [187,122], ng叨i d鏽 疬秐g ph醝 Thi猽 L鈓, � g骳 恤ng B Ng� Hoa 朽n trung t鈓 姓i L�,  ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="姓i L�", x=189, y=124, tip="Ph� Tham ", desc="T錸g Ph� Tham [189, 124], ng叨i d鏽 疬秐g ph醝 Thi阯 Long, � g骳 恤ng B Ng� Hoa 朽n trung t鈓 姓i L�,  ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Ti陁 Dao", x=188, y=133, tip="朽m 朽i T� V� ", desc="朽m 朽i T� V� [188, 133], ng叨i d鏽 疬秐g ph醝 Ti陁 Dao, � g骳 恤ng B Ng� Hoa 朽n trung t鈓 姓i L�,  ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Nga My", x=192, y=129, tip="L� Tam N呓ng ", desc="C� C� L� Tam N呓ng [192, 129], ng叨i d鏽 疬秐g ph醝 Nga My, � g骳 恤ng B Ng� Hoa 朽n trung t鈓 姓i L�,  ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Thi阯 S絥", x=131, y=124, tip="Tr靚h Thanh S呓ng ", desc="Tr靚h Thanh S呓ng [131,124], ng叨i d鏽 疬秐g ph醝 Thi阯 S絥, � g骳 T鈟 B Ng� Hoa 朽n trung t鈓 姓i L�, c醕h Nhi猵 Ch韓h-ng叨i gi緄 thi畊 b醝 s� kh鬾g xa. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Tinh T鷆", x=134, y=120, tip="H鋓 Phong T� ", desc="挟 t� H鋓 Phong T� [131, 124], ng叨i d鏽 疬秐g ph醝 Tinh T鷆, � g骳 T鈟 B Ng� Hoa 朽n trung t鈓 姓i L�, c醕h Nhi猵 Ch韓h-ng叨i gi緄 thi畊 b醝 s� kh鬾g xa. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Minh Gi醥", x=130, y=121, tip="Th誧h B鋙 ", desc="S� Th誧h B鋙 [131, 124], ng叨i d鏽 疬秐g ph醝 Minh Gi醥, � g骳 T鈟 B Ng� Hoa 朽n trung t鈓 姓i L�, c醕h Nhi猵 Ch韓h-ng叨i gi緄 thi畊 b醝 s� kh鬾g xa. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="V� 衋ng", x=127, y=131, tip="Tr呓ng Ho誧h ", desc="Tr呓ng Ho誧h 鹫o tr叻ng [131,124], ng叨i d鏽 疬秐g ph醝 V� 衋ng, � g骳 T鈟 B Ng� Hoa 朽n trung t鈓 姓i L�, c醕h Nhi猵 Ch韓h-ng叨i gi緄 thi畊 b醝 s� kh鬾g xa. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="C醝 Bang", x=126, y=135, tip="Gi鋘 Ninh ", desc="Tr叻ng l鉶 Gi鋘 Ninh [131, 124], ng叨i d鏽 疬秐g ph醝 C醝 Bang, � g骳 T鈟 B Ng� Hoa 朽n trung t鈓 姓i L�, c醕h Nhi猵 Ch韓h-ng叨i gi緄 thi畊 b醝 s� kh鬾g xa. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
}

--**********************************
--列举事件
--**********************************
function x500041_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500041_g_Signpost do
		AddNumText(sceneId, x500041_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500041_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500041_g_Signpost[GetNumText()]

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
