--ÐÇËÞNPC
--³ö³¾×Ó
--ÆÕÍ¨

--½Å±¾ºÅ
x016005_g_ScriptId = 016005

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x016005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ta s¨ dÕy cho b¢ng hæu khinh công phái Tinh Túc. Chï c¥n ðßa ta 1 #-15 h÷c phí mà thôi !")
		AddNumText(sceneId, x016005_g_ScriptId, "H÷c khinh công phái Tinh Túc",12,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x016005_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		
		if GetMenPai(sceneId, selfId) == 5 then
			if	HaveSkill( sceneId, selfId, 28)<0	then
				-- ¼ì²éÇ®
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					BeginEvent(sceneId)
						AddText(sceneId,"  B¢ng hæu không có ðü 1#-15. Ta không th¬ dÕy không công ðßþc !!")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				-- ¿ÛÇ®
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)

				AddSkill( sceneId, selfId, 28 )
				DelSkill( sceneId, selfId, 34 )
				BeginEvent(sceneId)
					AddText(sceneId,"  Xin chúc m×ng, b¢ng hæu ðã h÷c ðßþc khinh công phái Tinh Túc ta !")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"B¢ng hæu ðã ðßþc h÷c ðßþc khinh công b±n môn r°i !")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		elseif GetMenPai(sceneId, selfId) == 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Nªu mu¯n h÷c khinh công Tinh Túc, b¢ng hæu phäi là ð® tØ cüa phái Tinh Túc ðã !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"B¢ng hæu không phäi ð® tØ phái Tinh Túc. Ta không th¬ truy«n thø khinh công cho b¢ng hæu !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end	
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x016005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x016005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x016005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x016005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x016005_OnDie( sceneId, selfId, killerId )
end
