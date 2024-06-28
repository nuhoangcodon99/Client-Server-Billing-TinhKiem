--ÐÕi t¦y tüy ðan

--********************--
x300042_g_scriptId = 300042
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x300042_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x300042_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x300042_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x300042_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId)~=1 then
		return 0
	end
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*           On Deplete           *--
--**********************************--
function x300042_OnDeplete(sceneId,selfId)
	
	--********************--
	if LuaFnDepletingUsedItem(sceneId,selfId)>0 then
		return 1
	end
	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*        On Activate Once        *--
--**********************************--
function x300042_OnActivateOnce(sceneId,selfId)

	--********************--
	LuaFnWashPoints(sceneId,selfId)
	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Các hÕ ðã t¦y ði¬m ti«m nång thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	SetMissionFlag(sceneId,selfId,MF_TAYDIEM,1)
	--********************--
	CallScriptFunction(550,"ResetAllData",sceneId,selfId)
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x300042_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
