--Ph� b�n L�i ��i sinh t�
--Author: vanhong@2gvn
--Date:31/1/2012

x000583_g_ScriptId = 000583

x000583_g_CopySceneType = FUBEN_HUKHONG

x000583_g_TickTime		= 1
x000583_g_NoUserTime	= 60
x000583_g_Fuben_X			= 26
x000583_g_Fuben_Z			= 55
x000583_g_FuBenTime		= 25*60
x000583_g_Times			= 5		-- max 99

x000583_g_Item1 	=	38000528
x000583_g_Item2	=	30505078
x000583_g_Item3 	=	38000529
x000583_g_MaxCardUse = 50*10	-- max = 999
x000583_g_ScriptIdBoss = 584
g_DanrenFB_List_25_Boss={
[1] ={bossId = 16303, npcId=16332,	name = "H� ��o Th�n Th�-Huy�n",			point = 10, skill1 =1618 , skill2 = 1619,chat1 = "#{DRFB_130111_101}", chat2 = "#{DRFB_130111_102}"},
[2] ={bossId = 16304, npcId=16333,	name = "B�ng Y�u-Huy�n", 				point = 10, skill1 =1620 , skill2 = 1621,chat1 = "#{DRFB_130111_104}", chat2 = "#{DRFB_130111_105}"},
[3] ={bossId = 16305, npcId=16334,	name = "H�n Giang Long-Huy�n",			point = 10, skill1 =1002 , skill2 = 1004,chat1 = "#{DRFB_130111_106}", chat2 = "#{DRFB_130111_107}"},
[4] ={bossId = 16306, npcId=16335,	name = "Vi�n C� K� H�n-Huy�n", 			point = 10, skill1 =1622 , skill2 = 1623,chat1 = "#{DRFB_130111_111}", chat2 = "#{DRFB_130111_112}"},
[5] ={bossId = 16307, npcId=16336,	name = "Ph�n N� C�t Vinh-Huy�n", 			point = 10, skill1 =1624 , skill2 = 1625,chat1 = "#{DRFB_130111_114}", chat2 = "#{DRFB_130111_115}"},

[6] ={bossId = 16308, npcId=16337,	name = "T�n Ho�ng Ph�ch-Huy�n", 			point = 12, skill1 =1626 , skill2 = 1627,chat1 = "#{DRFB_130111_118}", chat2 = "#{DRFB_130111_120}"},
[7] ={bossId = 16309, npcId=16338,	name = "Ъ H�u-Huy�n", 				point = 12, skill1 =1628 , skill2 = 1629,chat1 = "#{DRFB_130111_122}", chat2 = "#{DRFB_130111_124}"},
[8] ={bossId = 16310, npcId=16339,	name = "B�n S�n ��o Nh�n-Huy�n", 		point = 12, skill1 =1630 , skill2 = 1631,chat1 = "#{DRFB_130111_125}", chat2 = "#{DRFB_130111_126}"},
[9] ={bossId = 16311, npcId=16340,	name = "K�nh H� Th�y Ph� Хu L�nh-Huy�n",	point = 12, skill1 =1632 , skill2 = 1633,chat1 = "#{DRFB_130111_129}", chat2 = "#{DRFB_130111_130}"},
[10]={bossId = 16312, npcId=16341,	name = "H�a Di�m Y�u Ma-Huy�n", 		point = 12, skill1 =1634 , skill2 = 1635,chat1 = "#{DRFB_130111_132}", chat2 = "#{DRFB_130111_133}"},

[11]={bossId = 16313, npcId=16342,	name = "C�u L� Хu L�nh-Huy�n", 			point = 14, skill1 =1636 , skill2 = 1637,chat1 = "#{DRFB_130111_137}", chat2 = "#{DRFB_130111_139}"},
[12]={bossId = 16314, npcId=16343,	name = "So�i (T�ng)-Huy�n", 			point = 14, skill1 =1638 , skill2 = 1639,chat1 = "#{DRFB_130111_141}", chat2 = "#{DRFB_130111_142}"},
[13]={bossId = 16315, npcId=16344,	name = "T߾ng (Li�u)-Huy�n", 			point = 14, skill1 =1640 , skill2 = 1641,chat1 = "#{DRFB_130111_143}", chat2 = "#{DRFB_130111_146}"},
[14]={bossId = 16316, npcId=16345,	name = "C�u L� T�c Tr߷ng-Huy�n", 		point = 14, skill1 =1642 , skill2 = 1643,chat1 = "#{DRFB_130111_147}", chat2 = "#{DRFB_130111_148}"},
[15]={bossId = 16317, npcId=16346,	name = "Th� L�ng Giam-Huy�n", 			point = 14, skill1 =1644 , skill2 = 1645,chat1 = "#{DRFB_130111_151}", chat2 = "#{DRFB_130111_153}"},

[16]={bossId = 16318, npcId=16347,	name = "Ti�u D�t Phong-Huy�n", 			point = 16, skill1 =1646 , skill2 = 1647,chat1 = "#{DRFB_130111_154}", chat2 = "#{DRFB_130111_155}"},
[17]={bossId = 16319, npcId=16348,	name = "Ti�u Nh� Qu�n-Huy�n", 			point = 16, skill1 =1648 , skill2 = 1649,chat1 = "#{DRFB_130111_160}", chat2 = "#{DRFB_130111_161}"},
[18]={bossId = 16320, npcId=16349,	name = "Ti�u Nh� �y-Huy�n", 			point = 16, skill1 =1650 , skill2 = 1652,chat1 = "#{DRFB_130111_163}", chat2 = "#{DRFB_130111_164}"},
[19]={bossId = 16321, npcId=16350,	name = "Da Lu�t Di�m-Huy�n", 			point = 16, skill1 =1652 , skill2 = 1653,chat1 = "#{DRFB_130111_167}", chat2 = "#{DRFB_130111_170}"},
[20]={bossId = 16322, npcId=16351,	name = "Da Lu�t Li�n Th�nh-Huy�n", 		point = 16, skill1 =1654 , skill2 = 1655,chat1 = "#{DRFB_130111_171}", chat2 = "#{DRFB_130111_173}"},

[21]={bossId = 16323, npcId=16352,	name = "Gi� Di�p T�n Gi�-Huy�n", 			point = 18, skill1 =1656 , skill2 = 1657,chat1 = "#{DRFB_130111_181}", chat2 = "#{DRFB_130111_182}"},
[22]={bossId = 16324, npcId=16353,	name = "Kh�n Na La V߽ng-Huy�n", 		point = 18, skill1 =1658 , skill2 = 1659,chat1 = "#{DRFB_130111_185}", chat2 = "#{DRFB_130111_186}"},
[23]={bossId = 16325, npcId=16354,	name = "Gi� L�u La V߽ng-Huy�n", 		point = 18, skill1 =1660 , skill2 = 1661,chat1 = "#{DRFB_130111_187}", chat2 = "#{DRFB_130111_189}"},
[24]={bossId = 16326, npcId=16355,	name = "A Tu La V߽ng-Huy�n", 			point = 18, skill1 =1662 , skill2 = 1663,chat1 = "#{DRFB_130111_190}", chat2 = "#{DRFB_130111_191}"},
[25]={bossId = 16327, npcId=16356,	name = "Ъ Th�ch Thi�n-Huy�n", 			point = 18, skill1 =1664 , skill2 = 1665,chat1 = "#{DRFB_130111_194}", chat2 = "#{DRFB_130111_195}"},
}
x000583_g_TickCount		= 2
x000583_g_Rate			= 6
x000583_g_myLevel			= 8
x000583_g_iniLevel			= 9
x000583_g_IDX_FuBenLifeStep	= 10
x000583_g_IDBOSS1			= 11
x000583_g_IDBOSS2			= 12
x000583_g_IDBOSS3			= 13
x000583_g_IDBOSS4			= 14
x000583_g_IDBOSS5			= 15

x000583_g_Flag			= 17

function x000583_OnDefaultEvent( sceneId, selfId, targetId )
		local lv_us = GetMissionData( sceneId, selfId, MD_HUKHONG_LV_USE)	--ddddd--xx-yyy
		local lastday = floor(lv_us/100000)
		local lv = floor(lv_us/1000)-lastday*100
		local us = mod(lv_us,1000)
		local xlv = floor(lv/5)+1
		if xlv >5 then xlv = 5 end
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, xlv )	-- So boss co the kc  = x5, max = 5
			UICommand_AddInt( sceneId, 1 )	
			UICommand_AddInt( sceneId, floor(x000583_g_MaxCardUse/10)) 	--So thiep dung trong ngay  = x10	maaxx = 50
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, lv )	--So bos da khieu chien	max = 25
			UICommand_AddInt( sceneId, 1000 )	-- Diem tam dac se nhan duoc khi kill 1 bos
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20130225 )


--	BeginUICommand(sceneId)
--	EndUICommand(sceneId)
--	DispatchUICommand(sceneId,selfId, 1000)

--	

end

function x000583_BeginChallenge( sceneId, selfId, xrate, boss1,boss2,boss3,boss4,boss5)
	--x000583_Tips(sceneId,selfId)
	--local targetId = floor(rate/100)
	local itemneed = mod(xrate,100)*10
	local rate = mod(xrate,100)
	--x000583_Tips(sceneId,selfId,""..rate)

	local ret, msg = x000583_CheckCanEnter( sceneId, selfId, itemneed )

	if 1 ~= ret then
		BeginEvent(sceneId)
			AddText(sceneId,msg)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	x000583_MakeCopyScene( sceneId, selfId, rate, boss1, boss2, boss3, boss4, boss5 )
	--x000583_Tips(sceneId,selfId,""..rate)
end

function x000583_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x000583_g_ScriptId, "#{DRFB_130111_07}", 10, 1 )
end


function x000583_CheckCanEnter( sceneId, selfId, itemneed )
	local num1 = LuaFnGetAvailableItemCount(sceneId, selfId, x000583_g_Item1 )
	local num2 = LuaFnGetAvailableItemCount(sceneId, selfId, x000583_g_Item2 )
	local lv_us = GetMissionData( sceneId, selfId, MD_HUKHONG_LV_USE)	--ddddd--xx-yyy
	local lastday = floor(lv_us/100000)
	local lv = floor(lv_us/1000)-lastday*100
	local us = mod(lv_us,1000)
	local CurDayTime = GetDayTime()
	if CurDayTime ~= lastday then
		us = 0
	end
	if itemneed > 50 then
		msg = "Hi�n t�i h� th�ng ch� h� tr� t� l� cao nh�t x5."
		return 0, msg
	end
	if us >= x000583_g_MaxCardUse then
		msg = "Ng�y h�m nay c�c h� �� d�ng �� "..x000583_g_MaxCardUse.." Thi�p Ng� H�nh Ph�p v� Thi�n Th� T�n Di�p."
		return 0, msg
	end
	if (us+itemneed) > x000583_g_MaxCardUse then
		msg = "H�m nay c�c h� �� d�ng "..us.." Thi�p Ng� H�nh Ph�p v� Thi�n Th� T�n Di�p. Kh�ng th� d�ng th�m "..itemneed.." c�i � khi�u chi�n."
		return 0, msg
	end
	if (num1+num2) < itemneed then
		msg = "H�y ��m b�o c� �t nh�t "..itemneed.." Thi�p Ng� H�nh Ph�p v� Thi�n Th� T�n Di�p ch�a kh�a."
		return 0, msg
	end
	if LuaFnHasTeam(sceneId, selfId) == 1 then
		msg = "#{DRFB_130111_61}"
		return 0, msg
	end
	if GetLevel( sceneId, selfId ) < 75 then
		msg = "#{DRFB_130111_38}"
		return 0, msg
	end


	local lastTime = GetMissionData( sceneId, selfId, MD_HUKHONG_LASTTIME )		--c-ddddd-xx
	local Card = floor( lastTime / 10000000 )
	local lastDayTime = floor( lastTime / 100 )-Card*100000
	local lastDayCount = mod( lastTime, 100 )

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	if lastDayCount >= x000583_g_Times then
		msg = "Ng�y h�m nay c�c h� �� �i �� "..x000583_g_Times.." l��t."
		return 0, msg
	end
	return 1

end

function x000583_MakeCopyScene( sceneId, selfId, rate, boss1,boss2, boss3, boss4, boss5 )
	local mylevel = GetLevel( sceneId, selfId )
    	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end
	local x = 0
	local z = 0
	x,z = LuaFnGetWorldPos(sceneId,selfId)
	local leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "zhoutian.nav")
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid)
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x000583_g_NoUserTime*1000)
	LuaFnSetCopySceneData_Timer(sceneId, x000583_g_TickTime*1000)
	LuaFnSetCopySceneData_Param(sceneId, 0, x000583_g_CopySceneType)
	LuaFnSetCopySceneData_Param(sceneId, 1, x000583_g_ScriptId)
	LuaFnSetCopySceneData_Param(sceneId, x000583_g_TickCount, 0)
	LuaFnSetCopySceneData_Param(sceneId, 3, sceneId)
	LuaFnSetCopySceneData_Param(sceneId, 4, x)
	LuaFnSetCopySceneData_Param(sceneId, 5, z)
	LuaFnSetCopySceneData_Param(sceneId, x000583_g_Rate, rate)
	LuaFnSetCopySceneData_Param(sceneId, 7, 0)

	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end

	LuaFnSetCopySceneData_Param( sceneId, x000583_g_myLevel, mylevel )
	LuaFnSetCopySceneData_Param( sceneId, x000583_g_iniLevel, iniLevel/10 )
	LuaFnSetCopySceneData_Param( sceneId, x000583_g_IDX_FuBenLifeStep, 0 )

	LuaFnSetCopySceneData_Param( sceneId, x000583_g_IDBOSS1, boss1 )
	LuaFnSetCopySceneData_Param( sceneId, x000583_g_IDBOSS2, boss2 )
	LuaFnSetCopySceneData_Param( sceneId, x000583_g_IDBOSS3, boss3 )
	LuaFnSetCopySceneData_Param( sceneId, x000583_g_IDBOSS4, boss4 )
	LuaFnSetCopySceneData_Param( sceneId, x000583_g_IDBOSS5, boss5 )

	LuaFnSetSceneLoad_Area( sceneId, "zhoutian_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "zhoutian_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"�ang d�ch chuy�n v�o ph� b�n");
		else
			AddText(sceneId,"S� l��ng b�n sao v��t qu� gi�i h�n");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

end

function x000583_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId)
	local leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	local selfId = LuaFnGuid2ObjId(sceneId,leaderguid)

	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return
	end
	
	NewWorld( sceneId, selfId, destsceneId, x000583_g_Fuben_X, x000583_g_Fuben_Z) ;
end

function x000583_OnPlayerEnter( sceneId, selfId )

	SetPlayerDefaultReliveInfo( sceneId, selfId, "%100", "%100", "%100", sceneId, x000583_g_Fuben_X, x000583_g_Fuben_Z )

	local lastTime = GetMissionData( sceneId, selfId, MD_HUKHONG_LASTTIME )		--c-ddddd-xx
	local Card = floor( lastTime / 10000000 )
	local lastDayTime = floor( lastTime / 100 )-Card*100000
	local lastDayCount = mod( lastTime, 100 )

	local lv_us = GetMissionData( sceneId, selfId, MD_HUKHONG_LV_USE)	--ddddd--xx-yyy
	local lastday = floor(lv_us/100000)
	local lv = floor(lv_us/1000)-lastday*100
	local us = mod(lv_us,1000)
	local CurDayTime = GetDayTime()

	if CurDayTime ~= lastday then
		lastday = CurDayTime
		us = 0
	end

	if us >= x000583_g_MaxCardUse then
		NewWorld( sceneId, selfId, 2, 161, 171 )
		x000583_Tips(sceneId,selfId,"Ph�t hi�n ra l�i ph� b�n 1")
		return
	end

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
		Card = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = Card*10000000+lastDayTime * 100 + lastDayCount
	SetMissionData( sceneId, selfId, MD_HUKHONG_LASTTIME, lastTime )
	local rate = LuaFnGetCopySceneData_Param( sceneId, x000583_g_Rate )

	if rate > 0 then
		local num1 = LuaFnGetAvailableItemCount(sceneId, selfId, x000583_g_Item1 )
		local num2 = LuaFnGetAvailableItemCount(sceneId, selfId, x000583_g_Item2 )
		local itemneed = rate*10
		if (num1+num2) < itemneed then
			NewWorld( sceneId, selfId, 2, 161, 171 )
			x000583_Tips(sceneId,selfId,"Ph�t hi�n ra l�i ph� b�n 2")
			return
		end
		if num1 >= itemneed then
			LuaFnDelAvailableItem(sceneId,selfId,x000583_g_Item1,itemneed)
		else
			LuaFnDelAvailableItem(sceneId,selfId,x000583_g_Item1,num1)
			LuaFnDelAvailableItem(sceneId,selfId,x000583_g_Item2,itemneed-num1)
		end
		SetMissionData( sceneId, selfId, MD_HUKHONG_LV_USE, lastday*100000+lv*1000+us+itemneed )
		x000583_Tips(sceneId,selfId,"C�c h� �� d�ng "..itemneed.." Thi�p cho l�n khi�u chi�n n�y. Ng�y h�m nay c�c h� �� s� d�ng "..(us+itemneed).." Thi�p Ng� H�nh.")
	else
			NewWorld( sceneId, selfId, 2, 161, 171 )
			x000583_Tips(sceneId,selfId,"Ph�t hi�n ra l�i ph� b�n 3")
			return
	end
end
function x000583_OnCopySceneTimer( sceneId, nowTime )
	local lifeStep = LuaFnGetCopySceneData_Param( sceneId, x000583_g_IDX_FuBenLifeStep )
	local rate = LuaFnGetCopySceneData_Param( sceneId, x000583_g_Rate )
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, x000583_g_TickCount )
	local TickFlag = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local BossId1 = LuaFnGetCopySceneData_Param( sceneId, x000583_g_IDBOSS1 )
	local BossId2 = LuaFnGetCopySceneData_Param( sceneId, x000583_g_IDBOSS2 )
	local BossId3 = LuaFnGetCopySceneData_Param( sceneId, x000583_g_IDBOSS3 )
	local BossId4 = LuaFnGetCopySceneData_Param( sceneId, x000583_g_IDBOSS4 )
	local BossId5 = LuaFnGetCopySceneData_Param( sceneId, x000583_g_IDBOSS5 )


	TickCount = TickCount + 1
	TickFlag = TickFlag + 1
	LuaFnSetCopySceneData_Param( sceneId, x000583_g_TickCount, TickCount )
	LuaFnSetCopySceneData_Param( sceneId, 7, TickFlag )


	if lifeStep == 0 then
		x000583_CreateNPC(sceneId,BossId1,BossId2,BossId3,BossId4,BossId5)
		x000583_TipAllHuman( sceneId, "#H�� v�o H� Kh�ng Huy�n C�nh khi�u chi�n C�nh, 15s sau khi�u chi�n �i th�: "..g_DanrenFB_List_25_Boss[BossId1].name.." s�p xu�t chi�n, h�y chu�n b�" )
		x000583_TipAllHuman( sceneId, "#HH� Kh�ng Huy�n C�nh khi�u chi�n gi�i h�n trong 25 ph�t, h�y ho�n th�nh khi�u chi�n tr߾c th�i gian n�y!" )
		LuaFnSetCopySceneData_Param( sceneId, x000583_g_IDX_FuBenLifeStep, 1 )
	end

	if TickCount == 10 then
		x000583_TipAllHuman( sceneId, "C�n 5 gi�y n�a s� b�t �u chi�n �u")
		x000583_TipAllHuman( sceneId, "#HPh� b�n hi�n t�i ph�n th߷ng l� x "..rate..", ti�u di�t �i th� cu�i c�ng c� th� nh�n ���c ph�n th߷ng g�p "..rate.." l�n")
	elseif TickCount == 15 then
		x000583_CreateBossStart(sceneId, BossId1, 48, 48)
		LuaFnSetCopySceneData_Param( sceneId, x000583_g_IDX_FuBenLifeStep, 2 )
	elseif TickCount == 5*60 or TickCount == 10*60 or TickCount == 15*60 or TickCount == 20*60 or TickCount == 24*60 then
		x000583_TipAllHuman( sceneId, "#HH� Kh�ng Huy�n C�nh s� ��ng sau "..floor((x000583_g_FuBenTime-TickCount)/60).." ph�t, h�y nhanh ch�ng khi�u chi�n")
	elseif TickCount == x000583_g_FuBenTime then
		x000583_TipAllHuman( sceneId, "#HH� Kh�ng Huy�n C�nh khi�u chi�n th�t b�i, r�i kh�i ph� b�n...")
		LuaFnSetCopySceneData_Param( sceneId, x000583_g_IDX_FuBenLifeStep, 11 )
		LuaFnSetCopySceneData_Param( sceneId, 7, 0 )
	end
	if lifeStep == 3 and TickFlag == 10 then
		x000583_CreateBossStart(sceneId, BossId2, 47, 48)
		LuaFnSetCopySceneData_Param( sceneId, x000583_g_IDX_FuBenLifeStep, 4 )
	elseif lifeStep == 5  and TickFlag == 10 then
		x000583_CreateBossStart(sceneId, BossId3, 47, 48)
		LuaFnSetCopySceneData_Param( sceneId, x000583_g_IDX_FuBenLifeStep, 6 )
	elseif lifeStep == 7  and TickFlag == 10 then
		x000583_CreateBossStart(sceneId, BossId4, 47, 48)
		LuaFnSetCopySceneData_Param( sceneId, x000583_g_IDX_FuBenLifeStep, 8 )
	elseif lifeStep == 9  and TickFlag == 10 then
		x000583_CreateBossStart(sceneId, BossId5, 47, 48)
		LuaFnSetCopySceneData_Param( sceneId, x000583_g_IDX_FuBenLifeStep, 10 )
	elseif lifeStep >= 11 and TickFlag == 5 then
		x000583_TipAllHuman( sceneId, "C�n 5 gi�y n�a s� r�i kh�i ph� b�n")
	elseif lifeStep >= 11 and TickFlag == 7 then
		x000583_TipAllHuman( sceneId, "C�n 3 gi�y n�a s� r�i kh�i ph� b�n")
	elseif lifeStep >= 11 and TickFlag == 8 then
		x000583_TipAllHuman( sceneId, "C�n 2 gi�y n�a s� r�i kh�i ph� b�n")
	elseif lifeStep >= 11 and TickFlag == 9 then
		x000583_TipAllHuman( sceneId, "C�n 1 gi�y n�a s� r�i kh�i ph� b�n")
	elseif lifeStep >= 11 and TickFlag == 10 then
		LuaFnSetCopySceneData_Param( sceneId, x000583_g_IDX_FuBenLifeStep, 12 )
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		local oldSceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )
		local oldX = LuaFnGetCopySceneData_Param( sceneId, 4 )
		local oldZ = LuaFnGetCopySceneData_Param( sceneId, 5 )
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
				NewWorld( sceneId, PlayerId, oldSceneId, oldX, oldZ )
			end
		end
		return
	end
end

function x000583_CreateNPC(sceneId,BossId1,BossId2,BossId3,BossId4,BossId5)
		local myLevel = LuaFnGetCopySceneData_Param( sceneId, x000583_g_myLevel )
		local MstId = x000583_CreateBOSS( sceneId, g_DanrenFB_List_25_Boss[BossId1].npcId, g_DanrenFB_List_25_Boss[BossId1].name, myLevel, 45, 80, 3, 3, 0, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )
		MstId = x000583_CreateBOSS( sceneId, g_DanrenFB_List_25_Boss[BossId2].npcId, g_DanrenFB_List_25_Boss[BossId2].name, myLevel, 69, 58, 4, 3, 0, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )
		MstId = x000583_CreateBOSS( sceneId, g_DanrenFB_List_25_Boss[BossId3].npcId, g_DanrenFB_List_25_Boss[BossId3].name, myLevel, 83, 27, 11, 3, 0, -1)
		SetUnitReputationID( sceneId, MstId, MstId, 0 )
		MstId = x000583_CreateBOSS( sceneId, g_DanrenFB_List_25_Boss[BossId4].npcId, g_DanrenFB_List_25_Boss[BossId4].name, myLevel, 42, 26, 1, 3, 0, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )
		MstId = x000583_CreateBOSS( sceneId, g_DanrenFB_List_25_Boss[BossId5].npcId, g_DanrenFB_List_25_Boss[BossId5].name, myLevel, 29, 41, 7, 3, 0, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )
end

function x000583_CreateBossStart(sceneId, nBoss, pX, pZ)
	--local iniLevel = LuaFnGetCopySceneData_Param( sceneId, x000583_g_iniLevel ) - 6
	local myLevel = LuaFnGetCopySceneData_Param( sceneId, x000583_g_myLevel )
	local objID = x442006_CheckBOSS(sceneId, g_DanrenFB_List_25_Boss[nBoss].npcId)
	if  objID < 0 then
		x000583_TipAllHuman( sceneId, "L�i ph� b�n." )
		return
	end
		
	x000583_DeleteBOSS( sceneId, g_DanrenFB_List_25_Boss[nBoss].npcId )
	local msID = x000583_CreateBOSS(sceneId, g_DanrenFB_List_25_Boss[nBoss].bossId, g_DanrenFB_List_25_Boss[nBoss].name, myLevel, pX, pZ, 6, 27, 0, x000583_g_ScriptIdBoss)
	x000583_TipAllHuman( sceneId, ""..g_DanrenFB_List_25_Boss[nBoss].name.." �� xu�t chi�n! H�y c�n th�n" )
end
function x000583_CreateBOSS(sceneId, bossId, bossName, bossLv, pX, pZ, drId, baseAI, AIscript, scriptId)
	local mstrId = LuaFnCreateMonster(sceneId, bossId, pX, pZ, baseAI, AIscript, scriptId)
	SetLevel(sceneId, mstrId, bossLv)
	SetObjDir( sceneId, mstrId, drId )
	SetCharacterName(sceneId, mstrId, bossName)
	SetMonsterFightWithNpcFlag( sceneId, mstrId, 0 )
	--SetUnitCampID(sceneId, mstrId, mstrId, 89)
	if scriptId ~= -1 then
		LuaFnSendSpecificImpactToUnit(sceneId, mstrId, mstrId, mstrId, 152, 0)
	end
	return mstrId
end
function x442006_CheckBOSS(sceneId, bossId)
	local nNpcId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)		
		if GetMonsterDataID( sceneId, nMonsterId ) == bossId  then
			nNpcId = nMonsterId
		end
	end
	return nNpcId
end
function x000583_DeleteBOSS( sceneId, bossId )

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if bossId == GetMonsterDataID( sceneId, MonsterId ) then
			--LuaFnDeleteMonster( sceneId, MonsterId )
			--LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, 152, 0)
			SetCharacterDieTime( sceneId, MonsterId, 1000 )
		end
	end

end
function x000583_NextStep(sceneId, nstep)
	LuaFnSetCopySceneData_Param( sceneId, x000583_g_IDX_FuBenLifeStep, nstep )
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )
end

function x000583_CheckStep(sceneId)
	local lifeStep = LuaFnGetCopySceneData_Param( sceneId, x000583_g_IDX_FuBenLifeStep )
	return lifeStep
end
function x000583_Tips(sceneId,selfId,tips)
		BeginEvent(sceneId)
			AddText(sceneId,tips)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
end

function x000583_OnHumanDie( sceneId, selfId, killerId )
	
end
function x000583_TipAllHuman( sceneId, Str )

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