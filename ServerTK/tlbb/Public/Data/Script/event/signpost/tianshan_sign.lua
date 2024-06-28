--天山
--问路脚本
x500068_g_scriptId = 500068

-- 问路类型 type: 1 为二级菜单, 2 为直接问路
x500068_g_Signpost = {
	{ type=2, name="B醝 ki猲 ch叻ng m鬾", x=91, y=44, tip="Ch叻ng m鬾", desc="Ch叻ng m鬾 餴 vg, Mai ki猰 t誱 thay th� nh鎛g s� v� trong ng鄖. C� � Linh Th製 Cung. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Gia nh ph醝 Thi阯 S絥", x=91, y=44, tip="Mai Ki猰 ", desc="Ch叻ng m鬾 餴 vg, Mai ki猰 t誱 thay th� nh鎛g s� v� trong ng鄖, mu痭 v鄌 ph醝 Thi阯 S絥 ph鋓 餴 t靘 C� ta. C� � Linh Th製 Cung. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="H鱟 ph醝 Thi阯 S絥 k� n錸g chi猲 黏u", x=88, y=44, tip="H鱟 ph醝 Thi阯 S絥 k� n錸g chi猲 黏u", desc="Lan Ki猰 � Linh Th製 Cung c� th� d誽 ng呓i v� c鬾g b眓 ph醝. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="H鱟 ph醝 Thi阯 S絥 k� n錸g cu礳 s痭g ph醝", x=119, y=67, tip="H鱟 ph醝 Thi阯 S絥 k� n錸g cu礳 s痭g ph醝", desc="D� B� � ph韆 B To醝 B錸g H� s� d誽 甬 t� Huy玭 b錸g thu c黙 b眓 bang. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="H鱟 ph醝 Thi阯 S絥 k� n錸g h� tr�", x=123, y=67, tip="H鱟 ph醝 Thi阯 S絥 k� n錸g h� tr�", desc="Th誧h T � ph韆 B To醝 B錸g H� s� d誽 甬 t� Th醝 B錸g Thu c黙 b眓 bang. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="H鱟 ph醝 Thi阯 S絥 k� n錸g c咿i th�", x=45, y=69, tip="H鱟 k� n錸g c咿i th�", desc="L� V� 徐nh � Linh Tuy玭 B Di畁 c� th� d誽 ng呓i b鋘 l頽h c咿i 餴陁. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Mua v c咿i", x=39, y=71, tip="Mua v c咿i", desc="衖畃 Phi H皀g c黙 Linh Tuy玭 B Di畁 c� th� b醤 cho ng呓i v c咿i c黙 b眓 ph醝: 衖陁. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Nhi甿 v� ph醝 Thi阯 S絥", x=95, y=60, tip="Nhi甿 v� ph醝 Thi阯 S絥", desc="Ph� M鏽 Nghi 餫ng t靘 甬 t� b眓 bang gi鷓 疝, 鬾g � d呔i Huy玭 N� 餴陁 t唼ng ph韆 Nam Linh Th製 Cung. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Thi阯 S絥 chuy琻 v s�", x=90, y=120, tip="Thi阯 S絥 chuy琻 v s�", desc="Ng叨i chuy阯 ch� c黙 ph醝 Thi阯 S絥 � L鉶 Nh鈔 c� th� d鏽 ng呓i t緄 L誧 D呓ng, 姓i L�, T� Ch鈛 ho c醕 m鬾 ph醝 kh醕. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="Chi猼 Mai Phong", x=101, y=44, tip="Chi猼 Mai Phong", desc="C鷆 Ki猰 l� ng叨i b鋙 v� Chi猼 Mai Phong, C� � Linh Th製 Cung. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
	{ type=2, name="H鱟 khinh c鬾g ph醝 Thi阯 S絥", x=98, y=44, tip="Ng叨i d誽 khinh c鬾g Thi阯 S絥", desc="H鱟 khinh c鬾g ph醝 Thi阯 S絥 ph鋓 t靘 Tr鷆 Ki猰, C� � Linh Th製 Cung. 刵 ph韒 TAB, tr阯 b鋘 鸢 c� k� hi畊 nh nh醳", eventId=-1 },
}

--**********************************
--列举事件
--**********************************
function x500068_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500068_g_Signpost do
		AddNumText(sceneId, x500068_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--任务入口函数
--**********************************
function x500068_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500068_g_Signpost[GetNumText()]

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
