-- 中秋NPC
-- 朱敦儒

x050006_g_scriptId = 050006

--**********************************
--事件交互入口
--**********************************
function x050006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    偏賞中秋月，從古到如今。金風玉露相間，別做一般清。是處簾櫳爭卷，誰家管弦不動，樂世足歡情。莫指關山路，空使翠蛾顰。水精盤，鱸魚膾，點新橙。鵝黃酒暖，纖手傳杯任頻斟。須惜曉參橫後，直到來年今夕，十二數虧盈。未必來年看，得似此回明。"
		AddText( sceneId, "水調歌頭" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
