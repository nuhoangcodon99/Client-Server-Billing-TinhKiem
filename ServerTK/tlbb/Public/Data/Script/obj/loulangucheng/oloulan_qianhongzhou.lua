--NPC
--
--ÆÕÍ¨
x001154_g_ScriptId = 1154
x001154_g_MaiHoaTieu = 10155003
x001154_g_MaiHoaTieuBind = 10155005
x001154_g_BangPhachThanCham = 10155002
x001154_g_HanBangTinhTiet = 20310113
x001154_g_HanBangTinhThach = 30008070
x001154_g_NeedTotalCleanTimes = 267
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001154_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"#{AQSJ_090709_01}")
		AddNumText( sceneId, x001154_g_ScriptId, "#{AQSJ_090709_02}", 6, 10 )
		AddNumText( sceneId, x001154_g_ScriptId, "#{AQSJ_090709_03}", 6, 20 )
		AddNumText( sceneId, x001154_g_ScriptId, "#{AQSJ_090709_04}", 11, 30 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x001154_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	if key == 10 then
--		BeginEvent(sceneId)
--			AddText(sceneId,"Các hÕ dùng Mai Hoa Phiêu ð¬ ðúc tÕo Bång Phách Th¥n Châm. Sau khi tu luy®n xong s¨ m¤t hªt tß ch¤t, cß¶ng hóa, khäm ng÷c, tÕc kh¡c và kÛ nång v¯n có cüa Mai Hoa Tiêu và tr· v« ðÆng c¤p tu luy®n là 1.")
--			AddNumText( sceneId, x001154_g_ScriptId, "#{AQSJ_XML_090709_08}", 6, 11 )
--		EndEvent(sceneId)
--		DispatchEventList(sceneId,selfId,targetId)
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 070825 )
	end
	if key == 11 then
		--x001154_BPTC(sceneId,selfId,targetId)

	end

	if key == 20 then
		x001154_HBTT(sceneId,selfId,targetId)
	end
	if key == 30 then 
		x001154_AddNotice(sceneId,selfId,targetId, "#{AQSJ_090709_05}")
		return
	end
end
function x001154_BPTC(sceneId,selfId,targetId)
		local itmId = LuaFnGetItemTableIndexByIndex( sceneId, selfId, 0 )
		if  itmId~= x001154_g_MaiHoaTieu and itmId ~= x001154_g_MaiHoaTieuBind then
			x001154_AddNotice(sceneId,selfId,targetId, "Hãy ð£t Mai Hoa Tiêu cüa các hÕ vào ô ð¥u tiên cüa Tay näi!")
			return
		end
		if GetDarkTotalCleanTimes(sceneId, selfId, 0) < x001154_g_NeedTotalCleanTimes then
			x001154_AddNotice(sceneId,selfId,targetId, "#{AQSJ_090709_09}")
			return
		end
		if  LuaFnGetAvailableItemCount(sceneId, selfId, x001154_g_HanBangTinhThach) < 1 then
			x001154_AddNotice(sceneId,selfId,targetId, "Các hÕ c¥n có thêm nguyên li®u Hàn Bång Tinh ThÕch!")
			return
		end

		local bDelOk = LuaFnDelAvailableItem(sceneId,selfId,itmId,1)
		if bDelOk < 1  then
			x001154_AddNotice(sceneId,selfId,targetId, "Có l²i xäy ra. Ki¬m tra v§t ph¦m b¸ khóa!")
			return
		end
		LuaFnDelAvailableItem(sceneId,selfId,x001154_g_HanBangTinhThach,1)
		TryRecieveItem( sceneId, selfId, x001154_g_BangPhachThanCham, 1 )
		x001154_AddNotice(sceneId,selfId,targetId, "#{AQSJ_090709_12}")
end
function x001154_HBTT(sceneId,selfId,targetId)
		if LuaFnGetAvailableItemCount(sceneId, selfId, x001154_g_HanBangTinhTiet) < 20 then
			x001154_AddNotice(sceneId,selfId,targetId, "#{AQSJ_090709_16}")
			return
		end
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x001154_AddNotice(sceneId,selfId,targetId, "#{AQSJ_090709_17}")
			return
		end
		LuaFnDelAvailableItem(sceneId,selfId,x001154_g_HanBangTinhTiet,20)
		TryRecieveItem( sceneId, selfId, x001154_g_HanBangTinhThach, 1 )
		x001154_AddNotice(sceneId,selfId,targetId, "#{AQSJ_090709_18}")
end

function x001154_Anqi2Shenzhen(sceneId,selfId,idBag1,idBag2)
		local itmId1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, idBag1 )
		local itmId2 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, idBag2 )
		if  itmId1 ~= x001154_g_MaiHoaTieu and itmId1 ~= x001154_g_MaiHoaTieuBind then
			x001154_NotifyTip(sceneId,selfId, "#{AQSJ_090709_23}")
			return
		end
		if  itmId2 ~= x001154_g_HanBangTinhThach then
			x001154_NotifyTip(sceneId,selfId, "#{AQSJ_090709_24}")
			return
		end
		if GetDarkTotalCleanTimes(sceneId, selfId, idBag1) < x001154_g_NeedTotalCleanTimes then
			x001154_NotifyTip(sceneId,selfId, "#{AQSJ_090709_09}")
			return
		end
		if LuaFnIsItemAvailable( sceneId, selfId, idBag1 ) ~= 1 or  LuaFnIsItemAvailable( sceneId, selfId, idBag2 ) ~= 1 then
			x001154_NotifyTip(sceneId,selfId, "V§t ph¦m b¸ khóa, không th¬ thao tác.")
			return
		end
		if GetGemEmbededCount( sceneId, selfId, idBag1 ) > 0 then
			x001154_NotifyTip(sceneId,selfId, "Hãy tháo gÞ t¤t cä #GBäo ThÕch trên #YMai Hoa Tiêu!")
			return
		end
		local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, 2000000 )
		if ret < 0 then
			x001154_NotifyTip( sceneId, selfId, "#{AQSJ_090709_11}" )
			return
		end
		LuaFnEraseItem( sceneId, selfId, idBag1 )
		LuaFnEraseItem( sceneId, selfId, idBag2 )
		TryRecieveItem( sceneId, selfId, x001154_g_BangPhachThanCham, 1 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x001154_NotifyTip(sceneId,selfId, "#{AQSJ_090709_12}")
end
function x001154_AddNotice(sceneId,selfId,targetId, ntext)
		BeginEvent(sceneId)
				AddText(sceneId, ntext)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
end

function x001154_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end