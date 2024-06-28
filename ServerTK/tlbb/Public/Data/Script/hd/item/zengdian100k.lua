x100002_g_scriptId = 100002
x100002_g_ItemId = 39910002

function x100002_OnDefaultEvent( sceneId, selfId, bagIndex )
	--x100002_UseItem( sceneId, selfId, bagIndex)
end

function x100002_IsSkillLikeScript( sceneId, selfId)
	return 1; --����ű���Ҫ����֧��
end


function x100002_CancelImpacts( sceneId, selfId )
	return 0; --����Ҫ����ӿڣ���Ҫ�����պ���,����ʼ�շ���0��
end


function x100002_OnConditionCheck( sceneId, selfId )
	
	--hd add
	--if (1) then
	--	x100002_ShowNotice( sceneId, selfId, "V�t ph�m ch�a k�ch ho�t");
	--	return 0;
	--end
	--end hd add
	
	--У��ʹ�õ���Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	--hd add
	local BagIndex = LuaFnGetBagIndexOfUsedItem(sceneId, selfId)
	local itemId = LuaFnGetItemTableIndexByIndex(sceneId, selfId, BagIndex)
	--x100002_ShowNotice( sceneId, selfId, "BagIndex "..(BagIndex).." ." )
	--x100002_ShowNotice( sceneId, selfId, "itemId "..(itemId).." ." )
	if itemId ~= x100002_g_ItemId then
		return 0
	end
	--end hd add
	return 1; --����Ҫ�κ�����������ʼ�շ���1��
end

function x100002_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end

	return 0;
end


function x100002_OnActivateOnce( sceneId, selfId )
	
	
	local ZengDianPerAct = 100000
	
	ZengDian(sceneId,selfId,-1,1, ZengDianPerAct )
	
	x100002_ShowNotice( sceneId, selfId, "C�c h� nh�n ���c "..(ZengDianPerAct).." �i�m t�ng." )
	return 1;
end


function x100002_OnActivateEachTick( sceneId, selfId)
	return 1; --���������Խű�, ֻ�����պ���.
end

function x100002_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

