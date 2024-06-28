
x001086_g_Pos = {{left={240,233},right={270,258}}}
x001086_g_Impact1 = 3003
x001086_g_Impact2 = -1 
x001086_g_SpecailObj = 53

x001086_g_Drop1 = {
30505107,--tieu lat ba
30008018,--Thanh Tâm Ðan
30008019,--Ð£c Xá L®nh
30900016,--cao c¤p hþp thành phù
30008030,--th± ðµn châu
30008048, --kim cß½ng toä
30309095
}

function x001086_OnDefaultEvent( sceneId, selfId, bagIndex )

end


function x001086_IsSkillLikeScript( sceneId, selfId)
	return 1;
end


function x001086_CancelImpacts( sceneId, selfId )
	return 0; --²»ÐèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êý,²¢ÇÒÊ¼ÖÕ·µ»Ø0¡£
end


function x001086_OnConditionCheck( sceneId, selfId )
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2  then
		x001086_Tips(sceneId, selfId, "C¥n 2 ô ðÕo cø ð¬ nh§n ðßþc ph¥n thß·ng may m¡n" )
	return 0
	end
	return 1; --²»ÐèÒªÈÎºÎÌõ¼þ£¬²¢ÇÒÊ¼ÖÕ·µ»Ø1¡£
end

function x001086_OnDeplete( sceneId, selfId )
	
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end


function x001086_OnActivateOnce( sceneId, selfId )
--	if(-1~=x001086_g_Impact1) then
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2  then
		x001086_Tips(sceneId, selfId, "C¥n 2 ô ðÕo cø ð¬ nh§n ðßþc ph¥n thß·ng may m¡n" )
	return 0
	end
	--for i = 1,2 do
	local idx = random( getn(x001086_g_Drop1) )
	local ItemId = x001086_g_Drop1[idx]
	local BagIndex = TryRecieveItem( sceneId, selfId, ItemId, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		--local playerName = GetName(sceneId, selfId)
		LuaFnItemBind( sceneId, selfId, BagIndex) --co dinh item
		x001086_FailTips(sceneId, selfId, "Chúc m×ng bÕn v×a nh§n ðßþc ph¥n thß·ng!!!")
		--local transfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
		--msg = format("#{_INFOUSR%s}#P dùng mµt chiªc #GMâm Bánh Ti¬u #P ðµt nhiên #{_INFOMSG%s}#P t× trên tr¶i r½i xu¯ng chui l÷t vào tai näi cüa #{_INFOUSR%s}#P th§t là may m¡n!", playerName, transfer, playerName )
		--BroadMsgByChatPipe(sceneId, selfId, msg, 0)
	end
			--end
--	end
	--return 1;
end


function x001086_OnActivateEachTick( sceneId, selfId)
	return 1; 
end
function x001086_Tips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end


function x001086_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
