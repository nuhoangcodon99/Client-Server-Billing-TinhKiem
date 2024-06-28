--事件
--传送到洛阳

--脚本号
x400919_g_ScriptId = 400919

--任务文本描述
x400919_g_MissionName="送我回洛陽吧"
x400919_g_MissionInfo="俺們蘭陵郡是遼國運\送糧草的必經之地，現在路上多出好多草原狼來，得有人殺點狼俺們才敢出去運\草料。"  --任务描述
x400919_g_MissionTarget="殺死5只草原狼"		--任务目标
x400919_g_ContinueInfo="你已經殺了5只草原狼嗎？它們就在村子南邊，走走就看見了。小心點啊，被一群狼圍攻了那你就白瞎了。"		--未完成任务的npc对话
x400919_g_MissionComplete="謝謝啊，俺們終於敢出門了"					--完成任务npc说话的话

--**********************************
--入口函数
--**********************************
function x400919_OnDefaultEvent( sceneId, selfId, targetId )	--点击该任务后执行此脚本
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 0, 159, 240)
end

--**********************************
--列举事件
--**********************************
function x400919_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x400919_g_ScriptId,x400919_g_MissionName)
end
