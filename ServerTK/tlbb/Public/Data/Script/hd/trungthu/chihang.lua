
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
30008018,--Thanh T�m �an
30008019,--Уc X� L�nh
30008014,--Th�ng Thi�n Linh �an
30900016,--cao c�p h�p th�nh ph�
30008030,--th� �n ch�u
30008048 --kim c߽ng to�
}
x000570_g_quavip = { -- 
	10124606, --L� H� Lan Ph߽ng
	10124610, --D�c Huy�t H�n Phong
	10124614, --B�ch Thu� H�m Ph߽ng
	10124625, --D� C�m Thi�n Lan
	10124630, --T� V�n Huy�n Th߽ng
	10124633, --Th߽ng V�n S߽ng Nguy�t


	10124624, --Ng�c C�m Kim Sa (nhuom)
	10124620, ----M�c V� Ti�m U
	
	
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


	--10141567, --T�a k�: X�ch Luy�n C�u 30 ngay
	--10141590, --T�a k�: B�ch Gi�p Huy�n Quy 30 ngay
	30309095, --Tr�ng tr�n th� : Mao Mao Ng�u
	30309078,-- Tr�ng tr�n th�: B�o T�u H�ng Mi�u
	30309079,-- Tr�ng tr�n th�: Minh �m Hoa Linh

	30309080,-- Tr�ng tr�n th�: Ti�u M� Ca
	
	
	20310180,-- T�ch V�n Th�y
	20310180,-- T�ch V�n Th�y
	20310181,--Xuy�t Long Th�ch_Nguy�n
	20310182,--Xuy�t Long Th�ch_B�o
	20310183,--Xuy�t Long Th�ch_Th߽ng
	--38000152,--chu van tinh ngoc +5
	38000184,--chu van tinh ngoc +5 khong co dinh
	30008105, --th� �i t�n
	--10141122, --ni�n th� th߶ng (90 ng�y)
	10141807, --ni�n th� t�m (30 ng�y) Th� c��i: Ni�n Th� L�i ��nh 30
	30900048, --chuy�n t�nh �an
	20503062,--Ly H�a
	20503061, --Trang b� Tinh th�ng ph�
	
	30010080,--Ch�n Nguy�n Ph�ch
	30010081,--Ch�n Nguy�n Tinh Ph�ch

}
x000570_g_pet_trungthu = {
30308282, --Tr�ng tr�n th� : B�ch Chi�n Kim C߽ng
30308283, --Tr�ng tr�n th� : Ti�u Long N�
30308281, --Tr�ng tr�n th� : H�m Чu H�ng
}
x000570_g_5lenhbai = {
20600010,--Ng� H�nh L�nh B�i(Kim)
20600011,--Ng� H�nh L�nh B�i(M�c)
20600012,--Ng� H�nh L�nh B�i(Th�y)
20600013,--Ng� H�nh L�nh B�i(H�a)
20600014,--Ng� H�nh L�nh B�i(Th�)
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
		AddText(sceneId,"T�t Trung Thu s�p �n g�n, ng߽i mu�n l�m g� n�o?")
		AddNumText(sceneId,x000570_g_ScriptId,"L�m B�nh N߾ng",4,1)
		AddNumText(sceneId,x000570_g_ScriptId,"L�m B�nh D�o",4,4)
		AddNumText(sceneId,x000570_g_ScriptId,"L�m ��n L�ng",4,2)
		AddNumText(sceneId,x000570_g_ScriptId,"бi �i�m ho�t �ng",4,3)
		--AddNumText(sceneId,x000570_g_ScriptId,"бi Y�u Quy�t c� �nh",4,5) --hd add 20/9 num 5, 6
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end
function x000570_OnEventRequest( sceneId, selfId, targetId, eventId )
	local numText = GetNumText()
	local welcome_test = "T�t Trung Thu s�p �n g�n, ng߽i mu�n l�m g� n�o?"
	if numText == 1 then
		if LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_botmy.id ) < x000570_g_botmy.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_lucdau.id ) < x000570_g_lucdau.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_trungga.id ) < x000570_g_trungga.num then
			x000570_NotifyFailBox(sceneId, selfId, targetId, "Ь l�m ���c b�nh Trung Thu c�n #G"..x000570_g_botmy.num.." B�t M�, "..x000570_g_lucdau.num.." Чu Xanh v� "..x000570_g_trungga.num.." Tr�ng G� #W N�u b�ng h�u �� c� �� nguy�n li�u, h�y ki�m tra nguy�n li�u c� th� b� kh�a.")
			return
		end
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x000570_NotifyFailBox(sceneId, selfId, targetId, "C�n 1 � tr�ng trong t�i �")
			return
		end
		LuaFnDelAvailableItem(sceneId,selfId, x000570_g_botmy.id, x000570_g_botmy.num )
		LuaFnDelAvailableItem(sceneId,selfId, x000570_g_lucdau.id, x000570_g_lucdau.num )
		LuaFnDelAvailableItem(sceneId,selfId, x000570_g_trungga.id, x000570_g_trungga.num )
		
		local BagIndex = TryRecieveItem( sceneId, selfId, x000570_g_banhnuong, 1 )
		if BagIndex ~= -1 then
			local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
			if bindidx ~= 1 then
				x000570_NotifyFailTips( sceneId, selfId,  "C� �nh th�t b�i !" )
			end	
		end
		
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		x000570_NotifyFailBox(sceneId, selfId, targetId, "Ch�c m�ng �� l�m th�nh c�ng B�nh N߾ng")
	end
	if numText == 2 then
		if LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_hodan.id ) < x000570_g_hodan.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_giaymau.id ) < x000570_g_giaymau.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_nen.id ) < x000570_g_nen.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_tre.id ) < x000570_g_tre.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_chisoi.id ) < x000570_g_chisoi.num then
			x000570_NotifyFailBox(sceneId, selfId, targetId, "Ь l�m ���c ��n L�ng c�n #G"..x000570_g_hodan.num.." H� D�n, "..x000570_g_giaymau.num.." Gi�y M�u, "..x000570_g_nen.num.." N�n, "..x000570_g_tre.num.." Tre v� "..x000570_g_chisoi.num.." Ch� S�i #W. N�u b�ng h�u �� c� �� nguy�n li�u, h�y ki�m tra nguy�n li�u c� th� b� kh�a.")
			return
		end
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x000570_NotifyFailBox(sceneId, selfId, targetId, "C�n 1 � tr�ng trong t�i �")
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
				x000570_NotifyFailTips( sceneId, selfId,  "C� �nh th�t b�i !" )
			end	
		end
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		x000570_NotifyFailBox(sceneId, selfId, targetId, "Ch�c m�ng �� l�m th�nh c�ng ��n L�ng")
	end
	if numText == 4 then
		if LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_botnep.id ) < x000570_g_botnep.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_lucdau.id ) < x000570_g_lucdau.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_mutsen.id ) < x000570_g_mutsen.num or 
			--LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_hatdua.id ) < x000570_g_hatdua.num or 
			LuaFnGetAvailableItemCount( sceneId, selfId, x000570_g_hatdua.id ) < x000570_g_hatdua.num then
			x000570_NotifyFailBox(sceneId, selfId, targetId, "Ь l�m ���c B�nh D�o c�n #G"..x000570_g_botnep.num.." B�t N�p, "..x000570_g_lucdau.num.." Чu Xanh, "..x000570_g_mutsen.num.." M�t Sen, "..x000570_g_hatdua.num.." H�t D�a #W. N�u b�ng h�u �� c� �� nguy�n li�u, h�y ki�m tra nguy�n li�u c� th� b� kh�a.")
			return
		end
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x000570_NotifyFailBox(sceneId, selfId, targetId, "C�n 1 � tr�ng trong t�i �")
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
				x000570_NotifyFailTips( sceneId, selfId,  "C� �nh th�t b�i !" )
			end	
		end
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		x000570_NotifyFailBox(sceneId, selfId, targetId, "Ch�c m�ng �� l�m th�nh c�ng B�nh D�o")
	end
	--------------------------------------------------------------------hd edit------------------------------------------------------------------------------------------------------------------
	if numText == 5 then --doi yeu quyet co dinh
		BeginEvent(sceneId)
			AddText(sceneId,"S� ki�n Trung Thu �ang di�n ra s�i n�i, h�y nhanh ch�ng tham gia � nh�n qu� !")
			AddText(sceneId,"H�y mang Y�u Quy�t ph�n th߷ng b� c� �nh �n g�p ta, ta s� gi�p ng߽i �i l�i. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x000570_g_ScriptId,"аng �",4,6)
			AddNumText(sceneId,x000570_g_ScriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 6 then
		x000570_DoiYeuQuyetbt8( sceneId, selfId, targetId )
	end
	----end doi yeu quyet --hd add 20/9
	if numText == 3 then
		BeginEvent(sceneId)
			AddText(sceneId,"T�t Trung Thu s�p �n g�n, ng߽i mu�n l�m g� n�o?")
			AddNumText(sceneId,x000570_g_ScriptId,"Nh�n qu� t�ng ng�u nhi�n",4,1000)
			AddNumText(sceneId,x000570_g_ScriptId,"бi y�u quy�t m�n ph�i",4,2000)
			AddNumText(sceneId,x000570_g_ScriptId,"бi qu� VIP",4,6000)
			AddNumText(sceneId,x000570_g_ScriptId,"бi b�o th�ch c�p 6",4,3000)
			AddNumText(sceneId,x000570_g_ScriptId,"бi b�o th�ch c�p 7",4,4000)
			--AddNumText(sceneId,x000570_g_ScriptId,"бi #YL�c h�p l�nh b�i",4,5000)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	local diemhd = 100000; --khai bao
	diemhd = 100;
	if numText == 1000 then --Nh�n qu� t�ng ng�u nhi�n
		BeginEvent(sceneId)
			AddText(sceneId,"T�t Trung Thu s�p �n g�n, ng߽i mu�n l�m g� n�o?")
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x000570_g_ScriptId,"аng �",4,1001)
			AddNumText(sceneId,x000570_g_ScriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 1001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x000570_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x000570_NhanQuaNgauNhien( sceneId, selfId, targetId )
		else	
			x000570_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x000570_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	diemhd = 200;
	if numText == 2000 then --бi y�u quy�t m�n ph�i
		BeginEvent(sceneId)
			AddText(sceneId,"T�t Trung Thu s�p �n g�n, ng߽i mu�n l�m g� n�o?")
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x000570_g_ScriptId,"аng �",4,2001)
			AddNumText(sceneId,x000570_g_ScriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 2001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x000570_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x000570_YeuQuyetMP( sceneId, selfId, targetId )
		else	
			x000570_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x000570_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	diemhd = 900;
	if numText == 6000 then --x000570_DoiQuaVIP
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x000570_g_ScriptId,"аng �",4,6001)
			AddNumText(sceneId,x000570_g_ScriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 6001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x000570_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x000570_DoiQuaVIP( sceneId, selfId, targetId )
		else	
			x000570_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x000570_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	diemhd = 2000;
	if numText == 3000 then --бi b�o th�ch c�p 6
		BeginEvent(sceneId)
			AddText(sceneId,"T�t Trung Thu s�p �n g�n, ng߽i mu�n l�m g� n�o?")
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x000570_g_ScriptId,"аng �",4,3001)
			AddNumText(sceneId,x000570_g_ScriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 3001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x000570_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x000570_BaoThachC6( sceneId, selfId, targetId )
		else	
			x000570_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x000570_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	diemhd = 3000;
	if numText == 4000 then --бi b�o th�ch c�p 7
		BeginEvent(sceneId)
			AddText(sceneId,"T�t Trung Thu s�p �n g�n, ng߽i mu�n l�m g� n�o?")
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x000570_g_ScriptId,"аng �",4,4001)
			AddNumText(sceneId,x000570_g_ScriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 4001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x000570_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x000570_BaoThachC7( sceneId, selfId, targetId )
		else	
			x000570_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x000570_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	diemhd = 20000;
	if numText == 5000 then --бi #YL�c h�p l�nh b�i
		BeginEvent(sceneId)
			AddText(sceneId,"T�t Trung Thu s�p �n g�n, ng߽i mu�n l�m g� n�o?")
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x000570_g_ScriptId,"аng �",4,5001)
			AddNumText(sceneId,x000570_g_ScriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 5001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x000570_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x000570_LucHopLenhBai( sceneId, selfId, targetId )
		else	
			x000570_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x000570_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	if numText == 0 then --k�t th�c
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
					x000570_NotifyFailTips( sceneId, selfId,  "T�i ��ng � �� �y !" )
				else
					x000570_NotifyFailTips( sceneId, selfId,  "Ho�n �i th�nh c�ng  #Y#{_ITEM" ..x000570_g_yeuquyet_bt8[i].. "}")
				end
			end
			ok =1;
		end
	end
	if ok==0 then
		x000570_NotifyFailTips( sceneId, selfId,  "Thi�u v�t ph�m c�n thi�t ho�c v�t ph�m b� kho� !" )
	else
		x000570_NotifyFailTips( sceneId, selfId,  "Ho�n �i ho�n t�t !" )
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
			x000570_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x000570_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng Trung Thu:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Trung Thu Th߷ng Nguy�t] #cff99cc trong l�c tr� chuy�n c�ng #Ch� H�ng t�i #G��i L� #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
		--	x000570_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		--else
			x000570_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng Trung Thu:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Trung Thu Th߷ng Nguy�t] #cff99cc trong l�c tr� chuy�n c�ng #Ch� H�ng t�i #G��i L� #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
			x000570_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x000570_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng Trung Thu:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Trung Thu Th߷ng Nguy�t] #cff99cc trong l�c tr� chuy�n c�ng #Ch� H�ng t�i #G��i L� #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
			x000570_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x000570_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng Trung Thu:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Trung Thu Th߷ng Nguy�t] #cff99cc trong l�c tr� chuy�n c�ng #Ch� H�ng t�i #G��i L� #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
			x000570_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x000570_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng Trung Thu:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Trung Thu Th߷ng Nguy�t] #cff99cc trong l�c tr� chuy�n c�ng #Ch� H�ng t�i #G��i L� #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
		--	x000570_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		--else
			x000570_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Trung Thu Th߷ng Nguy�t] #cff99cc trong l�c tr� chuy�n c�ng #Ch� H�ng t�i #G��i L� #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
			--	x000570_NotifyTip( sceneId, followMembers[i], "C� �nh th�t b�i !" )
			--else
				x000570_NotifyTip( sceneId, followMembers[i],"Ch�c m�ng, nh�n ���c qu� t�ng Trung Thu  #Y#{_ITEM" ..gift_id.. "}" )
				
				str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Trung Thu Th߷ng Nguy�t] #cff99cc trong l�c �ang #Y�i qu� VIP #P t�i #GCh� H�ng #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,followMembers[i]))
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
			--	x000570_NotifyTip( sceneId, followMembers[i], "C� �nh th�t b�i !" )
			--else
				x000570_NotifyTip( sceneId, followMembers[i],"Ch�c m�ng, nh�n ���c qu� t�ng Trung Thu  #Y#{_ITEM" ..gift_id.. "}" )
				
				str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Trung Thu Th߷ng Nguy�t] #cff99cc trong l�c �ang #Y�i qu� VIP #P t�i #GCh� H�ng #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,followMembers[i]))
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


