x001095_g_scriptId = 001095
x001095_g_active = 1 --1 : kich hoat su kien

x001095_g_quatang = { -- 8 item
--30505123,--phao hoa trung thu vui ve
30505124,--Qu�c kh�nh vui v�
30505107,--tieu lat ba
30008018,--Thanh T�m �an
30008019,--Уc X� L�nh
30008014,--Th�ng Thi�n Linh �an
30900016,--cao c�p h�p th�nh ph�
30008030,--th� �n ch�u
30008048 --kim c߽ng to�

}
x001095_g_quavip = { -- 
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

	30309079,-- Tr�ng tr�n th�: Minh �m Hoa Linh

	30309080,-- Tr�ng tr�n th�: Ti�u M� Ca
	10124518,--Ng�c V� Thanh Tr� 30day
	10124536,--B�ch Hoa Thi�n Th�o 30day
	20310180,-- T�ch V�n Th�y
	20310180,-- T�ch V�n Th�y
	20310180,-- T�ch V�n Th�y
	20310180,-- T�ch V�n Th�y
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
		local strText = "#WT�t c� b�ng h�u trong th� gi�i Thi�n Long B�t B� T�nh Ki�m h�y �i thu th�p �� 4 ch�  #YVi�t - Nam - еc - L�p #Wv� mang t�i s� gi� s� ki�n � t�ch tr� �i�m ho�t �ng d�ng �i nh�ng ph�n qu� th� v�"
		AddText( sceneId, strText )
		if x001095_g_active ==1 then 
			AddNumText( sceneId, x001095_g_scriptId, "Vi�t Nam еc L�p", 3, 1)
			AddNumText( sceneId, x001095_g_scriptId, "бi �i�m ho�t �ng", 3, 3)		
			AddNumText( sceneId, x001095_g_scriptId, "V� event #GVi�t Nam еc L�p", 11, 2)
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
function x001095_OnEventRequest( sceneId, selfId, targetId, eventId )
if x001095_g_active ==1 then 
	local numText = GetNumText()
	local welcome_test = "#WM�ng #Y40 #Wn�m k� ni�m ng�y #Ygi�i ph�ng ho�n to�n mi�n Nam, th�ng nh�t �t n߾c, #Wt�i h� c� r�t nhi�u ph�n th߷ng chu�n b� cho c�c h�. Kh�ng bi�t c�c h� c� mu�n l�y kh�ng?"
	if GetNumText()==1 then --doi 4 chua viet nam doc lap
		local viet = LuaFnGetAvailableItemCount(sceneId, selfId,20700038)-- �m s� ch� Vi�t
		local nam = LuaFnGetAvailableItemCount(sceneId, selfId,20700039)-- �m s� ch� Nam
		local doc = LuaFnGetAvailableItemCount(sceneId, selfId,20700040)-- �m s� ch� еc
		local lap = LuaFnGetAvailableItemCount(sceneId, selfId,20700041)-- �m s� ch� L�p
		if viet<1 or nam<1 or doc<1 or lap<1 then
			x001095_Tips(sceneId, selfId,targetId,"B�ng h�u kh�ng �� 4 lo�i ch�!!")
			x001095_FailTips(sceneId, selfId,"B�ng h�u kh�ng �� 4 lo�i ch�!!")
			return
		else
			local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
			if slot <1 then
				x001095_Tips(sceneId, selfId,targetId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
				x001095_FailTips(sceneId,selfId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
				return
			else
				LuaFnDelAvailableItem(sceneId,selfId,20700038,1)
				LuaFnDelAvailableItem(sceneId,selfId,20700039,1)
				LuaFnDelAvailableItem(sceneId,selfId,20700040,1)
				LuaFnDelAvailableItem(sceneId,selfId,20700041,1)

				---------------------cho nh�n v�t ph�m----------------------------------------------
				--x001095_Tips(sceneId, selfId,targetId,"Nhi�m v� ho�n th�nh!")
				x001095_FailTips(sceneId,selfId,"Nhi�m v� ho�n th�nh!")
				
				--add diem hoat dong
				local pointadd = 1; --so diem hoat dong duoc thuong
				local trungthu2013_point = 0;
				local trungthu2013_point = GetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT)
				SetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT,trungthu2013_point+pointadd ) --add diem
				x001095_Tips(sceneId, selfId, targetId,"Nhi�m v� ho�n th�nh.");
				x001095_FailTips( sceneId, selfId,  "�i�m ho�t �ng t�ch lu� hi�n t�i : "..trungthu2013_point+pointadd.." �i�m ho�t �ng!" )
				--end add diem hoat dong
				return
			end
		end
		
	end
	if GetNumText()==2 then --help
		BeginEvent( sceneId )
			local text1 ="#WTham gia c�c ho�t �ng #GTr�n Long K� Cu�c, �c T�c, �c B�, L�u Lan T�m B�o, T� Ch�u 1 2 3.... #WB�ng h�u c� t� l� nh�n ���c c�c k� t� c� t�n: #YVi�t - Nam - еc - L�p#r"
			local text2="#WMang �� 4 k� t� #YVi�t - Nam - еc - L�p, #Wm�i k� t� �t nh�t 1 c�i �n g�p t�i h�. Ho�n th�nh nhi�m v� s� nh�n �i�m ho�t �ng." 
			local text3="#WD�ng �i�m ho�t �ng n�y, b�ng h�u c� th� �i r�t nhi�u v�t ph�m b�t ng� t� Thi�n Long B�t B� T�nh Ki�m !"
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
			AddNumText(sceneId,x001095_g_scriptId,"Nh�n qu� t�ng ng�u nhi�n",4,1000)
			AddNumText(sceneId,x001095_g_scriptId,"бi y�u quy�t m�n ph�i",4,2000)
			AddNumText(sceneId,x001095_g_scriptId,"бi qu� VIP",4,6000)
			AddNumText(sceneId,x001095_g_scriptId,"бi b�o th�ch c�p 6",4,3000)
			AddNumText(sceneId,x001095_g_scriptId,"бi b�o th�ch c�p 7",4,4000)
			
			--AddNumText(sceneId,x001095_g_scriptId,"бi #YL�c h�p l�nh b�i",4,5000)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	local diemhd = 100000; --khai bao
	diemhd = 100;
	if numText == 1000 then --Nh�n qu� t�ng ng�u nhi�n
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x001095_g_scriptId,"аng �",4,1001)
			AddNumText(sceneId,x001095_g_scriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 1001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001095_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001095_NhanQuaNgauNhien( sceneId, selfId, targetId )
		else	
			x001095_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x001095_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	diemhd = 200;
	if numText == 2000 then --бi y�u quy�t m�n ph�i
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x001095_g_scriptId,"аng �",4,2001)
			AddNumText(sceneId,x001095_g_scriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 2001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001095_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001095_YeuQuyetMP( sceneId, selfId, targetId )
		else	
			x001095_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x001095_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	
	diemhd = 500;
	if numText == 6000 then --x001095_DoiQuaVIP
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x001095_g_scriptId,"аng �",4,6001)
			AddNumText(sceneId,x001095_g_scriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 6001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001095_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001095_DoiQuaVIP( sceneId, selfId, targetId )
		else	
			x001095_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x001095_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	
	diemhd = 1000;
	if numText == 3000 then --бi b�o th�ch c�p 6
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x001095_g_scriptId,"аng �",4,3001)
			AddNumText(sceneId,x001095_g_scriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 3001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001095_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001095_BaoThachC6( sceneId, selfId, targetId )
		else	
			x001095_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x001095_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	diemhd = 2000;
	if numText == 4000 then --бi b�o th�ch c�p 7
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x001095_g_scriptId,"аng �",4,4001)
			AddNumText(sceneId,x001095_g_scriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 4001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001095_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001095_BaoThachC7( sceneId, selfId, targetId )
		else	
			x001095_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x001095_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
		end
	end
	diemhd = 20000;
	if numText == 5000 then --бi #YL�c h�p l�nh b�i
		BeginEvent(sceneId)
			AddText(sceneId,welcome_test)
			AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
			AddNumText(sceneId,x001095_g_scriptId,"аng �",4,5001)
			AddNumText(sceneId,x001095_g_scriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if numText == 5001 then 
		local check_diemhd_ok =0;
		check_diemhd_ok = x001095_check_diemhd(sceneId,selfId,targetId,diemhd )
		if check_diemhd_ok >=1 then
			x001095_LucHopLenhBai( sceneId, selfId, targetId )
		else	
			x001095_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			x001095_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
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



function x001095_DoiYeuQuyetbt8( sceneId, selfId, targetId )
	local ok =0
	for i=1,getn(x001095_g_yeuquyet_bt8) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x001095_g_yeuquyet_bt8[i] ) --check so luong
		if num >=1 then --neu co
			LuaFnDelAvailableItem(sceneId,selfId, x001095_g_yeuquyet_bt8[i], num ) --thi xoa
			for j=1,num do
				local BagIndex =  TryRecieveItem( sceneId, selfId, x001095_g_yeuquyet_bt8[i], 1 ) --add lai
				if BagIndex <0 then
					x001095_NotifyFailTips( sceneId, selfId,  "T�i ��ng � �� �y !" )
				else
					x001095_NotifyFailTips( sceneId, selfId,  "Ho�n �i th�nh c�ng  #Y#{_ITEM" ..x001095_g_yeuquyet_bt8[i].. "}")
				end
			end
			ok =1;
		end
	end
	if ok==0 then
		x001095_NotifyFailTips( sceneId, selfId,  "Thi�u v�t ph�m c�n thi�t ho�c v�t ph�m b� kho� !" )
	else
		x001095_NotifyFailTips( sceneId, selfId,  "Ho�n �i ho�n t�t !" )
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
			x001095_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x001095_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Vi�t Nam еc L�p] #Pm�ng #Y40 #Pn�m #Ygi�i ph�ng mi�n Nam, th�ng nh�t �t n߾c #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
		--	x001095_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		--else
			x001095_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Vi�t Nam еc L�p] #Pm�ng #Y69 #Pn�m #YQu�c Kh�nh #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
		--	x001095_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		--else
			x001095_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Vi�t Nam еc L�p] #Pm�ng #Y69 #Pn�m #YQu�c Kh�nh #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
			x001095_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x001095_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Vi�t Nam еc L�p] #Pm�ng #Y69 #Pn�m #YQu�c Kh�nh #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
			x001095_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x001095_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Vi�t Nam еc L�p] #Pm�ng #Y69 #Pn�m #YQu�c Kh�nh #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
			x001095_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x001095_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [Vi�t Nam еc L�p] #Pm�ng #Y69 #Pn�m #YQu�c Kh�nh #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
