--Th¥n Y Liêu

--************************--
x910073_g_ScriptId = 910073
--************************--
x910073_g_Flag_Song = 0								--Ðánh d¤u phe T¯ng
x910073_g_Flag_Liao = 1								--Ðánh d¤u phe Liêu
--************************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910073_OnDefaultEvent(sceneId,selfId,targetId)
	
	local Flag=GetMissionData(sceneId,selfId,MD_SONGLIAO_FLAG)
	if Flag==x910073_g_Flag_Liao then
		BeginEvent(sceneId)
			AddText(sceneId,"N½i chiªn trß¶ng khói lØa này c¥n thiªt vçn phäi có mµt y phu cÑu chæa nhæng chiªn binh b¸ thß½ng. Ta chính là v¸ y phu ðó.")
			AddNumText(sceneId,x910073_g_ScriptId,"Tr¸ thß½ng",6,0)    
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Ta chï là mµt y phu bình thß¶ng nhßng nh¤t quyªt không bán nß¾c, chæa tr¸ cho kë thù...")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
end

--**********************************--
--*        On Event Request        *--
--**********************************--
function x910073_OnEventRequest(sceneId,selfId,targetId,eventId)
local key=GetNumText()
  
	if key==0 then
		CallScriptFunction(000064,"Restore_hpmp",sceneId,selfId,targetId)
		RestoreStrikePoint(sceneId,selfId)
		RestoreRage(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Tr¸ li®u thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
end