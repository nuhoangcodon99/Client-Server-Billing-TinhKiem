x100001_g_scriptId = 100001
x100001_g_ItemId = 39910001

function x100001_OnDefaultEvent( sceneId, selfId, bagIndex )
	--x100001_UseItem( sceneId, selfId, bagIndex)
end

function x100001_IsSkillLikeScript( sceneId, selfId)
	return 1; --这个脚本需要动作支持
end


function x100001_CancelImpacts( sceneId, selfId )
	return 0; --不需要这个接口，但要保留空函数,并且始终返回0。
end


function x100001_OnConditionCheck( sceneId, selfId )
	
	--hd add
	--if (1) then
	--	x100001_ShowNotice( sceneId, selfId, "V ph ch遖 k韈h ho誸");
	--	return 0;
	--end
	--end hd add
	
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	--hd add
	local BagIndex = LuaFnGetBagIndexOfUsedItem(sceneId, selfId)
	local itemId = LuaFnGetItemTableIndexByIndex(sceneId, selfId, BagIndex)
	--x100001_ShowNotice( sceneId, selfId, "BagIndex "..(BagIndex).." ." )
	--x100001_ShowNotice( sceneId, selfId, "itemId "..(itemId).." ." )
	if itemId ~= x100001_g_ItemId then
		return 0
	end
	--end hd add
	return 1; --不需要任何条件，并且始终返回1。
end

function x100001_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end

	return 0;
end


function x100001_OnActivateOnce( sceneId, selfId )
	
	
	local ZengDianPerAct = 5000
	
	ZengDian(sceneId,selfId,-1,1, ZengDianPerAct )
	
	x100001_ShowNotice( sceneId, selfId, "C醕 h� nh 疬㧟 "..(ZengDianPerAct).." 餴琺 tg." )
	return 1;
end


function x100001_OnActivateEachTick( sceneId, selfId)
	return 1; --不是引导性脚本, 只保留空函数.
end

function x100001_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

