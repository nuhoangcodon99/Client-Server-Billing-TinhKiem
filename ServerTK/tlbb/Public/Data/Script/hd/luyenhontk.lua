x000161_g_ScriptId = 000161

x000161_g_tbp = 30505908 --tbp cap 3
x000161_g_tbp1 = 30505816 --tbp cap 1
x000161_g_tbp2 = 30505817 --tbp cap 2
x000161_g_tmp7 = 30505806
x000161_g_tbp_need = 5
x000161_g_tbp_supertk_need = 50
x000161_g_tmp7_supertk_need = 50
x000161_g_haivucthanbinh = {
		{itemid = 10301220, recitemid ={10308090,10308091,10308092}},
		{itemid = 10308090, recitemid ={10308090,10308091,10308092}},
		{itemid = 10308091, recitemid ={10308090,10308091,10308092}},
		{itemid = 10308092, recitemid ={10308090,10308091,10308092}},

		{itemid = 10301221, recitemid ={10308099,10308100,10308101}},
		{itemid = 10308099, recitemid ={10308099,10308100,10308101}},
		{itemid = 10308100, recitemid ={10308099,10308100,10308101}},
		{itemid = 10308101, recitemid ={10308099,10308100,10308101}},

		{itemid = 10301222, recitemid ={10308108,10308109,10308110}},
		{itemid = 10308108, recitemid ={10308108,10308109,10308110}},
		{itemid = 10308109, recitemid ={10308108,10308109,10308110}},
		{itemid = 10308110, recitemid ={10308108,10308109,10308110}},

		{itemid = 10301223, recitemid ={10308135,10308136,10308137}},
		{itemid = 10308135, recitemid ={10308135,10308136,10308137}},
		{itemid = 10308136, recitemid ={10308135,10308136,10308137}},
		{itemid = 10308137, recitemid ={10308135,10308136,10308137}},

		{itemid = 10301224, recitemid ={10308117,10308118,10308119}},
		{itemid = 10308117, recitemid ={10308117,10308118,10308119}},
		{itemid = 10308118, recitemid ={10308117,10308118,10308119}},
		{itemid = 10308119, recitemid ={10308117,10308118,10308119}},

		{itemid = 10301225, recitemid ={10308144,10308145,10308146}},
		{itemid = 10308144, recitemid ={10308144,10308145,10308146}},
		{itemid = 10308145, recitemid ={10308144,10308145,10308146}},
		{itemid = 10308146, recitemid ={10308144,10308145,10308146}},

		{itemid = 10301226, recitemid ={10308153,10308154,10308155}},
		{itemid = 10308153, recitemid ={10308153,10308154,10308155}},
		{itemid = 10308154, recitemid ={10308153,10308154,10308155}},
		{itemid = 10308155, recitemid ={10308153,10308154,10308155}},

		{itemid = 10301227, recitemid ={10308171,10308172,10308173}},
		{itemid = 10308171, recitemid ={10308171,10308172,10308173}},
		{itemid = 10308172, recitemid ={10308171,10308172,10308173}},
		{itemid = 10308173, recitemid ={10308171,10308172,10308173}},

		{itemid = 10301228, recitemid ={10308162,10308163,10308164}},
		{itemid = 10308162, recitemid ={10308162,10308163,10308164}},
		{itemid = 10308163, recitemid ={10308162,10308163,10308164}},
		{itemid = 10308164, recitemid ={10308162,10308163,10308164}},
		}
x000161_g_tk102 = {
	{itemid = 10300100, recitemid =10301220 },
	{itemid = 10300101, recitemid =10301220},
	{itemid = 10300102, recitemid =10301220 },
	{itemid = 10301100, recitemid =10301221 },
	{itemid = 10301101, recitemid =10301221 },
	{itemid = 10301102, recitemid =10301221 },
	{itemid = 10301200, recitemid =10301222 },
	{itemid = 10301201, recitemid =10301222 },
	{itemid = 10301202, recitemid =10301222 },
	
	{itemid = 10302100, recitemid =10301224 },
	{itemid = 10302101, recitemid =10301224 },
	{itemid = 10302102, recitemid =10301224 },
	{itemid = 10303100, recitemid =10301223 },
	{itemid = 10303101, recitemid =10301223 },
	{itemid = 10303102, recitemid =10301223 },
	{itemid = 10303200, recitemid =10301225 },
	{itemid = 10303201, recitemid =10301225 },
	{itemid = 10303202, recitemid =10301225 },
	
	{itemid = 10304100, recitemid =10301226 },
	{itemid = 10304101, recitemid =10301226 },
	{itemid = 10304102, recitemid =10301226 },
	
	{itemid = 10305100, recitemid =10301228 },
	{itemid = 10305101, recitemid =10301228 },
	{itemid = 10305102, recitemid =10301228 },
	{itemid = 10305200, recitemid =10301227 },
	{itemid = 10305201, recitemid =10301227 },
	{itemid = 10305202, recitemid =10301227 },
	--tk luyen hon
	{itemid = 10301220, recitemid =10301220 },
	{itemid = 10301221, recitemid =10301221 },
	{itemid = 10301222, recitemid =10301222 },
	{itemid = 10301223, recitemid =10301223},
	{itemid = 10301224, recitemid =10301224 },
	{itemid = 10301225, recitemid =10301225 },
	{itemid = 10301226, recitemid =10301226 },
	{itemid = 10301227, recitemid =10301227 },
	{itemid = 10301228, recitemid =10301228 },
}


function x000161_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{SQSJ_0708_08}" )
		AddNumText( sceneId, x000161_g_ScriptId, "Th�n kh� luy�n h�n",6 ,1000  )
		AddNumText( sceneId, x000161_g_ScriptId, "#gFF0FA0Th�n Binh H�i V�c ",6 ,4000  )
		AddNumText( sceneId, x000161_g_ScriptId, "Th�ng c�p l�n Th�n Binh Ph� 2",6 ,2000  )
		AddNumText( sceneId, x000161_g_ScriptId, "Th�ng c�p l�n Th�n Binh Ph� 3",6 ,3000  )
		AddNumText( sceneId, x000161_g_ScriptId, "V� Th�n kh� luy�n h�n",11 ,0  )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000161_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
	if key == 2000 then --thang cap tbp 2
		BeginEvent(sceneId)
			AddText(sceneId,"#GЬ c� th� #Yth�ng c�p l�n Th�n Binh Ph� 2 #G h�y mang theo 5 #YTh�n Binh Ph� 1 #G�n ��y. #r #GC�c h� c� �ng � s� d�ng 5 #YTh�n Binh Ph� c�p 1 #Gn�ng l�n 1 #YTh�n Binh Ph� c�p 2 #Gkh�ng ?")
			AddNumText( sceneId, x000161_g_ScriptId, "аng �", 8 , 2001  )
			AddNumText( sceneId, x000161_g_ScriptId, "Kh�ng", 8 , 0  )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key == 2001 then --thang cap tbp 2
		x000161_tbp2(sceneId, selfId, targetId)
	end
	if key == 3000 then --thang cap tbp 3
		BeginEvent(sceneId)
			AddText(sceneId,"#GЬ c� th� #Yth�ng c�p l�n Th�n Binh Ph� 3 #G h�y mang theo 5 #YTh�n Binh Ph� 2 #G�n ��y. #r #GC�c h� c� �ng � s� d�ng 5 #YTh�n Binh Ph� c�p 2 #Gn�ng l�n 1 #YTh�n Binh Ph� c�p 3 #Gkh�ng ?")
			AddNumText( sceneId, x000161_g_ScriptId, "аng �", 8 , 3001  )
			AddNumText( sceneId, x000161_g_ScriptId, "Kh�ng", 8 , 0  )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key == 3001 then --thang cap tbp 3
		x000161_tbp3(sceneId, selfId, targetId)
	end
	if key == 1000 then --luyen hon than khi
		BeginEvent(sceneId)
			AddText(sceneId,"#GЬ c� th� #YLuy�n H�n Th�n Kh�, c�c h� h�y #Y�t Th�n Kh� c�a v�o h�nh trang#G. #r H�y l�a ch�n #YTh�n Kh� #G m� c�c h� mu�n #Yluy�n h�n.")
			for i = 1, getn( x000161_g_tk102 ) do
				if (LuaFnGetAvailableItemCount( sceneId, selfId, x000161_g_tk102[i].itemid ) >= 1) then
					AddNumText( sceneId, x000161_g_ScriptId, "#{_ITEM"..x000161_g_tk102[i].itemid.."}", 6 , x000161_g_tk102[i].itemid  )
				end
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--**************************************************************
	for i = 1, getn( x000161_g_tk102 ) do
		if key == x000161_g_tk102[i].itemid then
			BeginEvent(sceneId)
				AddText(sceneId,"#GЬ luy�n h�n cho #Y#{_ITEM"..x000161_g_tk102[i].itemid.."} #Gc�n ti�u hao :\n#cFF0000 5 Th�n Binh Ph� c�p 3\n#GC�c h� c� ch�c ch�n mu�n luy�n h�n cho #Y#{_ITEM"..x000161_g_tk102[i].itemid.."}  #Gkh�ng? ")
				AddText(sceneId,"#cFF0000 Ch� � : #Y#bKhi luy�n h�n, v�t ph�m s� m�t t�t c� c߶ng ho�, ��c l�, b�o th�ch, t�o kh�c..v� bi�n �i h�nh d�ng !")
				AddNumText( sceneId, x000161_g_ScriptId, "аng �", 8 , 100000000 +x000161_g_tk102[i].itemid  )
				AddNumText( sceneId, x000161_g_ScriptId, "Kh�ng", 8 , 0  )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)

		end
	end
	for i = 1, getn( x000161_g_tk102 ) do
		if key == 100000000 +x000161_g_tk102[i].itemid then
			--check
			if (LuaFnGetAvailableItemCount( sceneId, selfId, x000161_g_tbp ) < x000161_g_tbp_need ) then
				x000161_AddText( sceneId, selfId,targetId,"C�c h� kh�ng c� �� "..x000161_g_tbp_need.." Th�n Binh Ph� c�p 3. ")
				return
			end
			--check again
			if (LuaFnGetAvailableItemCount( sceneId, selfId, x000161_g_tk102[i].itemid ) <1) then
				x000161_AddText( sceneId, selfId,targetId,"Th�n Kh� b� kho� ho�c kh�ng t�n t�i. ")
				return
			end
			
			--delete item
			LuaFnDelAvailableItem(sceneId,selfId, x000161_g_tbp, x000161_g_tbp_need )
			LuaFnDelAvailableItem(sceneId,selfId, x000161_g_tk102[i].itemid, 1)
			--rec
			TryRecieveItem( sceneId, selfId, x000161_g_tk102[i].recitemid, 1 )
			x000161_NotifyFailTips( sceneId, selfId, "Luy�n h�n Th�n Kh� th�nh c�ng" )
			x000161_AddText( sceneId, selfId,targetId, "Luy�n h�n Th�n Kh� th�nh c�ng." )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			
			
			local str = format( "#GT� Ch�u, #P #{_INFOUSR%s} tay c�m #Y[Th�n Binh Ph� c�p 3] #Pd�ng l�n #GT� Ch�u - �u Tr� Vu, #Pmong ߾c duy nh�t ch� mu�n nh�n th�y �nh s�ng h�o nho�ng c�a Th�n Kh� luy�n h�n th�t truy�n !", GetName(sceneId,selfId) )
			BroadMsgByChatPipe( sceneId, selfId, str, 4 )
		end
	end
	--**************************************************************
	if key == 0 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	end
	if key == 4000 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19831114 )
	end
end

function x000161_tbp2( sceneId, selfId, targetId )
	--check
	if (LuaFnGetAvailableItemCount( sceneId, selfId, x000161_g_tbp1 ) < x000161_g_tbp_need ) then
		x000161_AddText( sceneId, selfId,targetId,"C�c h� kh�ng c� �� "..x000161_g_tbp_need.." Th�n Binh Ph� c�p 1. ")
		return
	end
	--delete item
	LuaFnDelAvailableItem(sceneId,selfId, x000161_g_tbp1, x000161_g_tbp_need )
	
	--rec
	TryRecieveItem( sceneId, selfId, x000161_g_tbp2, 1 )
	x000161_NotifyFailTips( sceneId, selfId, "Th�ng c�p Th�n Binh Ph� th�nh c�ng" )
	x000161_AddText( sceneId, selfId,targetId, "Th�ng c�p Th�n Binh Ph� th�nh c�ng." )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
end

function x000161_tbp3( sceneId, selfId, targetId )
	--check
	if (LuaFnGetAvailableItemCount( sceneId, selfId, x000161_g_tbp2 ) < x000161_g_tbp_need ) then
		x000161_AddText( sceneId, selfId,targetId,"C�c h� kh�ng c� �� "..x000161_g_tbp_need.." Th�n Binh Ph� c�p 2. ")
		return
	end
	--delete item
	LuaFnDelAvailableItem(sceneId,selfId, x000161_g_tbp2, x000161_g_tbp_need )
	
	--rec
	TryRecieveItem( sceneId, selfId, x000161_g_tbp, 1 )
	x000161_NotifyFailTips( sceneId, selfId, "Th�ng c�p Th�n Binh Ph� th�nh c�ng" )
	x000161_AddText( sceneId, selfId,targetId, "Th�ng c�p Th�n Binh Ph� th�nh c�ng." )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
end

function x000161_OnShenqiUpgrade(sceneId, selfId, BagPos, nType)
	if BagPos == -1 then
		return
	end
	if nType == 1 then
		local IDTK = LuaFnGetItemTableIndexByIndex( sceneId, selfId, BagPos )
		local YesOk = 0
		for i=1,getn(x000161_g_haivucthanbinh) do
			if x000161_g_haivucthanbinh[i].itemid == IDTK then
				YesOk = i
				break
			end
		end
		if YesOk == 0 then
			x000161_NotifyFailTips( sceneId, selfId, "Lo�i Th�n Kh� n�y kh�ng th� Luy�n H�n." )
			return
		end
		if LuaFnIsItemAvailable( sceneId, selfId, BagPos ) ~= 1 then
			x000161_NotifyFailTips(sceneId,selfId, "V�t ph�m b� kh�a")
			return
		end
		if GetGemEmbededCount( sceneId, selfId, BagPos ) > 0 then
			x000161_NotifyFailTips(sceneId,selfId, "H�y th�o g� t�t c� B�o Th�ch tr�n trang b�.")
			return
		end
		if LuaFnGetAvailableItemCount( sceneId, selfId, x000161_g_tbp ) < x000161_g_tbp_supertk_need then
			x000161_NotifyFailTips(sceneId,selfId, "Kh�ng �� "..x000161_g_tbp_supertk_need.." Th�n Binh Ph� C�p 3 ho�c c� v�t ph�m b� kh�a.")
			return
		end
		if LuaFnGetAvailableItemCount( sceneId, selfId, x000161_g_tmp7 ) < x000161_g_tmp7_supertk_need then
			x000161_NotifyFailTips(sceneId,selfId, "Kh�ng �� "..x000161_g_tmp7_supertk_need.." T�n M�ng Th�n Ph� c�p 7 ho�c c� v�t ph�m b� kh�a.")
			return
		end
		local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, 1000000 )
		if ret < 0 then
			x000161_NotifyFailTips( sceneId, selfId, "Kh�ng �� 100 v�ng." )
			return
		end
		LuaFnEraseItem( sceneId, selfId, BagPos )
		LuaFnDelAvailableItem(sceneId,selfId, x000161_g_tbp, x000161_g_tbp_supertk_need )
		LuaFnDelAvailableItem(sceneId,selfId, x000161_g_tmp7, x000161_g_tmp7_supertk_need )
		local superitem=x000161_g_haivucthanbinh[YesOk].recitemid
		local recsuperitem = superitem[random(1,3)]
		local BagIndex = TryRecieveItem( sceneId, selfId, recsuperitem, 1 )
		x000161_NotifyFailTips( sceneId, selfId, "Luy�n H�n Th�n Kh� th�nh c�ng.")
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		if BagIndex ~= -1 then
			local playerName = GetName(sceneId, selfId)
			local transfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
		local str = format( "#GT� Ch�u, #P #{_INFOUSR%s} n�i chuy�n v�i �u Tr� Vu, #Pmong ߾c duy nh�t ch� mu�n nh�n th�y �nh s�ng h�o nho�ng c�a Th�n Binh H�i V�c #{_INFOMSG%s} th�t truy�n !", playerName, transfer )
		local msg = format("#{_INFOUSR%s}#P �� nh�n th�y �nh s�ng h�o nho�ng c�a Th�n Binh H�i V�c #{_INFOMSG%s}, xin ch�c m�ng!", playerName, transfer )
		BroadMsgByChatPipe( sceneId, selfId, msg, 4 )
		end

		return
	end
end
function x000161_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


function x000161_AddText( sceneId, selfId, targetId,Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList(sceneId,selfId,targetId)
end