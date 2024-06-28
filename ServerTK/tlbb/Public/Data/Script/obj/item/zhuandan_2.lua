--hd edit item rut tham
x889001_g_scriptId = 889001


function x889001_OnDefaultEvent( sceneId, selfId ,bagIndex)
end
function x889001_IsSkillLikeScript( sceneId, selfId)
	return 1;
end
function x889001_CancelImpacts( sceneId, selfId )
	return 0; 
end
function x889001_OnConditionCheck( sceneId, selfId )
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	--check rút thåm BHDC
	local PlayerGID = GetHumanGuildID(sceneId, selfId)
	if (PlayerGID ~= -1) then
		PlayerGName = LuaFnGetGuildName(sceneId,selfId)		
	else
		x889001_ShowNotice( sceneId, selfId, "Các hÕ không thuµc bang hµi nào, không th¬ tiªn hành rút thåm.")
		return 0;
	end
	if sceneId ~= 2 then
		x889001_ShowNotice( sceneId, selfId, "Chï có th¬ sØ døng v§t ph¦m tÕi ÐÕi Lý!")
		return 0;
	end
	return 1; 
end
function x889001_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end
function x889001_OnActivateOnce( sceneId, selfId )
	--get info
	local PlayerName = GetName(sceneId,selfId)
	local PlayerGID = GetHumanGuildID(sceneId, selfId)
	local PlayerGName = ""
	
	
	
	
	--check rút thåm BHDC
	if (PlayerGID ~= -1) then
		PlayerGName = LuaFnGetGuildName(sceneId,selfId)		
	else
		x889001_ShowNotice( sceneId, selfId, "Các hÕ không thuµc bang hµi nào, không th¬ tiªn hành rút thåm.")
		return 0;
	end
	
	--random
	local randValue = random(100000);
	local rutham_ok = 0
	for i=0, 15    do
		local sothutu	= GetActivityParam( sceneId, 38, i )
		if sothutu == -2 then
			SetActivityParam( sceneId, 38, i, PlayerGID )
			SetActivityParam( sceneId, 38, i+100, randValue )
			rutham_ok = 1
			break;
		end
	end
	if rutham_ok ==0 then
		local err_text = "Có l²i rút thåm · Bang "..PlayerGName.."["..PlayerGID.."]."
		BroadMsgByChatPipe( sceneId, selfId, err_text, 4 )
		x889001_ShowText( sceneId, selfId, err_text)
		return 0;
	end
	
	strNotice ="Chào m×ng bÕn ðªn v¾i Thiên Long Bát Bµ \nChß½ng trình rút thåm dành cho sñ ki®n ðang ðßþc t± chÑc tÕi server.\nThông tin chi tiªt xem tÕi trang chü.";
	strNotice = strNotice.."\nKªt quä thåm cüa bÕn : #Y"..randValue.."";
	x889001_ShowText( sceneId, selfId, strNotice)
	
	--x889001_ShowNotice( sceneId, selfId, "PlayerName : "..PlayerName)
	--x889001_ShowNotice( sceneId, selfId, "PlayerGID : "..PlayerGID)
	--x889001_ShowNotice( sceneId, selfId, "PlayerGName : "..PlayerGName)
	--x889001_ShowNotice( sceneId, selfId, "randValue : "..randValue)
	
	--hd add 8/12/2013
	
	--end hd add
	
	
	str = format("#{_INFOUSR%s} #PðÕi di®n Bang Hµi #G%s #P(ID: #Y%s#P) tham gia rút thåm ðßþc kªt quä #Y%d",PlayerName,PlayerGName,PlayerGID,randValue);
	str2 = format("@*;SrvMsg;GLD:#{_INFOUSR%s} #PðÕi di®n Bang Hµi #G%s #P(ID: #Y%s#P) tham gia rút thåm ðßþc kªt quä #Y%d",PlayerName,PlayerGName,PlayerGID,randValue);
	BroadMsgByChatPipe( sceneId, selfId, str, 4 ) --he thong
	BroadMsgByChatPipe( sceneId, selfId, str, 6 ) --bang phai
	
	return 1;
end
function x889001_OnActivateEachTick( sceneId, selfId)
	return 1;
end
function x889001_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
function x889001_ShowText( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId ,-1)    
end
