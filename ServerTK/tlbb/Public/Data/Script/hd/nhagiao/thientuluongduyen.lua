
x000593_g_scriptId = 000593


function x000593_OnDefaultEvent( sceneId, selfId ,bagIndex)
end
function x000593_IsSkillLikeScript( sceneId, selfId)
	return 1;
end
function x000593_CancelImpacts( sceneId, selfId )
	return 0; 
end
function x000593_OnConditionCheck( sceneId, selfId )
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	x000593_ShowNotice( sceneId, selfId, "Hãy thu th§p ðü 5 cái ð¬ ð±i ðßþc Tân Phân L­ HÕp v¾i nhi«u ph¥n thß·ng h¤p dçn!")
	return 0;
	
end
function x000593_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end
function x000593_OnActivateOnce( sceneId, selfId )
	
	x000593_ShowNotice( sceneId, selfId, "Hãy thu th§p ðü 5 cái ð¬ ð±i ðßþc Tân Phân L­ HÕp v¾i nhi«u ph¥n thß·ng h¤p dçn!")
	return 0;
		
	
end
function x000593_OnActivateEachTick( sceneId, selfId)
	return 1;
end
function x000593_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
function x000593_ShowText( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId ,-1)    
end
