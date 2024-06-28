--07Ê¥µ®Ôªµ©
--Ê¥µ®ÊØÒ¹»î¶¯
--Ñ©ÈËNPC½Å±¾....

--½Å±¾ºÅ
x050027_g_ScriptId = 050027

x050027_g_GiftTbl = {

	30505150,
	30505151,
	30505152,
	30505153

}

x050027_g_StartTime = 73100
x050027_g_EndTime   = 73108

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050027_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
	--local MstID = GetActivityParam( sceneId, 88, 0 )
	--local CurState = GetActivityParam( sceneId, 88, 1 )
	--local BallCount = GetActivityParam( sceneId, 88, 2 )
	
	--AddText(sceneId,"  MstID :  "..MstID..".")
	--AddText(sceneId,"  CurState :  "..CurState..".")
	--AddText(sceneId,"  BallCount :  "..BallCount..".")
		local NeedCount = CallScriptFunction( 050023, "GetNeedBallCount", sceneId )
		if NeedCount > 0 then
			AddText(sceneId,"    Hi®n tÕi còn c¥n : #Y"..NeedCount.."#W ð¬ hoàn thành ngß¶i tuyªt.")
		end
		AddText(sceneId,"#{SDSY_20071206_01}")
		AddNumText(sceneId,x050027_g_ScriptId,"Nh§n quà t£ng Giáng Sinh",6,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

function x050027_OnEventRequest( sceneId, selfId, targetId, eventId )

	-- 12ÔÂ24ÈÕ24Ê±µ½12ÔÂ25ÈÕ2Ê±
	local curTimeDay = GetTime2Day();
	local curTimeHour = GetHour();
	--Ê±¼äÃ»µ½....
	if curTimeDay < 20121221 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SDSY_20071206_02}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--ÊÇ·ñÁì¹ýÁË....
	local flag = GetMissionFlag(sceneId, selfId, MF_CHRISTMAS08_GIFT)
	if flag ~= 0 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SDSY_20071206_03}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--Ê±¼ä¹ýÁË....
	if curTimeDay > 20121225 or (curTimeDay == 20121225 and curTimeHour > 1) then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SDSY_20071206_04}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--¼ì²â±³°üÊÇ·ñÓÐµØ·½....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SDSY_20071206_05}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--¸ø¶«Î÷....
	local rand = random( getn(x050027_g_GiftTbl) )
	TryRecieveItem( sceneId, selfId, x050027_g_GiftTbl[rand], QUALITY_MUST_BE_CHANGE )

	--·¢ÓÊ¼þ....
	LuaFnSendSystemMail(sceneId, GetName(sceneId, selfId), "#{SDSY_20071206_06}")

	--¼ÇÂ¼ËûÒÑ¾­Áì¹ýÁË....
	SetMissionFlag(sceneId, selfId, MF_CHRISTMAS08_GIFT, 1)

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end
