--Dao
--Author: Hoàng Steven

--********************--
x910233_g_scriptId = 910233
x910227_g_Bamboo = 30060017
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910233_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x910233_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x910233_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x910233_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId)~=1 then
		return 0
	end
	--********************--
	local x,y=GetWorldPos(sceneId,selfId)
	--********************--
	if sceneId~=121 or (x<229) or (x>271) or (y<230) or (y>262) then
		BeginEvent(sceneId)
			AddText(sceneId,"Khu vñc này không thích hþp!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ c¥n s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*           On Deplete           *--
--**********************************--
function x910233_OnDeplete(sceneId,selfId)
	
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
function x910233_OnActivateOnce(sceneId,selfId)

	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thu th§p thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	TryRecieveItem(sceneId,selfId,x910227_g_Bamboo,1)
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x910233_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
