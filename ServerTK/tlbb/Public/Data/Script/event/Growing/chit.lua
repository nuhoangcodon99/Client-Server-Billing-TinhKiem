--H�t gi�ng Ti�n Hoa
--Author: Ho�ng Steven

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
			AddText(sceneId,"Khu v�c n�y kh�ng th� tr�ng c�y!")
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
		if strfind(Monster_Name,"Ti�n hoa c�p")~=nil then
			local x,y=GetWorldPos(sceneId,MonsterId)
			if sqrt((x-xp)*(x-xp)+(y-yp)*(y-yp))<=5 then
				BeginEvent(sceneId)
					AddText(sceneId,"H�y ch�n kho�ng �t tho�ng h�n!")
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
		AddText(sceneId,"Tr�ng th�nh c�ng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	local x,y=GetWorldPos(sceneId,selfId)
	local MstId=LuaFnCreateMonster(sceneId,90,x+random(2)-random(2),y+random(2)-random(2),3,0,910224)
	SetCharacterName(sceneId,MstId,"Ti�n hoa c�p 1 c�a "..GetName(sceneId,selfId))
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
