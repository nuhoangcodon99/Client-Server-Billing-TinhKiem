
x335815_g_scriptId = 335815

function x335815_OnDefaultEvent( sceneId, selfId, bagIndex )

end

function x335815_IsSkillLikeScript( sceneId, selfId)
	return 1;
end

function x335815_CancelImpacts( sceneId, selfId )
	return 0; 
end

function x335815_OnConditionCheck( sceneId, selfId )
	return 1; 
end

function x335815_OnDeplete( sceneId, selfId )

	local bagpos = LuaFnGetBagIndexOfUsedItem(sceneId, selfId)
	local itemId = LuaFnGetItemTableIndexByIndex(sceneId, selfId, bagpos)
	--local impactId = x335815_g_ImpactTbl[itemId]

	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
			
		return 1;
	end

	return 0;

end

function x335815_OnActivateOnce( sceneId, selfId )
	local bagpos = LuaFnGetBagIndexOfUsedItem(sceneId, selfId)
	if LuaFnIsItemAvailable( sceneId, selfId, bagpos ) ~= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "V§t ph¦m b¸ khóa")
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		return 0
	end
	local lastTime = GetMissionData(sceneId,selfId,MD_XL_CONGLUC) -- cau truc: xx ddddd ccc
	local lastDayTime =  floor( lastTime / 1000 )-floor( lastTime / 100000000 )*100000
	local CongLuc = mod( lastTime, 1000 )
	local CurDayTime = GetDayTime()
	local used = floor( lastTime / 100000000 )
	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		CongLuc =100
		lastTime = lastDayTime * 1000 + CongLuc
		SetMissionData( sceneId, selfId, MD_XL_CONGLUC, lastTime )
		BeginEvent( sceneId )
			AddText( sceneId, "Công lñc hi®n tÕi ðã ð¥y, c¦n th§n t¦u höa nh§p ma.")
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		return 0
	end
	if CongLuc >= 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "Công lñc hi®n tÕi ðã ð¥y, c¦n th§n t¦u höa nh§p ma.")
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		return 0
	end
	if used >= 3 then
		BeginEvent( sceneId )
			AddText( sceneId, "Các hÕ ðã sØ døng 3 l¥n trong ngày hôm nay")
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		return 0
	end
		lastTime = (used+1)*100000000+lastDayTime * 1000 +100
		SetMissionData( sceneId, selfId, MD_XL_CONGLUC, lastTime )
		BeginEvent( sceneId )
			AddText( sceneId, "Nh§n ðßþc 100 công lñc.")
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		LuaFnEraseItem( sceneId, selfId, bagpos )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
	return 1;

end

function x335815_OnActivateEachTick( sceneId, selfId)
	return 1;
end
