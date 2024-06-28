
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
30008018,--Thanh T�m �an
30008019,--Уc X� L�nh
30008014,--Th�ng Thi�n Linh �an
30900016,--cao c�p h�p th�nh ph�
30008030,--th� �n ch�u
30008048 --kim c߽ng to�
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
			AddText(sceneId,"Ch�o m�ng ng�y l� Nh� Gi�o Vi�t Nam, TLBB T�nh Ki�m - T�i Chi�n g�i ta �n ��y. C�c h� c�n ta gi�p vi�c g�?")
			AddNumText(sceneId,x000590_g_ScriptId,"бi S� а ��i L� Bao",4,1)
			AddNumText(sceneId,x000590_g_ScriptId,"бi T�n Ph�n L� H�p",4,2)
			AddNumText(sceneId,x000590_g_ScriptId,"бi �i�m ho�t �ng",4,3)
			AddNumText(sceneId,x000590_g_ScriptId,"Ta ch� gh� qua th�i",4,0)
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
				x000590_NotifyFailBox(sceneId, selfId, targetId, "Ь �i ���c S� � ��i L� Bao c�n thu th�p �� #G Thi�n Long, Kho�i L�c, �i �, �n S� #W. N�u b�ng h�u �� c� �� nguy�n li�u, h�y ki�m tra nguy�n li�u c� th� b� kh�a.")
				return
			end
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				x000590_NotifyFailBox(sceneId, selfId, targetId, "C�n 1 � tr�ng trong t�i �")
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
					x000590_NotifyFailTips( sceneId, selfId,  "C� �nh th�t b�i !" )
				end	
			end
			
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
			x000590_NotifyFailBox(sceneId, selfId, targetId, "Ch�c m�ng �� nh�n ���c S� а ��i L� Bao")
		end
		if numText == 2 then
			if LuaFnGetAvailableItemCount( sceneId, selfId, x000590_g_itemid5 ) < x000590_g_itemid5_num then
				x000590_NotifyFailBox(sceneId, selfId, targetId, "Ь L� H�p c�n #G"..x000590_g_itemid5_num.."  Thi�n t� l߽ng duy�n#W. N�u b�ng h�u �� c� �� nguy�n li�u, h�y ki�m tra nguy�n li�u c� th� b� kh�a.")
				return
			end
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				x000590_NotifyFailBox(sceneId, selfId, targetId, "C�n 1 � tr�ng trong t�i �")
				return
			end
			LuaFnDelAvailableItem(sceneId,selfId, x000590_g_itemid5, x000590_g_itemid5_num )
			
			local BagIndex =  TryRecieveItem( sceneId, selfId, x000590_g_tanphanlehap, 1 )
			if BagIndex ~= -1 then
				local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
				if bindidx ~= 1 then
					x000590_NotifyFailTips( sceneId, selfId,  "C� �nh th�t b�i !" )
				end	
			end
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
			x000590_NotifyFailBox(sceneId, selfId, targetId, "Ch�c m�ng �� �i th�nh c�ng L� H�p")
		end
		
		if numText == 3 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ch�o m�ng ng�y l� Nh� Gi�o Vi�t Nam, TLBB T�nh Ki�m - T�i Chi�n g�i ta �n ��y. C�c h� c�n ta gi�p vi�c g�?")
				AddNumText(sceneId,x000590_g_ScriptId,"Nh�n qu� t�ng ng�u nhi�n",4,1000)
				AddNumText(sceneId,x000590_g_ScriptId,"бi y�u quy�t m�n ph�i",4,2000)
				--AddNumText(sceneId,x000590_g_ScriptId,"бi b�o th�ch c�p 6",4,3000)
				--AddNumText(sceneId,x000590_g_ScriptId,"бi b�o th�ch c�p 7",4,4000)
				AddNumText(sceneId,x000590_g_ScriptId,"бi #YL�c h�p l�nh b�i",4,5000)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		local diemhd = 100000; --khai bao
		diemhd = 100;
		if numText == 1000 then --Nh�n qu� t�ng ng�u nhi�n
			BeginEvent(sceneId)
				AddText(sceneId,"Ch�o m�ng ng�y l� Nh� Gi�o Vi�t Nam, TLBB T�nh Ki�m - T�i Chi�n g�i ta �n ��y. C�c h� c�n ta gi�p vi�c g�?")
				AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
				AddNumText(sceneId,x000590_g_ScriptId,"аng �",4,1001)
				AddNumText(sceneId,x000590_g_ScriptId,"Ta ch� gh� qua th�i",4,0)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		if numText == 1001 then 
			local check_diemhd_ok =0;
			check_diemhd_ok = x000590_check_diemhd(sceneId,selfId,targetId,diemhd )
			if check_diemhd_ok >=1 then
				x000590_NhanQuaNgauNhien( sceneId, selfId, targetId )
			else	
				x000590_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
				x000590_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			end
		end
		diemhd = 300;
		if numText == 2000 then --бi y�u quy�t m�n ph�i
			BeginEvent(sceneId)
				AddText(sceneId,"Ch�o m�ng ng�y l� Nh� Gi�o Vi�t Nam, TLBB T�nh Ki�m - T�i Chi�n g�i ta �n ��y. C�c h� c�n ta gi�p vi�c g�?")
				AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
				AddNumText(sceneId,x000590_g_ScriptId,"аng �",4,2001)
				AddNumText(sceneId,x000590_g_ScriptId,"Ta ch� gh� qua th�i",4,0)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		if numText == 2001 then 
			local check_diemhd_ok =0;
			check_diemhd_ok = x000590_check_diemhd(sceneId,selfId,targetId,diemhd )
			if check_diemhd_ok >=1 then
				x000590_YeuQuyetMP( sceneId, selfId, targetId )
			else	
				x000590_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
				x000590_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			end
		end
		diemhd = 600;
		if numText == 3000 then --бi b�o th�ch c�p 6
			BeginEvent(sceneId)
				AddText(sceneId,"Ch�o m�ng ng�y l� Nh� Gi�o Vi�t Nam, TLBB T�nh Ki�m - T�i Chi�n g�i ta �n ��y. C�c h� c�n ta gi�p vi�c g�?")
				AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
				AddNumText(sceneId,x000590_g_ScriptId,"аng �",4,3001)
				AddNumText(sceneId,x000590_g_ScriptId,"Ta ch� gh� qua th�i",4,0)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		if numText == 3001 then 
			local check_diemhd_ok =0;
			check_diemhd_ok = x000590_check_diemhd(sceneId,selfId,targetId,diemhd )
			if check_diemhd_ok >=1 then
				--x000590_BaoThachC6( sceneId, selfId, targetId )
			else	
				x000590_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
				x000590_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			end
		end
		diemhd = 1800;
		if numText == 4000 then --бi b�o th�ch c�p 7
			BeginEvent(sceneId)
				AddText(sceneId,"Ch�o m�ng ng�y l� Nh� Gi�o Vi�t Nam, TLBB T�nh Ki�m - T�i Chi�n g�i ta �n ��y. C�c h� c�n ta gi�p vi�c g�?")
				AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
				AddNumText(sceneId,x000590_g_ScriptId,"аng �",4,4001)
				AddNumText(sceneId,x000590_g_ScriptId,"Ta ch� gh� qua th�i",4,0)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		if numText == 4001 then 
			local check_diemhd_ok =0;
			check_diemhd_ok = x000590_check_diemhd(sceneId,selfId,targetId,diemhd )
			if check_diemhd_ok >=1 then
				--x000590_BaoThachC7( sceneId, selfId, targetId )
			else	
				x000590_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
				x000590_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			end
		end
		diemhd = 2000;
		if numText == 5000 then --бi #YL�c h�p l�nh b�i
			BeginEvent(sceneId)
				AddText(sceneId,"Ch�o m�ng ng�y l� Nh� Gi�o Vi�t Nam, TLBB T�nh Ki�m - T�i Chi�n g�i ta �n ��y. C�c h� c�n ta gi�p vi�c g�?")
				AddText(sceneId,"C�n t�n "..diemhd.." �i�m ho�t �ng � nh�n qu� c�a ta. Ng߽i c� �ng � kh�ng ?")
				AddNumText(sceneId,x000590_g_ScriptId,"аng �",4,5001)
				AddNumText(sceneId,x000590_g_ScriptId,"Ta ch� gh� qua th�i",4,0)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		if numText == 5001 then 
			local check_diemhd_ok =0;
			check_diemhd_ok = x000590_check_diemhd(sceneId,selfId,targetId,diemhd )
			if check_diemhd_ok >=1 then
				x000590_LucHopLenhBai( sceneId, selfId, targetId )
			else	
				x000590_NotifyFailBox( sceneId, selfId, targetId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
				x000590_NotifyFailTips( sceneId, selfId, "Kh�ng �� �i�m ho�t �ng c�n thi�t !" )
			end
		end
		if numText == 0 then --k�t th�c
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
					x000590_NotifyFailTips( sceneId, selfId,  "T�i ��ng � �� �y !" )
				else
					x000590_NotifyFailTips( sceneId, selfId,  "Ho�n �i th�nh c�ng  #Y#{_ITEM" ..x000590_g_yeuquyet_bt8[i].. "}")
				end
			end
			ok =1;
		end
	end
	if ok==0 then
		x000590_NotifyFailTips( sceneId, selfId,  "Thi�u v�t ph�m c�n thi�t ho�c v�t ph�m b� kho� !" )
	else
		x000590_NotifyFailTips( sceneId, selfId,  "Ho�n �i ho�n t�t !" )
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
			x000590_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x000590_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [�i � - �n S�] #cff99cc trong l�c tr� chuy�n c�ng #s� ph� t�i #G��i L� #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
		--	x000590_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		--else
			x000590_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [�i � - �n S�] #cff99cc trong l�c tr� chuy�n c�ng #s� ph� t�i #G��i L� #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
			x000590_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x000590_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng :   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [�i � - �n S�] #cff99cc trong l�c tr� chuy�n c�ng #s� ph� t�i #G��i L� #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
			x000590_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x000590_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [�i � - �n S�] #cff99cc trong l�c tr� chuy�n c�ng #s� ph� t�i #G��i L� #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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
			x000590_NotifyFailTips( sceneId, selfId, "C� �nh th�t b�i !" )
		else
			x000590_NotifyFailTips( sceneId, selfId,"Ch�c m�ng, nh�n ���c qu� t�ng:   #Y#{_ITEM" ..gift_id.. "}" )
			
			str = format("#cff99cc#{_INFOUSR%s} tham gia s� ki�n #Y [�i � - �n S�] #cff99cc trong l�c tr� chuy�n c�ng #s� ph� t�i #G��i L� #cff99ccnh�n ���c #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
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


