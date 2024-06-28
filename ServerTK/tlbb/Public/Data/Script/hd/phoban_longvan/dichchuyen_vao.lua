x000618_g_scriptId = 000618
x000618_g_minLevel			= 85 --cap min
x000618_g_LimitMembers = 3-- so nguoi vao phu ban
x000618_g_RateLvOK = 60 --ty le pha vo phong an
x000618_g_Fuben_times = 2 --so lan di trong ngay
x000618_g_Fuben_X			= 65
x000618_g_Fuben_Z			= 84
x000618_g_TickTime		= 1
x000618_g_NoUserTime	= 300
x000618_g_FuBenTime		= 30*60 --thoi gian
x000618_g_CopySceneType = FUBEN_LONGVAN
x000618_g_myLevel			= 6
x000618_g_iniLevel			= 8
x000618_g_IDX_FuBenLifeStep	= 9
x000618_g_IDBOSS1		= 10 --v¸ trí Long trø 1
x000618_g_IDBOSS2		= 11 --v¸ trí Long trø 2
x000618_g_IDBOSS3		= 12 --v¸ trí Long trø 3
x000618_g_IDBOSS4		= 13 --v¸ trí Long trø 4
x000618_g_IDBOSS5		= 14 --v¸ trí Long trø 5
x000618_g_IDBOSS6		= 15 --v¸ trí Long trø 6
x000618_g_IDBOSS7		= 16 --v¸ trí Long trø 7
x000618_g_IDBOSS8		= 17 --v¸ trí Long trø 8
x000618_g_IDBOSS9		= 18 --v¸ trí Long trø 9
x000618_g_Flag	=19
x000618_g_dathong 	= 20
x000618_g_bosscuoi 	=21
x000618_g_quaivuachet =22
x000618_g_sotrukill = 23
x000618_g_lastSmallBoss = 24

x000618_g_NPCList ={
	{ mID=15300, Title="Long Trø b¸ phong ¤n", ScriptID=622, },
	{ mID=15304, Title="Long Vån Trø",  ScriptID=630 },
	{ mID=15320, Title="Vß½ng Lång Ti¬u T¯t",  ScriptID=627 },
	{ mID=15324, Title="Vß½ng Lång Hãn Tß¾ng",  ScriptID=626 },
	{ mID=15328, Title="Ác Lính Binh Dûng",  ScriptID=625 },
	{ mID=15344, Title="Thú Lång Giám",  ScriptID=623 },
}
x000618_g_LongTruList =
{
	{x=78, z=77},
	{x=48, z=77},
	{x=78, z=54},
	{x=78, z=24},
	{x=49, z=48},
	{x=49, z=25},
	{x=21, z=24},
	{x=21, z=54},
	{x=21, z=74},
}
--Vß½ng lång tÕp d¸ch

x000618_g_BOSSList_tapdich = 
{
	{ mID1=15316, ScriptID=627, bLevel =85 },
	{ mID1=15317, ScriptID=627, bLevel =95},
	{ mID1=15318, ScriptID=627, bLevel =105 },
	{ mID1=15319, ScriptID=627, bLevel =115 },
}
--Trung Thành Binh Dûng
x000618_g_BOSSList_trungthanh = 
{
	{ mID1=15332, ScriptID=627, bLevel =85 },
	{ mID1=15333, ScriptID=627, bLevel =95},
	{ mID1=15334, ScriptID=627, bLevel =105 },
	{ mID1=15335, ScriptID=627, bLevel =115 },
}

x000618_g_BOSSList_longvan_monster = 
{
	{ mID1=15300, ScriptID=624, bLevel =85 },
	{ mID1=15301, ScriptID=624, bLevel =95},
	{ mID1=15302, ScriptID=624, bLevel =105 },
	{ mID1=15303, ScriptID=624, bLevel =115 },
}
x000618_g_BOSSList_longvan_NPC = 
{
	{ mID1=15304, ScriptID=630, bLevel =85 },
	{ mID1=15305, ScriptID=630, bLevel =95},
	{ mID1=15306, ScriptID=630, bLevel =105 },
	{ mID1=15307, ScriptID=630, bLevel =115 },
}
x000618_g_BOSSList_thulanggiam =
{				
	{ mID1=15344, ScriptID=623, bLevel =85 },
	{ mID1=15345, ScriptID=623, bLevel =95 },
	{ mID1=15346, ScriptID=623, bLevel =105 },
	{ mID1=15347, ScriptID=623, bLevel =115 },

}

--Vß½ng Lång Ti¬u T¯t
x000618_g_BOSSList_boss_tieutot = 
{
	{ mID1=15320, ScriptID=627, bLevel =85 },
	{ mID1=15321, ScriptID=627, bLevel =95},
	{ mID1=15322, ScriptID=627, bLevel =105 },
	{ mID1=15323, ScriptID=627, bLevel =115 },

}

--Vß½ng Lång Hãn Tß¾ng
x000618_g_BOSSList_boss_hantuong = 
{
	{ mID1=15324, ScriptID=627, bLevel =85 },
	{ mID1=15325, ScriptID=627, bLevel =95},
	{ mID1=15326, ScriptID=627, bLevel =105 },
	{ mID1=15327, ScriptID=627, bLevel =115 },

}

--Ác Lính Binh Dûng
x000618_g_BOSSList_boss_binhdung = 
{
	{ mID1=15328, ScriptID=627, bLevel =85 },
	{ mID1=15329, ScriptID=627, bLevel =95},
	{ mID1=15330, ScriptID=627, bLevel =105 },
	{ mID1=15331, ScriptID=627, bLevel =115 },

}

x000618_BaoRuong =	{ mID=15448, ScriptID=621, bLevel = 69}

function x000618_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "#{FMZLW_111219_02}" )
		AddNumText( sceneId, x000618_g_scriptId, "Tiªn vào #GPhøng Minh Vß½ng Lång", 10, 1)
		AddNumText(sceneId, x000618_g_scriptId,"Mua Thông Hành L®nh", 3, 2)
		AddNumText( sceneId, x000618_g_scriptId, "V« #GPhøng Minh Vß½ng Lång",11 , 3)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000618_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() ==1 then
		local lev = GetLevel( sceneId, selfId )
		if lev < x000618_g_minLevel then
			 x000618_FailTips(sceneId, selfId, "ÐÆng c¤p cüa bÕn chßa ðÕt yêu c¥u. Phäi 85 tr· lên m¾i ðü sÑc vào phø bän" )
			return
		end
		
		if LuaFnHasTeam( sceneId, selfId ) == 0 then			
			local text="Quái v§t trong phø bän cñc kì khöe mÕnh và hung hãn, bÕn c¥n có t± ðµi ði cùng m¾i ðßþc!"
			 x000618_FailTips(sceneId, selfId,text)
			return 
		end     	
		
		if GetTeamSize( sceneId, selfId ) < x000618_g_LimitMembers then
			local text ="Ðµi ngû cüa bÕn chßa ðü ngß¶i. Phäi t§p hþp ít nh¤t 3 ngß¶i m¾i có th¬ chinh phøc phø bän"
			x000618_FailTips(sceneId, selfId,text)
			return
		end
		
		if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then			
			local text = "Phäi là Ðµi trß·ng m¾i có th¬ nh§n nhi®m vø!" 
			x000618_FailTips(sceneId, selfId,text)
			return
		end
		
		
		
		local leaderObjId = selfId;
		local TeammateCount = 0
		local TeammateID = 0
		local NearCount = 0 

		NearCount = GetNearTeamCount( sceneId, leaderObjId )
		TeammateCount = GetTeamMemberCount( sceneId, leaderObjId )
	   	
		local namenum = 0;
		local notifyString = "Trong ðµi ngû cüa các hÕ có thành viên (";
		for i=0, NearCount-1  do
			local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
			local	lev	= GetLevel( sceneId, nPlayerId )
			local	nam	= GetName( sceneId, nPlayerId )
			
			if(lev < x000618_g_minLevel) then
				notifyString = notifyString..nam.." ";
				namenum = 1;
			end
		end
		notifyString = notifyString..") không ðü 85 c¤p";	
		if(namenum > 0) then			
			x000618_FailTips(sceneId, selfId,notifyString)
			return
		end
		if TeammateCount < x000618_g_LimitMembers then		       
			x000618_FailTips(sceneId, selfId,"Nhóm cüa bÕn có"..nam.." không · g¥n ðây.")
			return
		
		end
		for i=0, TeammateCount-1 do
			local TeammateID = GetNearTeamMember( sceneId, leaderObjId, i )
			if( -1 == TeammateID ) then
				return
			end
			local nPlayerId = GetNearTeamMember(sceneId,selfId, i)	
			local	nam	= GetName( sceneId, nPlayerId )	
			local vp = LuaFnGetAvailableItemCount(sceneId,TeammateID,38000246)
			if( vp < 1 ) then						
				x000618_FailTips(sceneId, selfId,"Trong nhóm cüa bÕn có "..nam.." không có Thông Hành L®nh!")
				return --hd edit not check item
			end
			
			local lastTime = GetMissionData(sceneId,TeammateID,MD_LONGVAN_LASTTIME) 
			local lastDayTime = floor( lastTime / 100 )
			local lastDayCount = mod( lastTime, 100 )
			local CurDayTime = GetDayTime()
			if CurDayTime > lastDayTime then
				lastDayTime = CurDayTime
				lastDayCount = 0
			end
			
		     	
			if( lastDayCount >=  x000618_g_Fuben_times) then					
				x000618_FailTips(sceneId, selfId,"Trong nhóm cüa bÕn có "..nam.." ðã tham gia ðü phø bän ngày hôm nay!")
				return
			--else
				--SetMissionData(sceneId, TeammateID, MD_LONGVAN_LASTTIME,now)
			end
		end
		--tao phu ban
		x000618_MakeCopyScene( sceneId, selfId )
	end
	

	if GetNumText() == 2 then	--mua thông hành l®nh
		BeginEvent( sceneId )
			AddText( sceneId, "Mua Thông Hành L®nh c¥n tiêu hao 100 vàng" )
			AddNumText(sceneId, selfId,"Xác nh§n",5,77)
			AddNumText(sceneId, selfId,"Không...",14,88)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if GetNumText() ==77 then --mua thông hành l®nh
		local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
		local can=LuaFnCostMoneyWithPriority( sceneId, selfId, 1000000 )
		if can < 0 then
			x000618_Tips(sceneId,selfId,targetId,"BÕn không ðü 100 vàng trên ngß¶i")
			return
		end
		if  slot<1 then
			x000618_Tips(sceneId,selfId,targetId,"C¥n ð¬ ít nh¤t 1 ô tr¯ng trong tay nài")
			return
		end
			--LuaFnAddMoney(sceneId,selfId,-100) --hd comment ?!? gi day ?
		local BagPos = TryRecieveItem( sceneId, selfId, 38000246, QUALITY_MUST_BE_CHANGE )
		if -1 ~= BagPos then
			LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			x000618_Tips(sceneId,selfId,targetId,"BÕn v×a mua 1 Thông Hành L®nh")
		end
	end
	if GetNumText()==88 then --thoát
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	end
	if GetNumText()==3 then --gi¾i thi®u
		x000618_Tips(sceneId,selfId,targetId,"#{CSFB_KVK_110623_30}")
	end
	
end



function x000618_MakeCopyScene( sceneId, selfId )
	local myLevel = GetLevel( sceneId, selfId )
    	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel = 0
	if myLevel < 10 then
		iniLevel = 10
	elseif myLevel < PlayerMaxLevel then
		iniLevel = floor( myLevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end
	
	
	local x = 0
	local z = 0
	local leaderguid=LuaFnObjId2Guid(sceneId,selfId)

	x,z = LuaFnGetWorldPos(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "longvan.nav")
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid)
	--LuaFnSetCopySceneData_Player(sceneId, selfId)

	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x000618_g_NoUserTime*1000)
	LuaFnSetCopySceneData_Timer(sceneId, x000618_g_TickTime*1000)
	LuaFnSetCopySceneData_Param(sceneId, 0, x000618_g_CopySceneType)
	LuaFnSetCopySceneData_Param(sceneId, 1, x000618_g_scriptId)
	LuaFnSetCopySceneData_Param(sceneId, 2, 0)
	LuaFnSetCopySceneData_Param(sceneId, 3, sceneId)
	LuaFnSetCopySceneData_Param(sceneId, 4, x)
	LuaFnSetCopySceneData_Param(sceneId, 5, z)
	LuaFnSetCopySceneData_Param(sceneId, 7, 0)

	LuaFnSetCopySceneData_Param( sceneId, x000618_g_myLevel, myLevel )
	LuaFnSetCopySceneData_Param( sceneId, x000618_g_iniLevel, iniLevel/10 )	
	LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep, 0 )

	for i=10, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)

	end
	LuaFnSetSceneLoad_Area( sceneId, "longvan_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "longvan_monster.ini" )

	local bRetsceneId = LuaFnCreateCopyScene(sceneId)	
	if bRetsceneId>0 then			
		x000618_FailTips(sceneId, selfId, "Ðang d¸ch chuy¬n vào phø bän" )
	else			
		x000618_FailTips(sceneId, selfId, "S¯ lßþng ngß¶i vào phø bän vßþt quá gi¾i hÕn, d¸ch chuy¬n th¤t bÕi!" )
	end
end

function x000618_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId)
	local leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	local leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then
		return
	end

	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then
		NewWorld( sceneId, leaderObjId, destsceneId, x000618_g_Fuben_X, x000618_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x000618_g_Fuben_X, x000618_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x000618_g_Fuben_X, x000618_g_Fuben_Z)
			end
		end		
	end

end



function x000618_OnCopySceneTimer( sceneId, nowTime )
	local lifeStep = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep )
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )
	local TickFlag = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local iniLevel = LuaFnGetCopySceneData_Param( sceneId, x000618_g_iniLevel )
	local bossdie =LuaFnGetCopySceneData_Param( sceneId, x000618_g_bosscuoi)

	TickCount = TickCount + 1
	TickFlag = TickFlag + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )
	LuaFnSetCopySceneData_Param( sceneId, 7, TickFlag )



	if lifeStep == 0 then
		
		x000618_CreateLongTruMonster(sceneId)
		LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep,1 )
		x000618_TipAllHuman( sceneId, "Long Trø c¥n th¶i gian khá lâu m¾i chinh phøc ðßþc. Hãy kiên trì!" )
		
	end

	if lifeStep == 2  then -- khi con long trø ð¥u chªt
		if random(100) < x000618_g_RateLvOK then
			LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep,1 )
			x000618_CreateLvOK(sceneId)--tÕo trø ðßþc ðä thông
			
		else
			--hd add 15/7: tang % ty le da thong
			local show =LuaFnGetCopySceneData_Param( sceneId, x000618_g_dathong)
			if show < 3 and LuaFnGetCopySceneData_Param( sceneId, x000618_g_sotrukill) >= 5 then
				x000618_g_RateLvOK =x000618_g_RateLvOK+10; --tang 10%
				
				local text = "Hãy c¯ g¡ng chiªn ð¤u! TÖ l® ðä thông Long MÕch ðã tång thêm #W10%. ";
				x000618_TipAllHuman( sceneId, text)
				CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Phøng Minh Vß½ng Lång]: #Y"..text)
			end
			--end hd add 15/7: tang % ty le da thong
			
			x000618_DeleteBOSS( sceneId, x000618_g_BOSSList_longvan_monster[iniLevel -7].mID1 )-- delete 8 con trø ðã tÕo
			x000618_CreateLongTruNPC( sceneId )--tÕo trø · v¸ trí còn lÕi là NPC
			x000618_CreateQuai(sceneId)--tÕo trø ðßþc ðä thông ho£c quái sinh ra.
			LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep,3 )
			LuaFnSetCopySceneData_Param( sceneId, 7, 0 ) --set lai flag la 0
		end

	end
	if (lifeStep==3 and TickFlag==60) then --sau 1 phút các quái TÕp Dich tñ m¤t
		x000618_DeleteBOSS( sceneId,  x000618_g_BOSSList_tapdich[iniLevel -7].mID1 )--1 phút s¨ xóa tÕp d¸ch
		local text="[Vß½ng Lång TÕp D¸ch] tñ biªt ðánh không lÕi, nên ðã bö tr¯n r°i!!"
		x000618_TipAllHuman(sceneId,text)
		CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Phøng Minh Vß½ng Lång]: #Y"..text)
	end
	if lifeStep == 4  then -- khi trø ðßþc ðä thông ho£c quái ðã b¸ tiêu di®t hªt
	
		local show =LuaFnGetCopySceneData_Param( sceneId, x000618_g_dathong)
		local numTru = 9- LuaFnGetCopySceneData_Param( sceneId, x000618_g_sotrukill)
		
		
		--hd add check nªu s¯ trø b¸ kill =9 và ðä thông < 3 thì out phø bän
		if numTru==0 and show <3 then
			local text = "Nhi®m vø th¤t bÕi! Phø bän kªt thúc! R¶i khöi phø bän trong 10 giây næa!";
			x000618_TipAllHuman( sceneId, text)
			CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Phøng Minh Vß½ng Lång]: #Y"..text)
			LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep,20 )
			LuaFnSetCopySceneData_Param( sceneId, 7, 0 ) --10s 
		else
		
			x000618_DeleteBOSS( sceneId, 15299) --xóa 8 trø NPC tÕo · step 2
			x000618_CreateLongTruMonster( sceneId )-- tÕo 8 quái long trø ðánh ðßþc
			local text = "Quái v§t ðã hªt, hãy nhanh chân ði ðä thông Long Trø tiªp theo";
			x000618_TipAllHuman( sceneId, text )
			CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Phøng Minh Vß½ng Lång]: #Y"..text)
			LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep,1 )
		end
	end
	if lifeStep == 99 then
		x000618_CheckAll(sceneId)
	end

	if TickCount == 5*60 or TickCount == 10*60 or TickCount == 15*60 then
		x000618_TipAllHuman( sceneId, "#HPhø bän s¨ ðóng sau "..floor((x000618_g_FuBenTime-TickCount)/60).." phút, hãy nhanh chóng khiêu chiªn")
	elseif TickCount == x000618_g_FuBenTime then
		x000618_TipAllHuman( sceneId, "#HPhø bän kªt thúc, r¶i khöi phø bän...")
		LuaFnSetCopySceneData_Param( sceneId, 7, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep, 20 )
	end
	if lifeStep ==20 and TickFlag == 5 then
		x000618_TipAllHuman( sceneId, "Còn 5 giây næa s¨ r¶i khöi phø bän")
	elseif lifeStep ==20 and TickFlag == 7 then
		x000618_TipAllHuman( sceneId, "Còn 3 giây næa s¨ r¶i khöi phø bän")
	elseif lifeStep ==20 and TickFlag == 8 then
		x000618_TipAllHuman( sceneId, "Còn 2 giây næa s¨ r¶i khöi phø bän")
	elseif lifeStep ==20 and TickFlag == 9 then
		x000618_TipAllHuman( sceneId, "Còn 1 giây næa s¨ r¶i khöi phø bän")
	elseif lifeStep ==20 and TickFlag == 10 then

		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )
		local oldX = LuaFnGetCopySceneData_Param( sceneId, 4 )
		local oldZ = LuaFnGetCopySceneData_Param( sceneId, 5 )
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
				NewWorld( sceneId, PlayerId, oldsceneId, oldX, oldZ )
			end
		end
		return
	end

end

function x000618_TaoDongRuong(sceneId)
	local check =LuaFnGetCopySceneData_Param( sceneId,x000618_g_bosscuoi) --check xem boss cu¯i ðã die chßa?
	if check ==1 then  --boss ðã die
		local 	MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 48, 53, 0, 3, 0, x000618_BaoRuong.ScriptID )
		MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 53, 53, 0, 3, 0, x000618_BaoRuong.ScriptID  )
		MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 43, 53, 0, 3, 0, x000618_BaoRuong.ScriptID  )
		MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 53, 48, 0, 3, 0, x000618_BaoRuong.ScriptID  )
		MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 53, 43, 0, 3, 0, x000618_BaoRuong.ScriptID  )
		MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 48, 43, 0, 3, 0, x000618_BaoRuong.ScriptID  )
		MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 45, 43, 0, 3, 0, x000618_BaoRuong.ScriptID  )
		MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 43, 48, 0, 3, 0, x000618_BaoRuong.ScriptID  )
	end
	--tß ðµng out phø bän sau 30s
	x000618_TipAllHuman( sceneId, "Phø bän kªt thúc! R¶i khöi phø bän trong 30 giây næa!")
	LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep,20 )
	LuaFnSetCopySceneData_Param( sceneId, 7, -60 ) --20+10=30s 
end

function x000618_OnPlayerEnter( sceneId, selfId )
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x000618_g_Fuben_X, x000618_g_Fuben_Z )
	LuaFnDelAvailableItem(sceneId,selfId,38000246,1)

	local lastTime = GetMissionData( sceneId, selfId, MD_LONGVAN_LASTTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100+ lastDayCount
	SetMissionData( sceneId, selfId, MD_LONGVAN_LASTTIME, lastTime )

end


function x000618_OnHumanDie( sceneId, selfId, killerId )
	
end


function x000618_TipAllHuman( sceneId, Str )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end

end


function x000618_CreateBOSS(sceneId, bossId, bossTitle, bossLv, pX, pZ, drId, baseAI, AIscript, scriptId)
	local mstrId = LuaFnCreateMonster(sceneId, bossId, pX, pZ, baseAI, AIscript, scriptId)
	SetLevel(sceneId, mstrId, bossLv)
	--SetObjDir( sceneId, mstrId, drId )
	SetCharacterTitle(sceneId, mstrId, bossTitle)
	SetMonsterFightWithNpcFlag( sceneId, mstrId, 0 )
	--LuaFnSendSpecificImpactToUnit(sceneId, mstrId, mstrId, mstrId, 152, 0)
	return mstrId
end

function x000618_CreateLongTruNPC( sceneId )
	local vitri1 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS1 )
	local vitri2 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS2 )
	local vitri3 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS3 )
	local vitri4 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS4 )
	local vitri5 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS5 )
	local vitri6 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS6 )
	local vitri7 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS7 )
	local vitri8 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS8 )
	local vitri9 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS9 )
	local iniLevel = LuaFnGetCopySceneData_Param( sceneId, x000618_g_iniLevel )
	for i=1,9 do
		if i ~= vitri1 and i ~=vitri2 and i ~=vitri3 and i ~=vitri4 and i ~=vitri5 and i ~=vitri6 and i ~=vitri7 and i ~=vitri8 then
			x000618_CreateBOSS(sceneId, 15299, "", x000618_g_BOSSList_longvan_NPC[iniLevel-7].bLevel, x000618_g_LongTruList[i].x, x000618_g_LongTruList[i].z, 11, 3, 0, 630)
		end
	end
end


function x000618_CreateLongTruMonster( sceneId )
	local vitri1 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS1 )
	local vitri2 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS2 )
	local vitri3 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS3 )
	local vitri4 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS4 )
	local vitri5 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS5 )
	local vitri6 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS6 )
	local vitri7 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS7 )
	local vitri8 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS8 )
	local vitri9 = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDBOSS9 )
	local iniLevel = LuaFnGetCopySceneData_Param( sceneId, x000618_g_iniLevel )
	
	for i=1,9 do
		if i ~= vitri1 and i ~=vitri2 and i ~=vitri3 and i ~=vitri4 and i ~=vitri5 and i ~=vitri6 and i ~=vitri7 and i ~=vitri8 then
			--x000618_TipAllHuman(sceneId,"x000618_g_BOSSList_longvan_monster:  "..x000618_g_BOSSList_longvan_monster[iniLevel-7].mID1)
			x000618_CreateBOSS(sceneId, x000618_g_BOSSList_longvan_monster[iniLevel-7].mID1, "", x000618_g_BOSSList_longvan_monster[iniLevel-7].bLevel, x000618_g_LongTruList[i].x, x000618_g_LongTruList[i].z, 11,3, 0, 624)
		end
	end
 
end
function x000618_CreateLvOK(sceneId)
	local iniLevel = LuaFnGetCopySceneData_Param( sceneId, x000618_g_iniLevel )
	local vuachet =LuaFnGetCopySceneData_Param( sceneId, x000618_g_quaivuachet)
	local x,z=0,0
	
	x=x000618_g_LongTruList[vuachet].x
	z=x000618_g_LongTruList[vuachet].z
	
	local MstId =x000618_CreateBOSS( sceneId, x000618_g_BOSSList_longvan_NPC[iniLevel-7].mID1, "", x000618_g_BOSSList_longvan_NPC[iniLevel-7].bLevel, x, z, 11, 3, 0, 630 )
	SetUnitReputationID( sceneId, MstId, MstId, 0 ) --khong cho danh tru nay --hd add 4/7/2014
	
	--str = format("#cff99cc#{_INFOUSR%s} ðä thông thành công #Y [Long Trø b¸ phong ¤n]", GetName(sceneId,selfId))
	--MonsterTalk(sceneId, selfId, "Phøng Vß½ng Minh Lång", str)
	--local steppp = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep)
	local thong = LuaFnGetCopySceneData_Param( sceneId, x000618_g_dathong)
	
	thong = thong+1
	--steppp =steppp+1
	--LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep, steppp)
	LuaFnSetCopySceneData_Param( sceneId, x000618_g_dathong, thong)

	local show =LuaFnGetCopySceneData_Param( sceneId, x000618_g_dathong)
	local numTru = 9- LuaFnGetCopySceneData_Param( sceneId, x000618_g_sotrukill)
	local text ="#WChúc m×ng t± ðµi cüa b¢ng hæu v×a ðä thông ðßþc 1 Long Trø. S¯ Long Trø ðã ðßþc ðä thông là #Y"..show.."/3"
	local text2 ="#WS¯ Long Trø còn lÕi là #Y"..numTru.."/9"
	x000618_TipAllHuman( sceneId,text)
	--x000618_TipAllHuman( sceneId,text2)
	CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Phøng Minh Vß½ng Lång]: #Y"..text) --x200060_Duibai( sceneId, NpcName, sceneName, szStr )
	--CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Phøng Minh Vß½ng Lång]: #Y"..text2) --x200060_Duibai( sceneId, NpcName, sceneName, szStr )
	
	if show == 3 then --ðã thông xong 3 long trø
		x000618_DeleteBOSS( sceneId, x000618_g_BOSSList_longvan_monster[iniLevel-7].mID1)
		x000618_DeleteBOSS( sceneId, x000618_g_BOSSList_longvan_NPC[iniLevel-7].mID1)
		local MstId =x000618_CreateBOSS( sceneId, x000618_g_BOSSList_thulanggiam[iniLevel-7].mID1, "", x000618_g_BOSSList_thulanggiam[iniLevel-7].bLevel, 48, 48, 0, 27, 0, 623 )
		local text="#WS¯ trø ðä thông ðã ðü s¯ lßþng c¥n thiªt. Boss #YThú Lång Giám#G(48,48)#W ðã xu¤t hi®n. Mau tiêu di®t h¡n!!!!!"
		x000618_TipAllHuman( sceneId,text)
		CallScriptFunction((200060), "Duibai",sceneId, "Thú Lång Giám", "", "Các ngß½i là ai? Dám cä gan xông vào ðây cß¾p mµ! Ta s¨ cho các ngß½i biªt sñ lþi hÕi cüa ta!")
		CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Phøng Minh Vß½ng Lång]: #Y"..text)
		LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep,10)
	end
	
end
function x000618_CreateQuai( sceneId )	
	local iniLevel = LuaFnGetCopySceneData_Param( sceneId, x000618_g_iniLevel )
	local vuachet =LuaFnGetCopySceneData_Param( sceneId, x000618_g_quaivuachet)
	local x,z=0,0
	x=x000618_g_LongTruList[vuachet].x
	z=x000618_g_LongTruList[vuachet].z
	local ran1 = random(3)
	if ran1 == 1 then 
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_tapdich[iniLevel-7].mID1,"", x000618_g_BOSSList_tapdich[iniLevel-7].bLevel, x, z+2, 0, 27, 0,627)
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_tapdich[iniLevel-7].mID1,"", x000618_g_BOSSList_tapdich[iniLevel-7].bLevel, x+2, z, 0, 27, 0, 627)
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_tapdich[iniLevel-7].mID1,"", x000618_g_BOSSList_tapdich[iniLevel-7].bLevel, x+2, z+2, 0, 27, 0, 627)
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_tapdich[iniLevel-7].mID1,"", x000618_g_BOSSList_tapdich[iniLevel-7].bLevel, x+1, z+1, 0, 27, 0, 627)

		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x+3, z, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x+5, z+3, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x+3, z+5, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x+3, z+5, 0, 27, 0, 627)
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x, z, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x+5, z, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x, z+5, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x+5, z+5, 0, 27, 0, 627)
		local text="Ðµi ngû cüa b¢ng hæu v×a ðánh thÑc [Vß½ng Lång TÕp D¸ch] và [Vß½ng Lång Ti¬u T¯t] canh giæ Long Trø. Hãy ði tiêu di®t hªt b÷n chúng!"
		local text2="Lßu ý: Vß½ng Lång TÕp D¸ch r¤t khöe mÕnh, nên hãy giæ tính mÕng. 1 phút sau khi xu¤t hi®n, chúng s¨ tñ ðµng rút lui!!!"
		x000618_TipAllHuman( sceneId,text)
		x000618_TipAllHuman( sceneId,text2)
		CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Phøng Minh Vß½ng Lång]: #Y"..text)
		CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Phøng Minh Vß½ng Lång]: #Y"..text2)
		--str = format("#cff99cc#{_INFOUSR%s} trong khi c¯ g¡ng ðä thông #Y [Long Trø b¸ phong ¤n] #cff99cc ðã vô tình ðánh thÑc #Y[Vß½ng Lång Ti¬u T¯t]", GetName(sceneId,selfId))
		--MonsterTalk(sceneId, selfId, "Phøng Vß½ng Minh Lång", str)
		LuaFnSetCopySceneData_Param( sceneId, 7, 0 )	--set Flag v« 0, ðªm lên 60 thì delete boss tÕp d¸ch	
	elseif 	ran1 == 2 then

		--str = format("#cff99cc#{_INFOUSR%s} trong khi c¯ g¡ng ðä thông #Y [Long Trø b¸ phong ¤n] #cff99cc ð°ng th¶i làm s¯ng d§y #Y[Vß½ng Lång Hãn Tß¾ng]", GetName(sceneId,selfId))
		--MonsterTalk(sceneId, selfId, "Phøng Vß½ng Minh Lång", str)
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x, z, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x+2, z, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x, z+2, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x+2, z+2, 0, 27, 0, 627)
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x+7, z, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x+7, z+3, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x+7, z+7, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_tieutot[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_tieutot[iniLevel-7].bLevel, x+3, z+7, 0, 27, 0, 627)
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_hantuong[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_hantuong[iniLevel-7].bLevel, x, z, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_hantuong[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_hantuong[iniLevel-7].bLevel, x+5, z, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_hantuong[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_hantuong[iniLevel-7].bLevel, x, z+5, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_hantuong[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_hantuong[iniLevel-7].bLevel, x+5, z+5, 0, 27, 0, 627 )
		local text="Ðµi ngû cüa b¢ng hæu v×a ðánh thÑc [Vß½ng Lång Hãn Tß¾ng] và [Vß½ng Lång Ti¬u T¯t] canh giæ Long Trø. Hãy ði tiêu di®t hªt b÷n chúng!"
		x000618_TipAllHuman( sceneId,text)
		CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Phøng Minh Vß½ng Lång]: #Y"..text)

	elseif ran1==3 then
		--str = format("#cff99cc#{_INFOUSR%s} trong khi c¯ g¡ng ðä thông #Y [Long Trø b¸ phong ¤n] #cff99cc ðã vô tình ðánh thÑc #Y[Ác Lính Binh Dûng]", GetName(sceneId,selfId))
		--MonsterTalk(sceneId, selfId, "Phøng Vß½ng Minh Lång", str)
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_trungthanh[iniLevel-7].mID1,"", x000618_g_BOSSList_trungthanh[iniLevel-7].bLevel, x+2, z, 0, 27, 0, 627)
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_trungthanh[iniLevel-7].mID1,"", x000618_g_BOSSList_trungthanh[iniLevel-7].bLevel, x, z+2, 0, 27, 0, 627)
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_trungthanh[iniLevel-7].mID1,"", x000618_g_BOSSList_trungthanh[iniLevel-7].bLevel, x+2, z+2, 0, 27, 0, 627)
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_trungthanh[iniLevel-7].mID1,"", x000618_g_BOSSList_trungthanh[iniLevel-7].bLevel, x+1, z+1, 0, 27, 0, 627)

		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_binhdung[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_binhdung[iniLevel-7].bLevel, x, z, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_binhdung[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_binhdung[iniLevel-7].bLevel, x+5, z, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_binhdung[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_binhdung[iniLevel-7].bLevel, x, z+5, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_binhdung[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_binhdung[iniLevel-7].bLevel, x+5, z+5, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_binhdung[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_binhdung[iniLevel-7].bLevel, x+3, z, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_binhdung[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_binhdung[iniLevel-7].bLevel, x, z+3, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_binhdung[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_binhdung[iniLevel-7].bLevel, x+3, z+3, 0, 27, 0, 627 )
		x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_binhdung[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_binhdung[iniLevel-7].bLevel, x+5, z+3, 0, 27, 0, 627 )
		local text="Ðµi ngû cüa b¢ng hæu v×a ðánh thÑc [Ác Linh Binh Dûng] và [Trung Thành Binh Dûng] canh giæ Long Trø. Hãy ði tiêu di®t hªt b÷n chúng!"
		local text2="Lßu ý: tránh ðøng ðµ v¾i [Trung Thành Binh Dûng]. Quái v§t này khi chªt có th¬ g÷i ra nhi«u [Ác Linh Binh Dûng]"
		x000618_TipAllHuman( sceneId,text)
		x000618_TipAllHuman( sceneId,text2)
		CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Phøng Minh Vß½ng Lång]: #Y"..text)
		CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Phøng Minh Vß½ng Lång]: #Y"..text2)

	end
end

function x000618_DeleteBOSS( sceneId, bossId )

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if bossId == GetMonsterDataID( sceneId, MonsterId ) then
			LuaFnDeleteMonster( sceneId, MonsterId )
			--LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, 152, 0)
			SetCharacterDieTime( sceneId, MonsterId, 1000 )
		end
	end

end

function x000618_CheckBOSS(sceneId, bossName)
	local nNpcId = 0
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)		
		if GetName( sceneId, nMonsterId ) == bossName  then
			nNpcId = nNpcId+1
		end
	end
	return nNpcId
end

function x000618_CheckAll(sceneId)
	local check1 = x000618_CheckBOSS(sceneId, "Vß½ng Lång Ti¬u T¯t")
	local check2 = x000618_CheckBOSS(sceneId, "Vß½ng Lång Hãn Tß¾ng")
	local check3 = x000618_CheckBOSS(sceneId, "Ác Linh Binh Dûng")

	if check1 == 0 and check2 == 0 and check3==0 then
		x000618_DeleteBossName(sceneId, "Vß½ng Lång TÕp D¸ch")
		x000618_DeleteBossName(sceneId, "Trung Thành Binh Dûng")
		LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep,4)
	end
end

function x000618_DeleteBossName( sceneId,  bossName)

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if bossName == GetName( sceneId, MonsterId ) then
			LuaFnDeleteMonster( sceneId, MonsterId )
		end
	end
end
function x000618_NextStep(sceneId, nstep)
	LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep, nstep )
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )
end

function x000618_CheckStep(sceneId)
	local lifeStep = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep )
	return lifeStep
end

function x000618_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end

function x000618_Tips(sceneId, selfId,targetId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
