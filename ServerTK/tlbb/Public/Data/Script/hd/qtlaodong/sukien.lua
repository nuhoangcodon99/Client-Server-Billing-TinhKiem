x001095_g_scriptId = 001095
x001095_g_active = 1 --1 : kich hoat su kien

x001095_g_quatang = { -- 8 item
--30505123,--phao hoa trung thu vui ve
30505124,--Qu¯c khánh vui vë
30505107,--tieu lat ba
30008018,--Thanh Tâm Ðan
30008019,--Ð£c Xá L®nh
30008014,--Thông Thiên Linh Ðan
30900016,--cao c¤p hþp thành phù
30008030,--th± ðµn châu
30008048 --kim cß½ng toä

}
x001095_g_quavip = { -- 
	10141567, --T÷a kÜ: Xích Luy®n Câu 30 ngay
	10141590, --T÷a kÜ: Bích Giáp Huy«n Quy 30 ngay
	10141505,--Thú cßÞi: ¿ng Long Huy­n H°n
	10141521,--T÷a kÜ: Nhung Tuyªt Th¥n Ngßu
	30309092,-- TrÑng trân thú : Thái Thßþng Long TØ
	30309095, --TrÑng trân thú : Mao Mao Ngßu
	30309093 , --TrÑng trân thú : Côn Luân Tiên Tu¤n
	10141476,--Thú cßÞi: Ám Viêm Minh Sß
	10141483,--Thú cßÞi: Hß Không Hùng H°n
	30309078,-- TrÑng trân thú: BÕo T¦u Hùng Miêu

	30309079,-- TrÑng trân thú: Minh Âm Hoa Linh

	30309080,-- TrÑng trân thú: Ti¬u Mã Ca
	10124518,--Ng÷c Vû Thanh Trù 30day
	10124536,--Bách Hoa Thiên Thäo 30day
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310181,--Xuyªt Long ThÕch_Nguyên
	20310182,--Xuyªt Long ThÕch_BÕo
	20310183,--Xuyªt Long ThÕch_Thß½ng
	--38000152,--chu van tinh ngoc +5
	38000184,--chu van tinh ngoc +5 khong co dinh
	30008105, --thë ð±i tên
	10141122, --niên thú thß¶ng (90 ngày)
	10141807, --niên thú tím (30 ngày) Thú cßÞi: Niên Thú Lôi Ðình 30
	30900048, --chuy¬n tính ðan

}
x001095_g_baothachC6 ={ --17 ngoc
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
x001095_g_baothachC7 ={ --17 ngoc
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
x001095_g_LucHopLenhBai ={ --6 item
30504101,
30504102,

30504104,
30504105,
30504106,
30504103
}
x001095_g_yeuquyet_bt8 = {
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

function x001095_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		local strText = "#WT¤t cä b¢ng hæu trong thª gi¾i Thiên Long Bát Bµ Tình Kiªm hãy ði thu th§p ðü 4 chæ  #YVi®t - Nam - Ðµc - L§p #Wvà mang t¾i sÑ giä sñ ki®n ð¬ tích træ ði¬m hoÕt ðµng dùng ð±i nhæng ph¥n quà thú v¸"
		AddText( sceneId, strText )
		if x001095_g_active ==1 then 
			AddNumText( sceneId, x001095_g_scriptId, "Vi®t Nam Ðµc L§p", 3, 1)
			AddNumText( sceneId, x001095_g_scriptId, "Ð±i ði¬m hoÕt ðµng", 3, 3)		
			AddNumText( sceneId, x001095_g_scriptId, "V« event #GVi®t Nam Ðµc L§p", 11, 2)
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
function x001095_OnEventRequest( sceneId, selfId, targetId, eventId )
if x001095_g_active ==1 then 
	local numText = GetNumText()
	local welcome_test = "#WM×ng #Y40 #Wnåm kÖ ni®m ngày #Ygiäi phóng hoàn toàn mi«n Nam, th¯ng nh¤t ð¤t nß¾c, #WtÕi hÕ có r¤t nhi«u ph¥n thß·ng chu¦n b¸ cho các hÕ. Không biªt các hÕ có mu¯n l¤y không?"
	if GetNumText()==1 then --doi 4 chua viet nam doc lap
		local viet = LuaFnGetAvailableItemCount(sceneId, selfId,20700038)-- ðªm s¯ chæ Vi®t
		local nam = LuaFnGetAvailableItemCount(sceneId, selfId,20700039)-- ðªm s¯ chæ Nam
		local doc = LuaFnGetAvailableItemCount(sceneId, selfId,20700040)-- ðªm s¯ chæ Ðµc
		local lap = LuaFnGetAvailableItemCount(sceneId, selfId,20700041)-- ðªm s¯ chæ L§p
		if viet<1 or nam<1 or doc<1 or lap<1 then
			x001095_Tips(sceneId, selfId,targetId,"B¢ng hæu không ðü 4 loÕi chæ!!")
			x001095_FailTips(sceneId, selfId,"B¢ng hæu không ðü 4 loÕi chæ!!")
			return
		else
			local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
			if slot <1 then
				x001095_Tips(sceneId, selfId,targetId,"B¢ng hæu hãy ð¬ ít nh¤t 1 ô tr¯ng trong tay näi!!")
				x001095_FailTips(sceneId,selfId,"B¢ng hæu hãy ð¬ ít nh¤t 1 ô tr¯ng trong tay näi!!")
				return
			else
				LuaFnDelAvailableItem(sceneId,selfId,20700038,1)
				LuaFnDelAvailableItem(sceneId,selfId,20700039,1)
				LuaFnDelAvailableItem(sceneId,selfId,20700040,1)
				LuaFnDelAvailableItem(sceneId,selfId,20700041,1)

				---------------------cho nh§n v§t ph¦m----------------------------------------------
				--x001095_Tips(sceneId, selfId,targetId,"Nhi®m vø hoàn thành!")
				x001095_FailTips(sceneId,selfId,"Nhi®m vø hoàn thành!")
				
				--add diem hoat dong
				local pointadd = 1; --so diem hoat dong duoc thuong
				local trungthu2013_point = 0;
				local trungthu2013_point = GetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT)
				SetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT,trungthu2013_point+pointadd ) --add diem
				x001095_Tips(sceneId, selfId, targetId,"Nhi®m vø hoàn thành.");
				x001095_FailTips( sceneId, selfId,  "Ði¬m hoÕt ðµng tích luÛ hi®n tÕi : "..trungthu2013_point+pointadd.." ði¬m hoÕt ðµng!" )
				--end add diem hoat dong
				return
			end
		end
		
	end
	if GetNumText()==2 then --help
		BeginEvent( sceneId )
			local text1 ="#WTham gia các hoÕt ðµng #GTrân Long KÏ Cuµc, Ác T£c, Ác Bá, Lâu Lan T¥m Bäo, Tô Châu 1 2 3.... #WB¢ng hæu có tï l® nh§n ðßþc các ký tñ có tên: #YVi®t - Nam - Ðµc - L§p#r"
			local text2="#WMang ðü 4 ký tñ #YVi®t - Nam - Ðµc - L§p, #Wm²i ký tñ ít nh¤t 1 cái ðªn g£p tÕi hÕ. Hoàn thành nhi®m vø s¨ nh§n ði¬m hoÕt ðµng." 
			local text3="#WDùng ði¬m hoÕt ðµng này, b¢ng hæu có th¬ ð±i r¤t nhi«u v§t ph¦m b¤t ng¶ t× Thiên Long Bát Bµ Tình Kiªm !"
			AddText(sceneId,text1)
			AddText(sceneId,text2)
			AddText(sceneId,text3)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if numText == 3 then --doi diem hoat dong
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddNumText(sceneId,x001095_g_scriptId,"Nh§n quà t£ng ngçu nhiên",4,1000)
			AddNumText(sceneId,x001095_g_scriptId,"Ð±i yªu quyªt môn phái",4,2000)
			AddNumText(sceneId,x001095_g_scriptId,"Ð±i quà VIP",4,6000)
			AddNumText(sceneId,x001095_g_scriptId,"Ð±i bäo thÕch c¤p 6",4,3000)
			AddNumText(sceneId,x001095_g_scriptId,"Ð±i bäo thÕch c¤p 7",4,4000)
			
			--AddNumText(sceneId,x001095_g_scriptId,"Ð±i #YLøc hþp l®nh bài",4,5000)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	local diemhd = 100000; --khai bao
	diemhd = 100;
	if numText == 1000 then --Nh§n quà t£ng ngçu nhiên
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
			AddNumText(sceneId,x001095_g_scriptId,"Ð°ng ý",4,1001)
			AddNumText(sceneId,x001095_g_scriptId,"Ta chï ghé qua thôi",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 1001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001095_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001095_NhanQuaNgauNhien( sceneId, selfId, targetId )
		else	
			x001095_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			x001095_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
		end
	end
	diemhd = 200;
	if numText == 2000 then --Ð±i yªu quyªt môn phái
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
			AddNumText(sceneId,x001095_g_scriptId,"Ð°ng ý",4,2001)
			AddNumText(sceneId,x001095_g_scriptId,"Ta chï ghé qua thôi",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 2001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001095_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001095_YeuQuyetMP( sceneId, selfId, targetId )
		else	
			x001095_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			x001095_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
		end
	end
	
	diemhd = 500;
	if numText == 6000 then --x001095_DoiQuaVIP
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
			AddNumText(sceneId,x001095_g_scriptId,"Ð°ng ý",4,6001)
			AddNumText(sceneId,x001095_g_scriptId,"Ta chï ghé qua thôi",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 6001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001095_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001095_DoiQuaVIP( sceneId, selfId, targetId )
		else	
			x001095_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			x001095_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
		end
	end
	
	diemhd = 1000;
	if numText == 3000 then --Ð±i bäo thÕch c¤p 6
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
			AddNumText(sceneId,x001095_g_scriptId,"Ð°ng ý",4,3001)
			AddNumText(sceneId,x001095_g_scriptId,"Ta chï ghé qua thôi",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 3001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001095_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001095_BaoThachC6( sceneId, selfId, targetId )
		else	
			x001095_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			x001095_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
		end
	end
	diemhd = 2000;
	if numText == 4000 then --Ð±i bäo thÕch c¤p 7
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
			AddNumText(sceneId,x001095_g_scriptId,"Ð°ng ý",4,4001)
			AddNumText(sceneId,x001095_g_scriptId,"Ta chï ghé qua thôi",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 4001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001095_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001095_BaoThachC7( sceneId, selfId, targetId )
		else	
			x001095_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			x001095_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
		end
	end
	diemhd = 20000;
	if numText == 5000 then --Ð±i #YLøc hþp l®nh bài
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
			AddNumText(sceneId,x001095_g_scriptId,"Ð°ng ý",4,5001)
			AddNumText(sceneId,x001095_g_scriptId,"Ta chï ghé qua thôi",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 5001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001095_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001095_LucHopLenhBai( sceneId, selfId, targetId )
		else	
			x001095_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			x001095_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
		end
	end
	if numText == 0 then --kªt thúc
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
end
end



function x001095_DoiYeuQuyetbt8( sceneId, selfId, targetId )
	local ok =0
	for i=1,getn(x001095_g_yeuquyet_bt8) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x001095_g_yeuquyet_bt8[i] ) --check so luong
		if num >=1 then --neu co
			LuaFnDelAvailableItem(sceneId,selfId, x001095_g_yeuquyet_bt8[i], num ) --thi xoa
			for j=1,num do
				local BagIndex =  TryRecieveItem( sceneId, selfId, x001095_g_yeuquyet_bt8[i], 1 ) --add lai
				if BagIndex <0 then
					x001095_NotifyFailTips( sceneId, selfId,  "Túi ðñng ð° ðã ð¥y !" )
				else
					x001095_NotifyFailTips( sceneId, selfId,  "Hoán ð±i thành công  #Y#{_ITEM" ..x001095_g_yeuquyet_bt8[i].. "}")
				end
			end
			ok =1;
		end
	end
	if ok==0 then
		x001095_NotifyFailTips( sceneId, selfId,  "Thiªu v§t ph¦m c¥n thiªt ho£c v§t ph¦m b¸ khoá !" )
	else
		x001095_NotifyFailTips( sceneId, selfId,  "Hoán ð±i hoàn t¤t !" )
	end
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
	return
	
end
function x001095_check_diemhd(sceneId,selfId,targetId,diemhd )
	local trungthu2013_point = GetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT)
	if trungthu2013_point < diemhd then
		return -1;
	end
	SetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT,trungthu2013_point-diemhd )
	return 1;
end
function x001095_NhanQuaNgauNhien( sceneId, selfId, targetId )
	--edit ok
	local gift_id = x001095_g_quatang[random(getn(x001095_g_quatang))];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x001095_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		else
			x001095_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Vi®t Nam Ðµc L§p] #Pm×ng #Y40 #Pnåm #Ygiäi phóng mi«n Nam, th¯ng nh¤t ð¤t nß¾c #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 0)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end
function x001095_YeuQuyetMP( sceneId, selfId, targetId )

	local gift_id = x001095_g_yeuquyet_bt8[random(1,18)];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		--local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		--if bindidx ~= 1 then
		--	x001095_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		--else
			x001095_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Vi®t Nam Ðµc L§p] #Pm×ng #Y69 #Pnåm #YQu¯c Khánh #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		--end
	end
end
function x001095_DoiQuaVIP( sceneId, selfId, targetId )

	local gift_id = x001095_g_quavip[random(getn(x001095_g_quavip))];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		--local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		--if bindidx ~= 1 then
		--	x001095_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		--else
			x001095_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Vi®t Nam Ðµc L§p] #Pm×ng #Y69 #Pnåm #YQu¯c Khánh #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		--end
	end
end
function x001095_BaoThachC6( sceneId, selfId, targetId )

	local gift_id = x001095_g_baothachC6[random(getn(x001095_g_baothachC6))];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x001095_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		else
			x001095_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Vi®t Nam Ðµc L§p] #Pm×ng #Y69 #Pnåm #YQu¯c Khánh #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end
function x001095_BaoThachC7( sceneId, selfId, targetId )

	local gift_id = x001095_g_baothachC7[random(getn(x001095_g_baothachC7))];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x001095_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		else
			x001095_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Vi®t Nam Ðµc L§p] #Pm×ng #Y69 #Pnåm #YQu¯c Khánh #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end
function x001095_LucHopLenhBai( sceneId, selfId, targetId )

	local gift_id = x001095_g_LucHopLenhBai[random(1,5)];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x001095_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		else
			x001095_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Vi®t Nam Ðµc L§p] #Pm×ng #Y69 #Pnåm #YQu¯c Khánh #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end


function x001095_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x001095_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


function x001095_Tips(sceneId, selfId,targetId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x001095_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
