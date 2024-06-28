-- 中秋NPC
-- 黄庭坚

x050003_g_scriptId = 050003

--**********************************
--事件交互入口
--**********************************
function x050003_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    中秋無雨。醉送月銜西嶺去。笑口須開。幾度中秋見月來。前年江外。兒女傳杯兄弟會。此夜登樓。小謝清吟慰白頭。"
		AddText( sceneId, "減字木蘭花" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
