--´óÀíNPC
--´Þ·ê¾Å
--ÆÕÍ¨

x002026_g_ScriptId	= 002026

--ÃÅÅÉÐÅÏ¢(ÃÅÅÉÃû³Æ£¬SceneID£¬PosX£¬PosY£¬ÃÅÅÉID)
x002026_g_mpInfo		= {}
x002026_g_mpInfo[0]	= { "Tinh Túc", 16,  96, 152, MP_XINGSU }
x002026_g_mpInfo[1]	= { "Tiêu Dao", 14,  67, 145, MP_XIAOYAO }
x002026_g_mpInfo[2]	= { "Thiªu Lâm",  9,  96, 127, MP_SHAOLIN }
x002026_g_mpInfo[3]	= { "Thiên S½n", 17,  95, 120, MP_TIANSHAN }
x002026_g_mpInfo[4]	= { "Thiên Long", 13,  96, 120, MP_DALI }
x002026_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x002026_g_mpInfo[6]	= { "Võ Ðang", 12, 103, 140, MP_WUDANG }
x002026_g_mpInfo[7]	= { "Minh Giáo", 11,  98, 167, MP_MINGJIAO }
x002026_g_mpInfo[8]	= { "Cái Bang", 10,  91, 116, MP_GAIBANG }
--x002026_g_mpInfo[9]	= { "Mµ Dung", 435,  29, 137, 9}

x002026_g_Yinpiao = 40002000

x002026_g_Impact_NotTransportList = { 5929, 5944 } -- ½ûÖ¹´«ËÍµÄImpact
x002026_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- ½ûÖ¹´«ËÍµÄImpactÌáÊ¾ÐÅÏ¢

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002026_OnDefaultEvent( sceneId, selfId, targetId )

	-- ¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓÐ¡°ÒøÆ±¡±Õâ¸ö¶«Î÷£¬ÓÐ¾Í²»ÄÜÊ¹ÓÃÕâÀïµÄ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x002026_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Trên ngß¶i các hÕ có ngân phiªu, ðang chÕy tr¯n nþ! Ta không th¬ giúp các hÕ" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		if GetLevel( sceneId, selfId ) >= 10 then
			AddText( sceneId, "#{XIYU_20071228_01}" )
			AddNumText( sceneId, x002026_g_ScriptId, "Quay v« môn phái", 9, 1000 )
			AddNumText( sceneId, x002026_g_ScriptId, "Thành th¸ - LÕc Dß½ng", 9, 1001 )
			AddNumText( sceneId, x002026_g_ScriptId, "Thành th¸ - Tô Châu", 9, 1002 )
			AddNumText( sceneId, x002026_g_ScriptId, "Thành th¸ - LÕc Dß½ng - CØu Châu thß½ng hµi", 9, 1006 )
			AddNumText( sceneId, x002026_g_ScriptId, "Thành th¸ - Tô Châu - Thiªt tß¶ng ph¯", 9, 1007 )
			if GetLevel( sceneId, selfId ) >= 75 then
				AddNumText( sceneId, x002026_g_ScriptId, "Thành th¸  - Lâu Lan", 9, 1011 )
			end
			AddNumText( sceneId, x002026_g_ScriptId, "Thành th¸ - Thúc Hà C± Tr¤n", 9, 1010 )
			
			AddNumText( sceneId, x002026_g_ScriptId, "Ði ðªn các môn phái", 9, 1012 )
			--for i, mp in x002026_g_mpInfo do
			--	AddNumText( sceneId, x002026_g_ScriptId, "ÃÅÅÉ - "..mp[1], 9, i )
			--end
		else
			AddText( sceneId, "  Ngß½i c¥n ðÆng c¤p ðÕt trên 10 m¾i có th¬ t¾i ðßþc các thành th¸ khác" )
			AddNumText( sceneId, x002026_g_ScriptId, "Thành th¸ - ÐÕi Lý",  9, 1003 )
			AddNumText( sceneId, x002026_g_ScriptId, "Thành th¸ - ÐÕi Lý 2", 9, 1004 )
			AddNumText( sceneId, x002026_g_ScriptId, "Thành th¸ - ÐÕi Lý 3", 9, 1005 )
		end
		
		
		
		-- ÎÒÔõÑù²ÅÄÜÈ¥¶Ø»ÍºÍáÔÉ½
		AddNumText( sceneId, x002026_g_ScriptId, "Ðªn Ðôn Hoàng và Tung S½n?", 11, 2000 )
		
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--´«ËÍ¼ì²é£¬½â¾öµÍµÈ¼¶Íæ¼Ò´ø¸ßµÈ¼¶Íæ¼Òµ½´óÀí2£¬3µÄÎÊÌâ
--**********************************
function x002026_EnterConditionCheck(sceneId, selfId)
	local teamSize = GetNearTeamCount(sceneId, selfId); 
	if teamSize > 1 then
		for i=0, teamSize-1 do
	  	local objId = GetNearTeamMember(sceneId, selfId, i);
	  	if GetLevel(sceneId, objId) > 9 and IsTeamFollow(sceneId, objId) == 1 then
	  		local name = GetName(sceneId, objId);
	  		local msg = format("  ê †T%sµÈ¼‰ß^¸ß£¬²»ÄÜßMÈë£¡", name);
	  		return 0, msg;
	  	end  	
	  end
  end
	return 1, "ok";
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002026_OnEventRequest( sceneId, selfId, targetId, eventId )
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
				x002026_MsgBox( sceneId, selfId, targetId, "  Thành viên trong nhóm ngß½i có ngß¶i có nhi®m vø ch· hàng b¢ng ðß¶ng thuÖ, d¸ch trÕm chúng ta không th¬ cung c¤p d¸ch vø cho ngß½i" )
				return
			end
		end
	end

	--äîÔËÏà¹Ø
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x002026_MsgBox( sceneId, selfId, targetId, "  Ngß½i có nhi®m vø ch· hàng b¢ng ðß¶ng thuÖ, d¸ch trÕm chúng ta không th¬ cung c¤p d¸ch vø cho ngß½i" )
		return
	end
	
	--¼ì²âImpact×´Ì¬×¤ÁôÐ§¹û
	for i, ImpactId in x002026_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			x002026_MsgBox( sceneId, selfId, targetId, x002026_g_TalkInfo_NotTransportList[i] )			
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
			x002026_MsgBox( sceneId, selfId, targetId, "  Ngß½i vçn chßa gia nh§p b¤t kÏ môn phái nào!" )
		else
			mp	= x002026_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			end
		end
		return
	end
	if arg == 1001 then		--ÂåÑô
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 234, 321, 10 )
		return
	end
	if arg == 1002 then		--ËÕÖÝ
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 202,258, 10 )
		return
	end
	if arg == 1006 then		--ÂåÑôÉÌ»á
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 328, 270, 10 )
		return
	end
	if arg == 1007 then		--ËÕÖÝÌú½³ÆÌ
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 332, 225, 10 )
		return
	end
	if arg == 1003 then		--´óÀí1
		--Èç¹ûÍæ¼Ò¾ÍÔÚ´óÀí1Ôò²»´«ËÍ
		if sceneId == 2 then
			x002026_MsgBox( sceneId, selfId, targetId, "  Ngß½i ðã · ÐÕi Lý r°i" )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 138 )
		end
		return
	end
	if arg == 1004 then		--´óÀí2
		--Èç¹ûÍæ¼Ò¾ÍÔÚ´óÀí2Ôò²»´«ËÍ
		if sceneId == 71 then
			x002026_MsgBox( sceneId, selfId, targetId, "  Ngß½i ðã · ÐÕi Lý 2 r°i" )
		else
			local ret, msg = x002026_EnterConditionCheck(sceneId, selfId);
			if ret == 0 then
				x002026_MsgBox(sceneId, selfId, targetId, msg);
				return
			end
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 71, 241, 138 )
		end
		return
	end
	if arg == 1005 then		--´óÀí3
		--Èç¹ûÍæ¼Ò¾ÍÔÚ´óÀí3Ôò²»´«ËÍ
		if sceneId == 72 then
			x002026_MsgBox( sceneId, selfId, targetId, "  Ngß½i ðã · ÐÕi Lý 3 r°i" )
		else
			local ret, msg = x002026_EnterConditionCheck(sceneId, selfId);
			if ret == 0 then
				x002026_MsgBox(sceneId, selfId, targetId, msg);
				return
			end
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 72, 241, 138 )
		end
		return
	end
	for i, mp in x002026_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			return
		end
	end
	
	if arg == 1010 then		--ÊøºÓ¹ÅÕò
		-- add by zchw
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x002026_g_ScriptId);
			-- zchw fix Transfer bug
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Ngß½i có mu¯n ðªn Thúc Hà C± Tr¤n không? N½i này PK không b¸ sát khí ");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
	if arg == 1011 then		--Â¥À¼
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 288, 136, 75 )
		return
	end
	


	if arg == 1012 then		
		BeginEvent( sceneId )
			for i, mp in x002026_g_mpInfo do
				AddNumText( sceneId, x002026_g_ScriptId, "Môn phái - "..mp[1], 9, i )
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
function x002026_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--¸ù¾ÝÃÅÅÉID»ñÈ¡ÃÅÅÉÐÅÏ¢
--**********************************
function x002026_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x002026_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x002026_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
