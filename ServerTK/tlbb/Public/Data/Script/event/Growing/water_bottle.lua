--Bình ðñng nß¾c r²ng
--Author: Hoàng Steven

--********************--
x910221_g_scriptId = 910221
--********************--
x910221_g_target_scene = 7
x910221_g_target_posx = 78
x910221_g_target_posy = 41
x910221_g_target_item = 30060008
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910221_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x910221_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x910221_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x910221_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId)~=1 then
		return 0
	end
	--********************--
	local x,y=GetWorldPos(sceneId,selfId)
	if sceneId~=x910221_g_target_scene or sqrt((x-x910221_g_target_posx)*(x-x910221_g_target_posx)+(y-x910221_g_target_posy)*(y-x910221_g_target_posy))>5 then
		BeginEvent(sceneId)
			AddText(sceneId,"Khu vñc này không phäi khu vñc thích hþp!")
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
function x910221_OnDeplete(sceneId,selfId)
	
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
function x910221_OnActivateOnce(sceneId,selfId)

	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thu th§p thành công thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	TryRecieveItem(sceneId,selfId,x910221_g_target_item,1)
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x910221_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
