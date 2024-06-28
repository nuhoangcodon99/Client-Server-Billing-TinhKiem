--星宿NPC
--出尘子
--普通

--脚本号
x016005_g_ScriptId = 016005

--**********************************
--事件交互入口
--**********************************
function x016005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ta s� d誽 cho bg h鎢 khinh c鬾g ph醝 Tinh T鷆. Ch� c 疬a ta 1 #-15 h鱟 ph� m� th鬷 !")
		AddNumText(sceneId, x016005_g_ScriptId, "H鱟 khinh c鬾g ph醝 Tinh T鷆",12,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件列表选中一项
--**********************************
function x016005_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		
		if GetMenPai(sceneId, selfId) == 5 then
			if	HaveSkill( sceneId, selfId, 28)<0	then
				-- 检查钱
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					BeginEvent(sceneId)
						AddText(sceneId,"  Bg h鎢 kh鬾g c� 瘘 1#-15. Ta kh鬾g th� d誽 kh鬾g c鬾g 疬㧟 !!")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				-- 扣钱
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)

				AddSkill( sceneId, selfId, 28 )
				DelSkill( sceneId, selfId, 34 )
				BeginEvent(sceneId)
					AddText(sceneId,"  Xin ch鷆 m譶g, bg h鎢 疸 h鱟 疬㧟 khinh c鬾g ph醝 Tinh T鷆 ta !")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Bg h鎢 疸 疬㧟 h鱟 疬㧟 khinh c鬾g b眓 m鬾 r癷 !")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		elseif GetMenPai(sceneId, selfId) == 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"N猽 mu痭 h鱟 khinh c鬾g Tinh T鷆, bg h鎢 ph鋓 l� 甬 t� c黙 ph醝 Tinh T鷆 疸 !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Bg h鎢 kh鬾g ph鋓 甬 t� ph醝 Tinh T鷆. Ta kh鬾g th� truy玭 th� khinh c鬾g cho bg h鎢 !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end	
end

--**********************************
--接受此NPC的任务
--**********************************
function x016005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--拒绝此NPC的任务
--**********************************
function x016005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
end

--**********************************
--继续（已经接了任务）
--**********************************
function x016005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--提交已做完的任务
--**********************************
function x016005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--死亡事件
--**********************************
function x016005_OnDie( sceneId, selfId, killerId )
end
