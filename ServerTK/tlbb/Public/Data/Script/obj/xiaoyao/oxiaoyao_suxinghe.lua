--åÐÒ£NPC
--ÕÆÃÅÈË
--ËÕÐÇºÓ
--ÆÕÍ¨

x014000_g_scriptId = 014000
x014000_g_eventList={225900,229009,200041,200043,200045,200094,808004,229012,808092}
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x014000_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ta là Tô Tinh Hà, chß·ng môn Tiêu Dao phái. Ta s¨ giúp ngß½i có th¬ gia nh§p vào phái Tiêu Dao chúng ta !!")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x014000_g_scriptId, "Gia nh§p Tiêu Dao",6,0)
		end
		AddNumText(sceneId, x014000_g_scriptId, "V« h÷c kÛ nång phái Tiêu Dao",8,1)
		AddNumText(sceneId, x014000_g_scriptId, "H÷c kÛ nång phái Tiêu Dao ?",8,6)		--Ö¸Â·µ½¼¼ÄÜÑ§Ï°ÈË
		for i, eventId in x014000_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x014000_OnEventRequest( sceneId, selfId, targetId, eventId )

	for i, findId in x014000_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_XIAOYAO )
			return
		end
	end

	if GetNumText()==0	then

		x014000_g_MenPai = GetMenPai(sceneId, selfId)
		if x014000_g_MenPai == 8   then
			BeginEvent(sceneId)
				AddText(sceneId, "Ngß½i ðã là ð® tØ b±n môn, không c¥n gia nh§p l¥n næa !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if x014000_g_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i ðã là ð® tØ cüa phái khác r°i !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		BeginEvent(sceneId)
			AddText(sceneId, "#{MenpaiInfo_008}")
			AddNumText(sceneId, x014000_g_scriptId, "Ta mu¯n gia nh§p Tiêu Dao",6,3)
			AddNumText(sceneId, x014000_g_scriptId, "Ta chï ghé qua thôi...",8,4)
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
				AddText(sceneId,"  Hãy ð¬ ít nh¤t 2 ô tr¯ng trong tay näi. Chß·ng môn ta có quà cho nhà ngß½i !!!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif GetLevel( sceneId, selfId ) < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"Phäi ðÕt t¾i c¤p ðµ 10 r°i hãy quay lÕi nhé !!!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			x014000_g_MenPai = GetMenPai(sceneId, selfId)
			if x014000_g_MenPai == 8 then
				BeginEvent(sceneId)
					AddText(sceneId, "Ngß½i ðã là ð® tØ b±n môn, không c¥n gia nh§p l¥n næa !")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			--·µ»ØÖµÎª9±íÊ¾ÎÞÃÅÅÉ
			elseif x014000_g_MenPai==9	then
				LuaFnJoinMenpai(sceneId, selfId, targetId, 8)

				-- ÉèÖÃ³õÊ¼µÄNpc¹ØÏµÖµ
				CallScriptFunction( 200099, "InitRelation", sceneId, selfId )

				-- °ÑÏà¹ØµÄÐÄ·¨ÉèÖÃÎª10¼¶±ð  49,52,53
				LuaFnSetXinFaLevel(sceneId,selfId,49,10)
				LuaFnSetXinFaLevel(sceneId,selfId,52,10)
				LuaFnSetXinFaLevel(sceneId,selfId,53,10)

				BeginEvent(sceneId)
					AddText(sceneId,"Ðã gia nh§p Tiêu Dao");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				--¸øÍæ¼Ò·¢ÐÅ,¸æËßËûµ½ÄÄÀï´ò¹Ö,ÔõÑù×¬Ç®
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_8}" )
				--LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{OBJ_xiaoyao_0001}" )
				
				--ÃÅÅÉ½±ÀøÕÙ¼¯Áî
				for i=1, 20 do
					TryRecieveItem( sceneId, selfId, 30501001, 1 )
				end
				x014000_MsgBox( sceneId, selfId, "Ngß½i v×a nh§n ðßþc 20 t¤m Môn phái tri®u t§p l®nh" )

				if TryRecieveItem( sceneId, selfId, 10124007, 1 ) >= 0 then
					str		= "#YNgß½i v×a nh§n ðßþc "..GetItemName( sceneId, 10124007 ).."."
					x014000_MsgBox( sceneId, selfId, str )
				end

				if	LuaFnGetSex( sceneId, selfId)==0	then
					LuaFnMsg2Player( sceneId, selfId,"Ngß½i ðã là ð® tØ Tinh Túc",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 168, 0)
					CallScriptFunction( 225900, "OnDefaultEvent",sceneId, selfId, targetId )
				else
					LuaFnMsg2Player( sceneId, selfId,"Ngß½i ðã là ð® tØ Tinh Túc",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 168, 0)
					CallScriptFunction( 225900, "OnDefaultEvent",sceneId, selfId, targetId )
				end
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Ngß½i ðã là ð® tØ cüa phái khác r°i !")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		end
	elseif	GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId, "#{OBJ_xiaoyao_0004}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--Ö¸Â·
	if GetNumText()==6 then
		BeginEvent(sceneId)
			AddText(sceneId, "Khang Quäng Lång [125,41] có th¬ dÕy nhà ngß½i võ công cüa Tiêu Dao. Ông ¤y ðÑng ngay cÕnh ta !")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 122, 141, "Khang Quäng Lång" )
		return
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x014000_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x014000_g_eventList do
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
function x014000_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x014000_g_eventList do
		if missionScriptId == findId then
			x014000_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x014000_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x014000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x014000_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x014000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x014000_OnDie( sceneId, selfId, killerId )
end

--**********************************
--ÏûÏ¢ÌáÊ¾
--**********************************
function x014000_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
