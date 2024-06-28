
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
	return 0; --不需要这个接口，但要保留空函数,并且始终返回0。
end


function x001088_OnConditionCheck( sceneId, selfId )

	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2  then
				x001088_Tips(sceneId, selfId, "C 2 � 鹫o c� 瓞 nh 疬㧟 ph th叻ng may m" )
			return 0
			end
	return 1; --不需要任何条件，并且始终返回1。
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
		x001088_Tips(sceneId, selfId, "C 2 � 鹫o c� 瓞 nh 疬㧟 ph th叻ng may m" )
	return 0
	end
	for i = 1,2 do
	local idx = random( getn(x001088_Item_List) )
	local ItemId = x001088_Item_List[idx]
	local BagIndex = TryRecieveItem( sceneId, selfId, ItemId, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			local playerName = GetName(sceneId, selfId)
			LuaFnItemBind( sceneId, selfId, BagIndex) --co dinh item
			x001088_FailTips(sceneId,  selfId, "Ch鷆 m譶g b課 v譨 nh 疬㧟 ph th叻ng!!!")
			local transfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
			msg = format("#{_INFOUSR%s}#P d鵱g m祎 chi猚 #GM鈓 B醤h 姓i #P 鸬t nhi阯 #{_INFOMSG%s}#P t� tr阯 tr秈 r絠 xu痭g chui l鱰 v鄌 tai n鋓 c黙 #{_INFOUSR%s}#P th l� may m!", playerName, transfer, playerName )
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
