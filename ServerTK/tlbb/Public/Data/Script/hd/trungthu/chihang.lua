
x000570_g_ScriptId = 000570

x000570_g_banhnuonghaohang = 30103029
x000570_g_banhnuong = 30103030
x000570_g_botmy = {id = 30103062, num = 5}
x000570_g_lucdau = {id = 30103037, num = 3}
x000570_g_trungga = {id = 30103061, num = 1}
x000570_g_banhdeo = 30103032
x000570_g_botnep = {id = 30103031, num = 5}
x000570_g_lucdau = {id = 30103037, num = 3}
x000570_g_mutsen = {id = 30103060, num = 2}
x000570_g_hatdua = {id = 30103036, num = 1}
x000570_g_denlong= 30103026
x000570_g_hodan = {id = 30103027, num = 1}
x000570_g_chisoi = {id = 30103028, num = 1}
x000570_g_giaymau = {id = 30103034, num = 3}
x000570_g_tre = {id = 30103033, num = 2}
x000570_g_nen = {id = 30103035, num = 1}

x000570_g_quatang = { -- 8 item
30505123,--phao hoa trung thu vui ve
30505107,--tieu lat ba
30008018,--Thanh Tâm Ðan
30008019,--Ð£c Xá L®nh
30008014,--Thông Thiên Linh Ðan
30900016,--cao c¤p hþp thành phù
30008030,--th± ðµn châu
30008048 --kim cß½ng toä
}
x000570_g_quavip = { -- 
	10124606, --Lý Hý Lan Phß½ng
	10124610, --Døc Huyªt Hàn Phong
	10124614, --Bích ThuÖ Hàm Phß½ng
	10124625, --DÕ C¦m Thiên Lan
	10124630, --T¯ Vãn Huy«n Thß½ng
	10124633, --Thß½ng Vân Sß½ng Nguy®t


	10124624, --Ng÷c C¦m Kim Sa (nhuom)
	10124620, ----M£c Vû Ti«m U
	
	
--new thoi trang

10125190,
10125191,
10125192,
10125193,
10125194,
10125195,
10125196,
10125197,
10125198,
10125199,
10125200,
10125201,
10125202,
10125203,
10125204,


	--10141567, --T÷a kÜ: Xích Luy®n Câu 30 ngay
	--10141590, --T÷a kÜ: Bích Giáp Huy«n Quy 30 ngay
	30309095, --TrÑng trân thú : Mao Mao Ngßu
	30309078,-- TrÑng trân thú: BÕo T¦u Hùng Miêu
	30309079,-- TrÑng trân thú: Minh Âm Hoa Linh

	30309080,-- TrÑng trân thú: Ti¬u Mã Ca
	
	
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310181,--Xuyªt Long ThÕch_Nguyên
	20310182,--Xuyªt Long ThÕch_BÕo
	20310183,--Xuyªt Long ThÕch_Thß½ng
	--38000152,--chu van tinh ngoc +5
	38000184,--chu van tinh ngoc +5 khong co dinh
	30008105, --thë ð±i tên
	--10141122, --niên thú thß¶ng (90 ngày)
	10141807, --niên thú tím (30 ngày) Thú cßÞi: Niên Thú Lôi Ðình 30
	30900048, --chuy¬n tính ðan
	20503062,--Ly Höa
	20503061, --Trang b¸ Tinh thông phù
	
	30010080,--Chân Nguyên Phách
	30010081,--Chân Nguyên Tinh Phách

}
x000570_g_pet_trungthu = {
30308282, --TrÑng trân thú : Bách Chiªn Kim Cß½ng
30308283, --TrÑng trân thú : Ti¬u Long Næ
30308281, --TrÑng trân thú : Hàm Ð§u Hùng
}
x000570_g_5lenhbai = {
20600010,--Ngû Hành L®nh Bài(Kim)
20600011,--Ngû Hành L®nh Bài(Mµc)
20600012,--Ngû Hành L®nh Bài(Thüy)
20600013,--Ngû Hành L®nh Bài(Höa)
20600014,--Ngû Hành L®nh Bài(Th±)
}


x000570_g_baothachC6 ={ --17 ngoc
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
x000570_g_baothachC7 ={ --17 ngoc
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
x000570_g_LucHopLenhBai ={ --6 item
30504101,
30504102,

30504104,
30504105,
30504106,
30504103
}
x000570_g_yeuquyet_bt8 = {
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
			
function x000570_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Tªt Trung Thu s¡p ðªn g¥n, ngß½i mu¯n làm gì nào?")
		AddNumText(sceneId,x000570_g_ScriptId,"Làm Bánh Nß¾ng",4,1)
		AddNumText(sceneId,x000570_g_ScriptId,"Làm Bánh Dëo",4,4)
		AddNumText(sceneId,x000570_g_ScriptId,"Làm Ðèn L°ng",4,2)
		AddNumText(sceneId,x000570_g_ScriptId,"Ð±i ði¬m hoÕt ðµng",4,3)
		--AddNumText(sceneId,x000570_g_ScriptId,"Ð±i Yªu Quyªt c¯ ð¸nh",4,5) --hd add 20/9 num 5, 6
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end
function x000570_OnEventRequest( sceneId, selfId, targetId, eventId )
	local numText = GetNumText()
	local welcome_test = "Tªt Trung Thu s¡p ðªn g¥n, ngß½i mu¯n làm gì nào?"
	if numText == 1 then
		if LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_botmy.id ) < x000570_g_botmy.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_lucdau.id ) < x000570_g_lucdau.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_trungga.id ) < x000570_g_trungga.num then
			x000570_NotifyFailBox(sceneId, selfId, targetId, "Ð¬ làm ðßþc bánh Trung Thu c¥n #G"..x000570_g_botmy.num.." Bµt MÏ, "..x000570_g_lucdau.num.." Ð§u Xanh và "..x000570_g_trungga.num.." TrÑng Gà #W Nªu b¢ng hæu ðã có ðü nguyên li®u, hãy ki¬m tra nguyên li®u có th¬ b¸ khóa.")
			return
		end
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x000570_NotifyFailBox(sceneId, selfId, targetId, "C¥n 1 ô tr¯ng trong túi ð°")
			return
		end
		LuaFnDelAvailableItem(sceneId,selfId, x000570_g_botmy.id, x000570_g_botmy.num )
		LuaFnDelAvailableItem(sceneId,selfId, x000570_g_lucdau.id, x000570_g_lucdau.num )
		LuaFnDelAvailableItem(sceneId,selfId, x000570_g_trungga.id, x000570_g_trungga.num )
		
		local BagIndex = TryRecieveItem( sceneId, selfId, x000570_g_banhnuong, 1 )
		if BagIndex ~= -1 then
			local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
			if bindidx ~= 1 then
				x000570_NotifyFailTips( sceneId, selfId,  "C¯ ð¸nh th¤t bÕi !" )
			end	
		end
		
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		x000570_NotifyFailBox(sceneId, selfId, targetId, "Chúc m×ng ðã làm thành công Bánh Nß¾ng")
	end
	if numText == 2 then
		if LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_hodan.id ) < x000570_g_hodan.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_giaymau.id ) < x000570_g_giaymau.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_nen.id ) < x000570_g_nen.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_tre.id ) < x000570_g_tre.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_chisoi.id ) < x000570_g_chisoi.num then
			x000570_NotifyFailBox(sceneId, selfId, targetId, "Ð¬ làm ðßþc Ðèn L°ng c¥n #G"..x000570_g_hodan.num.." H° Dán, "..x000570_g_giaymau.num.." Gi¤y Màu, "..x000570_g_nen.num.." Nªn, "..x000570_g_tre.num.." Tre và "..x000570_g_chisoi.num.." Chï Sþi #W. Nªu b¢ng hæu ðã có ðü nguyên li®u, hãy ki¬m tra nguyên li®u có th¬ b¸ khóa.")
			return
		end
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x000570_NotifyFailBox(sceneId, selfId, targetId, "C¥n 1 ô tr¯ng trong túi ð°")
			return
		end
		LuaFnDelAvailableItem(sceneId,selfId, x000570_g_hodan.id, x000570_g_hodan.num )
		LuaFnDelAvailableItem(sceneId,selfId, x000570_g_giaymau.id, x000570_g_giaymau.num )
		LuaFnDelAvailableItem(sceneId,selfId, x000570_g_nen.id, x000570_g_nen.num )
		LuaFnDelAvailableItem(sceneId,selfId, x000570_g_tre.id, x000570_g_tre.num )
		LuaFnDelAvailableItem(sceneId,selfId, x000570_g_chisoi.id, x000570_g_chisoi.num )
		local BagIndex =  TryRecieveItem( sceneId, selfId, x000570_g_denlong, 1 )
		if BagIndex ~= -1 then
			local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
			if bindidx ~= 1 then
				x000570_NotifyFailTips( sceneId, selfId,  "C¯ ð¸nh th¤t bÕi !" )
			end	
		end
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		x000570_NotifyFailBox(sceneId, selfId, targetId, "Chúc m×ng ðã làm thành công Ðèn L°ng")
	end
	if numText == 4 then
		if LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_botnep.id ) < x000570_g_botnep.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_lucdau.id ) < x000570_g_lucdau.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_mutsen.id ) < x000570_g_mutsen.num or 
			--LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_hatdua.id ) < x000570_g_hatdua.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_hatdua.id ) < x000570_g_hatdua.num then
			x000570_NotifyFailBox(sceneId, selfId, targetId, "Ð¬ làm ðßþc Bánh Dëo c¥n #G"..x000570_g_botnep.num.." Bµt Nªp, "..x000570_g_lucdau.num.." Ð§u Xanh, "..x000570_g_mutsen.num.." MÑt Sen, "..x000570_g_hatdua.num.." HÕt Dßa #W. Nªu b¢ng hæu ðã có ðü nguyên li®u, hãy ki¬m tra nguyên li®u có th¬ b¸ khóa.")
			return
		end
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x000570_NotifyFailBox(sceneId, selfId, targetId, "C¥n 1 ô tr¯ng trong túi ð°")
			return
		end
		LuaFnDelAvailableItem(sceneId,selfId, x000570_g_botnep.id, x000570_g_botnep.num )
		LuaFnDelAvailableItem(sceneId,selfId, x000570_g_lucdau.id, x000570_g_lucdau.num )
		LuaFnDelAvailableItem(sceneId,selfId, x000570_g_mutsen.id, x000570_g_mutsen.num )
		LuaFnDelAvailableItem(sceneId,selfId, x000570_g_hatdua.id, x000570_g_hatdua.num )
		--LuaFnDelAvailableItem(sceneId,selfId, x000570_g_chisoi.id, x000570_g_chisoi.num )
		local BagIndex =  TryRecieveItem( sceneId, selfId, x000570_g_banhdeo, 1 )
		if BagIndex ~= -1 then
			local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
			if bindidx ~= 1 then
				x000570_NotifyFailTips( sceneId, selfId,  "C¯ ð¸nh th¤t bÕi !" )
			end	
		end
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		x000570_NotifyFailBox(sceneId, selfId, targetId, "Chúc m×ng ðã làm thành công Bánh Dëo")
	end
	--------------------------------------------------------------------hd edit------------------------------------------------------------------------------------------------------------------
	if numText == 5 then --doi yeu quyet co dinh
		BeginEvent(sceneId)
			AddText(sceneId,"Sñ ki®n Trung Thu ðang di­n ra sôi n²i, hãy nhanh chóng tham gia ð¬ nh§n quà !")
			AddText(sceneId,"Hãy mang Yªu Quyªt ph¥n thß·ng b¸ c¯ ð¸nh ðªn g£p ta, ta s¨ giúp ngß½i ð±i lÕi. Ngß½i có ð°ng ý không ?")
			AddNumText(sceneId,x000570_g_ScriptId,"Ð°ng ý",4,6)
			AddNumText(sceneId,x000570_g_ScriptId,"Ta chï ghé qua thôi",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 6 then
		x000570_DoiYeuQuyetbt8( sceneId, selfId, targetId )
	end
	----end doi yeu quyet --hd add 20/9
	if numText == 3 then
		BeginEvent(sceneId)
			AddText(sceneId,"Tªt Trung Thu s¡p ðªn g¥n, ngß½i mu¯n làm gì nào?")
			AddNumText(sceneId,x000570_g_ScriptId,"Nh§n quà t£ng ngçu nhiên",4,1000)
			AddNumText(sceneId,x000570_g_ScriptId,"Ð±i yªu quyªt môn phái",4,2000)
			AddNumText(sceneId,x000570_g_ScriptId,"Ð±i quà VIP",4,6000)
			AddNumText(sceneId,x000570_g_ScriptId,"Ð±i bäo thÕch c¤p 6",4,3000)
			AddNumText(sceneId,x000570_g_ScriptId,"Ð±i bäo thÕch c¤p 7",4,4000)
			--AddNumText(sceneId,x000570_g_ScriptId,"Ð±i #YLøc hþp l®nh bài",4,5000)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	local diemhd = 100000; --khai bao
	diemhd = 100;
	if numText == 1000 then --Nh§n quà t£ng ngçu nhiên
		BeginEvent(sceneId)
			AddText(sceneId,"Tªt Trung Thu s¡p ðªn g¥n, ngß½i mu¯n làm gì nào?")
			AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
			AddNumText(sceneId,x000570_g_ScriptId,"Ð°ng ý",4,1001)
			AddNumText(sceneId,x000570_g_ScriptId,"Ta chï ghé qua thôi",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 1001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x000570_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x000570_NhanQuaNgauNhien( sceneId, selfId, targetId )
		else	
			x000570_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			x000570_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
		end
	end
	diemhd = 200;
	if numText == 2000 then --Ð±i yªu quyªt môn phái
		BeginEvent(sceneId)
			AddText(sceneId,"Tªt Trung Thu s¡p ðªn g¥n, ngß½i mu¯n làm gì nào?")
			AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
			AddNumText(sceneId,x000570_g_ScriptId,"Ð°ng ý",4,2001)
			AddNumText(sceneId,x000570_g_ScriptId,"Ta chï ghé qua thôi",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 2001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x000570_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x000570_YeuQuyetMP( sceneId, selfId, targetId )
		else	
			x000570_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			x000570_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
		end
	end
	diemhd = 900;
	if numText == 6000 then --x000570_DoiQuaVIP
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
			AddNumText(sceneId,x000570_g_ScriptId,"Ð°ng ý",4,6001)
			AddNumText(sceneId,x000570_g_ScriptId,"Ta chï ghé qua thôi",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 6001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x000570_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x000570_DoiQuaVIP( sceneId, selfId, targetId )
		else	
			x000570_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			x000570_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
		end
	end
	diemhd = 2000;
	if numText == 3000 then --Ð±i bäo thÕch c¤p 6
		BeginEvent(sceneId)
			AddText(sceneId,"Tªt Trung Thu s¡p ðªn g¥n, ngß½i mu¯n làm gì nào?")
			AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
			AddNumText(sceneId,x000570_g_ScriptId,"Ð°ng ý",4,3001)
			AddNumText(sceneId,x000570_g_ScriptId,"Ta chï ghé qua thôi",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 3001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x000570_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x000570_BaoThachC6( sceneId, selfId, targetId )
		else	
			x000570_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			x000570_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
		end
	end
	diemhd = 3000;
	if numText == 4000 then --Ð±i bäo thÕch c¤p 7
		BeginEvent(sceneId)
			AddText(sceneId,"Tªt Trung Thu s¡p ðªn g¥n, ngß½i mu¯n làm gì nào?")
			AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
			AddNumText(sceneId,x000570_g_ScriptId,"Ð°ng ý",4,4001)
			AddNumText(sceneId,x000570_g_ScriptId,"Ta chï ghé qua thôi",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 4001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x000570_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x000570_BaoThachC7( sceneId, selfId, targetId )
		else	
			x000570_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			x000570_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
		end
	end
	diemhd = 20000;
	if numText == 5000 then --Ð±i #YLøc hþp l®nh bài
		BeginEvent(sceneId)
			AddText(sceneId,"Tªt Trung Thu s¡p ðªn g¥n, ngß½i mu¯n làm gì nào?")
			AddText(sceneId,"C¥n t¯n "..diemhd.." ði¬m hoÕt ðµng ð¬ nh§n quà cüa ta. Ngß½i có ð°ng ý không ?")
			AddNumText(sceneId,x000570_g_ScriptId,"Ð°ng ý",4,5001)
			AddNumText(sceneId,x000570_g_ScriptId,"Ta chï ghé qua thôi",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 5001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x000570_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x000570_LucHopLenhBai( sceneId, selfId, targetId )
		else	
			x000570_NotifyFailBox( sceneId, selfId, targetId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
			x000570_NotifyFailTips( sceneId, selfId, "Không ðü ði¬m hoÕt ðµng c¥n thiªt !" )
		end
	end
	if numText == 0 then --kªt thúc
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	--------------------------------------------------------------------end hd edit------------------------------------------------------------------------------------------------------------------
end

function x000570_DoiYeuQuyetbt8( sceneId, selfId, targetId )
	local ok =0
	for i=1,getn(x000570_g_yeuquyet_bt8) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_yeuquyet_bt8[i] ) --check so luong
		if num >=1 then --neu co
			LuaFnDelAvailableItem(sceneId,selfId, x000570_g_yeuquyet_bt8[i], num ) --thi xoa
			for j=1,num do
				local BagIndex =  TryRecieveItem( sceneId, selfId, x000570_g_yeuquyet_bt8[i], 1 ) --add lai
				if BagIndex <0 then
					x000570_NotifyFailTips( sceneId, selfId,  "Túi ðñng ð° ðã ð¥y !" )
				else
					x000570_NotifyFailTips( sceneId, selfId,  "Hoán ð±i thành công  #Y#{_ITEM" ..x000570_g_yeuquyet_bt8[i].. "}")
				end
			end
			ok =1;
		end
	end
	if ok==0 then
		x000570_NotifyFailTips( sceneId, selfId,  "Thiªu v§t ph¦m c¥n thiªt ho£c v§t ph¦m b¸ khoá !" )
	else
		x000570_NotifyFailTips( sceneId, selfId,  "Hoán ð±i hoàn t¤t !" )
	end
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
	return
	
end
function x000570_check_diemhd(sceneId,selfId,targetId,diemhd )
	local trungthu2013_point = GetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT)
	if trungthu2013_point < diemhd then
		return -1;
	end
	SetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT,trungthu2013_point-diemhd )
	return 1;
end
function x000570_NhanQuaNgauNhien( sceneId, selfId, targetId )
	--edit ok
	local gift_id = x000570_g_quatang[random(1,8)];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x000570_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		else
			x000570_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng Trung Thu:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc trong lúc trò chuy®n cùng #Ch¸ H¢ng tÕi #GÐÕi Lý #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 0)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end
function x000570_YeuQuyetMP( sceneId, selfId, targetId )

	local gift_id = x000570_g_yeuquyet_bt8[random(1,18)];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		--local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		--if bindidx ~= 1 then
		--	x000570_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		--else
			x000570_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng Trung Thu:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc trong lúc trò chuy®n cùng #Ch¸ H¢ng tÕi #GÐÕi Lý #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		--end
	end
end
function x000570_BaoThachC6( sceneId, selfId, targetId )

	local gift_id = x000570_g_baothachC6[random(1,17)];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x000570_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		else
			x000570_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng Trung Thu:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc trong lúc trò chuy®n cùng #Ch¸ H¢ng tÕi #GÐÕi Lý #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end
function x000570_BaoThachC7( sceneId, selfId, targetId )

	local gift_id = x000570_g_baothachC7[random(1,17)];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x000570_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		else
			x000570_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng Trung Thu:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc trong lúc trò chuy®n cùng #Ch¸ H¢ng tÕi #GÐÕi Lý #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end
function x000570_LucHopLenhBai( sceneId, selfId, targetId )

	local gift_id = x000570_g_LucHopLenhBai[random(1,5)];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x000570_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		else
			x000570_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng Trung Thu:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc trong lúc trò chuy®n cùng #Ch¸ H¢ng tÕi #GÐÕi Lý #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end
function x000570_DoiQuaVIP( sceneId, selfId, targetId )

	local gift_id = x000570_g_quavip[random(getn(x000570_g_quavip))];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		--local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		--if bindidx ~= 1 then
		--	x000570_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
		--else
			x000570_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc trong lúc trò chuy®n cùng #Ch¸ H¢ng tÕi #GÐÕi Lý #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		--end
	end
	--add phan thuong 1
	local random_value = random(100);
	if random_value > 99 then --ty le 1%
		local gift_id = x000570_g_pet_trungthu[random(getn(x000570_g_pet_trungthu))];
		local BagIndex = TryRecieveItem( sceneId, followMembers[i], gift_id, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			--local	bindidx	=LuaFnItemBind( sceneId, followMembers[i], BagIndex)
			--if bindidx ~= 1 then
			--	x000570_NotifyTip( sceneId, followMembers[i], "C¯ ð¸nh th¤t bÕi !" )
			--else
				x000570_NotifyTip( sceneId, followMembers[i],"Chúc m×ng, nh§n ðßþc quà t£ng Trung Thu  #Y#{_ITEM" ..gift_id.. "}" )
				
				str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc trong lúc ðang #Yð±i quà VIP #P tÕi #GCh¸ H¢ng #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,followMembers[i]))
				BroadMsgByChatPipe(sceneId, followMembers[i], str, 4)
			--end
		end
	end
	--add phan thuong 2
	local random_value = random(10000);
	if random_value > 9999 then --ty le 0.01%
		local gift_id = x000570_g_5lenhbai[random(getn(x000570_g_5lenhbai))];
		local BagIndex = TryRecieveItem( sceneId, followMembers[i], gift_id, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			--local	bindidx	=LuaFnItemBind( sceneId, followMembers[i], BagIndex)
			--if bindidx ~= 1 then
			--	x000570_NotifyTip( sceneId, followMembers[i], "C¯ ð¸nh th¤t bÕi !" )
			--else
				x000570_NotifyTip( sceneId, followMembers[i],"Chúc m×ng, nh§n ðßþc quà t£ng Trung Thu  #Y#{_ITEM" ..gift_id.. "}" )
				
				str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc trong lúc ðang #Yð±i quà VIP #P tÕi #GCh¸ H¢ng #cff99ccnh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,followMembers[i]))
				BroadMsgByChatPipe(sceneId, followMembers[i], str, 4)
			--end
		end
	end
end

function x000570_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x000570_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


