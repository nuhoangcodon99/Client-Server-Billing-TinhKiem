
x001088_g_Pos = {{left={240,233},right={270,258}}}
x001088_g_Impact1 = 3003 
x001088_g_Impact2 = -1 
x001088_g_SpecailObj = 53

x001088_Item_List={
--yq bt 8
30308111,
30308112,
30308113,
30308114,
30308115,
30308116,
30308117,
30308118,
30308119,

30308121,
30308122,
30308123,
30308124,
30308125,
30308126,
30308127,
30308128,
30308129
}

function x001088_OnDefaultEvent( sceneId, selfId, bagIndex )

end


function x001088_IsSkillLikeScript( sceneId, selfId)
	return 1;
end


function x001088_CancelImpacts( sceneId, selfId )
	return 0; --����Ҫ����ӿڣ���Ҫ�����պ���,����ʼ�շ���0��
end


function x001088_OnConditionCheck( sceneId, selfId )

	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2  then
				x001088_Tips(sceneId, selfId, "C�n 2 � ��o c� � nh�n ���c ph�n th߷ng may m�n" )
			return 0
			end
	return 1; --����Ҫ�κ�����������ʼ�շ���1��
end

function x001088_OnDeplete( sceneId, selfId )
	
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end


function x001088_OnActivateOnce( sceneId, selfId )
--	if(-1~=x001088_g_Impact1) then
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2  then
		x001088_Tips(sceneId, selfId, "C�n 2 � ��o c� � nh�n ���c ph�n th߷ng may m�n" )
	return 0
	end
	for i = 1,2 do
	local idx = random( getn(x001088_Item_List) )
	local ItemId = x001088_Item_List[idx]
	local BagIndex = TryRecieveItem( sceneId, selfId, ItemId, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			local playerName = GetName(sceneId, selfId)
			LuaFnItemBind( sceneId, selfId, BagIndex) --co dinh item
			x001088_FailTips(sceneId,  selfId, "Ch�c m�ng b�n v�a nh�n ���c ph�n th߷ng!!!")
			local transfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
			msg = format("#{_INFOUSR%s}#P d�ng m�t chi�c #GM�m B�nh ��i #P �t nhi�n #{_INFOMSG%s}#P t� tr�n tr�i r�i xu�ng chui l�t v�o tai n�i c�a #{_INFOUSR%s}#P th�t l� may m�n!", playerName, transfer, playerName )
			BroadMsgByChatPipe(sceneId, selfId, msg, 0)
		end
	end
--	end
--	return 1;
end


function x001088_OnActivateEachTick( sceneId, selfId)
	return 1; 
end
function x001088_Tips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end


function x001088_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
