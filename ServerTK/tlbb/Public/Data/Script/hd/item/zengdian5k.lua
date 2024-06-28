x100001_g_scriptId = 100001
x100001_g_ItemId = 39910001

function x100001_OnDefaultEvent( sceneId, selfId, bagIndex )
	--x100001_UseItem( sceneId, selfId, bagIndex)
end

function x100001_IsSkillLikeScript( sceneId, selfId)
	return 1; --����ű���Ҫ����֧��
end


function x100001_CancelImpacts( sceneId, selfId )
	return 0; --����Ҫ����ӿڣ���Ҫ�����պ���,����ʼ�շ���0��
end


function x100001_OnConditionCheck( sceneId, selfId )
	
	--hd add
	--if (1) then
	--	x100001_ShowNotice( sceneId, selfId, "V�t ph�m ch�a k�ch ho�t");
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
	return 1; --����Ҫ�κ�����������ʼ�շ���1��
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
	
	x100001_ShowNotice( sceneId, selfId, "C�c h� nh�n ���c "..(ZengDianPerAct).." �i�m t�ng." )
	return 1;
end


function x100001_OnActivateEachTick( sceneId, selfId)
	return 1; --���������Խű�, ֻ�����պ���.
end

function x100001_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

