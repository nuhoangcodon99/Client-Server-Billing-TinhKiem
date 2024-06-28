
x050023_g_ScriptId	= 050023

x050023_g_ItemBoxPos = {
  
{260,248},{261,240},{262,244},{263,258},{264,246},
{252,245},{251,244},{252,243},{251,242},{250,241},
{250,240},{250,243},{248,243},{248,245},{249,253},
{249,253},{250,253},{253,240},{253,249},{253,239},
{253,248},{251,256},{256,251},{255,255},{251,252},
{254,252},{253,257},{252,254},{256,249},{257,247},
{240,244},{248,247},{257,253},{262,253},{266,253},
{249,251},{250,231},{251,235},{252,237},{253,233},
{249,235},{249,238},{262,238},{253,235},{259,249},
{258,240},{255,240},{263,240},{259,235},{261,269},

}


x050023_g_ItemBoxDrop = {

	--À¬»ø....
	{ itemId = 30509039, odds = 3000  },--Giáng Sinh Vui Vë
	{ itemId = 10124606, odds = 3000  },--Lý Hý Lan Phß½ng
	{ itemId = 10124610, odds = 3000  },--Døc Huyªt Hàn Phong
	{ itemId = 10124614, odds = 3000  },--Bích ThuÖ Hàm Phß½ng
	{ itemId = 10124625, odds = 3000  },--DÕ C¦m Thiên Lan
	{ itemId = 30509082, odds = 3000  },--Pháo hoa Noel 
	{ itemId = 30509082, odds = 2000  },
	{ itemId = 20310181, odds = 2000  },--Xuyªt Long ThÕch_Nguyên
	{ itemId = 30509082, odds = 2000  },
	{ itemId = 30509082, odds = 4000  },
	{ itemId = 30509082, odds = 4000  },
	{ itemId = 30509082, odds = 4000  },
	{ itemId = 30509082, odds = 4000  },

	--µÍ¼¶Ã±×Ó....
	{ itemId = 30505107, odds = 400   },--Ti¬u lÕt bá
	{ itemId = 30505107, odds = 1000  },
	{ itemId = 30505201, odds = 1600  },--HÕnh phúc - kim cuong sa
	{ itemId = 30505201, odds = 2000  },

	--¸ß¼¶ÍòÁé....
	{ itemId = 30008018, odds = 3000  },--Thanh Tâm Ðan
	{ itemId = 30008018, odds = 3000  },
	{ itemId = 30008019, odds = 3000  },--Ð£c Xá L®nh
	{ itemId = 30008019, odds = 4000  },

	--¸ß¼¶Ã±×Ó....
	{ itemId = 30008018, odds = 3000  },
	{ itemId = 30008014, odds = 4000  },--Thông Thiên Linh Ðan
	{ itemId = 30008014, odds = 5000  },
	{ itemId = 30008019, odds = 4000  },
	{ itemId = 30900016, odds = 4000  },--Cao c¤p Bäo ThÕch hþp thành phù
	{ itemId = 30900016, odds = 2050  },

	--±¦Ê¯....
	{ itemId = 50501001, odds = 950   },
	{ itemId = 50501002, odds = 950   },
	{ itemId = 50501003, odds = 950   },
	{ itemId = 50502002, odds = 950   },
	{ itemId = 50502003, odds = 950   },
	{ itemId = 50502004, odds = 950   },
	{ itemId = 50503001, odds = 950   },
	{ itemId = 50504002, odds = 950   },
	{ itemId = 50511001, odds = 950   },
	{ itemId = 50511002, odds = 950   },	
	{ itemId = 50512001, odds = 950   },
	{ itemId = 50512002, odds = 950   },
	{ itemId = 50512003, odds = 950   },
	{ itemId = 50512004, odds = 950   },
	{ itemId = 50513001, odds = 950   },
	{ itemId = 50513002, odds = 950   },
	{ itemId = 50513003, odds = 950   },
	{ itemId = 50613004, odds = 950   },
	{ itemId = 50613005, odds = 950   },
	{ itemId = 50613006, odds = 950   },
	{ itemId = 50614001, odds = 950   },

}
function x050023_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#GChúc các bÕn có 1 mùa giáng sinh vui vë. #r#PHãy thu th§p nhæng món quà quanh tôi ð¬ Giáng Sinh thêm thú v¸ nhé!!")
		AddText(sceneId,"#Y JINGLE BELL....JINGLE BELL....JINGLE ALL THE WAYS.....")
		AddNumText(sceneId,x050023_g_ScriptId,"Làm sao Nh§n quà t£ng Giáng Sinh",11,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

function x050023_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() ==0 then 
		BeginEvent(sceneId)
			AddText(sceneId,"Vào#cFF0000 0h00 ngày 25-12-2014, #GÐÕi Tuyªt Nhân · #YLÕc Dß½ng(256,246)#W s¨ gØi t£ng t¾i t¤t cä b¢ng hæu nhæng món quà Giáng Sinh cñc kì thú v¸")
			AddText(sceneId,"Chúng ðßþc gói r¤t kî càng và ð£t ngay ng¡n vào trong nhæng #cFF0000Hµp quà bí m§t #Wn¢m xung quanh #YÐÕi Tuyªt Nhân")
			AddText(sceneId,"#WCùng nhau khám phá nhé!!!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

function x050023_OnTimerSnowMan( sceneId, selfId )
	--local checkmst =0
--	local nMonsterNum = GetMonsterCount(sceneId)
--	for j=0, nMonsterNum-1 do
--		local nMonsterId = GetMonsterObjID(sceneId,j)	
--		if GetMonsterDataID( sceneId, nMonsterId ) == 3881 then
--			checkmst =3881 
--		end
--	end
	--if checkmst == 0 then
		--local mstId = LuaFnCreateMonster(sceneId, 3881, 255.8, 245.8, 3, 0, 50023 )
		--SetObjDir( sceneId, mstId, 0 )
	--end
	local curDayTime = GetDayTime()
	if curDayTime == 13358 and GetHour() ==00 and GetMinute() <05 then
	--if GetHour() ==00 and GetMinute() <05 then
		BroadMsgByChatPipe(sceneId,0,"@*;SrvMsg;SCA:" .. "#PT¤t cä b¢ng hæu hãy mau mau tr· v« #GQuäng Trß¶ng LÕc Dß½ng #Pð¬ khám phá cho riêng mình nhæng ph¥n quà h¤p dçn t× #GNgß¶i Tuyªt Giáng Sinh #P nhé!!!!   #YMERRY CHRISTMAS!!!",4)
		MonsterTalk(sceneId, -1, "ÐÕi Tuyªt Nhân", "#YChúc t¤t cä b¢ng hæu có 1 mùa Giáng Sinh vui vë và ¤m áp. #PHãy thu th§p hªt nhæng Hµp quà quanh #GQuäng Trß¶ng LÕc Dß½ng#P. Trong ðó chÑa r¤t nhi«u ph¥n quà cñc kì thú v¸ cüa tôi dành t£ng m÷i ngß¶i ðó!!!")
		x050023_GiveItemBox( sceneId )
	end
end


function x050023_GiveItemBox( sceneId )

	local BoxId = -1
	local DropItemId = -1
	local randValue = 0
	local index = 1
	for _, box in x050023_g_ItemBoxPos do
		--zchw 1/60¼¸ÂÊÕäÊÞµ°£¬»¶ÀÖÖí
		local rdm = random(0, 6000);
		if rdm < 100 then
		
			local BoxId = ItemBoxEnterScene( box[1], box[2], 779, sceneId, QUALITY_MUST_BE_CHANGE, 1, 30505150 ) ---L­ v§t giáng sinh
			SetItemBoxMaxGrowTime( sceneId, BoxId, 1200000 )	--20·ÖÖÓÉúÃüÆÚ....		
			
		else
		
			--Ëæ»ú³öµÚÒ»¸öÎïÆ·....
			randValue = random(0, 99999);
			for i, item in x050023_g_ItemBoxDrop do
				if item.odds >= randValue then
					DropItemId = item.itemId;
					index = i
					break
				end
				randValue = randValue - item.odds;
			end
			if DropItemId == -1 then
				break
			end
			BoxId = ItemBoxEnterScene( box[1], box[2], 779, sceneId, QUALITY_MUST_BE_CHANGE, 1, DropItemId )
			SetItemBoxMaxGrowTime( sceneId, BoxId, 1200000 )	--20·ÖÖÓÉúÃüÆÚ....
	
			--Ö®Ç°Ã»ÓÐËæ»ú³öÊ¥µ®Ã±ºÍ±¦Ê¯²Å»á¸øµÚ¶þ¸öÎïÆ·....
			if ( index < 13 ) or ( index >= 18 and index <= 21 )then
				randValue = random(0, 99999);
				for _, item in x050023_g_ItemBoxDrop do
					if item.odds >= randValue then
						DropItemId = item.itemId
						break
					end
					randValue = randValue - item.odds;
				end
				if DropItemId == -1 then
					break
				end
				AddItemToBox( sceneId, BoxId, QUALITY_MUST_BE_CHANGE, 1, DropItemId )
			end
			
		end
	end
end

function x050023_OnPlayerPickUpItemInLuoyang( sceneId, selfId, itemId, bagidx )

	--·Ç»î¶¯Ê±¼äÔò²»¹«¸æ....
	--if 0 == x050023_CheckActivityTime( sceneId ) then
	--	return 0
	--end

	local IsBoxItem = 0
	local ItemCount = getn(x050023_g_ItemBoxDrop)
	for i = 14, ItemCount do --ÍòÁéÊ¯²»¹«¸æ zchw
		if x050023_g_ItemBoxDrop[i].itemId == itemId then
			IsBoxItem = 1
			break
		end
	end
	--ÕäÊÞµ°£ºµ±ìè£¨95¼¶£© ¹«¸æ 30309683 zchw
	if itemId == 30309683 then
		IsBoxItem = 1;
		--ÈÕÖ¾Í³¼Æ
		local guid = LuaFnObjId2Guid(sceneId, selfId)
		local log = format("itemId=%d", itemId)
		ScriptGlobal_AuditGeneralLog(LUAAUDIT_SNOW, guid, log)
	end
	
	if IsBoxItem == 0 then
		return 0
	end

	--¹«¸æ....
	local playerName = GetName(sceneId, selfId)
	local transfer = GetBagItemTransfer(sceneId,selfId,bagidx)
	local rand = random(3)
	local message
	if rand == 1 then
		message = format("#PThiên giáng hàn tuyªt, hÖ sñ doanh môn. #{_INFOUSR%s}#P tình c¶ ði bµ trên ðß¶ng ph¯ LÕc Dß½ng may m¡n nh£t ðßþc #{_INFOMSG%s}#P, ðang v§n ðö, nên cÑ tiªp tøc hång say.", playerName, transfer )
	elseif rand == 2 then
		message = format("#PB¡c phong xuy, tuyªt hoa phiêu, LÕc Dß½ng thßþng không hÕ tài bäo #{_INFOUSR%s}#P ðã nhanh chóng ch÷n ðßþc #{_INFOMSG%s}#P th§t là may m¡n !", playerName, transfer )
	else
		message = format("#PTuyªt Nhân häo, Tuyªt Nhân di®u, Tuyªt Nhân tän lÕc bäo b¯i oa oa khiªu. #{_INFOUSR%s}#P ðßþc ch÷n giæ #{_INFOMSG%s}#P ng°i x±m trên ðß¶ng ph¯ LÕc Dß½ng cß¶i ng¾ ng¦n", playerName, transfer )
	end
	BroadMsgByChatPipe(sceneId, selfId, message, 4)

	return 1
end
--end
