--------------------------------------------
--ÎåÒ»ÁìÈ¡ÕÐÅÆ»î¶¯½Å±¾
--Created By ÐÅµÂ·å
--------------------------------------------

--½Å±¾ºÅ
x808090_g_ScriptId = 808090

--»î¶¯²ÎÓëÍæ¼ÒµÈ¼¶ÏÂÏÞ
x808090_g_LowerLimitLevel = 30

--·¢ËÍ»î¶¯Í¨ÖªÓÊ¼þÊ±¼äÓò
x808090_g_MailStartDayTime = 8121		--·¢ËÍÓÊ¼þ¿ªÊ¼Ê±¼ä 2008-05-01
x808090_g_MailEndDayTime = 8127			--·¢ËÍÓÊ¼þ½áÊøÊ±¼ä 2008-05-07

--ÕÐÅÆID±í
x808090_g_ZhaoPaiIDT = {
													{30008021,	"Chiªu bài : Nghê H°ng Ðång"},
													{30008022,	"Chiªu bài: Ðao kiªm tranh phong"},
													{30008023,	"Chiªu bài: Thiªt giáp ð°ng bích"},
													{30008024,	"Chiªu bài: Trân c¥m d¸ thú"},
													{30008025,	"Chiªu bài: Kim Tñ Chiªu bài"}
												}

--¿É¹©ÁìÈ¡ÕÐÅÆÖÖÀà
x808090_g_ZhaoPaiType = 5												

--Ã¿´ÎÁìÈ¡ÕÐÅÆµÄÊýÁ¿
x808090_g_ZhaoPaiCount = 1

--ÁìÈ¡ÕÐÅÆÊ±ºòÐ§¹ûID(¸ÃÐ§¹û°üº¬ÒôÐ§)
x808090_g_GetZhaoPaiImpactID = 49


--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x808090_OnDefaultEvent( sceneId, selfId, targetId )
	local ItemID = GetNumText()
	if(ItemID == 10) then	--´ó¼ÒÒ»ÆðÀ´°ÚÌ¯
		BeginEvent(sceneId)
			AddText(sceneId,"#{LQZP_INTRO}")
			AddNumText( sceneId, x808090_g_ScriptId, "Lînh chiªu bài", 6, 12 )
			AddNumText( sceneId, x808090_g_ScriptId, "Bö qua", 6, 13 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)		
	elseif(ItemID == 11) then	--°ïÖú
		BeginEvent(sceneId)
			AddText(sceneId,"#{LQZP_HELP}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif(ItemID == 12) then
		--·¢·ÅÕÐÅÆ
		x808090_GeiZhaoPai(sceneId, selfId, targetId)
	elseif(ItemID == 13) then	--"ÎÒÔÙÏëÏë"
		--¹Ø±Õ½çÃæ
		DispatchUICommand(sceneId, selfId, 1000)
	end	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808090_OnEnumerate( sceneId, selfId, targetId )
	if x808090_CheckRightTime() == 1 then	--ÕýÈ·µÄ»î¶¯Ê±¼ä
		AddNumText(sceneId, x808090_g_ScriptId, "ÐÕi gia nh¤t kh·i", 6, 10 )
		AddNumText(sceneId, x808090_g_ScriptId, "Gi¾i thi®u ÐÕi gia nh¤t kh·i", 11, 11 )
	end
end

--**********************************
--¼ì²âµ±Ç°ÊÇ·ñÊÇ»î¶¯Ê±¼ä
--**********************************
function x808090_CheckRightTime()
	if GetDayTime() >= x808090_g_MailStartDayTime then
		return 1
	else
		return 0
	end
end

--**********************************
--·¢·ÅÕÐÅÆ
--**********************************
function x808090_GeiZhaoPai(sceneId, selfId, targetId)	
	--¼ì²âµÈ¼¶ÊÇ·ñ´ïµ½ÒªÇó
	if GetLevel( sceneId, selfId ) < x808090_g_LowerLimitLevel then
		BeginEvent( sceneId )
			AddText( sceneId, "#{LQZP_LOWERLIMITLEVEL}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )		
		return
	end
	
	--¼ì²âµ±ÌìÊÇ·ñÁìÈ¡¹ý"ÕÐÅÆ":Ã¿ÌìÖ»ÄÜÁì1´Î.	
	local LastDayValue = GetMissionData(sceneId, selfId, MD_LINGQUZHAOPAI_LASTDATE)--ÉÏ´ÎÁìÈ¡µÄÈÕÆÚÖµ(ÒÔÌìÎªµ¥Î»)
	local CurDayValue = GetDayTime()--µ±Ç°Ê±¼äÖµ(ÒÔÌìÎªµ¥Î»)
	if(CurDayValue <= LastDayValue) then	--Áì¹ýÒ»´ÎÁË
		BeginEvent( sceneId )
			AddText( sceneId, "#{LQZP_ONCEPERDAY}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end	
	
	--¼ì²â±³°üÊÇ·ñÓÐµØ·½
	if (LuaFnGetPropertyBagSpace( sceneId, selfId ) < x808090_g_ZhaoPaiCount) then
		BeginEvent( sceneId )
			AddText( sceneId, "#{LQZP_BAGFULL}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )--´°¿ÚÏÔÊ¾"¿Õ¼ä²»×ã"

		BeginEvent( sceneId )
			AddText( sceneId, "#{LQZP_BAGFULLTIP}" )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )	--ÐÑÄ¿ÌáÊ¾"¿Õ¼ä²»×ã"
		return
	end	
	
	--Ìõ¼þÍ¨¹ý	
	--¼ÇÂ¼ÁìÈ¡µÄÊ±¼ä,±£Ö¤Ò»ÌìÒ»´Î
	SetMissionData(sceneId, selfId, MD_LINGQUZHAOPAI_LASTDATE, CurDayValue)
	
	--Ëæ»ú·¢·ÅÒ»¸ö"ÕÐÅÆ"
	local randValue = random(x808090_g_ZhaoPaiType)							--Ëæ¼´Öµ
	local randZhaoPaiID = x808090_g_ZhaoPaiIDT[randValue][1]		--Ëæ¼´»ñÈ¡µÄÕÐÅÆID
	local randZhaoPaiName = x808090_g_ZhaoPaiIDT[randValue][2]	--Ëæ»ú»ñÈ¡µÄÕÐÅÆÃû³Æ
	
	BeginAddItem(sceneId)
		AddItem(sceneId, randZhaoPaiID, x808090_g_ZhaoPaiCount)
	EndAddItem(sceneId, selfId)
	AddItemListToHuman(sceneId, selfId)--¼ÓÎïÆ·¸øÍæ¼Ò
	
	--¼ÓÒ»¸ö°üº¬ÉùÒôµÄÌØÐ§
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808090_g_GetZhaoPaiImpactID, 0 )
	
	--ÍêÊÂÁË,ÐÂ½çÃæ:Äú¾ÍÊÕÏÂ°É:)
	local str = format("    Ðã nh§n ðßþc #G%s#W trong túi ð°, khi sØ døng s¨ có hi®u quä b¤t ng¶ !", randZhaoPaiName)
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )	
	
	--ÐÑÄ¿ÌáÊ¾
	str = format("Các hÕ ðã nh§n ðßþc %s . ", randZhaoPaiName)	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
	
	--¹«¸æÍæ¼Ò×Ô¼º
	BroadMsgByChatPipe( sceneId, selfId, str, MSG2PLAYER_PARA )
	
	--Í³¼Æ"ÕÐÅÆ"ÁìÈ¡ÈË´Î
	AuditGeiZhaoPai(sceneId, selfId, tostring(randZhaoPaiName))
end

--**********************************
--¸øÐÂÍæ¼Ò·¢ÓÊ¼þ
--**********************************
function x808090_OnPlayerLogin( sceneId, selfId )
	local curDayTime = GetDayTime()	
	if curDayTime >= x808090_g_MailStartDayTime and curDayTime <= x808090_g_MailEndDayTime then	--ÔÚ·¢ÓÊ¼þÊ±¼ä
	
		local HaveMail = GetMissionData(sceneId, selfId, MD_LINGQUZHAOPAI_HAVESENDMAIL)	--»ñÈ¡¼ÇÂ¼Öµ
		if(HaveMail == 0)then		--±£Ö¤Íæ¼ÒÔÚÎåÒ»ÆÚ¼äµÇÂ½£¬Ö»»áÊÕµ½Ò»·âÓÊ¼þ
			LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LQZP_HUODONGMAIL}" )
			SetMissionData(sceneId, selfId, MD_LINGQUZHAOPAI_HAVESENDMAIL, 1)	--¼ÇÂ¼ÊÕµ½¹ýÓÊ¼þÁË
		end
	end	
end
