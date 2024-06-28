--åÐÒ£NPC
--Ê¯¸ÊÁØ
--ÆÕÍ¨

--½Å±¾ºÅ
x014012_g_ScriptId = 014012


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x014012_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Nªu ngß½i là ð® tØ Tiêu Dao và mu¯n h÷c khinh công thßþng th×a, ta s¨ giúp ngß½i chï v¾i 1#-15")
		AddNumText(sceneId, x014012_g_ScriptId, "H÷c khinh công phái Tiêu Dao",12,0)
	EndEvent(sceneId)
	
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x014012_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText()==0	then
		
		if GetMenPai(sceneId, selfId) == 8 then
			if	HaveSkill( sceneId, selfId, 31)<0	then
				-- ¼ì²éÇ®
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					BeginEvent(sceneId)
						AddText(sceneId,"  Không có ðü 1#-15 làm sao có th¬ h÷c ðây ?")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				-- ¿ÛÇ®
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)

				AddSkill( sceneId, selfId, 31 )
				DelSkill( sceneId, selfId, 34 )
				BeginEvent(sceneId)
					AddText(sceneId,"  Chúc m×ng, ngß½i ðã h÷c ðßþc khinh công cüa phái Tiêu Dao")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Ngß½i ðã h÷c khinh công này r°i !!")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		elseif GetMenPai(sceneId, selfId) == 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i phäi là ð® tØ cüa Tiêu Dao trß¾c ðã !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i không phäi ð® tØ Tiêu Dao. Ta không th¬ truy«n thø cho ngß½i ngoài phái ðßþc  !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end	
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x014012_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x014012_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x014012_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x014012_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x014012_OnDie( sceneId, selfId, killerId )
end
