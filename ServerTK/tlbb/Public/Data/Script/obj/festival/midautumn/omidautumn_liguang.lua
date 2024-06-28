-- 中秋NPC
-- 李光

x050005_g_scriptId = 050005

--**********************************
--事件交互入口
--**********************************
function x050005_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    獨步長橋上，今夕是中秋。群黎怪我何事，流轉古儋州。風定潮平如練，雲散月明如晝，孤興在扁舟。笑盡一杯酒，水調雜蠻謳。少年場，金蘭契，盡白頭。相望萬里，悲我已是十年流。晚遇玉霄仙子，授我王屋奇書，歸路指蓬邱。不用乘風禦，八極可神遊。"
		AddText( sceneId, "水調歌頭" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
