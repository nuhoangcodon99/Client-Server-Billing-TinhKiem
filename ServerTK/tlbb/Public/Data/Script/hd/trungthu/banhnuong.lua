
x000572_g_scriptId = 000572 

x000572_g_Impact1 = 3225
x000572_g_Impact2 = 3013
x000572_g_banhnuonghaohang = 30103029
x000572_g_banhnuong = 30103030
x000572_g_Pos = {{left={220,73},right={248,96}}}

function x000572_OnDefaultEvent( sceneId, selfId, bagIndex )

end

function x000572_IsSkillLikeScript( sceneId, selfId)
	return 1; 
end

function x000572_CancelImpacts( sceneId, selfId )
	return 0;
end

--**********************************
function x000572_OnConditionCheck( sceneId, selfId )
	--if CallScriptFunction( 570, "CheckConflictMission", sceneId, selfId ) == 0 then
	--	return 0
	--end
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	local posX,posZ = GetWorldPos(sceneId, selfId)
	local inpostype = -1
	for i = 1, getn( x000572_g_Pos ) do
		if x000572_g_Pos[i].left[1] <= posX and posX <= x000572_g_Pos[i].right[1] and x000572_g_Pos[i].left[2] <= posZ and posZ <= x000572_g_Pos[i].right[2] then
			inpostype = i
			break
		end
	end
	if sceneId ~= 2 then
		inpostype = -1
	end
	if inpostype == -1 then
		x000572_NotifyFailTips( sceneId, selfId, "Ðªn g¥n Bªp lò · ÐÕi Lý [230,91] ð¬ tiªn hành nß¾ng bánh" )
		return 0
	end
	
	return 1
end

function x000572_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 32407, 0 )
		return 1;
	end
	return 0;
end


function x000572_OnActivateOnce( sceneId, selfId )
	--if(-1~=x000572_g_Impact1) then
	--	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x000572_g_Impact1, 0);
	--	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x000572_g_Impact2, 0);
	--end

	local posX,posZ = GetWorldPos(sceneId, selfId)
	local inpostype = -1
	
	for i = 1, getn( x000572_g_Pos ) do
		if x000572_g_Pos[i].left[1] <= posX and posX <= x000572_g_Pos[i].right[1] and x000572_g_Pos[i].left[2] <= posZ and posZ <= x000572_g_Pos[i].right[2] then
			inpostype = i
			break
		end
	end
	if sceneId ~= 2 then
		inpostype = -1
	end
	if inpostype == -1 then
		x000572_NotifyFailTips( sceneId, selfId, "Ðªn g¥n Bªp lò · ÐÕi Lý [230,91] ð¬ tiªn hành nß¾ng bánh" )
		return 0
	end
	local BagPos = TryRecieveItem( sceneId, selfId, x000572_g_banhnuonghaohang, 1 )
	if -1 ~= BagPos then
		local	bindidx	= LuaFnItemBind( sceneId, selfId, BagPos)
		if bindidx ~= 1 then
			x000572_NotifyFailTips( sceneId, selfId,  "C¯ ð¸nh th¤t bÕi !" )
		end		
	end
	
	x000572_NotifyFailTips( sceneId, selfId, "Nß¾ng bánh thành công, nh§n ðßþc #BBánh Nß¾ng" )
    --	LuaFnDepletingUsedItem(sceneId, selfId)

	return 1;
end

function x000572_OnActivateEachTick( sceneId, selfId)
	return 1; 
end
function x000572_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end