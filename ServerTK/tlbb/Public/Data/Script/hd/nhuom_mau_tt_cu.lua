
x000171_g_ScriptId = 000169


x000171_hongdieuthach = 30503140

x000171_ShiZhuang = {}
x000171_ShiZhuang[1] ={10124071,10125040,10125041,10125042,10125043,10125044,10125045,10125046,10125047}--10124071 Tien Lu Tinh Duyen
x000171_ShiZhuang[2] ={10124102,10125048,10125049,10125050,10125051,10125052,10125053,10125054,10125055,10125056}--10124102 Thanh Phong Di Giang
x000171_ShiZhuang[3] ={10124068,10125057,10125058,10125059,10125060,10125061,10125062,10125063,10125064}--10124068 Tuyet Vu Suong Y
x000171_ShiZhuang[4] ={10124139,10125065,10125066,10125067,10125068,10125069,10125070,10125071,10125072}--10124139 Xuan Phong Du Tuyet
x000171_ShiZhuang[5] ={10124099,10125073,10125074,10125075,10125076,10125077,10125078,10125079,10125080}--10124099 Am Dam Dieu Linh
x000171_ShiZhuang[6] ={10124132,10125081,10125082,10125083,10125084,10125085,10125086,10125087,10125088}--10124132 So Cuong Am Huong
x000171_ShiZhuang[7] ={10141838,10141840,10141841,10141842,10141843,10141844,10141845,10141846,10141847}--10141838 ¡o D‡i VN

x000171_ShiZhuang[8] ={10124456,10125000,10125001,10125002,10125003,10125004,10125005,10125006,10125007}--Phien Diep Lac Vu
x000171_ShiZhuang[9] ={10124093,10125008,10125009,10125010,10125011,10125012,10125013,10125014,10125015}--V’n Tÿ ThiÍn H∞ng
x000171_ShiZhuang[10] ={10124163,10125016,10125017,10125018,10125019,10125020,10125021,10125022,10125023}--TiÍn V˚ Ngﬂng NguyÆt
x000171_ShiZhuang[11] ={10124372,10125024,10125025,10125026,10125027,10125028,10125029,10125030,10125031}--Tÿ Dßt SﬂΩng Nhung
x000171_ShiZhuang[12] ={10124379,10125032,10125033,10125034,10125035,10125036,10125037,10125038,10125039}--Phi Long Th◊a V‚n
x000171_ShiZhuang[13] ={10124398,10125089,10125090,10125091,10125092,10125093,10125094,10125095,10125096}--Thanh H‡ Ngﬂ Thi¨n

x000171_ShiZhuang[14] ={10124518,10124520,10124522,10124524,10124526,10124528,10124530,10124532,10124534}--Ng˜c V˚ Thanh Tr˘ 30day
x000171_ShiZhuang[15] ={10124519,10124521,10124523,10124525,10124527,10124529,10124531,10124533,10124535}--Ng˜c V˚ Thanh Tr˘ 60 day

x000171_ShiZhuang[16] ={10124536,10124538,10124540,10124542,10124544,10124546,10124548,10124550,10124552}--B·ch Hoa ThiÍn Th‰o 30day
x000171_ShiZhuang[17] ={10124537,10124539,10124541,10124543,10124545,10124547,10124549,10124551,10124553}--B·ch Hoa ThiÍn Th‰o 60 day
function x000171_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{SZPR_091023_01}" )
		AddNumText( sceneId, x000171_g_ScriptId, "#{SZPR_091023_02}",6 ,1000  )
		AddNumText( sceneId, x000171_g_ScriptId, "#{SZPR_091023_04}",6 ,3000  )
		AddNumText( sceneId, x000171_g_ScriptId, "#{SZPR_091023_05}",6 ,4000  )
		AddNumText( sceneId, x000171_g_ScriptId, "#{SZPR_091023_06}",6 ,5000  )
		AddNumText( sceneId, x000171_g_ScriptId, "#{SZPR_091023_07}",6 ,6000  )
		AddNumText( sceneId, x000171_g_ScriptId, "#{SZPR_091023_08}",11 ,2000  )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


function x000171_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()

	if key == 1000 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 0910281 )
	end

	if key == 2000 then
		x000171_AddText( sceneId, selfId, "#{SZPR_091023_10}" )
	end
	if key == 3000 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20091027 )
		return
	end
	if key == 4000 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20091029)
		return
	end
	if key == 5000 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19860143 )
		return
	end
	if key == 6000 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19851274 )
		return
	end
end
function x000171_OnDressPaint(sceneId, selfId, idBagPos)
	if idBagPos == -1 then
		return
	end
		local ItmID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, idBagPos )
		local ItemClass = 0
		for i=1,getn(x000171_ShiZhuang) do
			local Cache = x000171_ShiZhuang[i]
			for j =1,getn(Cache) do
				if ItmID == Cache[j] then
					ItemClass = i
					break
				end
			end
		end
		if ItemClass == 0 then
			x000171_NotifyFailTips(sceneId,selfId, "Th∂i trang khÙng th¨ nhuµm. ")
			return
		end

		if GetGemEmbededCount( sceneId, selfId, idBagPos ) > 0 then
			x000171_NotifyFailTips(sceneId,selfId, "H„y th·o gﬁ t§t c‰ B‰o Th’ch!")
			return
		end
		if LuaFnIsItemAvailable( sceneId, selfId, idBagPos ) ~= 1 then
			x000171_NotifyFailTips(sceneId,selfId, "#{SZPR_091023_16}")
			return
		end
		if (LuaFnGetAvailableItemCount( sceneId, selfId, x000171_hongdieuthach ) < 1) then
			x000171_NotifyFailTips( sceneId, selfId, "#{SZPR_091023_21}")
			return
		end
		if ItemClass >= 14 then -- Ghim 2 item
			if (LuaFnGetAvailableItemCount( sceneId, selfId, x000171_hongdieuthach ) < 2) then
				x000171_NotifyFailTips( sceneId, selfId, "–‚y l‡ lo’i th∂i trang qu˝ hi™m cÛ h’n sÿ d¯ng, sau khi nhuµm s® gia h’n l’i, c•n 2 H∞ng DiÆu Th’ch ¨ nhuµm")
				return
			end
		end
		local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, 50000 )
		if ret < 0 then
			x000171_NotifyFailTips( sceneId, selfId, "KhÙng ¸ ng‚n lﬂ˛ng." )
			return
		end
		LuaFnEraseItem( sceneId, selfId, idBagPos )
		LuaFnDelAvailableItem(sceneId,selfId, x000171_hongdieuthach, 1)
		if ItemClass == 14 or ItemClass == 15 then 
			LuaFnDelAvailableItem(sceneId,selfId, x000171_hongdieuthach, 1)
		end
		local ClassItem = x000171_ShiZhuang[ItemClass]
		TryRecieveItem( sceneId, selfId, ClassItem[random(2,9)], 1 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x000171_NotifyFailTips( sceneId, selfId, "#{SZPR_091023_23}" )
		str = format("#P #{_INFOUSR%s} gi∂ „ kh·c, vı cÙng khÙng nhÊng th‚m hßu m‡ phong c·ch Ân m£c ng‡y c‡ng ti™n xa. Ai nhÏn th§y c˚ng ´u ngﬂﬁng mµ ! Thßt ©p, thßt ©p !", GetName(sceneId,selfId))
		BroadMsgByChatPipe(sceneId, selfId, str, 4)
end
function x000171_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x000171_AddText( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList(sceneId,selfId,targetId)
end