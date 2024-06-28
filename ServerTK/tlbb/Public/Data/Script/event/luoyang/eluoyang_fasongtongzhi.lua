					
--ÕÒÈËÈÎÎñ
--·¢ËÍÍ¨Öª
--MisDescBegin
--½Å±¾ºÅ
x250551_g_ScriptId = 250551

--ÈÎÎñºÅ
x250551_g_MissionId = 721

--ÉÏÒ»¸öÈÎÎñµÄID
--g_MissionIdPre = 

--Ä¿±êNPC
x250551_g_Name	="Khâu Hành LÕc "

--ÈÎÎñ¹éÀà 
x250551_g_MissionKind = 11

--ÈÎÎñµÈ¼¶
x250551_g_MissionLevel = 10000

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x250551_g_IfMissionElite = 0

--ÈÎÎñĞèÒªµÃµ½µÄÎïÆ·
--g_DemandItem={{id=30701021,num=1}}


--ÈÎÎñÃû
x250551_g_MissionName="Truy«n kh¦u tín"
x250551_g_MissionInfo="Hãy giúp ta thông báo %s %s [%d,%d], ğÕi hµi Ğá C¥u s¡p b¡t ğ¥u"
x250551_g_MissionTarget="%f"
x250551_g_ContinueInfo="Làm t¯t l¡m"		--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x250551_g_MissionComplete="Ta biªt, ğây là t£ng thß·ng cho ngß½i"

--ÓÃÀ´±£´æ×Ö·û´®¸ñÊ½»¯µÄÊı¾İ
x250551_g_FormatList = {
								"Tìm ğßşc%n",
								}
								
--¸ñÊ½×Ö·û´®ÖĞ¶ÔÓ¦ÓÚg_StringListÖĞ×Ö·û´®µÄË÷Òı, ±íÊ¾´Ó4¿ªÊ¼,ºó¶àÉÙÎ»ÊÓSetMissionByIndexEx(...)µÄ¶àÉÙ¶ø¶¨
x250551_g_StrForePart=4

--MisDescEnd

x250551_g_fasongtongzhiNpcIndex = 5

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x250551_OnDefaultEvent( sceneId, selfId, targetId )
  --Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
  if( IsHaveMission(sceneId,selfId,x250551_g_MissionId) > 0)  then
  	if GetName(sceneId, targetId) == x250551_g_Name then
  		local misIndex = GetMissionIndexByID(sceneId,selfId,x250551_g_MissionId)
  		local npcId = GetMissionParam(sceneId, selfId, misIndex, x250551_g_StrForePart+1)
  		local _, npcName, npcScene, x, z = GetNpcInfoByNpcId(sceneId,npcId)
  		local strText = format("L¶i nh¡n cüa các hÕ ğã ğßşc chuy¬n chßa? %s %s chính · (%d, %d). Các hÕ có th¬ nh¤n Alt+Q ki¬m tra møc tiêu nhi®m vø", npcScene, npcName, x, z)
			BeginEvent(sceneId)
				AddText(sceneId, strText)
			EndEvent()
			DispatchEventList(sceneId, selfId, -1)
  	else
	  	if x250551_CheckSubmit( sceneId, selfId ) > 0 then
		 		BeginEvent(sceneId)
					AddText(sceneId,x250551_g_MissionName)
					local BonusMoney = 500	--90 + (GetLevel(sceneId, selfId) - 10) * 5
					local BonusExp = 200
					AddText(sceneId, "Thß·ng cho các hÕ " .. tostring(BonusExp) .. "ği¬m kinh nghi®m và " .. "#{_MONEY" .. tostring(BonusMoney) .. "}, hãy mau ği báo cho Khâu Hành LÕc, ğã nh§n ğßşc l¶i nh¡n, xin ğa tÕ")
					SetMissionCacheData(sceneId, selfId, 0, BonusMoney)
					SetMissionCacheData(sceneId, selfId, 1, BonusExp)
				EndEvent( )
				DispatchMissionContinueInfo(sceneId, selfId, targetId, x250551_g_ScriptId, x250551_g_MissionId,x250551_g_ScriptId)
			end	
		end
		--DispatchMissionDemandInfo(sceneId,selfId,targetId,x250551_g_ScriptId,x250551_g_MissionId,bDone,x250551_g_ScriptId)
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
  elseif x250551_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) == x250551_g_Name then
			--///////////////////////////////////////////////////
			--local playerLevel = GetLevel(sceneId, selfId)
			--if playerLevel >= 21 then
			--	BeginEvent(sceneId)
			--		AddText(sceneId, "ÄãµÄµÈ¼¶ÒÑ¾­³¬¹ı20¼¶ÁË£¬È¥×öÒ»Ğ©¸üÓĞÇ°Í¾µÄÈÎÎñ°É¡£")
			--	EndEvent( )
			--	DispatchEventList(sceneId, selfId, -1)
			--	return 
			--end
			--///////////////////////////////////////////////////
			--begin modified by zhangguoxin 090207
			local iDayCount = GetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYCOUNT)
			--local iTime = mod(iDayCount,100000)
			local iTime = GetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYTIME)
			local iDayTime = floor(iTime/100)					--ÉÏÒ»´Î·ÅÆúÈÎÎñµÄÊ±¼ä(ÌìÊı)
			local iQuarterTime = mod(iTime,100)				--ÉÏÒ»´Î·ÅÆúÈÎÎñµÄÊ±¼ä(Ò»¿ÌÖÖ)
			--local iDayHuan = floor(iDayCount/100000) 	--µ±ÌìÄÚÍê³ÉµÄÈÎÎñ´ÎÊı
			local iDayHuan = iDayCount 	--µ±ÌìÄÚÍê³ÉµÄÈÎÎñ´ÎÊı
			--print("iDayHuan ... is ... " .. iDayHuan)
			
			--local CurTime = GetHourTime()							--µ±Ç°Ê±¼ä
			local CurTime = GetQuarterTime()							--µ±Ç°Ê±¼ä
			local CurDaytime = floor(CurTime/100)			--µ±Ç°Ê±¼ä(Ìì)
			local CurQuarterTime = mod(CurTime,100) 	--µ±Ç°Ê±¼ä(Ò»¿ÌÖÓ)
			--end modified by zhangguoxin 090207
			
			if iDayTime ~= CurDaytime  then
				iDayHuan = 0
				CurQuarterTime = 99
			end

			if iDayHuan >= 10 then
				BeginEvent(sceneId)
					AddText(sceneId, "Hôm nay các hÕ ğã giúp ta ğßa 10 l¥n kh¦u tín r°i, ngày mai hãy ğªn nhé.")
				EndEvent( )
				DispatchEventList(sceneId, selfId, -1)
				return
				
			end

			if iDayTime == CurDaytime then
				if CurQuarterTime == iQuarterTime then
					BeginEvent(sceneId)
						AddText(sceneId, x250551_g_MissionName)
						AddText(sceneId, "  Do các hÕ ğã bö qua nhi®m vø, trong vòng 15 phút không th¬ tiªp nh§n nhi®m vø m¾i!")
					EndEvent( )
					DispatchEventList(sceneId, selfId, -1)
					return
				end
			end
			--/////////////////////////////////////////////////// end
			
			--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
			BeginEvent(sceneId)
				--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
				local bAdd = AddMission( sceneId,selfId, x250551_g_MissionId, x250551_g_ScriptId, 0, 0, 0 )
				if bAdd < 1 then
					return
				end	
				--Ñ°Îï, ËÍĞÅÔòÉèÖÃËø¶¨Ä¿±êNPCµÄÊÂ¼şFlag
				SetMissionEvent(sceneId, selfId, x250551_g_MissionId, 4)
				
				local nNpcId, strNpcName, strNpcScene, nSceneId, nPosX, nPosZ, strNPCDesc = GetOneMissionNpc(x250551_g_fasongtongzhiNpcIndex)
				print(nNpcId, strNpcName, strNpcScene, nSceneId, nPosX, nPosZ)
				--print(nNpcId, strNpcName, strNpcScene, nSceneId, nPosX, nPosZ, strNPCDesc)
				Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: nhi®m vø ngß¶i m¾i kiªm ti«n", MSG2PLAYER_PARA )
				CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, nSceneId, nPosX, nPosZ, strNpcName)

				--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖĞµÄĞòÁĞºÅ
				local misIndex = GetMissionIndexByID(sceneId,selfId,x250551_g_MissionId)
				
				SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --ÉèÖÃÈÎÎñÊÇ·ñÍê³É£¨Î´Íê³É£©
				
				SetMissionByIndex(sceneId, selfId, misIndex, x250551_g_StrForePart, 0)
				SetMissionByIndex(sceneId, selfId, misIndex, x250551_g_StrForePart+1, nNpcId)
				--////////////////////////////////////////////////////////////
				AddText(sceneId,x250551_g_MissionName)
				local str = format("Hãy giúp ta thông báo %s %s [%d,%d], ğÕi hµi Ğá C¥u s¡p b¡t ğ¥u", strNpcScene, strNpcName, nPosX, nPosZ)
				AddText(sceneId, str)
				AddText(sceneId,"#{M_MUBIAO}")
				local strMissionTarget = format("Tìm ğßşc %s%s [%d, %d]", strNpcScene, strNpcName, nPosX, nPosZ)
				AddText(sceneId, strMissionTarget)
				
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
  end
  
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x250551_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x250551_g_MissionId) > 0 then
    	AddNumText(sceneId,x250551_g_ScriptId,x250551_g_MissionName,3,-1);
	  --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x250551_CheckAccept(sceneId,selfId) > 0 then
			if GetName(sceneId,targetId) == x250551_g_Name then
				AddNumText(sceneId,x250551_g_ScriptId,x250551_g_MissionName,4,-1);
			end
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x250551_CheckAccept( sceneId, selfId )
		return 1
end

--**********************************
--½ÓÊÜ
--**********************************
function x250551_OnAccept( sceneId, selfId )

end

--**********************************
--·ÅÆú
--**********************************
function x250551_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
	local misIndex = GetMissionIndexByID(sceneId,selfId,x250551_g_MissionId)
	local npcId = GetMissionParam(sceneId, selfId, misIndex, x250551_g_StrForePart+1)
	local  _, strNpcName, strNpcScene, x, z, desc, scene = GetNpcInfoByNpcId(sceneId,npcId)
	
  DelMission( sceneId, selfId, x250551_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, scene, strNpcName, x250551_g_MissionId)
	
	-- ÔÚÕâÀï»¹ÊÇÒª¼ì²âÕâ¸öÈÎÎñÀïÍ·´æµÄÊ±¼äÊÇ²»ÊÇ¹ıÈ¥Ò»ÌìÁË£¬Èç¹û¹ıÈ¥ÁË£¬¾ÍÏÈ¸üĞÂ
	--begin modified by zhangguoxin 090207
	local iDayCount=GetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYCOUNT)
	--local iTime = mod(iDayCount,100000)
	local iTime = GetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYTIME)
	local iDayTime = floor(iTime/100)		--ÉÏÒ»´Î·ÅÆúÈÎÎñµÄÊ±¼ä(ÌìÊı)
	local iQuarterTime = mod(iTime,100)	--ÉÏÒ»´Î·ÅÆúÈÎÎñµÄÊ±¼ä(¿Ì)
	--local iDayHuan = floor(iDayCount/100000) --µ±ÌìÄÚÍê³ÉµÄÈÎÎñ´ÎÊı
	local iDayHuan = iDayCount --µ±ÌìÄÚÍê³ÉµÄÈÎÎñ´ÎÊı

	--local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä
	local CurTime = GetQuarterTime()		--µ±Ç°Ê±¼ä
	local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)
	
	if CurDaytime~=iDayTime then 	--ÉÏ´ÎÍê³ÉÈÎÎñÊÇÍ¬Ò»ÌìÄÚ
		iDayHuan = 0
	end
	
	--iDayCount = iDayHuan*100000 + CurTime 

	--ÉèÖÃÑ­»·ÈÎÎñµÄÊ±¼ä
	--SetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYCOUNT,iDayCount)
	SetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYCOUNT,iDayHuan)
	SetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYTIME,CurTime)
	--end modified by zhangguoxin 090207
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x250551_CheckSubmit( sceneId, selfId )
	if IsHaveMission(sceneId,selfId,x250551_g_MissionId) > 0 then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x250551_g_MissionId)
		if GetMissionParam(sceneId, selfId, misIndex, 0) == 1 then
			return 1
		end
	else
		return 0	
	end
end

--**********************************
--Ìá½»
--**********************************
function x250551_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	if x250551_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--begin modified by zhangguoxin 090207
		local iDayCount=GetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYCOUNT)
		--local iTime = mod(iDayCount,100000)
		local iTime = GetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYTIME)
		local iDayTime = floor(iTime/100)		--ÉÏÒ»´Î·ÅÆúÈÎÎñµÄÊ±¼ä(ÌìÊı)
		local iQuarterTime = mod(iTime,100)	--ÉÏÒ»´Î·ÅÆúÈÎÎñµÄÊ±¼ä(¿Ì)
		--local iDayHuan = floor(iDayCount/100000)	--µ±ÌìÄÚÍê³ÉµÄÈÎÎñ´ÎÊı
		local iDayHuan = iDayCount 									--µ±ÌìÄÚÍê³ÉµÄÈÎÎñ´ÎÊı
	
		--local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä
		local CurTime = GetQuarterTime()		--µ±Ç°Ê±¼ä
		local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)
		local CurQuarterTime = mod(CurTime,100)	--µ±Ç°Ê±¼ä(¿Ì)
		
		if CurDaytime==iDayTime then 	--ÉÏ´ÎÍê³ÉÈÎÎñÊÇÍ¬Ò»ÌìÄÚ
			iDayHuan = iDayHuan+1
		else							--ÉÏ´ÎÍê³ÉÈÎÎñ²»ÔÚÍ¬Ò»Ìì£¬ÖØÖÃ
			iDayTime = CurDaytime
			iDayHuan = 1
		end
		
		-- Ö»ÒªÍæ¼Ò½»ÁËÈÎÎñ£¬¾ÍÈÃ·ÅÆúÈÎÎñµÄÊı¾İÎŞĞ§
		iQuarterTime = 99
		
		--iDayCount = iDayHuan*100000+iDayTime*100+iQuarterTime 
		iDayCount = iDayHuan;
		local newTime = CurDaytime * 100 + iQuarterTime;
		--ÉèÖÃÑ­»·ÈÎÎñµÄDAYCOUNT
		SetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYCOUNT,iDayCount)
		SetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYTIME,newTime)
		--end modified by zhangguoxin 090207
		
		local BonusMoney = GetMissionCacheData(sceneId, selfId, 0)
		local BonusExp = GetMissionCacheData(sceneId, selfId, 1)
		AddMoney(sceneId,selfId,BonusMoney )
		AddExp(sceneId,selfId,BonusExp )
		
		----------------------------------------changed by xindefeng-------------------------------------------------
		--AddMoney()&AddExp()±¾Éí»áÔÚÏµÍ³ÆµµÀÌáÊ¾,ËùÒÔ½«ÒÔÏÂÁ½¾äÌáÊ¾×¢ÊÍµô
		----Msg2Player(  sceneId, selfId, "Äã»ñµÃÁË" .. tostring(BonusExp) .. "µã¾­Ñé", MSG2PLAYER_PARA )
		----Msg2Player(  sceneId, selfId, "Äã»ñµÃÁË#{_MONEY" .. tostring(BonusMoney) .. "}", MSG2PLAYER_PARA )
		----------------------------------------changed by xindefeng-------------------------------------------------
		
		DelMission( sceneId,selfId, x250551_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHoàn thành nhi®m vø",MSG2PLAYER_PARA )
		-- µ±Ã¿ÌìÍê³ÉµÚ10´ÎºÍµÚ20´ÎµÄÊ±ºò£¬Æô¶¯·ÀÍâ¹ÒÌáÎÊ
		if iDayHuan == 5 or iDayHuan == 10   then
			LuaFnSendGuajiQuestion(sceneId,selfId)
		end
	end
end

function x250551_OnLockedTarget(sceneId, selfId, objId )
	-- ÅĞ¶ÏÊÇ²»ÊÇËø¶¨µÄNpc
	if IsHaveMission(sceneId, selfId, x250551_g_MissionId) > 0 then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x250551_g_MissionId)		--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖĞµÄĞòÁĞºÅ
		local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
		
		local nNpcId = GetMissionParam(sceneId, selfId, misIndex, x250551_g_StrForePart+1)
		local _, strNpcName, strNpcScene, PosX, PosZ, desc = GetNpcInfoByNpcId(sceneId,nNpcId)
			 
		if GetName(sceneId, objId) == strNpcName then
			TAddNumText(sceneId, x250551_g_ScriptId,x250551_g_MissionName,4,-1,x250551_g_ScriptId);
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
		end	
	end 
	
	return 0;

end
	
											
