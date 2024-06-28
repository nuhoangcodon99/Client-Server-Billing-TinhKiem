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
x000618_g_IDBOSS1		= 10 --v� tr� Long tr� 1
x000618_g_IDBOSS2		= 11 --v� tr� Long tr� 2
x000618_g_IDBOSS3		= 12 --v� tr� Long tr� 3
x000618_g_IDBOSS4		= 13 --v� tr� Long tr� 4
x000618_g_IDBOSS5		= 14 --v� tr� Long tr� 5
x000618_g_IDBOSS6		= 15 --v� tr� Long tr� 6
x000618_g_IDBOSS7		= 16 --v� tr� Long tr� 7
x000618_g_IDBOSS8		= 17 --v� tr� Long tr� 8
x000618_g_IDBOSS9		= 18 --v� tr� Long tr� 9
x000618_g_Flag	=19
x000618_g_dathong 	= 20
x000618_g_bosscuoi 	=21
x000618_g_quaivuachet =22
x000618_g_sotrukill = 23
x000618_g_lastSmallBoss = 24

x000618_g_NPCList ={
	{ mID=15300, Title="Long Tr� b� phong �n", ScriptID=622, },
	{ mID=15304, Title="Long V�n Tr�",  ScriptID=630 },
	{ mID=15320, Title="V߽ng L�ng Ti�u T�t",  ScriptID=627 },
	{ mID=15324, Title="V߽ng L�ng H�n T߾ng",  ScriptID=626 },
	{ mID=15328, Title="�c L�nh Binh D�ng",  ScriptID=625 },
	{ mID=15344, Title="Th� L�ng Gi�m",  ScriptID=623 },
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
--V߽ng l�ng t�p d�ch

x000618_g_BOSSList_tapdich = 
{
	{ mID1=15316, ScriptID=627, bLevel =85 },
	{ mID1=15317, ScriptID=627, bLevel =95},
	{ mID1=15318, ScriptID=627, bLevel =105 },
	{ mID1=15319, ScriptID=627, bLevel =115 },
}
--Trung Th�nh Binh D�ng
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

--V߽ng L�ng Ti�u T�t
x000618_g_BOSSList_boss_tieutot = 
{
	{ mID1=15320, ScriptID=627, bLevel =85 },
	{ mID1=15321, ScriptID=627, bLevel =95},
	{ mID1=15322, ScriptID=627, bLevel =105 },
	{ mID1=15323, ScriptID=627, bLevel =115 },

}

--V߽ng L�ng H�n T߾ng
x000618_g_BOSSList_boss_hantuong = 
{
	{ mID1=15324, ScriptID=627, bLevel =85 },
	{ mID1=15325, ScriptID=627, bLevel =95},
	{ mID1=15326, ScriptID=627, bLevel =105 },
	{ mID1=15327, ScriptID=627, bLevel =115 },

}

--�c L�nh Binh D�ng
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
		AddNumText( sceneId, x000618_g_scriptId, "Ti�n v�o #GPh�ng Minh V߽ng L�ng", 10, 1)
		AddNumText(sceneId, x000618_g_scriptId,"Mua Th�ng H�nh L�nh", 3, 2)
		AddNumText( sceneId, x000618_g_scriptId, "V� #GPh�ng Minh V߽ng L�ng",11 , 3)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000618_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() ==1 then
		local lev = GetLevel( sceneId, selfId )
		if lev < x000618_g_minLevel then
			 x000618_FailTips(sceneId, selfId, "��ng c�p c�a b�n ch�a ��t y�u c�u. Ph�i 85 tr� l�n m�i �� s�c v�o ph� b�n" )
			return
		end
		
		if LuaFnHasTeam( sceneId, selfId ) == 0 then			
			local text="Qu�i v�t trong ph� b�n c�c k� kh�e m�nh v� hung h�n, b�n c�n c� t� �i �i c�ng m�i ���c!"
			 x000618_FailTips(sceneId, selfId,text)
			return 
		end     	
		
		if GetTeamSize( sceneId, selfId ) < x000618_g_LimitMembers then
			local text ="еi ng� c�a b�n ch�a �� ng߶i. Ph�i t�p h�p �t nh�t 3 ng߶i m�i c� th� chinh ph�c ph� b�n"
			x000618_FailTips(sceneId, selfId,text)
			return
		end
		
		if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then			
			local text = "Ph�i l� еi tr߷ng m�i c� th� nh�n nhi�m v�!" 
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
		local notifyString = "Trong �i ng� c�a c�c h� c� th�nh vi�n (";
		for i=0, NearCount-1  do
			local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
			local	lev	= GetLevel( sceneId, nPlayerId )
			local	nam	= GetName( sceneId, nPlayerId )
			
			if(lev < x000618_g_minLevel) then
				notifyString = notifyString..nam.." ";
				namenum = 1;
			end
		end
		notifyString = notifyString..") kh�ng �� 85 c�p";	
		if(namenum > 0) then			
			x000618_FailTips(sceneId, selfId,notifyString)
			return
		end
		if TeammateCount < x000618_g_LimitMembers then		       
			x000618_FailTips(sceneId, selfId,"Nh�m c�a b�n c�"..nam.." kh�ng � g�n ��y.")
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
				x000618_FailTips(sceneId, selfId,"Trong nh�m c�a b�n c� "..nam.." kh�ng c� Th�ng H�nh L�nh!")
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
				x000618_FailTips(sceneId, selfId,"Trong nh�m c�a b�n c� "..nam.." �� tham gia �� ph� b�n ng�y h�m nay!")
				return
			--else
				--SetMissionData(sceneId, TeammateID, MD_LONGVAN_LASTTIME,now)
			end
		end
		--tao phu ban
		x000618_MakeCopyScene( sceneId, selfId )
	end
	

	if GetNumText() == 2 then	--mua th�ng h�nh l�nh
		BeginEvent( sceneId )
			AddText( sceneId, "Mua Th�ng H�nh L�nh c�n ti�u hao 100 v�ng" )
			AddNumText(sceneId, selfId,"X�c nh�n",5,77)
			AddNumText(sceneId, selfId,"Kh�ng...",14,88)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if GetNumText() ==77 then --mua th�ng h�nh l�nh
		local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
		local can=LuaFnCostMoneyWithPriority( sceneId, selfId, 1000000 )
		if can < 0 then
			x000618_Tips(sceneId,selfId,targetId,"B�n kh�ng �� 100 v�ng tr�n ng߶i")
			return
		end
		if  slot<1 then
			x000618_Tips(sceneId,selfId,targetId,"C�n � �t nh�t 1 � tr�ng trong tay n�i")
			return
		end
			--LuaFnAddMoney(sceneId,selfId,-100) --hd comment ?!? gi day ?
		local BagPos = TryRecieveItem( sceneId, selfId, 38000246, QUALITY_MUST_BE_CHANGE )
		if -1 ~= BagPos then
			LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			x000618_Tips(sceneId,selfId,targetId,"B�n v�a mua 1 Th�ng H�nh L�nh")
		end
	end
	if GetNumText()==88 then --tho�t
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	end
	if GetNumText()==3 then --gi�i thi�u
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
		x000618_FailTips(sceneId, selfId, "�ang d�ch chuy�n v�o ph� b�n" )
	else			
		x000618_FailTips(sceneId, selfId, "S� l��ng ng߶i v�o ph� b�n v��t qu� gi�i h�n, d�ch chuy�n th�t b�i!" )
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
		x000618_TipAllHuman( sceneId, "Long Tr� c�n th�i gian kh� l�u m�i chinh ph�c ���c. H�y ki�n tr�!" )
		
	end

	if lifeStep == 2  then -- khi con long tr� �u ch�t
		if random(100) < x000618_g_RateLvOK then
			LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep,1 )
			x000618_CreateLvOK(sceneId)--t�o tr� ���c �� th�ng
			
		else
			--hd add 15/7: tang % ty le da thong
			local show =LuaFnGetCopySceneData_Param( sceneId, x000618_g_dathong)
			if show < 3 and LuaFnGetCopySceneData_Param( sceneId, x000618_g_sotrukill) >= 5 then
				x000618_g_RateLvOK =x000618_g_RateLvOK+10; --tang 10%
				
				local text = "H�y c� g�ng chi�n �u! T� l� �� th�ng Long M�ch �� t�ng th�m #W10%. ";
				x000618_TipAllHuman( sceneId, text)
				CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Ph�ng Minh V߽ng L�ng]: #Y"..text)
			end
			--end hd add 15/7: tang % ty le da thong
			
			x000618_DeleteBOSS( sceneId, x000618_g_BOSSList_longvan_monster[iniLevel -7].mID1 )-- delete 8 con tr� �� t�o
			x000618_CreateLongTruNPC( sceneId )--t�o tr� � v� tr� c�n l�i l� NPC
			x000618_CreateQuai(sceneId)--t�o tr� ���c �� th�ng ho�c qu�i sinh ra.
			LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep,3 )
			LuaFnSetCopySceneData_Param( sceneId, 7, 0 ) --set lai flag la 0
		end

	end
	if (lifeStep==3 and TickFlag==60) then --sau 1 ph�t c�c qu�i T�p Dich t� m�t
		x000618_DeleteBOSS( sceneId,  x000618_g_BOSSList_tapdich[iniLevel -7].mID1 )--1 ph�t s� x�a t�p d�ch
		local text="[V߽ng L�ng T�p D�ch] t� bi�t ��nh kh�ng l�i, n�n �� b� tr�n r�i!!"
		x000618_TipAllHuman(sceneId,text)
		CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Ph�ng Minh V߽ng L�ng]: #Y"..text)
	end
	if lifeStep == 4  then -- khi tr� ���c �� th�ng ho�c qu�i �� b� ti�u di�t h�t
	
		local show =LuaFnGetCopySceneData_Param( sceneId, x000618_g_dathong)
		local numTru = 9- LuaFnGetCopySceneData_Param( sceneId, x000618_g_sotrukill)
		
		
		--hd add check n�u s� tr� b� kill =9 v� �� th�ng < 3 th� out ph� b�n
		if numTru==0 and show <3 then
			local text = "Nhi�m v� th�t b�i! Ph� b�n k�t th�c! R�i kh�i ph� b�n trong 10 gi�y n�a!";
			x000618_TipAllHuman( sceneId, text)
			CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Ph�ng Minh V߽ng L�ng]: #Y"..text)
			LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep,20 )
			LuaFnSetCopySceneData_Param( sceneId, 7, 0 ) --10s 
		else
		
			x000618_DeleteBOSS( sceneId, 15299) --x�a 8 tr� NPC t�o � step 2
			x000618_CreateLongTruMonster( sceneId )-- t�o 8 qu�i long tr� ��nh ���c
			local text = "Qu�i v�t �� h�t, h�y nhanh ch�n �i �� th�ng Long Tr� ti�p theo";
			x000618_TipAllHuman( sceneId, text )
			CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Ph�ng Minh V߽ng L�ng]: #Y"..text)
			LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep,1 )
		end
	end
	if lifeStep == 99 then
		x000618_CheckAll(sceneId)
	end

	if TickCount == 5*60 or TickCount == 10*60 or TickCount == 15*60 then
		x000618_TipAllHuman( sceneId, "#HPh� b�n s� ��ng sau "..floor((x000618_g_FuBenTime-TickCount)/60).." ph�t, h�y nhanh ch�ng khi�u chi�n")
	elseif TickCount == x000618_g_FuBenTime then
		x000618_TipAllHuman( sceneId, "#HPh� b�n k�t th�c, r�i kh�i ph� b�n...")
		LuaFnSetCopySceneData_Param( sceneId, 7, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep, 20 )
	end
	if lifeStep ==20 and TickFlag == 5 then
		x000618_TipAllHuman( sceneId, "C�n 5 gi�y n�a s� r�i kh�i ph� b�n")
	elseif lifeStep ==20 and TickFlag == 7 then
		x000618_TipAllHuman( sceneId, "C�n 3 gi�y n�a s� r�i kh�i ph� b�n")
	elseif lifeStep ==20 and TickFlag == 8 then
		x000618_TipAllHuman( sceneId, "C�n 2 gi�y n�a s� r�i kh�i ph� b�n")
	elseif lifeStep ==20 and TickFlag == 9 then
		x000618_TipAllHuman( sceneId, "C�n 1 gi�y n�a s� r�i kh�i ph� b�n")
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
	local check =LuaFnGetCopySceneData_Param( sceneId,x000618_g_bosscuoi) --check xem boss cu�i �� die ch�a?
	if check ==1 then  --boss �� die
		local 	MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 48, 53, 0, 3, 0, x000618_BaoRuong.ScriptID )
		MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 53, 53, 0, 3, 0, x000618_BaoRuong.ScriptID  )
		MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 43, 53, 0, 3, 0, x000618_BaoRuong.ScriptID  )
		MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 53, 48, 0, 3, 0, x000618_BaoRuong.ScriptID  )
		MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 53, 43, 0, 3, 0, x000618_BaoRuong.ScriptID  )
		MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 48, 43, 0, 3, 0, x000618_BaoRuong.ScriptID  )
		MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 45, 43, 0, 3, 0, x000618_BaoRuong.ScriptID  )
		MstId = x000618_CreateBOSS( sceneId, x000618_BaoRuong.mID, "", x000618_BaoRuong.bLevel, 43, 48, 0, 3, 0, x000618_BaoRuong.ScriptID  )
	end
	--t� �ng out ph� b�n sau 30s
	x000618_TipAllHuman( sceneId, "Ph� b�n k�t th�c! R�i kh�i ph� b�n trong 30 gi�y n�a!")
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
	
	--str = format("#cff99cc#{_INFOUSR%s} �� th�ng th�nh c�ng #Y [Long Tr� b� phong �n]", GetName(sceneId,selfId))
	--MonsterTalk(sceneId, selfId, "Ph�ng V߽ng Minh L�ng", str)
	--local steppp = LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep)
	local thong = LuaFnGetCopySceneData_Param( sceneId, x000618_g_dathong)
	
	thong = thong+1
	--steppp =steppp+1
	--LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep, steppp)
	LuaFnSetCopySceneData_Param( sceneId, x000618_g_dathong, thong)

	local show =LuaFnGetCopySceneData_Param( sceneId, x000618_g_dathong)
	local numTru = 9- LuaFnGetCopySceneData_Param( sceneId, x000618_g_sotrukill)
	local text ="#WCh�c m�ng t� �i c�a b�ng h�u v�a �� th�ng ���c 1 Long Tr�. S� Long Tr� �� ���c �� th�ng l� #Y"..show.."/3"
	local text2 ="#WS� Long Tr� c�n l�i l� #Y"..numTru.."/9"
	x000618_TipAllHuman( sceneId,text)
	--x000618_TipAllHuman( sceneId,text2)
	CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Ph�ng Minh V߽ng L�ng]: #Y"..text) --x200060_Duibai( sceneId, NpcName, sceneName, szStr )
	--CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Ph�ng Minh V߽ng L�ng]: #Y"..text2) --x200060_Duibai( sceneId, NpcName, sceneName, szStr )
	
	if show == 3 then --�� th�ng xong 3 long tr�
		x000618_DeleteBOSS( sceneId, x000618_g_BOSSList_longvan_monster[iniLevel-7].mID1)
		x000618_DeleteBOSS( sceneId, x000618_g_BOSSList_longvan_NPC[iniLevel-7].mID1)
		local MstId =x000618_CreateBOSS( sceneId, x000618_g_BOSSList_thulanggiam[iniLevel-7].mID1, "", x000618_g_BOSSList_thulanggiam[iniLevel-7].bLevel, 48, 48, 0, 27, 0, 623 )
		local text="#WS� tr� �� th�ng �� �� s� l��ng c�n thi�t. Boss #YTh� L�ng Gi�m#G(48,48)#W �� xu�t hi�n. Mau ti�u di�t h�n!!!!!"
		x000618_TipAllHuman( sceneId,text)
		CallScriptFunction((200060), "Duibai",sceneId, "Th� L�ng Gi�m", "", "C�c ng߽i l� ai? D�m c� gan x�ng v�o ��y c߾p m�! Ta s� cho c�c ng߽i bi�t s� l�i h�i c�a ta!")
		CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Ph�ng Minh V߽ng L�ng]: #Y"..text)
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
		local text="еi ng� c�a b�ng h�u v�a ��nh th�c [V߽ng L�ng T�p D�ch] v� [V߽ng L�ng Ti�u T�t] canh gi� Long Tr�. H�y �i ti�u di�t h�t b�n ch�ng!"
		local text2="L�u �: V߽ng L�ng T�p D�ch r�t kh�e m�nh, n�n h�y gi� t�nh m�ng. 1 ph�t sau khi xu�t hi�n, ch�ng s� t� �ng r�t lui!!!"
		x000618_TipAllHuman( sceneId,text)
		x000618_TipAllHuman( sceneId,text2)
		CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Ph�ng Minh V߽ng L�ng]: #Y"..text)
		CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Ph�ng Minh V߽ng L�ng]: #Y"..text2)
		--str = format("#cff99cc#{_INFOUSR%s} trong khi c� g�ng �� th�ng #Y [Long Tr� b� phong �n] #cff99cc �� v� t�nh ��nh th�c #Y[V߽ng L�ng Ti�u T�t]", GetName(sceneId,selfId))
		--MonsterTalk(sceneId, selfId, "Ph�ng V߽ng Minh L�ng", str)
		LuaFnSetCopySceneData_Param( sceneId, 7, 0 )	--set Flag v� 0, �m l�n 60 th� delete boss t�p d�ch	
	elseif 	ran1 == 2 then

		--str = format("#cff99cc#{_INFOUSR%s} trong khi c� g�ng �� th�ng #Y [Long Tr� b� phong �n] #cff99cc �ng th�i l�m s�ng d�y #Y[V߽ng L�ng H�n T߾ng]", GetName(sceneId,selfId))
		--MonsterTalk(sceneId, selfId, "Ph�ng V߽ng Minh L�ng", str)
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
		local text="еi ng� c�a b�ng h�u v�a ��nh th�c [V߽ng L�ng H�n T߾ng] v� [V߽ng L�ng Ti�u T�t] canh gi� Long Tr�. H�y �i ti�u di�t h�t b�n ch�ng!"
		x000618_TipAllHuman( sceneId,text)
		CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Ph�ng Minh V߽ng L�ng]: #Y"..text)

	elseif ran1==3 then
		--str = format("#cff99cc#{_INFOUSR%s} trong khi c� g�ng �� th�ng #Y [Long Tr� b� phong �n] #cff99cc �� v� t�nh ��nh th�c #Y[�c L�nh Binh D�ng]", GetName(sceneId,selfId))
		--MonsterTalk(sceneId, selfId, "Ph�ng V߽ng Minh L�ng", str)
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
		local text="еi ng� c�a b�ng h�u v�a ��nh th�c [�c Linh Binh D�ng] v� [Trung Th�nh Binh D�ng] canh gi� Long Tr�. H�y �i ti�u di�t h�t b�n ch�ng!"
		local text2="L�u �: tr�nh ��ng � v�i [Trung Th�nh Binh D�ng]. Qu�i v�t n�y khi ch�t c� th� g�i ra nhi�u [�c Linh Binh D�ng]"
		x000618_TipAllHuman( sceneId,text)
		x000618_TipAllHuman( sceneId,text2)
		CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Ph�ng Minh V߽ng L�ng]: #Y"..text)
		CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Ph�ng Minh V߽ng L�ng]: #Y"..text2)

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
	local check1 = x000618_CheckBOSS(sceneId, "V߽ng L�ng Ti�u T�t")
	local check2 = x000618_CheckBOSS(sceneId, "V߽ng L�ng H�n T߾ng")
	local check3 = x000618_CheckBOSS(sceneId, "�c Linh Binh D�ng")

	if check1 == 0 and check2 == 0 and check3==0 then
		x000618_DeleteBossName(sceneId, "V߽ng L�ng T�p D�ch")
		x000618_DeleteBossName(sceneId, "Trung Th�nh Binh D�ng")
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
