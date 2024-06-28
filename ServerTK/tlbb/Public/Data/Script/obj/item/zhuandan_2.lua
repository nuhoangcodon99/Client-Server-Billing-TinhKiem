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
	--check r�t th�m BHDC
	local PlayerGID = GetHumanGuildID(sceneId, selfId)
	if (PlayerGID ~= -1) then
		PlayerGName = LuaFnGetGuildName(sceneId,selfId)		
	else
		x889001_ShowNotice( sceneId, selfId, "C�c h� kh�ng thu�c bang h�i n�o, kh�ng th� ti�n h�nh r�t th�m.")
		return 0;
	end
	if sceneId ~= 2 then
		x889001_ShowNotice( sceneId, selfId, "Ch� c� th� s� d�ng v�t ph�m t�i ��i L�!")
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
	
	
	
	
	--check r�t th�m BHDC
	if (PlayerGID ~= -1) then
		PlayerGName = LuaFnGetGuildName(sceneId,selfId)		
	else
		x889001_ShowNotice( sceneId, selfId, "C�c h� kh�ng thu�c bang h�i n�o, kh�ng th� ti�n h�nh r�t th�m.")
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
		local err_text = "C� l�i r�t th�m � Bang "..PlayerGName.."["..PlayerGID.."]."
		BroadMsgByChatPipe( sceneId, selfId, err_text, 4 )
		x889001_ShowText( sceneId, selfId, err_text)
		return 0;
	end
	
	strNotice ="Ch�o m�ng b�n �n v�i Thi�n Long B�t B� \nCh߽ng tr�nh r�t th�m d�nh cho s� ki�n �ang ���c t� ch�c t�i server.\nTh�ng tin chi ti�t xem t�i trang ch�.";
	strNotice = strNotice.."\nK�t qu� th�m c�a b�n : #Y"..randValue.."";
	x889001_ShowText( sceneId, selfId, strNotice)
	
	--x889001_ShowNotice( sceneId, selfId, "PlayerName : "..PlayerName)
	--x889001_ShowNotice( sceneId, selfId, "PlayerGID : "..PlayerGID)
	--x889001_ShowNotice( sceneId, selfId, "PlayerGName : "..PlayerGName)
	--x889001_ShowNotice( sceneId, selfId, "randValue : "..randValue)
	
	--hd add 8/12/2013
	
	--end hd add
	
	
	str = format("#{_INFOUSR%s} #P��i di�n Bang H�i #G%s #P(ID: #Y%s#P) tham gia r�t th�m ���c k�t qu� #Y%d",PlayerName,PlayerGName,PlayerGID,randValue);
	str2 = format("@*;SrvMsg;GLD:#{_INFOUSR%s} #P��i di�n Bang H�i #G%s #P(ID: #Y%s#P) tham gia r�t th�m ���c k�t qu� #Y%d",PlayerName,PlayerGName,PlayerGID,randValue);
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
