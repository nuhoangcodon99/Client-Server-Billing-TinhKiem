--HÕt gi¯ng Tiên Hoa
--Author: Hoàng Steven

--********************--
x910223_g_scriptId = 910223
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910223_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x910223_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x910223_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x910223_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId)~=1 then
		return 0
	end
	--********************--
	if sceneId~=2 then
		BeginEvent(sceneId)
			AddText(sceneId,"Khu vñc này không th¬ tr°ng cây!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	local xp,yp=GetWorldPos(sceneId,selfId)
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		local Monster_Name=GetName(sceneId,MonsterId)
		if strfind(Monster_Name,"Tiên hoa c¤p")~=nil then
			local x,y=GetWorldPos(sceneId,MonsterId)
			if sqrt((x-xp)*(x-xp)+(y-yp)*(y-yp))<=5 then
				BeginEvent(sceneId)
					AddText(sceneId,"Hãy ch÷n khoäng ð¤t thoáng h½n!")
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return 0
			end
		end
	end	
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*           On Deplete           *--
--**********************************--
function x910223_OnDeplete(sceneId,selfId)
	
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
function x910223_OnActivateOnce(sceneId,selfId)

	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Tr°ng thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	local x,y=GetWorldPos(sceneId,selfId)
	local MstId=LuaFnCreateMonster(sceneId,90,x+random(2)-random(2),y+random(2)-random(2),3,0,910224)
	SetCharacterName(sceneId,MstId,"Tiên hoa c¤p 1 cüa "..GetName(sceneId,selfId))
	SetCharacterDieTime(sceneId,MstId,600000)
	LuaFnSendSpecificImpactToUnit(sceneId,MstId,MstId,MstId,12746,0)
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x910223_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
