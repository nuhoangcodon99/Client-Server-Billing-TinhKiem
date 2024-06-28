--对话事件 npc白颖明

--脚本号
x713613_g_ScriptId = 713512

--对话内容
x713613_g_dialog = {"#{event_liveabilityevent_0015}",
			"C鈛 n骾 th� hai",
			"Ch� c huynh h鱟 k� n錸g n r唼u l� c� th� n r唼u ngay. T nhi阯, 鹌ng c c黙 huynh c鄋g cao, lo読 r唼u n l阯 c鄋g th絤",
			"Ch� c h鱟 疬㧟 k� n錸g n r唼u, c� 瘘 nguy阯 li畊, l馻 ch鱪 ph呓ng th裞 n r唼u l� c� th� th馽 thi r癷!",
			"#{event_liveabilityevent_0016}"}
x713613_g_button = {"羞㧟 r癷, 疬㧟 r癷, n骾 g� th馽 t� 餴",
			"T読 h� l鄊 th� n鄌 瓞 n r唼u?",
			"Sau 痼 th� sao?",
			"K猼 qu� th� n鄌?",
			}

--**********************************
--任务入口函数
--**********************************
function x713613_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNum是对话编号，用于调用不同对话
		BeginEvent(sceneId)
			AddText(sceneId, x713613_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713613_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--列举事件
--**********************************
function x713613_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713613_g_ScriptId,"T靘 hi瑄 n r唼u",11,-1)
end

--**********************************
--检测接受条件
--**********************************
function x713613_CheckAccept( sceneId, selfId )
end

--**********************************
--接受
--**********************************
function x713613_OnAccept( sceneId, selfId, AbilityId )
end
