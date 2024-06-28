
-- ¶Ò»»ÎïÆ·
x889051_g_scriptId = 889051

--°ó¶¨µÄËéÆ¬
x889051_g_SuiPian1ID = 30504022
--ÆÕÍ¨µÄËéÆ¬
x889051_g_SuiPian2ID = 30504021
--°ó¶¨µÄÆ´Í¼µÄID
x889051_g_FigureID1   = 30504024
--·Ç°ó¶¨µÄÆ´Í¼µÄID
x889051_g_FigureID2   = 30504023
--¶Ò»»Æ´Í¼ÐèÒªµÄËéÆ¬ÊýÁ¿
x889051_g_FigureCount = 300

--¶Ò»»³õ¼¶ÄêÊÞÐèÒªµÄËéÆ¬ÊýÁ¿
x889051_g_LowNianShouCount = 49

--¶Ò»»ÖÐ¼¶ÄêÊÞÐèÒªµÄÆ´Í¼ÊýÁ¿
x889051_g_MiddleNianShouCount = 1

--¶Ò»»¸ß¼¶ÄêÊÞÐèÒªµÄÆ´Í¼ÊýÁ¿
x889051_g_HighNianShouCount = 15

--µÍ¼¶ÄêÊÞID
x889051_g_LowNianShouID = 10141800
--ÖÐ¼¶ÄêÊÞID
x889051_g_MiddleNianShouID = 10141801
--¸ß¼¶ÄêÊÞID
x889051_g_HighNianShouID = 10141802

x889051_gGongGaoInfo ={
  "#{_INFOUSR%s}#cff99cc thu th§p 49 cái Niên Thú Toái Phiªn ðªn #GLÕc Dß½ng - Tiêu Sß(81,117)#YC± Uy Tín #cff99cclînh nh§n #{_INFOMSG%s}#cff99cc.",
  "#{_INFOUSR%s}#cff99cc v¾i bàn tay run r¦y mang ðªn 1 cái Mô hình Niên Thú ðªn #GLÕc Dß½ng - Tiêu Sß(81,117)#YC± Uy Tín #cff99cclînh nh§n #{_INFOMSG%s}#cff99cc.",
  "#{_INFOUSR%s}#cff99cc mang 15 cái Mô hình Niên Thú ðªn #GLÕc Dß½ng - Tiêu Sß(81,117)#YC± Uy Tín #cff99cclînh nh§n #{_INFOMSG%s}#cff99cc.",
}


--MisDescEnd

--¶Ò»»³õ¼¶ÄêÊÞ
function x889051_ChangeLowNianShou(sceneId, selfId, targetId)
	local nCount =LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_SuiPian1ID) + LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_SuiPian2ID)
	--ÉíÉÏÊÇ·ñÓÐÎïÆ·
	if (nCount<=0) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_02}")
		return
	end
	
	--ÊýÁ¿ÊÇ·ñ×ã¹»
	if (nCount<x889051_g_LowNianShouCount) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_03}")
		return
	end
	
	
		--¼ì²â±³°üÊÇ·ñÓÐµØ·½....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x889051_NotifyFailBox( sceneId, selfId,targetId, "#{NSDH_SP_04}" )
		return
	end
	
	--¿Û³ýÎïÆ·
	-- É¾³ýÎïÆ· ÏÈÉ¾³ý°ó¶¨µÄ
	local BangdingNum = LuaFnGetAvailableItemCount( sceneId, selfId, x889051_g_SuiPian1ID );
	if(BangdingNum >= x889051_g_LowNianShouCount) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian1ID, x889051_g_LowNianShouCount)
		if ret1 < 1  then
			return
		end
	elseif(BangdingNum == 0) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian2ID, x889051_g_LowNianShouCount)
		if ret1 < 1  then
			return
		end
	else
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian1ID, BangdingNum)
		if ret1 < 1  then
			return
		end
		
		--É¾Ã»°ó¶¨µÄ
		local Delete = x889051_g_LowNianShouCount - BangdingNum;
		ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian2ID, Delete)
		if ret1 < 1  then
			return
		end
		
	end
	
		--¸øÍæ¼ÒÌí¼ÓÎïÆ·
	local bagpos01 = TryRecieveItem( sceneId, selfId, x889051_g_LowNianShouID, QUALITY_MUST_BE_CHANGE )
	LuaFnItemBind( sceneId, selfId, bagpos01 )
	Audit_ChangeNianShouDriver(sceneId,selfId,1)
	x889051_MsgBox( sceneId, selfId, "Hoán ð±i s½ c¤p niên thú thành công" )
	local szItemTransfer = GetBagItemTransfer(sceneId,selfId,bagpos01)
	x889051_ShowSystemNotice(sceneId, selfId, szItemTransfer,1)
	x889051_CloseWindow(sceneId,selfId, targetId)
	
end
--¶Ò»»³õ¼¶ÄêÊÞµÄÃèÊö
function x889051_ChangeLowNianShouDescript(sceneId, selfId, targetId)
	local str = "#{NSDH_PT_01}"
	--x889051_NotifyFailBox( sceneId, selfId, targetId, str)
	
	BeginEvent(sceneId)
		AddText(sceneId,str)
		AddNumText( sceneId, x889051_g_scriptId, "Xác nh§n", 6, 11 )
		AddNumText( sceneId, x889051_g_scriptId, "Bö qua", 6, 21 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--¶Ò»»ÖÐ¼¶ÄêÊÞ
function x889051_ChangeMiddleNianShou(sceneId, selfId, targetId)
	
	local nCount =LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_FigureID1) + LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_FigureID2)
	--ÉíÉÏÊÇ·ñÓÐÎïÆ·
	if (nCount<=0) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_06}")
		return
	end

	--ÊýÁ¿ÊÇ·ñ×ã¹»
	if (nCount<x889051_g_MiddleNianShouCount) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_07}")
		return
	end
	
		--¼ì²â±³°üÊÇ·ñÓÐµØ·½....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x889051_NotifyFailBox( sceneId, selfId, targetId,"#{NSDH_SP_04}" )
		return
	end
	--¿Û³ýÎïÆ·
	-- É¾³ýÎïÆ· ÏÈÉ¾³ý°ó¶¨µÄ
	local BangdingNum = LuaFnGetAvailableItemCount( sceneId, selfId, x889051_g_FigureID1 );

	if (BangdingNum >= x889051_g_MiddleNianShouCount) then
			
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID1, x889051_g_MiddleNianShouCount)
		if ret1 < 1  then
			return
		end
	elseif(BangdingNum == 0) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID2, x889051_g_MiddleNianShouCount)
		if ret1 < 1  then
			return
		end
			
	else
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID1, BangdingNum)
		if ret1 < 1  then
			return
		end
		--É¾Ã»°ó¶¨µÄ
		local Delete = x889051_g_MiddleNianShouCount - BangdingNum;
		ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID2, Delete)
		if ret1 < 1  then
			return
		end
		
	end
	
		--¸øÍæ¼ÒÌí¼ÓÎïÆ·
	local bagpos01 = TryRecieveItem( sceneId, selfId, x889051_g_MiddleNianShouID, QUALITY_MUST_BE_CHANGE )
	LuaFnItemBind( sceneId, selfId, bagpos01 )
	Audit_ChangeNianShouDriver(sceneId,selfId,2)
	x889051_MsgBox( sceneId, selfId, "Hoán ð±i thành công" )
	local szItemTransfer = GetBagItemTransfer(sceneId,selfId,bagpos01)
	x889051_ShowSystemNotice(sceneId, selfId, szItemTransfer,2)
	x889051_CloseWindow(sceneId,selfId, targetId)
end

--¶Ò»»ÖÐ¼¶ÄêÊÞµÄÃèÊö
function x889051_ChangeMiddleNianShouDescript(sceneId, selfId, targetId)
	local str = "#{NSDH_PT_05}"
	--x889051_NotifyFailBox( sceneId, selfId, targetId, str)

	BeginEvent(sceneId)
		AddText(sceneId,str)
		AddNumText( sceneId, x889051_g_scriptId, "Xác nh§n", 6, 12 )
		AddNumText( sceneId, x889051_g_scriptId, "Bö qua", 6, 21 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--¶Ò»»¸ß¼¶ÄêÊÞ
function x889051_ChangeHighNianShou(sceneId, selfId, targetId, targetId)
	local nCount =LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_FigureID1) + LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_FigureID2)
	--ÉíÉÏÊÇ·ñÓÐÎïÆ·
	if (nCount<=0) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_10}")
		return
	end
	
	--ÊýÁ¿ÊÇ·ñ×ã¹»
	if (nCount<x889051_g_HighNianShouCount) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_11}")
		return
	end
	
		--¼ì²â±³°üÊÇ·ñÓÐµØ·½....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x889051_NotifyFailBox( sceneId, selfId,targetId, "#{NSDH_SP_04}" )
		return
	end
	
	--¿Û³ýÎïÆ·
	-- É¾³ýÎïÆ· ÏÈÉ¾³ý°ó¶¨µÄ
	local BangdingNum = LuaFnGetAvailableItemCount( sceneId, selfId, x889051_g_FigureID1 )
	if(BangdingNum >= x889051_g_HighNianShouCount) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID1, x889051_g_HighNianShouCount)
		if ret1 < 1  then
			return
		end
	elseif(BangdingNum == 0) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID2, x889051_g_HighNianShouCount)
		if ret1 < 1  then
			return
		end
	else
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID1, BangdingNum)
		if ret1 < 1  then
			return
		end
		
		--É¾Ã»°ó¶¨µÄ
		local Delete = x889051_g_HighNianShouCount - BangdingNum;
		ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID2, Delete)
		if ret1 < 1  then
			return
		end
		
	end
	
		--¸øÍæ¼ÒÌí¼ÓÎïÆ·
	local bagpos01 = TryRecieveItem( sceneId, selfId, x889051_g_HighNianShouID, QUALITY_MUST_BE_CHANGE )
	LuaFnItemBind( sceneId, selfId, bagpos01 )
	Audit_ChangeNianShouDriver(sceneId,selfId,3)
	x889051_MsgBox( sceneId, selfId, "Hoán ð±i thành công" )
	local szItemTransfer = GetBagItemTransfer(sceneId,selfId,bagpos01)
	x889051_ShowSystemNotice(sceneId, selfId, szItemTransfer,3)
	x889051_CloseWindow(sceneId,selfId, targetId)
end

--¶Ò»»¸ß¼¶ÄêÊÞµÄÃèÊö
function x889051_ChangeHighNianShouDescript(sceneId, selfId,targetId)
	local str = "#{NSDH_PT_09}"
	BeginEvent(sceneId)
		AddText(sceneId,str)
		AddNumText( sceneId, x889051_g_scriptId, "Xác nh§n", 6, 13 )
		AddNumText( sceneId, x889051_g_scriptId, "Bö qua", 6, 21 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--×éºÏÄêÊÞÆ´Í¼
function x889051_CompositeFigure(sceneId, selfId, targetId)
	--LuaFnItemBind( sceneId, selfId, bagpos01 )
	
	local nCount =LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_SuiPian1ID) + LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_SuiPian2ID)
	--ÉíÉÏÊÇ·ñÓÐÎïÆ·
	
	if (nCount<=0) then
		
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_SP_02}" )
		return
	end
	
	--ÊýÁ¿ÊÇ·ñ×ã¹»
	if (nCount<x889051_g_FigureCount) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_SP_03}" )
		return
	end
	--¼ì²â±³°üÊÇ·ñÓÐµØ·½....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x889051_NotifyFailBox( sceneId, selfId,targetId, "#{NSDH_SP_04}" )
		return
	end
	local IsBind = 0
	
	--¿Û³ýÎïÆ·
	-- É¾³ýÎïÆ· ÏÈÉ¾³ý°ó¶¨µÄ
	local BangdingNum = LuaFnGetAvailableItemCount( sceneId, selfId, x889051_g_SuiPian1ID );
	if(BangdingNum >= x889051_g_FigureCount) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian1ID, x889051_g_FigureCount)
		if ret1 < 1  then
			return
		end
		IsBind = 1
	elseif(BangdingNum == 0) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian2ID, x889051_g_FigureCount)
		if ret1 < 1  then
			return
		end
	else
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian1ID, BangdingNum)
		if ret1 < 1  then
			return
		end
		
		--É¾Ã»°ó¶¨µÄ
		local Delete = x889051_g_FigureCount - BangdingNum;
		ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian2ID, Delete)
		if ret1 < 1  then
			return
		end
		
		IsBind = 1
	end
	
	--¸øÍæ¼ÒÌí¼ÓÎïÆ·
	BeginAddItem(sceneId)
		--ÓÐ°ó¶¨µÄ¸ø°ó¶¨ÎïÆ·£¬Ã»ÓÐ°ó¶¨µÄ¸øÆÕÍ¨Æ´Í¼
		if IsBind == 1 then
			AddItem( sceneId, x889051_g_FigureID1, 1 )
		else
			AddItem( sceneId, x889051_g_FigureID2, 1 )
		end
	local ret = EndAddItem(sceneId,selfId)
	if (ret<1) then
		return
	end
	AddItemListToHuman(sceneId,selfId)
	AuditCompositeFigure(sceneId,selfId)
	x889051_MsgBox( sceneId, selfId, "Hoán ð±i thành công" )
	x889051_CloseWindow(sceneId,selfId, targetId)
end


--×éºÏÄêÊÞÆ´Í¼
function x889051_CompositeFigureDescript(sceneId, selfId, targetId)
	local str = "#{NSDH_SP_01}"
	BeginEvent(sceneId)
		AddText(sceneId,str)
		AddNumText( sceneId, x889051_g_scriptId, "Xác nh§n", 6, 14 )
		AddNumText( sceneId, x889051_g_scriptId, "Bö qua", 6, 21 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x889051_CloseWindow(sceneId,selfId, targetId)
	BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x889051_OnDefaultEvent( sceneId, selfId, targetId )

	local nNum = GetNumText()

	--¶Ò»»³õ¼¶×øÆïµÄ¶Ô»°
	if (nNum == 1 ) then
		x889051_ChangeLowNianShouDescript(sceneId, selfId, targetId)
	--¶Ò»»ÖÐ¼¶×øÆïµÄ¶Ô»°
	elseif nNum == 2 then
		x889051_ChangeMiddleNianShouDescript(sceneId, selfId, targetId)
	--¶Ò»»¸ß¼¶×øÆïµÄ¶Ô»°
	elseif nNum == 3 then
		x889051_ChangeHighNianShouDescript(sceneId, selfId, targetId)
	--×éºÏÄêÊÞÆ½Í¼µÄ¶Ô»°
	elseif nNum == 4 then
		x889051_CompositeFigureDescript(sceneId, selfId, targetId)
	--¶Ò»»³õ¼¶×øÆï
	elseif nNum == 11 then
		x889051_ChangeLowNianShou(sceneId, selfId, targetId)
	--¶Ò»»ÖÐ¼¶×øÆï
	elseif nNum == 12 then
		x889051_ChangeMiddleNianShou(sceneId, selfId, targetId)
	--¶Ò»»¸ß¼¶×øÆï
	elseif nNum == 13 then
		x889051_ChangeHighNianShou(sceneId, selfId, targetId)
	--×éºÏÆ´Í¼
	elseif nNum == 14 then
		x889051_CompositeFigure(sceneId, selfId, targetId)
	elseif nNum == 21 then
		x889051_CloseWindow(sceneId, selfId, targetId)
	elseif nNum == 5 then
			local str = "#{NSDH_SM_01}"
			x889051_NotifyFailBox( sceneId, selfId, targetId, str )
	end 
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x889051_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x889051_g_scriptId, "Hoán ð±i s½ c¤p Niên Thú ÐÕp Phong", 6, 1 )
	AddNumText( sceneId, x889051_g_scriptId, "Hoán ð±i trung c¤p Niên Thú Trøc Nh§t", 6, 2 )
	AddNumText( sceneId, x889051_g_scriptId, "Hoán ð±i cao c¤p Niên Thú Lôi Ðình", 6, 3 )
	AddNumText( sceneId, x889051_g_scriptId, "Kªt hþp mô hình niên thú",     6, 4 )
	AddNumText( sceneId, x889051_g_scriptId, "Gi¾i thi®u hoÕt ðµng ð±i niên thú", 11, 5 )
	
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x889051_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x889051_OnAccept( sceneId, selfId )

end

--**********************************
--·ÅÆú
--**********************************
function x889051_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x889051_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x889051_CheckSubmit( sceneId, selfId )
end

--**********************************
--ËÍ³ö³èÎïµ°µÄ¹«¸æ
--**********************************
function x889051_ShowSystemNotice( sceneId, selfId, strItemInfo,iIndex )
	
	local PlayerName = GetName(sceneId,selfId)
	local str
	str = format( x889051_gGongGaoInfo[iIndex], PlayerName, strItemInfo)
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x889051_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÐÑÄ¿ÐÅÏ¢ÌáÊ¾
--**********************************
function x889051_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x889051_OnSubmit( sceneId, selfId, targetId, selectRadioId )
		
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x889051_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x889051_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x889051_OnItemChanged( sceneId, selfId, itemdataId )
end


