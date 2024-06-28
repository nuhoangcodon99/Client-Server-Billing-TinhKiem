x001094_g_scriptId = 001094
x001094_Item_VIP={
	30505121,--tr�ng x� nga v߽ng
	10124518,--th�i trang 30 ng�y Ng�c V� Thanh Tr�
	30309092,--tr�ng tr�n th� Th�i Th��ng Long T�
	30309093,--C�n lu�n ti�n tu�n
	30309094,--Th�nh Trang
	30309095,--Mao mao Ng�u
	30309096,--Gi�n Ti�u Hoa
	10141507,--C�nh: Vi�m V� 30
	10141535,--T�a k�: Th߽ng H�i Long C�u 30
}
x001094_item_cuibap={
	30008048,--Kim C߽ng t�a
	30505219,--Ti�u L�t B�
	30505216,--Th� Linh Ch�u
	
	30008014,--Th�ng Thi�n Linh �an
--yq bt 8
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


x001094_g_yeuquyet_bt8 = {
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


function x001094_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "#WNg�y 1-4 ��u ch� c� n�i d�i nhau, h�y mang #GCh� H� Tinh Qu�i#W t�i ��y, ta s� d�nh ph�n th߷ng th�t s� cho b�ng h�u!"
		AddText( sceneId, strText )
		AddNumText( sceneId, x001094_g_scriptId, "Ng�y c� th�ng T�", 3, 1)
		AddNumText( sceneId, x001094_g_scriptId, "#Gбi Y�u Quy�t c� �nh", 3, 3)
		AddNumText( sceneId, x001094_g_scriptId, "V� event Ng�y c� th�ng T�", 11, 2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x001094_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==1 then
		local lao = LuaFnGetAvailableItemCount(sceneId, selfId,30505199)-- �m s� Ch� h�
		local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
		if lao<10 then
			x001094_Tips(sceneId,selfId,targetId,"B�ng h�u kh�ng �� 10 Ch� H� Tinh Qu�i")
			x001094_FailTips(sceneId,selfId,"B�ng h�u kh�ng �� 10 Ch� H� Tinh Qu�i")
			return
		end
		if slot <1 then
			--x001094_Tips(sceneId, selfId,targetId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
			x001094_FailTips(sceneId,selfId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
			return
		end

		local bonus = random(100)
		LuaFnDelAvailableItem(sceneId,selfId,30505199,10) --xoa item
		if bonus > 95 then				
			--Pt vip
			local BagPos = TryRecieveItem( sceneId, selfId, x001094_Item_VIP[random(getn(x001094_Item_VIP))], QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end				
		elseif bonus > 80 then
			--Pt bt
			local BagPos = TryRecieveItem( sceneId, selfId, x001094_item_cuibap[random(getn(x001094_item_cuibap))], QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item

			end
			
		else
			--Xit
		end
		if random(2)==1 then-- nh�n �c v� n�i nh�n ���c
			x001094_Tips(sceneId, selfId,targetId,"#3#3Ch�c b�n may m�n l�n sau #3#3")
			x001094_FailTips(sceneId,selfId,"#3#3Ch�c b�n may m�n l�n sau #3#3")
		else
			x001094_Tips(sceneId, selfId,targetId,"#1 B�n v�a nh�n ���c ph�n th߷ng #1")
			x001094_FailTips(sceneId, selfId,"#1 B�n v�a nh�n ���c ph�n th߷ng #1")
		end
	end

	if GetNumText()==2 then
		BeginEvent( sceneId )
			local text1 ="Tham gia c�c ho�t �ng Tr�n Long K� Cu�c, �c T�c, �c B�, L�u Lan T�m B�o, T� Ch�u 1 2 3, S�t Tinh.... B�ng h�u c� t� l� nh�n ���c v�t ph�m #YCh� H� Tinh Qu�i#r"
			local text2="#WMang �� 10 v�t ph�m #YCh� H� Tinh Qu�i#W �n g�p t�i h�, r�t nhi�u v�t ph�m b�t ng� �ang ch� b�ng h�u chinh ph�c#r"
			local text3="#GCh�c b�ng h�u c� ng�y C� th�ng T� vui v� v� kh�ng b� �n nhi�u c� l�a!!!"
			
			AddText(sceneId,text1)
			AddText(sceneId,text2)
			AddText(sceneId,text3)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNumText() == 3 then --doi yeu quyet co dinh
		BeginEvent(sceneId)
			strText = " Ng�y C� Th�ng T� �� qua r�i tuy nhi�n ta v�n � ��y � gi�p c�c h� �i c�c lo�i Y�u Quy�t M�n Ph�i c� �nh m� ta �� t�ng."
			AddText( sceneId, strText )
			AddText(sceneId,"H�y mang Y�u Quy�t ph�n th߷ng b� c� �nh �n ��y, ta s� gi�p c�c h� �i l�i. C�c h� c� �ng � kh�ng ?")
			AddNumText(sceneId,x001094_g_scriptId,"аng �",4,4)
			AddNumText(sceneId,x001094_g_scriptId,"Ta ch� gh� qua th�i",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if GetNumText() == 4 then
		x001094_DoiYeuQuyetbt8( sceneId, selfId, targetId )
	end
	if GetNumText() == 0 then --k�t th�c
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
end

function x001094_DoiYeuQuyetbt8( sceneId, selfId, targetId )
	local ok =0
	for i=1,getn(x001094_g_yeuquyet_bt8) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x001094_g_yeuquyet_bt8[i] ) --check so luong
		if num >=1 then --neu co
			LuaFnDelAvailableItem(sceneId,selfId, x001094_g_yeuquyet_bt8[i], num ) --thi xoa
			for j=1,num do
				local BagIndex =  TryRecieveItem( sceneId, selfId, x001094_g_yeuquyet_bt8[i], 1 ) --add lai
				if BagIndex <0 then
					x001094_FailTips( sceneId, selfId,  "T�i ��ng � �� �y !" )
				else
					x001094_FailTips( sceneId, selfId,  "Ho�n �i th�nh c�ng  #Y#{_ITEM" ..x001094_g_yeuquyet_bt8[i].. "}")
				end
			end
			ok =1;
		end
	end
	if ok==0 then
		x001094_FailTips( sceneId, selfId,  "Thi�u v�t ph�m c�n thi�t ho�c v�t ph�m b� kho� !" )
	else
		x001094_FailTips( sceneId, selfId,  "Ho�n �i ho�n t�t !" )
	end
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
	return
	
end

function x001094_Tips(sceneId, selfId,targetId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x001094_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
