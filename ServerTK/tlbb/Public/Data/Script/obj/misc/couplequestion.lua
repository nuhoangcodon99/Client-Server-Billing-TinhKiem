-- ·òÆŞ»Ø´ğÎÊÌâ
-- ½Å±¾ºÅ
-- UI_COMMAND 888901

x888901_g_ScriptId = 888901  -- ´úÂëÖĞÒ²Ê¹ÓÃÕâ¸ö±àºÅÁË¡£ÑÏ½ûĞŞ¸Ä
x888901_g_Item		 = 30505134

-- ÎÊÌâ±í
x888901_g_FemaleType = 6
x888901_g_MaleType = 7

x888901_g_OptPos = {
	{1,2,3},{1,3,2},{2,1,3},{2,3,1},{3,1,2},{3,2,1}
}

-- ¿Í»§¶Ë¶¯×÷±í
x888901_g_ClientOp = {
	"answer","clientstop","askstop"
}

-- ÉÏÒ»ÌâµÄ»Ø´ğÇé¿ö
x888901_g_AnswerState = {
	["start"]			= "b¡t ğ¥u",
	["timeout"]		= "hªt gi¶",
	["oknext"]		= "chính xác",
	["failnext"]	= "sai r°i`",
	["cancel"]		= "bö qua",
}

--**********************************
-- ÁĞ¾ÙÊÂ¼ş
--**********************************
function x888901_OnEnumerate( sceneId, selfId, targetId )
	local CurMonthDay = LuaFnGetDayOfThisMonth()
	if CurMonthDay and mod(CurMonthDay,2) == 0 then
		AddNumText( sceneId, x888901_g_ScriptId, "Tâm Hæu Linh Tê", 2, 100 )
	end
	--AddNumText(sceneId,x888901_g_ScriptId,"Ö±½Ó½á»é", 5, 2)
end

--**********************************
-- ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x888901_OnDefaultEvent( sceneId, selfId, targetId, eventId )
	local opt = GetNumText()
	if opt == 1 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		x888901_BeginCoupleQuestion(sceneId,selfId,targetId)
	elseif opt == 2 then
		x888901_DirectMary(sceneId,selfId)
	elseif opt == 3 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	elseif opt == 100 then
		BeginEvent( sceneId )
			local strText = "Phu thê các ngß½i có tâm ğ¥u ı hşp nhau không. Ch² ta có mµt thØ nghi®m chÑng tö lòng chung thüy cüa các ngß½i. Ğó là #GLinh Tê#W. Trong khoäng th¶i gian nh¤t ğ¸nh, các ngß½i phäi trä l¶i nhß nhau."
			AddText( sceneId, strText )
			AddNumText( sceneId, x888901_g_ScriptId, "Ğ°ng ı tham gia", 2, 1)
			AddNumText( sceneId, x888901_g_ScriptId, "Ğ¬ ta nghî lÕi", 8, 3);
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

-- ·½±ã½á»éµÄ¹¦ÄÜ£¬²âÊÔ´úÂë
function x888901_DirectMary(sceneId,selfId)
	--1.ÊÇ·ñ×é¶Ó
	local teamId = GetTeamId(sceneId,selfId)
	if teamId<0 then
		x888901_NotifySystemMsg(sceneId,selfId,"err_noteam")
		return
	end
	
	--2.ÊÇ·ñ·òÆŞÁ©ÈË
	if GetTeamSize(sceneId,selfId)~=2 then
		x888901_NotifySystemMsg(sceneId,selfId,"err_musttwo")
		return
	end
	
	--3.ÊÇ·ñÔÚ¸½½ü
	if GetNearTeamCount(sceneId,selfId) ~= 2 then
		x888901_NotifySystemMsg(sceneId,selfId,"err_mustnear")
		return
	end
	
	--4.ÊÇ·ñÊÇ·òÆŞ
	local tid1 = GetNearTeamMember(sceneId,selfId,0)
	local tid2 = GetNearTeamMember(sceneId,selfId,1)
	
	LuaFnMarry(sceneId, tid1, tid2, 1)
	x888901_NotifySystemMsg(sceneId,tid1,"directmarry")
	x888901_NotifySystemMsg(sceneId,tid2,"directmarry")
end

-- ¼ì²é¿ªÊ¼´ğÌâÌõ¼ş
function x888901_BeginCoupleQuestion(sceneId,selfId,targetId)
	--1.ÊÇ·ñ×é¶Ó
	local teamId = GetTeamId(sceneId,selfId)
	if teamId<0 then
		x888901_NotifySystemMsg(sceneId,selfId,"err_noteam")
		return
	end
	
	--2.ÊÇ·ñÁ©ÈË
	if GetTeamSize(sceneId,selfId)~=2 then
		x888901_NotifySystemMsg(sceneId,selfId,"err_musttwo")
		return
	end
	
	--3.ÊÇ·ñÔÚ¸½½ü
	if GetNearTeamCount(sceneId,selfId) ~= 2 then
		x888901_NotifySystemMsg(sceneId,selfId,"err_mustnear")
		return
	end
	
	--4.ÊÇ·ñÊÇ·òÆŞ
	local tid1 = GetNearTeamMember(sceneId,selfId,0)
	local tid2 = GetNearTeamMember(sceneId,selfId,1)
	if LuaFnIsMarried(sceneId,tid1)<=0 or LuaFnIsMarried(sceneId,tid2)<=0 then
		x888901_NotifySystemMsg(sceneId,selfId,"err_nomarry")
		return
	else
		if LuaFnGetSpouseGUID(sceneId,tid1) ~= LuaFnGetGUID(sceneId,tid2) or LuaFnGetSpouseGUID(sceneId,tid2) ~= LuaFnGetGUID(sceneId,tid1) then
			x888901_NotifySystemMsg(sceneId,selfId,"err_mustcouple")
			return
		end
	end
	
	--5.ÊÇ·ñMACÏàÍ¬
	if IsSameMAC(sceneId,tid1,tid2) > 0 then
		x888901_NotifySystemMsg(sceneId,selfId,"err_samemac")
		return
	end
	
	--6.ÊÇ·ñ¶Ó³¤
	if LuaFnIsTeamLeader(sceneId,selfId)<=0 then
		x888901_NotifySystemMsg(sceneId,selfId,"err_mustleader")
		return
	end
	
	local CurDayTime = GetDayTime()
	local LastCoupleQuestionDayTime1 = GetMissionData(sceneId, tid1, MD_COUPLEQUESTION_DAYTIME)
	local LastCoupleQuestionDayTime2 = GetMissionData(sceneId, tid2, MD_COUPLEQUESTION_DAYTIME)
	
	--7.½ñÌìÊÇ·ñÎ´²Î¼Ó
	if CurDayTime <= LastCoupleQuestionDayTime1 or CurDayTime <= LastCoupleQuestionDayTime2 then
		x888901_NotifySystemMsg(sceneId,selfId,"err_already")
		return
	end
	
	--8.½ñÌìÊÇ·ñÊÇË«ÈÕ
	local CurMonthDay = LuaFnGetDayOfThisMonth()
	if not CurMonthDay or mod(CurMonthDay,2) > 0 then
		x888901_NotifySystemMsg(sceneId,selfId,"err_notday")
		return
	end
	
	--¼ì²â³É¹¦£¬¿ÉÒÔ¿ªÊ¼³õÊ¼»¯´ğÌâÁË
	SetMissionData( sceneId, tid1, MD_COUPLEQUESTION_DAYTIME, CurDayTime )
	SetMissionData( sceneId, tid2, MD_COUPLEQUESTION_DAYTIME, CurDayTime )
	
	local FriendPoint = LuaFnGetFriendPoint(sceneId,tid1,tid2)
	local MaxQuestion = 25

	if FriendPoint >=9000 then
		MaxQuestion = 100
	elseif FriendPoint >=6000 then
		MaxQuestion = 75
	elseif FriendPoint >= 3000 then
		MaxQuestion = 50
	end
	
	--ÉèÖÃË«·½ÈËÎïµÄÊôĞÔ
	StopCoupleQuestion(sceneId,tid1)
	StopCoupleQuestion(sceneId,tid2)
	
	StartCoupleQuestion(sceneId,tid1,tid2,targetId,MaxQuestion)
	SetMissionData(sceneId, tid1, MD_COUPLEQUESTION_DAYTIME,CurDayTime)
	StartCoupleQuestion(sceneId,tid2,tid1,targetId,MaxQuestion)
	SetMissionData(sceneId, tid2, MD_COUPLEQUESTION_DAYTIME,CurDayTime)

	--¼ÇÂ¼Í³¼ÆÈÕÖ¾
	x888901_LogCoupleAction(sceneId,tid1,tid2,COUPLE_LOG_STARTQUESTION)

	local question,qtype = x888901_RandomQuestion(sceneId,tid1)	
	x888901_SendCoupleQuestion(sceneId,tid1,targetId,question,qtype,"start")
	x888901_SendCoupleQuestion(sceneId,tid2,targetId,question,qtype,"start")
end

function x888901_RandomQuestion(sceneId,userId)
	local coupleId = GetCoupleID(sceneId,userId)
	local nm = ""
	
	if coupleId>=0 then
		--ÄĞÅ®ÅĞ¶Ï
		local maleId = userId
		local femaleId = coupleId
		if GetSex(sceneId,userId) == 0 then
			maleId = coupleId
			femaleId = userId
		end
		
		--¸ù¾İÄĞÅ®²»Í¬¹¹ÔìÃû³ÆºÍÌâºÅ
		local rp = random(1,2)
		if rp == 1 then
			nm = format("#G%s#W",GetName(sceneId,femaleId))
			return GetRandomQuestionsIndex(x888901_g_FemaleType),nm
		else
			nm = format("#G%s#W",GetName(sceneId,maleId))
			return GetRandomQuestionsIndex(x888901_g_MaleType),nm
		end
	else
		return GetRandomQuestionsIndex(x888901_g_FemaleType),nm
	end
end

-- ·¢ËÍÒ»¸öÎÊÌâ¸ø¿Í»§¶Ë
function x888901_SendCoupleQuestion(sceneId,userId,targetId,question,qtype,act)
	local bStart,qmax,qcur,privity,maxprivity,samenum = GetCoupleQuestionState(sceneId,userId)
	if bStart > 0 then
		local con,opt0,opt1,opt2=GetQuestionsRecord(question)
		con = format(con,qtype)
		local coupleId = GetCoupleID(sceneId,userId)
		
		local rpos = random(1,getn(x888901_g_OptPos))
		local pt = x888901_g_OptPos[rpos]
	
		if act == "timeout" then privity=0 end
		if act == "oknext" then 
			privity=privity+1
			samenum=samenum+1
			LuaFnSendSpecificImpactToUnit(sceneId,userId,userId,userId,51,100)
		end
		if act == "failnext" then privity=0 end
		if act == "start" then qcur=0 else qcur=qcur+1 end
	
		--ÒÑ¾­Ã»ÓĞÌâ¿É´ğÁË
		if qcur == qmax then
			--·¢ËÍÌØÊâ½±Àø
				if qmax == 100 and privity == 100 and bStart > 0 then
				x888901_SendCoupleQuestionPrize(sceneId,userId,coupleId)
			end
			--Í¨Öª¿Í»§¶Ë½áÊø´ğÌâ
			NextCoupleQuestion(sceneId,userId,qcur,privity,samenum)
			x888901_StopCoupleQuestionScript(sceneId,userId,coupleId,"finish")
			return
		end
	
		--ÉÏÒ»ÌâµÄ»Ø´ğÇé¿ö
		local premsg = x888901_g_AnswerState[act]
		if not premsg then
			premsg = x888901_g_AnswerState["cancel"]
		end
		
		--Í¨Öª¿Í»§¶ËÏÔÊ¾ÌâÄ¿
		BeginUICommand(sceneId)
			UICommand_AddString(sceneId,act)
			UICommand_AddInt(sceneId,targetId)
			UICommand_AddInt(sceneId,qmax) --×ÜÌâÊı
			UICommand_AddInt(sceneId,qcur+1) --µ±Ç°ÌâÊı
			UICommand_AddInt(sceneId,privity) --Ä¬Æõ¶È
			UICommand_AddString(sceneId,con)	--ÎÊÌâ
			UICommand_AddInt(sceneId,3)			--´ğ°¸ÊıÁ¿
			UICommand_AddString(sceneId,opt0)	--´ğ°¸1
			UICommand_AddString(sceneId,opt1)	--´ğ°¸2
			UICommand_AddString(sceneId,opt2)	--´ğ°¸3
			UICommand_AddInt(sceneId,pt[1])	--ÏÔÊ¾Î»ÖÃ1
			UICommand_AddInt(sceneId,pt[2]) --ÏÔÊ¾Î»ÖÃ2
			UICommand_AddInt(sceneId,pt[3]) --ÏÔÊ¾Î»ÖÃ3
			UICommand_AddString(sceneId,premsg)	--ÉÏÒ»ÌâµÄ»Ø´ğÇé¿ö
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,userId, x888901_g_ScriptId)
	
		--ĞŞ¸Ä·şÎñÆ÷¶ËÊı¾İ×´Ì¬
		NextCoupleQuestion(sceneId,userId,qcur,privity,samenum)
		SetCurCoupleQuestion(sceneId,userId,question,3,-1)
	end
end

function x888901_SendCoupleQuestionPrize(sceneId,userId,coupleId)
	if coupleId>=0 then
		--·¢userIdÎïÆ·
		LuaFnBeginAddItem( sceneId )
		LuaFnAddItem( sceneId, x888901_g_Item, 1)
		local uret = LuaFnEndAddItem( sceneId, userId )
		if 1 == uret then
			AddItemListToHuman(sceneId,userId)
		end
		--·¢coupleIdÎïÆ·
		LuaFnBeginAddItem( sceneId )
		LuaFnAddItem( sceneId, x888901_g_Item, 1)
		local oret = LuaFnEndAddItem( sceneId, coupleId )
		if 1 == oret then
			AddItemListToHuman(sceneId,coupleId)
		end
		--·¢¹«¸æ
		if 1 == oret and 1 == uret then
			local uname = format("#{_INFOUSR%s}",GetName(sceneId,userId))
			local oname = format("#{_INFOUSR%s}",GetName(sceneId,coupleId))
			local itemt = format("#{_INFOMSG%s}",GetItemTransfer(sceneId,coupleId,0))
			local str = format("%s#I và %s#I nh¶ Nguy®t Lão tiªn hành #RTâm Hæu Linh Tê#I ğích tr¡c thí trung, nh¤t lµ quá quan träm tß½ng, cao ca mãnh tiªn, b¤t quı phu thê ğ°ng tâm lşi ğoán kim, ğÕt ğßşc %s.",uname,oname,itemt)
			BroadMsgByChatPipe(sceneId, userId, str, 4)
		end
	end
end

-- ·òÆŞ´ğÌâ¿Í»§¶Ë½Ó¿Ú(¿Í»§¶Ëµ÷ÓÃ)
function x888901_CoupleQuestion_ClientAction(sceneId,selfId,op,num,sequence)--modi:lby Ôö¼ÓÌâºÅ¼ìÑé¼ìÑéµ±Ç°ÎÊÌâÊÇ·ñÊÇÕıÔÚ´ğÌâ
	if nil == op or 1 > op then return end
	local client_op = x888901_g_ClientOp[op]
	
	if client_op == "answer" then
		x888901_ClientAnswerCoupleQuestion(sceneId,selfId,num,sequence)
	elseif client_op == "clientstop" then
		x888901_ClientStopCoupleQuestion(sceneId,selfId)
	elseif client_op == "askstop" then
		x888901_AskClientRealStop(sceneId,selfId)
	end
end

-- ¿Í»§¶Ë»Ø´ğÎÊÌâ
function x888901_ClientAnswerCoupleQuestion(sceneId,selfId, num, sequence)--modi:lby Ôö¼ÓÌâºÅ¼ìÑé¼ìÑéµ±Ç°ÎÊÌâÊÇ·ñÊÇÕıÔÚ´ğµÄÌâ
	local bStart,_,qcur,privity = GetCoupleQuestionState(sceneId,selfId)
	if bStart>0 then
		local cq,_,_ = GetCurCoupleQuestion(sceneId,selfId)
		local ca = num
		local coupleId = GetCoupleID(sceneId,selfId)
		
		if coupleId>=0 and cq>=0 then
			local _,_,ocur,_ = GetCoupleQuestionState(sceneId,coupleId)
			local oq,_,oa = GetCurCoupleQuestion(sceneId,coupleId)
			--¼ì²éÌâÊÇ·ñÏàÍ¬
			if oq ~= cq or sequence ~= qcur+1 or ocur ~= qcur then		--modi:lby Ôö¼ÓÌâºÅ¼ìÑé
				--x888901_StopCoupleQuestionScript(sceneId,selfId,coupleId) --modi:lby ÒòÎª¿ÉÄÜ¶à´ÎÌá½»»áÓĞÌâµÄÄÜÈİ²»ÏàÍ¬²»ÄÜÍË³ö
				return
			end
			
			local act = "failnext"
			--¼ì²é´ğ°¸ÊÇ·ñÏàÍ¬
			if oa <= 0 then
				SetCurCoupleQuestion(sceneId,selfId,cq,3,ca)
				return
			elseif oa == ca then
				act = "oknext"
			end
			--»ñµÃ¾­ÑéÖµ
			if act == "oknext" then
				local cexp = floor(x888901_CaculPrivityExp(sceneId,selfId,privity))
				AddExp(sceneId,selfId,cexp)
				local oexp = floor(x888901_CaculPrivityExp(sceneId,coupleId,privity))
				AddExp(sceneId,coupleId,oexp)

				local tip_part1 = "Chúc m×ng, ğáp án tß½ng ğ°ng, nh§n ğßşc ği¬m kinh nghi®m"
				local tip_part2 = " ği¬m"
				
				x888901_NotifySystemMsg(sceneId,selfId,act,tip_part1..tostring(cexp)..tip_part2)
				x888901_NotifySystemMsg(sceneId,coupleId,act,tip_part1..tostring(oexp)..tip_part2)
			else
				x888901_NotifySystemMsg(sceneId,selfId,act)
				x888901_NotifySystemMsg(sceneId,coupleId,act)
			end
			--¼ÌĞø·¢ËÍÎÊÌâ
			local question,qtype = x888901_RandomQuestion(sceneId,selfId)	
			x888901_SendCoupleQuestion(sceneId,selfId,-1,question,qtype,act)
			x888901_SendCoupleQuestion(sceneId,coupleId,-1,question,qtype,act)
		else
			--¶Ô·½ÒÑ¾­½áÊø´ğÌâ£¬Ôò×Ô¼ºÒ²Òª½áÊø
			x888901_StopCoupleQuestionScript(sceneId,selfId,coupleId)
		end
	end
end

-- ´ğÌâ¾­ÑéÖµ¼ÆËã
-- »ù´¡½±Àø=c*LV*LV
-- Ã¿ÌâÊµµÃ½±Àø=»ù´¡½±Àø*£¨1+N*a£©
-- cÎª½±ÀøÖµ¼ÆËã²ÎÊı£¬Ä¬ÈÏÎª0.573
-- LVÎª´ğÌâÕßµÈ¼¶
-- NÎª´ğ¸ÃÌâÊ±µÄÄ¬ÆõÖ¸ÊıÖµ
-- aÎª´ğÌâÊ±µÄ¾­Ñé¼Ó³ÉÏµÊı£¬Ä¬ÈÏÎª0.01

function x888901_CaculPrivityExp(sceneId,userId,privity)
	local c = 0.573
	local a = 0.01
	local LV = GetLevel(sceneId,userId)
	local N = privity
	
	local baseExp=c*LV*LV
	local Exp=baseExp*(1+N*0.01)
	
	--print("x888901_CaculPrivityExp selfId="..tostring(userId).." baseExp="..tostring(baseExp).." Exp="..tostring(Exp))
	return Exp;
end
-- Ñ¯ÎÊ¿Í»§¶ËÊÇ·ñ½áÊø
function x888901_AskClientRealStop(sceneId,selfId)
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,x888901_g_ScriptId);
		UICommand_AddInt(sceneId,2)
		UICommand_AddString(sceneId,"CoupleQuestion_ClientAction");
		UICommand_AddString(sceneId,"Thoát sau khi ki¬m tra kªt thúc ? BÕn có ch¡c thoát khöi ?");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
end
-- ¿Í»§¶Ë½áÊø
function x888901_ClientStopCoupleQuestion(sceneId,selfId)
	local coupleId = GetCoupleID(sceneId,selfId)
	x888901_StopCoupleQuestionScript(sceneId,selfId,coupleId,"clientstop")
end

-- ´ğÌâ³¬Ê±
function x888901_AnswerQuestionTimeOut(sceneId,selfId,coupleId)
	local question,qtype = x888901_RandomQuestion(sceneId,selfId)
	
	x888901_NotifySystemMsg(sceneId,selfId,"timeout")
	x888901_SendCoupleQuestion(sceneId,selfId,-1,question,qtype,"timeout")
	
	x888901_NotifySystemMsg(sceneId,coupleId,"timeout")
	x888901_SendCoupleQuestion(sceneId,coupleId,-1,question,qtype,"timeout")
	--print("x888901_AnswerQuestionTimeOut "..tostring(selfId))
end

-- Í£Ö¹·òÆŞË«·½´ğÌâ
function x888901_StopCoupleQuestionScript(sceneId,selfId,coupleId,act)
	local bStart,qmax,_,_,maxprivity,samenum = GetCoupleQuestionState(sceneId,selfId)
	local tipm = ""
	
	if bStart > 0 then
		tipm = format("S¯ lßşng câu höi % . Các hÕ ğã trä l¶i %d ğúng. ĞÕt ğßşc chï s¯ %d ", qmax,samenum,maxprivity)
	end
	
	--Í³¼ÆËùÓĞ½áÊøµÄĞÅÏ¢
	if coupleId >= 0 then
		if act == "finish" then
			x888901_LogCoupleAction(sceneId,selfId,coupleId,COUPLE_LOG_FINISHQUESTION)
		else
			x888901_LogCoupleAction(sceneId,selfId,coupleId,COUPLE_LOG_STOPQUESTION)
		end
	end
	
	StopCoupleQuestion(sceneId,selfId)
	x888901_SendStopCoupleQuestion(sceneId,selfId,act,tipm)
	
	if coupleId>=0 then 
		StopCoupleQuestion(sceneId,coupleId)
		x888901_SendStopCoupleQuestion(sceneId,coupleId,act,tipm)
	end
end

-- È¡Ïû¿Í»§¶ËµÄÏÔÊ¾
function x888901_SendStopCoupleQuestion(sceneId,userId,act,tip)
	if act then
		x888901_NotifySystemMsg(sceneId,userId,act,tip)
	else
		x888901_NotifySystemMsg(sceneId,userId,"cancel",tip)
	end
	
	BeginUICommand(sceneId)
		UICommand_AddString(sceneId,"cancel")
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,userId, x888901_g_ScriptId)
end

-- ÏµÍ³ÌáÊ¾
function x888901_NotifySystemMsg(sceneId,selfId,txtId,tip)
	BeginEvent(sceneId)
	if txtId == "err_noteam" then
		AddText(sceneId,"Phäi l§p thành t± ğµi")
	elseif txtId == "err_musttwo" then
		AddText(sceneId,"Phäi l§p thành t± ğµi 2 ngß¶i")
	elseif txtId == "err_mustnear" then
		AddText(sceneId,"Thành viên t± ğµi phäi · g¥n")
	elseif txtId == "err_nomarry" then
		AddText(sceneId,"Phäi là ngß¶i ğã kªt hôn")
	elseif txtId == "err_mustcouple" then
		AddText(sceneId,"Phäi là phu thê cüa nhau")
	elseif txtId == "err_mustleader" then
		AddText(sceneId,"Phäi là ğµi trß·ng")
	elseif txtId == "err_already" then
		AddText(sceneId,"Ğã tham gia trong ngày")
	elseif txtId == "timeout" then
		AddText(sceneId,"Hªt th¶i gian trä l¶i")
	elseif txtId == "directmarry" then
		AddText(sceneId,"Trñc tiªp kªt hôn thành công!")
	elseif txtId == "cancel" then
		AddText(sceneId,"Có l²i xäy ra, kªt thúc."..tip)
	elseif txtId == "finish" then
		AddText(sceneId,"Hoàn thành tr¡c thí"..tip)
	elseif txtId == "clientstop" then
		AddText(sceneId,"Ch¤m dÑt trä l¶i câu höi"..tip)
	elseif txtId == "oknext" then
		AddText(sceneId,tip)
	elseif txtId == "failnext" then
		AddText(sceneId,"Th§t không may, câu trä l¶i không gi¯ng nhau")
	elseif txtId == "err_notday" then
		AddText(sceneId,"M²i ngày 1 l¥n")
	elseif txtId == "err_samemac" then
		AddText(sceneId,"Cùng mµt máy tính không th¬ tham gia")
	end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--Í³¼ÆĞÅÏ¢
function x888901_LogCoupleAction(sceneId,tid1,tid2,logid)
	local bStart,qmax,_,_,maxprivity = GetCoupleQuestionState(sceneId,tid1)
	--print(tostring(bStart).." "..tostring(logid).." "..tostring(COUPLE_LOG_DETAIL[logid]))
	if bStart > 0 and logid and COUPLE_LOG_DETAIL[logid] then		
		local maleId = tid1
		local femaleId = tid2
		if GetSex(sceneId,tid1) == 0 then
			maleId = tid2
			femaleId = tid1
		end
		
		--CPL:±àºÅ,ËµÃ÷,GUID1,GUID2,×ÜÌâÊı,×î´óÄ¬ÆõÊı,Ê±¼ä
		local logstr = format("CPL:%d,%s,0x%X,0x%X,%d,%d",
									 				logid,
									 				COUPLE_LOG_DETAIL[logid],
									 				LuaFnGetGUID(sceneId,maleId),
									 				LuaFnGetGUID(sceneId,femaleId),
									 				qmax,
									 				maxprivity)
		LogCouple(logstr)
	end
end
