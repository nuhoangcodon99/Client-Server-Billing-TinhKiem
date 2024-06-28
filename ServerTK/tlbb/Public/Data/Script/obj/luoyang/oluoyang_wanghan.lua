--ÂåÑôNPC
--Íôºµ
--ÆÕÍ¨

x000128_g_ScriptId	= 000128

--ÃÅÅÉÐÅÏ¢(ÃÅÅÉÃû³Æ£¬SceneID£¬PosX£¬PosY£¬ÃÅÅÉID)
x000128_g_mpInfo		= {}
x000128_g_mpInfo[0]	= { "Tinh Túc", 16,  96, 152, MP_XINGSU }
x000128_g_mpInfo[1]	= { "Tiêu Dao", 14,  67, 145, MP_XIAOYAO }
x000128_g_mpInfo[2]	= { "Thiªu Lâm",  9,  96, 127, MP_SHAOLIN }
x000128_g_mpInfo[3]	= { "Thiên S½n", 17,  95, 120, MP_TIANSHAN }
x000128_g_mpInfo[4]	= { "Thiên Long", 13,  96, 120, MP_DALI }
x000128_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x000128_g_mpInfo[6]	= { "Võ Ðang", 12, 103, 140, MP_WUDANG }
x000128_g_mpInfo[7]	= { "Minh Giáo", 11,  98, 167, MP_MINGJIAO }
x000128_g_mpInfo[8]	= { "Cái Bang", 10,  91, 116, MP_GAIBANG }
--x000128_g_mpInfo[9]	= { "Mµ Dung", 435,  29, 137, 9}

x000128_g_Yinpiao = 40002000 

x000128_g_Impact_NotTransportList = { 5929, 5944 } -- ½ûÖ¹´«ËÍµÄImpact
x000128_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- ½ûÖ¹´«ËÍµÄImpactÌáÊ¾ÐÅÏ¢

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000128_OnDefaultEvent( sceneId, selfId,targetId )
	
	-- ¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓÐ¡°ÒøÆ±¡±Õâ¸ö¶«Î÷£¬ÓÐ¾Í²»ÄÜÊ¹ÓÃÕâÀïµÄ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x000128_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Trên ngß¶i các hÕ có ngân phiªu, ðang chÕy tr¯n nþ! Ta không th¬ giúp các hÕ" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		AddText( sceneId, "#{XIYU_20071228_01}")
		AddNumText( sceneId, x000128_g_ScriptId, "Quay v« môn phái", 9, 1000 )
		AddNumText( sceneId, x000128_g_ScriptId, "Thành th¸ - Tô Châu", 9, 1001 )
		AddNumText( sceneId, x000128_g_ScriptId, "Thành th¸ - Tô Châu - Thiªt tß¶ng ph¯", 9, 1007 )
		AddNumText( sceneId, x000128_g_ScriptId, "Thành th¸ - ÐÕi Lý", 9, 1002 )
		AddNumText( sceneId, x000128_g_ScriptId, "Thành th¸ - Lâu Lan", 9, 1011 )
		AddNumText( sceneId, x000128_g_ScriptId, "Thành th¸ - Thúc Hà C± Tr¤n", 9, 1010 )
		--AddNumText( sceneId, x000128_g_ScriptId, "³ÇÊÐ - ÂåÑô", 9, 1006 )
		AddNumText( sceneId, x000128_g_ScriptId, "Ði ðªn các môn phái", 9, 1012 )
		--for i, mp in x000128_g_mpInfo do
			--AddNumText( sceneId, x000128_g_ScriptId, "ÃÅÅÉ - "..mp[1], 9, i )
		--end

		
		
		-- ÎÒÔõÑù²ÅÄÜÈ¥¶Ø»ÍºÍáÔÉ½
		AddNumText( sceneId, x000128_g_ScriptId, "Ðªn Ðôn Hoàng và Tung S½n?", 11, 2000 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000128_OnEventRequest( sceneId, selfId, targetId, eventId )
	--¶ÓÎéÏà¹Ø
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				x000128_MsgBox( sceneId, selfId, targetId, "  Thành viên trong nhóm ngß½i có ngß¶i có nhi®m vø ch· hàng b¢ng ðß¶ng thuÖ, d¸ch trÕm chúng ta không th¬ cung c¤p d¸ch vø cho ngß½i" )
				return
			end
		end
	end

	--äîÔËÏà¹Ø
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x000128_MsgBox( sceneId, selfId, targetId, "  Ngß½i có nhi®m vø ch· hàng b¢ng ðß¶ng thuÖ, d¸ch trÕm chúng ta không th¬ cung c¤p d¸ch vø cho ngß½i" )
		return
	end

	--¼ì²âImpact×´Ì¬×¤ÁôÐ§¹û
	for i, ImpactId in x000128_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			x000128_MsgBox( sceneId, selfId, targetId, x000128_g_TalkInfo_NotTransportList[i] )			
			return 0
		end
	end

	--Ë³Àû´«ËÍ
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--·µ»ØÃÅÅÉ
		if id == 9 and  GetHumanMenpaiPoint(sceneId, selfId) == 0 then
			x000128_MsgBox( sceneId, selfId, targetId, "  Ngß½i vçn chßa gia nh§p b¤t kÏ môn phái nào!" )
		else
			mp	= x000128_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			end
		end
		return
	end
	if arg == 1001 then		--ËÕÖÝ
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1,  202,258 )
		return
	end
	if arg == 1007 then		--ËÕÖÝÌú½³ÆÌ
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 332, 225 )
		return
	end
	if arg == 1002 then		--´óÀí
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 252, 126 )
		return
	end
	if arg == 1006 then		--ÂåÑô
		SetPos(sceneId, selfId, 132,183)
		return
	end
  	if arg == 1011 then		--Â¥À¼
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 288, 136, 75 )
		return
	end
	for i, mp in x000128_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			return
		end
	end

	if GetNumText()== 1010 then		--ÊøºÓ¹ÅÕò
	-- modify by zchw
			-- add by zchw
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x000128_g_ScriptId);
			-- zchw fix Transfer bug
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Thúc Hà C± Tr¤n là n½i PK không b¸ sát khí, các hÕ có mu¯n ðªn không?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
	if arg == 1012 then		
		BeginEvent( sceneId )
			for i, mp in x000128_g_mpInfo do
				AddNumText( sceneId, x000128_g_ScriptId, "Môn phái - "..mp[1], 9, i )
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
		return
	end
	
	if GetNumText() == 2000 then		--
		BeginEvent( sceneId )
			AddText( sceneId, "#{GOTO_DUNHUANF_SONGSHAN}" ) 
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		return
	end
end
--  add by zchw
function x000128_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--¸ù¾ÝÃÅÅÉID»ñÈ¡ÃÅÅÉÐÅÏ¢
--**********************************
function x000128_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x000128_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x000128_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
