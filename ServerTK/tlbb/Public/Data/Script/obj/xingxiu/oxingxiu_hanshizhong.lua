--ÐÇËÞNPC
--º«ÊÀÖÒ
--ÆÕÍ¨

x016001_g_scriptId = 016001
x016001_g_eventList={227900,808004}

x016001_g_StudyAbility_NeedMoney = 5550000		--555G
---¡°ÃÅÅÉÕÙ¼¯Áî¡±Åä·½ID
x016001_g_RecipeId = 563
--Ë³·¢ÌØÐ§ID
x016001_g_SpecialEffectID = 18;


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x016001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ta là chß·ng môn nhân cüa phái Tinh Túc. Ta s¨ giúp b¢ng hæu gia nh§p vào Tinh Túc !")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x016001_g_scriptId, "Ta mu¯n gia nh§p Tinh Túc",6,0)
		end
		AddNumText(sceneId, x016001_g_scriptId, "V« phái Tinh Túc",8,1)
		AddNumText(sceneId, x016001_g_scriptId, "H÷c kî nång chª phù",12,2)
		AddNumText(sceneId, x016001_g_scriptId, "Ta phäi làm gì ð¬ nâng tâm pháp",8,6)		--Ö¸Â·µ½¼¼ÄÜÑ§Ï°ÈË
		for i, eventId in x016001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x016001_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText()==0	then

		x016001_g_MenPai = GetMenPai(sceneId, selfId)
		if x016001_g_MenPai == 5   then
			BeginEvent(sceneId)
				AddText(sceneId, "B¢ng hæu ðã là ð® tØ phái Tinh Túc !!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if x016001_g_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"B¢ng hæu ðã là ð® tØ cüa môn phái khác !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		BeginEvent(sceneId)
			AddText(sceneId, "#{MenpaiInfo_005}")
			AddNumText(sceneId, x016001_g_scriptId, "Ta ð°ng ý gia nh§p Tinh Túc",6,3)
			AddNumText(sceneId, x016001_g_scriptId, "Ðþi ta nghî 1 lát",8,4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		 
		return
	end
	
	if GetNumText()==4	then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end

	if GetNumText()==3	then
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"  Tay näi cüa b¢ng hæu không ðü ch² tr¯ng !!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif GetLevel( sceneId, selfId ) < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"Trß¾c tiên bÕn phäi ðÕt c¤p 10 cái ðã !!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			x016001_g_MenPai = GetMenPai(sceneId, selfId)
			if x016001_g_MenPai == 5 then
				BeginEvent(sceneId)
					AddText(sceneId, "B¢ng hæu ðã là ð® tØ cüa phái Tinh Túc !!")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			--·µ»ØÖµÎª9±íÊ¾ÎÞÃÅÅÉ
			elseif x016001_g_MenPai==9	then
				LuaFnJoinMenpai(sceneId, selfId, targetId, 5)

				-- ÉèÖÃ³õÊ¼µÄNpc¹ØÏµÖµ
				CallScriptFunction( 200099, "InitRelation", sceneId, selfId )

				-- °ÑÏà¹ØµÄÐÄ·¨ÉèÖÃÎª10¼¶±ð  31,34,35
				LuaFnSetXinFaLevel(sceneId,selfId,31,10)
				LuaFnSetXinFaLevel(sceneId,selfId,34,10)
				LuaFnSetXinFaLevel(sceneId,selfId,35,10)

				BeginEvent(sceneId)
					AddText(sceneId,"Gia nh§p Tinh Túc thành công");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				--¸øÍæ¼Ò·¢ÐÅ,¸æËßËûµ½ÄÄÀï´ò¹Ö,ÔõÑù×¬Ç®
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_1}" )
				--LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{OBJ_xingxiu_0001}" )
				
				--ÃÅÅÉ½±ÀøÕÙ¼¯Áî
				for i=1, 20 do
					TryRecieveItem( sceneId, selfId, 30501001, 1 )
				end
				x016001_MsgBox( sceneId, selfId, "B¢ng hæu v×a nh§n ðßþc 20 cái Môn phái tri®u t§p l®nh" )

				if TryRecieveItem( sceneId, selfId, 10124005, 1 ) >= 0 then
					str		= "#YB¢ng hæu v×a nh§n ðßþc "..GetItemName( sceneId, 10124005 )
					x016001_MsgBox( sceneId, selfId, str )
				end
				
				if	LuaFnGetSex( sceneId, selfId)==0	then
					LuaFnMsg2Player( sceneId, selfId,"B¢ng hæu v×a gia nh§p Tinh Túc thành công",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 165, 0)
					CallScriptFunction( 227900, "OnDefaultEvent",sceneId, selfId, targetId )
				else
					LuaFnMsg2Player( sceneId, selfId,"B¢ng hæu ðã gia nh§p Tinh Túc",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 165, 0)
					CallScriptFunction( 227900, "OnDefaultEvent",sceneId, selfId, targetId )
				end
			else
				BeginEvent(sceneId)
					AddText(sceneId,"B¢ng hæu ðã là ð® tØ cüa phái khác r°i")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		end
	elseif	GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId, "#{OBJ_xingxiu_0003}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif	GetNumText() == 2 then
	
		x016001_g_MenPai = GetMenPai(sceneId, selfId)
		if x016001_g_MenPai == 5 then

			local RecipeFlag = IsPrescrLearned( sceneId, selfId, x016001_g_RecipeId );
			if RecipeFlag >= 1 then
				BeginEvent(sceneId)
						AddText(sceneId,"B¢ng hæu ðã h÷c kÛ nång Chª tÕo phù")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return 0;
			end
				
			local	lev	= QueryHumanAbilityLevel( sceneId, selfId, 39 )
			if lev < 2 then
					BeginEvent(sceneId)
					AddText(sceneId,"C¥n nâng c¤p kÛ nång chª phù lên c¤p ðµ 2 #{_EXCHG"..x016001_g_StudyAbility_NeedMoney.."}.")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
			end	
				
			if LuaFnGetMoney( sceneId, selfId )+GetMoneyJZ( sceneId, selfId ) < x016001_g_StudyAbility_NeedMoney then
				BeginEvent(sceneId)
						AddText(sceneId,"  B¢ng hæu không ðü ngân lßþng, không th¬ nâng c¤p #{_EXCHG"..x016001_g_StudyAbility_NeedMoney.."}")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return 0
			else
				BeginEvent(sceneId)
					AddText(sceneId,"  Ð¬ h÷c kÛ nång Chª phù c¥n tiêu t¯n #{_EXCHG"..x016001_g_StudyAbility_NeedMoney.."} gold.")
					AddNumText(sceneId, x016001_g_scriptId, "OK",12,999)
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
					
			end

		else
			BeginEvent(sceneId)
				AddText(sceneId, "KÛ nång này ta chï truy«n cho ð® tØ Tinh Túc thôi !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	
	elseif	GetNumText() == 999 then
		-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇÑ§»áÁË±ØÒªµÄ¼¼ÄÜ²¢´ïµ½±ØÒªµÈ¼¶
		local	lev	= QueryHumanAbilityLevel( sceneId, selfId, 39 )
		if lev < 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"  B¢ng hæu c¥n nâng c¤p kÛ nång Chª phù lên c¤p ðµ 2")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
			
		-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇ¹»Ç®
		if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < x016001_g_StudyAbility_NeedMoney   then
			BeginEvent(sceneId)
				AddText(sceneId, " B¢ng hæu không ðü ngân lßþng !!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
		local delMoney,delJiaoZi = LuaFnCostMoneyWithPriority( sceneId, selfId, x016001_g_StudyAbility_NeedMoney )
		if delMoney and delMoney ~= -1  then
			CallScriptFunction( USERECIPE_SCRIPT, "ReadRecipe", sceneId, selfId, x016001_g_RecipeId )
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x016001_g_SpecialEffectID, 0);
			
			BeginEvent(sceneId)
				AddText(sceneId,"B¢ng hæu ðã h÷c ðßþc kÛ nång Chª phù !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	else
		for i, findId in x016001_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_XINGSU )
				return
			end
		end
	end
	--Ö¸Â·
	if GetNumText()==6 then
		BeginEvent(sceneId)
			AddText(sceneId, "#GThi Toàn (96,78) có th¬ giúp b¢ng hæu nâng c¤p tâm pháp. Nh¤n #GTAB#W lên và tìm chæ #YVõ !!")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 96, 78, "Voodoo Shih" )
		return
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x016001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016001_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x016001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x016001_g_eventList do
		if missionScriptId == findId then
			x016001_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x016001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x016001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x016001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x016001_OnDie( sceneId, selfId, killerId )
end

--**********************************
--ÏûÏ¢ÌáÊ¾
--**********************************
function x016001_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
