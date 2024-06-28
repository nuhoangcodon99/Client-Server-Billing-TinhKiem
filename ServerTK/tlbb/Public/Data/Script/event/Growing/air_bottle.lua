--B�nh ��ng linh kh� r�ng
--Author: Ho�ng Steven

--********************--
x910222_g_scriptId = 910222
--********************--
x910222_g_target_scene = 6
x910222_g_target_posx = 192
x910222_g_target_posy = 48
x910222_g_target_item = 30060009
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910222_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x910222_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x910222_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x910222_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId)~=1 then
		return 0
	end
	--********************--
	local x,y=GetWorldPos(sceneId,selfId)
	if sceneId~=x910222_g_target_scene or sqrt((x-x910222_g_target_posx)*(x-x910222_g_target_posx)+(y-x910222_g_target_posy)*(y-x910222_g_target_posy))>5 then
		BeginEvent(sceneId)
			AddText(sceneId,"Khu v�c n�y kh�ng ph�i khu v�c th�ch h�p!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� c�n s�p x�p l�i 1 � tr�ng trong � ��o c�!")
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
function x910222_OnDeplete(sceneId,selfId)
	
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
function x910222_OnActivateOnce(sceneId,selfId)

	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thu th�p th�nh c�ng th�nh c�ng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	TryRecieveItem(sceneId,selfId,x910222_g_target_item,1)
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x910222_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
