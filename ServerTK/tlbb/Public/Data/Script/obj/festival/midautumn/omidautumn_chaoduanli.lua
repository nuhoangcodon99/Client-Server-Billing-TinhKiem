-- 中秋NPC
-- 晁端礼

x050004_g_scriptId = 050004

--**********************************
--事件交互入口
--**********************************
function x050004_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    月到中秋夜，還勝別夜圓。高河瑟瑟轉金盤。三十六宮深處、捲簾看。香霧雲鬟濕，清輝玉臂寒。尋常豈是不嬋娟。吟賞莫辭終夕、動經年。"
		AddText( sceneId, "南歌子" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
