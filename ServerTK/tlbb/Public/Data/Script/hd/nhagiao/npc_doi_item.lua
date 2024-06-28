
x000590_g_ScriptId = 000590

x000590_g_isActive = 0

x000590_g_sudodailebao = 30008045
x000590_g_haohuudailebao = 30008052
x000590_g_tanphanlehap = 30504051

x000590_g_itemid1 = 20310106 --thien long
x000590_g_itemid2 = 20310107 --khoai lac
x000590_g_itemid3 = 20310108 --ai do
x000590_g_itemid4 = 20310109 --an su

x000590_g_itemid5 = 30504004 --thien tu luong duyen
x000590_g_itemid5_num = 5 --so luong

x000590_g_quatang = { -- 8 item
30505123,--phao hoa trung thu vui ve
30505107,--tieu lat ba
30008018,--Thanh Tâm Ðan
30008019,--Ð£c Xá L®nh
30008014,--Thông Thiên Linh Ðan
30900016,--cao c¤p hþp thành phù
30008030,--th± ðµn châu
30008048 --kim cß½ng toä
}
x000590_g_baothachC6 ={ --17 ngoc
50601001,
50601002,
50603001,
50604002,
50611001,
50611002,
50612001,
50612002,
50612003,
50612004,
50613001,
50613002,
50613003,
50613004,
50613005,
50613006,
50614001
}
x000590_g_baothachC7 ={ --17 ngoc
50701001,
50701002,
50703001,
50704002,
50711001,
50711002,
50712001,
50712002,
50712003,
50712004,
50713001,
50713002,
50713003,
50713004,
50713005,
50713006,
50714001

}
x000590_g_LucHopLenhBai ={ --6 item
30504101,
30504102,

30504104,
30504105,
30504106,
30504103
}
x000590_g_yeuquyet_bt8 = {
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
			
function x000590_OnDefaultEvent( sceneId, selfId, targetId )
	if x000590_g_isActive ==1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Chào m×ng ngày l­ Nhà Giáo Vi®t Nam, TLBB Tình Kiªm - Tái Chiªn gØi ta ðªn ðây. Các hÕ c¥n ta giúp vi®c gì?")
			AddNumText(sceneId,x000590_g_ScriptId,"Ð±i Sß Ð° ÐÕi L­ Bao",4,1)
			AddNumText(sceneId,x000590_g_ScriptId,"Ð±i Tân Phân L­ HÕp",4,2)
			AddNumText(sceneId,x000590_g_ScriptId,"Ð±i ði¬m hoÕt ðµng",4,3)
			AddNumText(sceneId,x000590_g_ScriptId,"Ta chï ghé qua thôi",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else return
	end
end
function x000590_OnEventRequest( sceneId, selfId, targetId, eventId )
	local numText = GetNumText()
	if x000590_g_isActive ==1 then
		if numText == 1 then
			if LuaFnGetAvailableItemCount( sceneId, selfId, x000590_g_itemid1 ) < 1 or 
				LuaFnGetAvailableItemCount( sceneId, selfId, x000590_g_itemid2 ) < 1 or 
				LuaFnGetAvailableItemCount( sceneId, selfId, x000590_g_itemid3 ) < 1 or 
				LuaFnGetAvailableItemCount( sceneId, selfId, x000590_g_itemid4 ) < 1 then
				x000590_NotifyFailBox(sceneId, selfId, targetId, "Ð¬ ð±i ðßþc Sß ð° ÐÕi L­ Bao c¥n thu th§p ðü #G Thiên Long, Khoái LÕc, Ái ð°, Ân Sß #W. Nªu b¢ng hæu ðã có ðü nguyên li®u, hãy ki¬m tra nguyên li®u có th¬ b¸ khóa.")
				return
			end
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				x000590_NotifyFailBox(sceneId, selfId, targetId, "C¥n 1 ô tr¯ng trong túi ð°")
				return
			end
			LuaFnDelAvailableItem(sceneId,selfId, x000590_g_itemid1, 1 )
			LuaFnDelAvailableItem(sceneId,selfId, x000590_g_itemid2, 1 )
			LuaFnDelAvailableItem(sceneId,selfId, x000590_g_itemid3, 1 )
			LuaFnDelAvailableItem(sceneId,selfId, x000590_g_itemid4, 1 )
			
			local BagIndex = TryRecieveItem( sceneId, selfId, x000590_g_sudodailebao, 1 )
			if BagIndex ~= -1 then
				local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
				if bindidx ~= 1 then
					x000590_NotifyFailTips( sceneId, selfId,  "C¯ ð¸nh th¤t bÕi !" )
				end	
			end
			
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
			x000590_NotifyFailBox(sceneId, selfId, targetId, "Chúc m×ng ðã nh§n ðßþc Sß Ð° ÐÕi L­ Bao")
		end
		if numText == 2 then
			if LuaFnGetAvailableItemCount( sceneId, selfId, x000590_g_itemid5 ) < x000590_g_itemid5_num then
				x000590_NotifyFailBox(sceneId, selfId, targetId, "Ð¬ L­ HÕp c¥n #G"..x000590_g_itemid5_num.."  Thiên tÑ lß½ng duyên#W. Nªu b¢ng hæu ðã có ðü nguyên li®u, hãy ki¬m tra nguyên li®u có th¬ b¸ khóa.")
				return
			end
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				x000590_NotifyFailBox(sceneId, selfId, targetId, "C¥n 1 ô tr¯ng trong túi ð°")
				return
			end
			LuaFnDelAvailableItem(sceneId,selfId, x000590_g_itemid5, x000590_g_itemid5_num )
			
			local BagIndex =  TryRecieveItem( sceneId, selfId, x000590_g_tanphanlehap, 1 )
			if BagIndex ~= -1 then
				local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
				if bindidx ~= 1 then
					x000590_NotifyFailTips( sceneId, selfId,  "C¯ ð¸nh th¤t bÕi !" )
				end	
			end
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
			x000590_NotifyFailBox(sceneId, selfId, targetId, "Chúc m×ng ðã ð±i thành công L­ HÕp")
		end
		
		if numText == 3 then
			BeginEvent(sceneId)
				AddText(sceneId,"Chào m×ng ngày l­ Nhà Giáo Vi®t Nam, TLBB Tình Kiªm - Tái Chiªn gØi ta ðªn ðây. Các hÕ c¥n ta giúp vi®c gì?")
				AddNumText(sceneId,x000590_g_ScriptId,"Nh§n quà t£ng ngçu nhiên",4,1000)
				AddNumText(sceneId,x000590_g_ScriptId,"Ð±i yªu quyªt môn phái",4,2000)
				--AddNumText(sceneId,x000590_g_ScriptId,"Ð±i bäo thÕch c¤p 6",4,3000)
				--AddNumText(sceneId,x000590_g_ScriptId,"Ð±i bäo thÕch c¤p 7",4,4000)
				AddNumText(sceneId,x000590_g_ScriptId,"Ð±i #YLøc hþp l®nh bài",4,5000)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		local diemhd = 100000; --khai bao
		diemhd = 100;
		if numText == 1000 then --Nh§n quà t£ng ngçu nhiên
			BeginEvent(sceneId)
				AddText(sceneId,"Chào m×ng ngày l­ Nhà Giáo Vi®t Nam, TLBB Tình Kiªm - Tái Chiªn gØi ta ðªn ðây. Các hÕ c¥n ta giúp vi®c gì?")
				AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
				AddNumText(sceneId,x000590_g_ScriptId,"Ð°ng ý",4,1001)
				AddNumText(sceneId,x000590_g_ScriptId,"Ta chï ghé qua thôi",4,0)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		if numText == 1001 then 
			local check_diemhd_ok =0;
			check_diemhd_ok = x000590_check_diemhd(sceneId,selfId,targetId,diemhd )
			if check_diemhd_ok >=1 then
				x000590_NhanQuaNgauNhien( sceneId, selfId, targetId )
			else	
				x000590_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
				x000590_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			end
		end
		diemhd = 300;
		if numText == 2000 then --Ð±i yªu quyªt môn phái
			BeginEvent(sceneId)
				AddText(sceneId,"Chào m×ng ngày l­ Nhà Giáo Vi®t Nam, TLBB Tình Kiªm - Tái Chiªn gØi ta ðªn ðây. Các hÕ c¥n ta giúp vi®c gì?")
				AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
				AddNumText(sceneId,x000590_g_ScriptId,"Ð°ng ý",4,2001)
				AddNumText(sceneId,x000590_g_ScriptId,"Ta chï ghé qua thôi",4,0)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		if numText == 2001 then 
			local check_diemhd_ok =0;
			check_diemhd_ok = x000590_check_diemhd(sceneId,selfId,targetId,diemhd )
			if check_diemhd_ok >=1 then
				x000590_YeuQuyetMP( sceneId, selfId, targetId )
			else	
				x000590_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
				x000590_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			end
		end
		diemhd = 600;
		if numText == 3000 then --Ð±i bäo thÕch c¤p 6
			BeginEvent(sceneId)
				AddText(sceneId,"Chào m×ng ngày l­ Nhà Giáo Vi®t Nam, TLBB Tình Kiªm - Tái Chiªn gØi ta ðªn ðây. Các hÕ c¥n ta giúp vi®c gì?")
				AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
				AddNumText(sceneId,x000590_g_ScriptId,"Ð°ng ý",4,3001)
				AddNumText(sceneId,x000590_g_ScriptId,"Ta chï ghé qua thôi",4,0)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		if numText == 3001 then 
			local check_diemhd_ok =0;
			check_diemhd_ok = x000590_check_diemhd(sceneId,selfId,targetId,diemhd )
			if check_diemhd_ok >=1 then
				--x000590_BaoThachC6( sceneId, selfId, targetId )
			else	
				x000590_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
				x000590_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			end
		end
		diemhd = 1800;
		if numText == 4000 then --Ð±i bäo thÕch c¤p 7
			BeginEvent(sceneId)
				AddText(sceneId,"Chào m×ng ngày l­ Nhà Giáo Vi®t Nam, TLBB Tình Kiªm - Tái Chiªn gØi ta ðªn ðây. Các hÕ c¥n ta giúp vi®c gì?")
				AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
				AddNumText(sceneId,x000590_g_ScriptId,"Ð°ng ý",4,4001)
				AddNumText(sceneId,x000590_g_ScriptId,"Ta chï ghé qua thôi",4,0)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		if numText == 4001 then 
			local check_diemhd_ok =0;
			check_diemhd_ok = x000590_check_diemhd(sceneId,selfId,targetId,diemhd )
			if check_diemhd_ok >=1 then
				--x000590_BaoThachC7( sceneId, selfId, targetId )
			else	
				x000590_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
				x000590_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			end
		end
		diemhd = 2000;
		if numText == 5000 then --Ð±i #YLøc hþp l®nh bài
			BeginEvent(sceneId)
				AddText(sceneId,"Chào m×ng ngày l­ Nhà Giáo Vi®t Nam, TLBB Tình Kiªm - Tái Chiªn gØi ta ðªn ðây. Các hÕ c¥n ta giúp vi®c gì?")
				AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
				AddNumText(sceneId,x000590_g_ScriptId,"Ð°ng ý",4,5001)
				AddNumText(sceneId,x000590_g_ScriptId,"Ta chï ghé qua thôi",4,0)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		if numText == 5001 then 
			local check_diemhd_ok =0;
			check_diemhd_ok = x000590_check_diemhd(sceneId,selfId,targetId,diemhd )
			if check_diemhd_ok >=1 then
				x000590_LucHopLenhBai( sceneId, selfId, targetId )
			else	
				x000590_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
				x000590_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			end
		end
		if numText == 0 then --kªt thúc
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
		--------------------------------------------------------------------end hd edit------------------------------------------------------------------------------------------------------------------
	else return	
	end
end

function x000590_DoiYeuQuyetbt8( sceneId, selfId, targetId )
	local ok =0
	for i=1,getn(x000590_g_yeuquyet_bt8) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x000590_g_yeuquyet_bt8[i] ) --check so luong
		if num >=1 then --neu co
			LuaFnDelAvailableItem(sceneId,selfId, x000590_g_yeuquyet_bt8[i], num ) --thi xoa
			for j=1,num do
				local BagIndex =  TryRecieveItem( sceneId, selfId, x000590_g_yeuquyet_bt8[i], 1 ) --add lai
				if BagIndex <0 then
					x000590_NotifyFailTips( sceneId, selfId,  "Túi ðñng ð° ðã ð¥y !" )
				else
					x000590_NotifyFailTips( sceneId, selfId,  "Hoán ð±i thành công  #Y#{_ITEM" ..x000590_g_yeuquyet_bt8[i].. "}")
				end
			end
			ok =1;
		end
	end
	if ok==0 then
		x000590_NotifyFailTips( sceneId, selfId,  "Thiªu v§t ph¦m c¥n thiªt ho£c v§t ph¦m b¸ khoá !" )
	else
		x000590_NotifyFailTips( sceneId, selfId,  "Hoán ð±i hoàn t¤t !" )
	end
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
	return
	
end
function x000590_check_diemhd(sceneId,selfId,targetId,diemhd )
	local trungthu2013_point = GetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT)
	if trungthu2013_point < diemhd then
		return -1;
	end
	SetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT,trungthu2013_point-diemhd )
	return 1;
end
function x000590_NhanQuaNgauNhien( sceneId, selfId, targetId )
	--edit ok
	local gift_id = x000590_g_quatang[random(1,8)];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x000590_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		else
			x000590_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Ái ð° - Ân Sß] #cff99cc trong lúc trò chuy®n cùng #sß phø tÕi #GÐÕi Lý #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 0)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end
function x000590_YeuQuyetMP( sceneId, selfId, targetId )

	local gift_id = x000590_g_yeuquyet_bt8[random(1,18)];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		--local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		--if bindidx ~= 1 then
		--	x000590_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		--else
			x000590_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Ái ð° - Ân Sß] #cff99cc trong lúc trò chuy®n cùng #sß phø tÕi #GÐÕi Lý #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		--end
	end
end
function x000590_BaoThachC6( sceneId, selfId, targetId )

	local gift_id = x000590_g_baothachC6[random(1,17)];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x000590_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		else
			x000590_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Ái ð° - Ân Sß] #cff99cc trong lúc trò chuy®n cùng #sß phø tÕi #GÐÕi Lý #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end
function x000590_BaoThachC7( sceneId, selfId, targetId )

	local gift_id = x000590_g_baothachC7[random(1,17)];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x000590_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		else
			x000590_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Ái ð° - Ân Sß] #cff99cc trong lúc trò chuy®n cùng #sß phø tÕi #GÐÕi Lý #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end
function x000590_LucHopLenhBai( sceneId, selfId, targetId )

	local gift_id = x000590_g_LucHopLenhBai[random(1,5)];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x000590_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		else
			x000590_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Ái ð° - Ân Sß] #cff99cc trong lúc trò chuy®n cùng #sß phø tÕi #GÐÕi Lý #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end


function x000590_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x000590_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


