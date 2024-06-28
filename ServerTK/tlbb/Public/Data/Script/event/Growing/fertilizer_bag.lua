--Túi ðñng phân r²ng
--Author: Hoàng Steven

--********************--
x910220_g_scriptId = 910220
--********************--
x910220_g_target_scene = 24
x910220_g_target_posx = 231
x910220_g_target_posy = 226
x910220_g_target_item = 30060007
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910220_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x910220_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x910220_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x910220_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId)~=1 then
		return 0
	end
	--********************--
	local x,y=GetWorldPos(sceneId,selfId)
	if sceneId~=x910220_g_target_scene or sqrt((x-x910220_g_target_posx)*(x-x910220_g_target_posx)+(y-x910220_g_target_posy)*(y-x910220_g_target_posy))>5 then
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
function x910220_OnDeplete(sceneId,selfId)
	
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
function x910220_OnActivateOnce(sceneId,selfId)

	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thu th§p thành công thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	TryRecieveItem(sceneId,selfId,x910220_g_target_item,1)
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x910220_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
