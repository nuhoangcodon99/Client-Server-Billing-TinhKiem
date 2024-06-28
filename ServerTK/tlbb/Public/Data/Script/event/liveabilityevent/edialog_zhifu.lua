--对话事件 npc白颖明

--脚本号
x713617_g_ScriptId = 713512

--对话内容
x713617_g_dialog = {"N猽 nh� c醕 h� mu痭 d畉 l阯 nh鎛g lo読 ph� ch� th k� kh鬾g gi痭g t� gi b靚h th叨ng th� 疸 c� Ch� Ph� c黙 Nga My",
			"C鈛 h鰅 s� 2",
			"Ch� c c醕 h� h鱟 疬㧟 ph呓ng th裞 Ch� Ph� l� c� th� ch� t誳 ph� ch� r癷",
			"衅ng c, c鬾g d鴑g c黙 ph� ch� c騨 ph� thu礳 v鄌 鹌ng c k� n錸g n鎍. N猽 nh� mu痭 鹌ng c ph� ch� ch� ra c鄋g cao, ch l唼ng c鄋g t痶 th� c 鸬 k� n錸g Ch� Ph� c鹡g kh鬾g 疬㧟 th",
			"Ph� ch� kh鬾g 鸾n gi鋘 ch� l� m祎 t� gi. N� c騨 c� t醕 d鴑g r l緉 h� tr� cho ng叨i s� d鴑g n�..."}
x713617_g_button = {"N骾 v� th馽 t� 餴",
			"L鄊 sao 瓞 Ch� Ph�?",
			"Sau 痼 ra sao?",
			"Ph� ch� c� t醕 d鴑g g�?",
			}

--**********************************
--任务入口函数
--**********************************
function x713617_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNum是对话编号，用于调用不同对话
		BeginEvent(sceneId)
			AddText(sceneId, x713617_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713617_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--列举事件
--**********************************
function x713617_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713617_g_ScriptId,"T靘 hi瑄 Ch� Ph�",11,-1)
end

--**********************************
--检测接受条件
--**********************************
function x713617_CheckAccept( sceneId, selfId )
end

--**********************************
--接受
--**********************************
function x713617_OnAccept( sceneId, selfId, AbilityId )
end
