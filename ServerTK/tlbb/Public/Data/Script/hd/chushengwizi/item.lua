--ÐÕo cø Con
--Code by: Sói

--********************--
x910183_g_scriptId = 910183
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910183_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x910183_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x910183_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x910183_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId)~=1 then
		return 0
	end
	--****************--
	if GetMissionData(sceneId,selfId,MD_WIZI_SEX)<1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ không có con!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ô ðÕo cø c¥n tr¯ng ít nh¤t mµt v¸ trí!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*           On Deplete           *--
--**********************************--
function x910183_OnDeplete(sceneId,selfId)
	
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
function x910183_OnActivateOnce(sceneId,selfId)

	--********************--
	local Item_Index=LuaFnGetItemIndexOfUsedItem(sceneId,selfId)
	if Item_Index>=30030101 and Item_Index<=30030105 then
		if GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_4)>0 then
			TryRecieveItem(sceneId,selfId,GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_4),1)
		end
		SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_4,Item_Index)
	elseif Item_Index>=30030111 and Item_Index<=30030115 then
		if GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_3)>0 then
			TryRecieveItem(sceneId,selfId,GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_3),1)
		end
		SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_3,Item_Index)
	elseif Item_Index>=30030121 and Item_Index<=30030125 then
		if GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_1)>0 then
			TryRecieveItem(sceneId,selfId,GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_1),1)
		end
		SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_1,Item_Index)
	elseif Item_Index>=30030131 and Item_Index<=30030135 then
		if GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_2)>0 then
			TryRecieveItem(sceneId,selfId,GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_2),1)
		end
		SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_2,Item_Index)
	end
	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Trang b¸ thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	CallScriptFunction(910181,"OnUpdate",sceneId,selfId,0)
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x910183_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
