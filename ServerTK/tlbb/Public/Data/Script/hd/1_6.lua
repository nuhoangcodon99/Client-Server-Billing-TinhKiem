x001090_g_scriptId = 001090
x001090_g_active =0  --1 : kich hoat su kien

x001090_g_quatang = { -- 8 item
--30505123,--phao hoa trung thu vui ve
--30505124,--Qu�c kh�nh vui v�
30505107,--tieu lat ba
30008018,--Thanh T�m �an
30008019,--Уc X� L�nh
30008014,--Th�ng Thi�n Linh �an
30900016,--cao c�p h�p th�nh ph�
30008030,--th� �n ch�u
30008048,--kim c߽ng to�

10141599, --T�a k�: SC Nien Thu 7
	10141603,--T�a k�: TC Nien Thu 7
	10141607,--T�a k�: CC Nien Thu 7
	10141611,--T�a k�: SiC Nien Thu 7
	10141615,--T�a k�: DSC Nien Thu 7
	10141619,--T�a k�: DDSC Nien Thu 7
	10141623,--T�a k�: SC Th�i Th��ng Long 7
	10141627,--T�a k�: TC Th�i Th��ng Long 7
	10141631,--T�a k�: CC Th�i Th��ng Long 7
	10141635,--T�a k�: SC Th�i Th��ng Long 7
	10141639,--T�a k�: DSC Th�i Th��ng Long 7
	10141643,--T�a k�: SC C�n L�n Ti�n Tu�n 7
	10141647,--T�a k�: TC C�n L�n Ti�n Tu�n 7
	10141651,--T�a k�: CC C�n L�n Ti�n Tu�n 7
	10141655,--T�a k�: SiC C�n L�n Ti�n Tu�n 7
	10141659,--T�a k�: DSC C�n L�n Ti�n Tu�n 7
	10141703,--T�a k�: Tinh V� Du Long 7
	10141708,--T�a k�: Th߽ng Lan V� D�c 7
	10141713,--T�a k�: V�n Ti�u V� D�c 7

	

	
}
x001090_g_quavip = { -- 
	10141567, --T�a k�: X�ch Luy�n C�u 30 ngay
	10141590, --T�a k�: B�ch Gi�p Huy�n Quy 30 ngay
	10141505,--Th� c��i: �ng Long Huy�n H�n
	10141521,--T�a k�: Nhung Tuy�t Th�n Ng�u
	30309092,-- Tr�ng tr�n th� : Th�i Th��ng Long T�
	30309095, --Tr�ng tr�n th� : Mao Mao Ng�u
	30309093 , --Tr�ng tr�n th� : C�n Lu�n Ti�n Tu�n
	10141476,--Th� c��i: �m Vi�m Minh S�
	10141483,--Th� c��i: H� Kh�ng H�ng H�n
	30309078,-- Tr�ng tr�n th�: B�o T�u H�ng Mi�u
	
	10141483,--Th� c��i: H� Kh�ng H�ng H�n
	30308284, --Tr�ng tr�n th� : Chien Binh Tu La
	
	10124606, --L� H� Lan Ph߽ng
	10124610, --D�c Huy�t H�n Phong
	10124614, --B�ch Thu� H�m Ph߽ng
	10124625, --D� C�m Thi�n Lan
	10124630, --T� V�n Huy�n Th߽ng
	10124633, --Th߽ng V�n S߽ng Nguy�t

	30309079,-- Tr�ng tr�n th�: Minh �m Hoa Linh

	30309080,-- Tr�ng tr�n th�: Ti�u M� Ca
	10124518,--Ng�c V� Thanh Tr� 30day
	10124536,--B�ch Hoa Thi�n Th�o 30day
	
	50131001, --B�ng Lam L�u V�n (C�p 1)
	50131002,--T� Vi Tinh Quang (C�p 1)
	50131003,--Thu� Ng�c Tinh Tr�n (C�p 1)
	50131004,--Tranh �nh Nh� M�ng (C�p 1)
	50131005,--Hoa L�c H�ng Tr�n (C�p 1)
	
	20310180,-- T�ch V�n Th�y
	20310181,--Xuy�t Long Th�ch_Nguy�n
	20310182,--Xuy�t Long Th�ch_B�o
	20310183,--Xuy�t Long Th�ch_Th߽ng
	--38000152,--chu van tinh ngoc +5
	38000184,--chu van tinh ngoc +5 khong co dinh
	30008105, --th� �i t�n
	10141122, --ni�n th� th߶ng (90 ng�y)
	10141807, --ni�n th� t�m (30 ng�y) Th� c��i: Ni�n Th� L�i ��nh 30
	30900048, --chuy�n t�nh �an

}
x001090_g_baothachC6 ={ --17 ngoc
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
x001090_g_baothachC7 ={ --17 ngoc
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
x001090_g_LucHopLenhBai ={ --6 item
30504101,
30504102,

30504104,
30504105,
30504106,
30504103
}
x001090_g_yeuquyet_bt8 = {
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

function x001090_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "#GQu�c t� thi�u nhi 1-6 #Wl� ng�y d�nh ri�ng cho thi�u nhi to�n th� gi�i. V�y m� l� �c t�c, �c b�, c߶ng h�o...d�m ph� ph�ch v� l�y �i s� l��ng c�c k� l�n � ch�i c�a tr� em."
		local strText2 = "Nhi�m v� c�a b�ng h�u l� thu th�p l�i v�t ph�m #G а ch�i b� c߾p#W, giao l�i cho s� gi� ho�t �ng c�a T�nh Ki�m � chuy�n t�i tr� em �� b� m�t � ch�i"
		local strText3 = "Ch�ng s� vui v� v� c�m �n b�ng h�u nhi�u l�m �y!"
		AddText( sceneId, strText )
		AddText( sceneId, strText2 )
		AddText( sceneId, strText3 )
		if x001090_g_active ==1 then 
			AddNumText( sceneId, x001090_g_scriptId, "Thu th�p #Gа ch�i b� c߾p", 3, 1)
			AddNumText( sceneId, x001090_g_scriptId, "бi �i�m ho�t �ng", 3, 3)		
			AddNumText( sceneId, x001090_g_scriptId, "V� s� ki�n #GQu�c t� thi�u nhi 1-6", 11, 2)
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
function x001090_OnEventRequest( sceneId, selfId, targetId, eventId )
if x001090_g_active ==1 then 
	local numText = GetNumText()
	local welcome_test = "#WTa l� s� gi� ho�t �ng c�a TLBB T�nh Ki�m. D�o n�y tr� em b� m�t r�t nhi�u � ch�i."
	local welcome_test2 = "#WB�ng h�u �� �i tr�ng tr� b�n �c t�c �c b�, c߶ng h�o...v� thu th�p l�i ���c #Gа ch�i b� c߾p#W ch�a?"
	if GetNumText()==1 then --doi item
		BeginEvent( sceneId )
			AddNumText( sceneId, x001090_g_scriptId, "бi 10 #Gа ch�i b� c߾p", 3, 10)
			AddNumText( sceneId, x001090_g_scriptId, "бi 50 #Gа ch�i b� c߾p", 3, 50)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if GetNumText()==10 then --�i 10 item
		local item = LuaFnGetAvailableItemCount(sceneId, selfId,20310192)-- �m s� а ch�i b� c߾p

		if item<10 then
			x001090_Tips(sceneId, selfId,targetId,"B�ng h�u kh�ng �� 10 v�t ph�m #Gа ch�i b� c߾p!!")
			x001090_FailTips(sceneId, selfId,"B�ng h�u kh�ng �� 10 v�t ph�m #Gа ch�i b� c߾p!!")
			return
		else
			local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
			if slot <1 then
				x001090_Tips(sceneId, selfId,targetId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
				x001090_FailTips(sceneId,selfId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
				return
			else
				LuaFnDelAvailableItem(sceneId,selfId,20310192,10)

				---**************H�m cho nh�n v�t ph�m(10 item �i 1 v�t ph�m)********************----
				
				--x001090_Tips(sceneId, selfId,targetId,"Nhi�m v� ho�n th�nh!")
				x001090_FailTips(sceneId,selfId,"Nhi�m v� ho�n th�nh!")
				
				--add diem hoat dong
				local pointadd = 10; --so diem hoat dong duoc thuong
				local trungthu2013_point = 0;
				local trungthu2013_point = GetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT)
				SetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT,trungthu2013_point+pointadd ) --add diem
				x001090_Tips(sceneId, selfId, targetId,"Nhi�m v� ho�n th�nh.");
				x001090_FailTips( sceneId, selfId,  "�i�m ho�t �ng t�ch lu� hi�n t�i : "..trungthu2013_point+pointadd.." �i�m ho�t �ng!" )
				--end add diem hoat dong
				return
			end
		end
		
	end
	if GetNumText()==50 then --�i 50 item
		local item = LuaFnGetAvailableItemCount(sceneId, selfId,20310192)-- �m s� а ch�i b� c߾p

		if item<50 then
			x001090_Tips(sceneId, selfId,targetId,"B�ng h�u kh�ng �� 50 v�t ph�m #Gа ch�i b� c߾p!!")
			x001090_FailTips(sceneId, selfId,"B�ng h�u kh�ng �� 50 v�t ph�m #Gа ch�i b� c߾p!!")
			return
		else
			local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
			if slot <1 then
				x001090_Tips(sceneId, selfId,targetId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
				x001090_FailTips(sceneId,selfId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
				return
			else
				LuaFnDelAvailableItem(sceneId,selfId,20310192,50)

				---**************H�m cho nh�n v�t ph�m(50 item �i 1 v�t ph�m)********************----
				
				--x001090_Tips(sceneId, selfId,targetId,"Nhi�m v� ho�n th�nh!")
				x001090_FailTips(sceneId,selfId,"Nhi�m v� ho�n th�nh!")
				
				--add diem hoat dong
				local pointadd = 50; --so diem hoat dong duoc thuong
				local trungthu2013_point = 0;
				local trungthu2013_point = GetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT)
				SetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT,trungthu2013_point+pointadd ) --add diem
				x001090_Tips(sceneId, selfId, targetId,"Nhi�m v� ho�n th�nh.");
				x001090_FailTips( sceneId, selfId,  "�i�m ho�t �ng t�ch lu� hi�n t�i : "..trungthu2013_point+pointadd.." �i�m ho�t �ng!" )
				--end add diem hoat dong
				return
			end
		end
		
	end
	if GetNumText()==2 then --help
		BeginEvent( sceneId )
			local text1 ="#WTham gia c�c ho�t �ng #GTr�n Long K� Cu�c, �c T�c, �c B�, L�u Lan T�m B�o, T� Ch�u 1 2 3.... #WB�ng h�u c� t� l� nh�n ���c v�t ph�m mang t�n: #Yа ch�i b� c߾p#r"
			local text2="#WMang 1 s� l��ng nh�t �nh#Gа ch�i b� c߾p#W m� b�ng h�u thu th�p ���c t�i s� gi� ho�t �ng c�a TLBB T�nh Ki�m giao tr� s� ���c nh�n �i�m ho�t �ng v� qu� ��p tr� c�ng s�c c�a b�ng h�u!"
			AddText(sceneId,text1)
			AddText(sceneId,text2)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if numText == 3 then --doi diem hoat dong
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddNumText(sceneId,x001090_g_scriptId,"Nh�n qu� t�ng ng�u nhi�n",4,1000)
			AddNumText(sceneId,x001090_g_scriptId,"бi y�u quy�t m�n ph�i",4,2000)
			AddNumText(sceneId,x001090_g_scriptId,"бi qu� VIP",4,6000)
			AddNumText(sceneId,x001090_g_scriptId,"бi b�o th�ch c�p 6",4,3000)
			AddNumText(sceneId,x001090_g_scriptId,"бi b�o th�ch c�p 7",4,4000)
			
			--AddNumText(sceneId,x001090_g_scriptId,"бi #YL�c h�p l�nh b�i",4,5000)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	local diemhd = 100000; --khai bao
	diemhd = 100;
	if numText == 1000 then --Nh�n qu� t�ng ng�u nhi�n
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x001090_g_scriptId,"аng �",4,1001)
			AddNumText(sceneId,x001090_g_scriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 1001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001090_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001090_NhanQuaNgauNhien( sceneId, selfId, targetId )
		else	
			x001090_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x001090_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	diemhd = 200;
	if numText == 2000 then --бi y�u quy�t m�n ph�i
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x001090_g_scriptId,"аng �",4,2001)
			AddNumText(sceneId,x001090_g_scriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 2001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001090_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001090_YeuQuyetMP( sceneId, selfId, targetId )
		else	
			x001090_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x001090_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	
	diemhd = 300;
	if numText == 6000 then --x001090_DoiQuaVIP
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x001090_g_scriptId,"аng �",4,6001)
			AddNumText(sceneId,x001090_g_scriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 6001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001090_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001090_DoiQuaVIP( sceneId, selfId, targetId )
		else	
			x001090_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x001090_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	
	diemhd = 1000;
	if numText == 3000 then --бi b�o th�ch c�p 6
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x001090_g_scriptId,"аng �",4,3001)
			AddNumText(sceneId,x001090_g_scriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 3001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001090_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001090_BaoThachC6( sceneId, selfId, targetId )
		else	
			x001090_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x001090_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	diemhd = 3000;
	if numText == 4000 then --бi b�o th�ch c�p 7
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x001090_g_scriptId,"аng �",4,4001)
			AddNumText(sceneId,x001090_g_scriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 4001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001090_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001090_BaoThachC7( sceneId, selfId, targetId )
		else	
			x001090_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x001090_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	diemhd = 20000;
	if numText == 5000 then --бi #YL�c h�p l�nh b�i
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x001090_g_scriptId,"аng �",4,5001)
			AddNumText(sceneId,x001090_g_scriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 5001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001090_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001090_LucHopLenhBai( sceneId, selfId, targetId )
		else	
			x001090_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x001090_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	if numText == 0 then --k�t th�c
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
end
end



function x001090_DoiYeuQuyetbt8( sceneId, selfId, targetId )
	local ok =0
	for i=1,getn(x001090_g_yeuquyet_bt8) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x001090_g_yeuquyet_bt8[i] ) --check so luong
		if num >=1 then --neu co
			LuaFnDelAvailableItem(sceneId,selfId, x001090_g_yeuquyet_bt8[i], num ) --thi xoa
			for j=1,num do
				local BagIndex =  TryRecieveItem( sceneId, selfId, x001090_g_yeuquyet_bt8[i], 1 ) --add lai
				if BagIndex <0 then
					x001090_NotifyFailTips( sceneId, selfId,  "T�i ��ng � �� �y !" )
				else
					x001090_NotifyFailTips( sceneId, selfId,  "Ho�n �i th�nh c�ng  #Y#{_ITEM" ..x001090_g_yeuquyet_bt8[i].. "}")
				end
			end
			ok =1;
		end
	end
	if ok==0 then
		x001090_NotifyFailTips( sceneId, selfId,  "Thi�u v�t ph�m c�n thi�t ho�c v�t ph�m b� kho� !" )
	else
		x001090_NotifyFailTips( sceneId, selfId,  "Ho�n �i ho�n t�t !" )
	end
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
	return
	
end
function x001090_check_diemhd(sceneId,selfId,targetId,diemhd )
	local trungthu2013_point = GetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT)
	if trungthu2013_point < diemhd then
		return -1;
	end
	SetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT,trungthu2013_point-diemhd )
	return 1;
end
function x001090_NhanQuaNgauNhien( sceneId, selfId, targetId )
	--edit ok
	local gift_id = x001090_g_quatang[random(getn(x001090_g_quatang))];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x001090_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x001090_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Qu�c t� Thi�u nhi 1-6], thu th�p v� giao tr� cho s� gi� ho�t �ng r�t nhi�u #Gа ch�i b� c߾p #cff99ccv� nh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 0)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end
function x001090_YeuQuyetMP( sceneId, selfId, targetId )

	local gift_id = x001090_g_yeuquyet_bt8[random(1,18)];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		--local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		--if bindidx ~= 1 then
		--	x001090_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		--else
			x001090_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Qu�c t� Thi�u nhi 1-6], thu th�p v� giao tr� cho s� gi� ho�t �ng r�t nhi�u #Gа ch�i b� c߾p #cff99ccv� nh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		--end
	end
end
function x001090_DoiQuaVIP( sceneId, selfId, targetId )

	local gift_id = x001090_g_quavip[random(getn(x001090_g_quavip))];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		--local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		--if bindidx ~= 1 then
		--	x001090_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		--else
			x001090_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Qu�c t� Thi�u nhi 1-6], thu th�p v� giao tr� cho s� gi� ho�t �ng r�t nhi�u #Gа ch�i b� c߾p #cff99ccv� nh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		--end
	end
end
function x001090_BaoThachC6( sceneId, selfId, targetId )

	local gift_id = x001090_g_baothachC6[random(getn(x001090_g_baothachC6))];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x001090_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x001090_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Qu�c t� Thi�u nhi 1-6], thu th�p v� giao tr� cho s� gi� ho�t �ng r�t nhi�u #Gа ch�i b� c߾p #cff99ccv� nh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end
function x001090_BaoThachC7( sceneId, selfId, targetId )

	local gift_id = x001090_g_baothachC7[random(getn(x001090_g_baothachC7))];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x001090_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x001090_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Qu�c t� Thi�u nhi 1-6], thu th�p v� giao tr� cho s� gi� ho�t �ng r�t nhi�u #Gа ch�i b� c߾p #cff99ccv� nh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end
function x001090_LucHopLenhBai( sceneId, selfId, targetId )

	local gift_id = x001090_g_LucHopLenhBai[random(1,5)];
	local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
		if bindidx ~= 1 then
			x001090_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x001090_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Qu�c t� Thi�u nhi 1-6], thu th�p v� giao tr� cho s� gi� ho�t �ng r�t nhi�u #Gа ch�i b� c߾p #cff99ccv� nh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
			BroadMsgByChatPipe(sceneId, selfId, str, 4)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
	end
end


function x001090_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x001090_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


function x001090_Tips(sceneId, selfId,targetId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x001090_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
