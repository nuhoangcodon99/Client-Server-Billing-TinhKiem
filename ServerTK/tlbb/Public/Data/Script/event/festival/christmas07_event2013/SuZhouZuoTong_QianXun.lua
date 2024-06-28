--¥¥Ω®»À[ QUFEI 2007-11-29 10:10 UPDATE BugID 27819 ]
--«ß—∞»ŒŒÒ ¬º˛Ω≈±æ
--√ø÷÷πÿœµ»ŒŒÒ√øÃÏ÷ªƒ‹◊ˆ“ª¥Œ,√ø¥Œ20ª∑

--MisDescBegin
--Ω≈±æ∫≈
x229024_g_ScriptId	= 229024

--Ω” ‹»ŒŒÒNPC Ù–‘
x229024_g_Position_X=129.2676
x229024_g_Position_Z=213.0914
x229024_g_SceneID=1
x229024_g_AccomplishNPC_Name="T‰ –∞ng "

--»ŒŒÒ∫≈
x229024_g_MissionId			= 421
--œ¬“ª∏ˆ»ŒŒÒµƒID
x229024_g_MissionIdNext	= 421
--»ŒŒÒƒø±Ínpc
x229024_g_Name			= "T‰ –∞ng "
--»ŒŒÒπÈ¿‡
x229024_g_MissionKind			= 12
--»ŒŒÒµ»º∂
x229024_g_MissionLevel		= 10
-- «∑Ò «æ´”¢»ŒŒÒ
x229024_g_IfMissionElite	= 0
--»ŒŒÒ «∑Ò“—æ≠ÕÍ≥…
x229024_g_IsMissionOkFail	= 0		--±‰¡øµƒµ⁄0Œª

--»ŒŒÒŒƒ±æ√Ë ˆ
x229024_g_MissionName			= "ThiÍn T•m "
--»ŒŒÒ√Ë ˆ
x229024_g_MissionInfo			= "#{QX_20071129_026}"
--»ŒŒÒƒø±Í
x229024_g_MissionTarget		= "#{QX_20071129_025}"
--Œ¥ÕÍ≥…»ŒŒÒµƒnpc∂‘ª∞
x229024_g_ContinueInfo		= "#{QIANXUN_INFO_19}"
--ÕÍ≥…»ŒŒÒnpcÀµµƒª∞
x229024_g_MissionComplete	= "#{QX_20071129_039}"
--√øÃÏ√ø÷÷πÿœµµƒª∑ ˝…œœﬁ
x229024_g_MaxRound	= 10
--øÿ÷∆Ω≈±æ
x229024_g_ControlScript		= 001066
--MisDescEnd

--»ŒŒÒ «∑ÒÕÍ≥…
x229024_g_Mission_IsComplete = 0		--µ⁄0Œª≤Œ ˝
--»ŒŒÒª∑ ˝
x229024_g_Mission_RoundNum	 = 5		--µ⁄5Œª≤Œ ˝
--»ŒŒÒŒÔ∆∑–Ú∫≈
x229024_g_Mission_ItemIdx		 = 6		--µ⁄6Œª≤Œ ˝

x229024_g_QianXunMission_IDX	= 120	--«ß—∞»ŒŒÒÀ˜“˝
x229024_g_MissionInfo_IDX			= 121	--»ŒŒÒÀµ√˜À˜“˝
x229024_g_FuQiMission_IDX		 	= 131	--∑Ú∆ﬁπÿœµ»ŒŒÒÀ˜“˝
x229024_g_JieBaiMission_IDX		= 132	--Ω·∞›πÿœµ»ŒŒÒÀ˜“˝
x229024_g_ShiTuMission_IDX		= 133	-- ¶ÕΩπÿœµ»ŒŒÒÀ˜“˝

--À˘”µ”–µƒ ¬º˛ID¡–±Ì
x229024_g_EventList	= {}

x229024_g_Impact_Accept_Mission 	= 47	-- Ω” ‹»ŒŒÒ ±µƒÃÿ–ßID
x229024_g_PlayerSlow_LVL					= 10	-- Ω” ‹»ŒŒÒµƒ◊ÓµÕµ»º∂
x229024_g_Activity_DayTime				=	5		-- ªÓ∂Øº§ªÓ ±º‰:√ø÷‹ŒÂ

x229024_g_ItemId = { {id=40004435,num=1},
										 {id=40004436,num=1},
										 {id=40004437,num=1},
										 {id=40004438,num=1} }

x229024_g_Impact_Complete_Mission = 43				-- »ŒŒÒÕÍ≥… ±µƒº™œÈ»Á“‚Ãÿ–ß

x229024_g_scenePosInfoList = { {sceneId=7,  scenename="Ki™m C·c", PosName="Ki™m MÙn –iÆp Thu˝", PosX=130, PosY=140,  PosR=10, Area=711 },
															 {sceneId=8,  scenename="–Ùn Ho‡ng", PosName="H‡n H‰i C•u Phßt", PosX=267, PosY=251,  PosR=10, Area=811 },
															 {sceneId=5,  scenename="KÌnh H∞", PosName="Ng˜c –·i L‚m Phong", PosX=35 , PosY=265,  PosR=10, Area=511 },
															 {sceneId=4,  scenename="Th·i H∞", PosName="V˚ T’ Ca –‡i", PosX=155, PosY=255,  PosR=10, Area=411 },
															 {sceneId=3,  scenename="Tung SΩn", PosName="Giang SΩn –a Ki´u", PosX=280, PosY=80,   PosR=10, Area=311 },
															 {sceneId=30, scenename="T‚y H∞", PosName="Nh§t V˜ng H± B‡o", PosX=170, PosY=230,  PosR=10, Area=3011},															 
															 {sceneId=31, scenename="Long Tuy´n", PosName="Phi Lﬂu TrÒc H’", PosX=270, PosY=280,  PosR=10, Area=3111},
															 {sceneId=25, scenename="ThﬂΩng SΩn", PosName="TÒ Thu÷ Lﬂu NiÍn", PosX=260, PosY=110,  PosR=10, Area=2512},															 
															 {sceneId=32, scenename="Vı Di", PosName="YÍn To‰ Nh∏ Ki´u", PosX=50 , PosY=180,  PosR=10, Area=3211},															 
															 {sceneId=0,  scenename="L’c DﬂΩng", PosName="Kim Th‡nh Thanh TrÏ", PosX=50,  PosY=220,  PosR=10, Area=11  } }
															             

-- Ω±¿¯µƒŒÔ∆∑
-- Ω⁄»’…Ò∑˚
x229024_g_BonusFuJie = 20310010

--  •µÆ√±
x229024_g_BonusItem = { {ItemID01=10410118, ItemID02=10410108},
											  {ItemID01=10410119, ItemID02=10410109},
											  {ItemID01=10410120, ItemID02=10410110},
											  {ItemID01=10410121, ItemID02=10410111},
											  {ItemID01=10410122, ItemID02=10410112},
											  {ItemID01=10410123, ItemID02=10410113},
											  {ItemID01=10410124, ItemID02=10410114},
											  {ItemID01=10410125, ItemID02=10410115},
											  {ItemID01=10410126, ItemID02=10410116},
											  {ItemID01=10410127, ItemID02=10410117} }
											  	
x229024_g_BonusEXP_List = { 0,0,0,0,0,0,0,0,0,17436,                                              
														18416,19369,20328,21326,22297,23274,24291,25280,26309,53543,          
														55908,58352,60811,63284,65707,68209,70727,73259,75739,126150,         
														130300,134474,138564,142784,147029,151297,155479,159795,164133,245746,
														252138,258454,264914,271409,277827,284391,290989,297509,304176,310878,
														317500,324270,331075,337914,344672,351580,358523,365383,372394,379440,
														386403,393517,400666,407731,414948,422200,429367,436688,444043,451433,
														458736,466195,473688,481093,488655,496251,503759,511424,519123,526733,
														534501,542303,550140,557887,565792,573732,581581,589590,597633,605584,
														613696,621842,629895,638110,646360,654515,662834,671187,679574,679574,
														679574,679574,679574,679574,679574,679574,679574,679574,679574,679574,
														679574,679574,679574,679574,679574,679574,679574,679574,679574,        }
                                           
--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
--µ„ª˜∏√»ŒŒÒ∫Û÷¥––¥ÀΩ≈±æ
function x229024_OnDefaultEvent( sceneId, selfId, targetId )

	--≈–∂œ∏√npc «∑Ò «∂‘”¶»ŒŒÒµƒnpc
	if LuaFnGetName( sceneId, targetId ) ~= x229024_g_Name then
		x229024_NotifyTip( sceneId, selfId, "Ti™p nhßn nhiÆm v¯ th§t b’i" )					
		return 0
	end
			
	local	key	= GetNumText()	
	if key == x229024_g_QianXunMission_IDX then
		BeginEvent(sceneId)
			AddText(sceneId,"#{QX_20071129_023}")
			AddNumText( sceneId, x229024_g_ScriptId, "Phu thÍ lÓnh nhßn nhiÆm v¯", 6, x229024_g_FuQiMission_IDX )		
			AddNumText( sceneId, x229024_g_ScriptId, "K™t b·i lÓnh nhßn nhiÆm v¯", 6, x229024_g_JieBaiMission_IDX )		
			AddNumText( sceneId, x229024_g_ScriptId, "Sﬂ ∞ lÓnh nhßn nhiÆm v¯", 6, x229024_g_ShiTuMission_IDX )		
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == x229024_g_MissionInfo_IDX then
		x229024_TalkInfo( sceneId, selfId, targetId, "#{QIANXUN_INFO_02}" )		
		return 0

	elseif key == x229024_g_FuQiMission_IDX or key == x229024_g_JieBaiMission_IDX or key == x229024_g_ShiTuMission_IDX then
		if key == x229024_g_FuQiMission_IDX then
			if x229024_CheckMission_FuQi( sceneId, selfId ) == 0 then
				return 0
			end
		elseif key == x229024_g_JieBaiMission_IDX then
			if x229024_CheckMission_JieBai( sceneId, selfId ) == 0 then
				return 0
			end
		elseif key == x229024_g_ShiTuMission_IDX then
			if x229024_CheckMission_ShiTu( sceneId, selfId ) == 0 then
				return 0
			end
		end
		  	
		-- »Áπ˚“—æ≠Ω”¡À»ŒŒÒ
		if IsHaveMission( sceneId, selfId, x229024_g_MissionId ) > 0 then
												
			--∑¢ÀÕ»ŒŒÒ–Ë«Ûµƒ–≈œ¢
			BeginEvent(sceneId)
				AddText(sceneId, x229024_g_MissionName)
				AddText(sceneId, x229024_g_ContinueInfo)			
			EndEvent( )
			
			local bDone = x229024_CheckSubmit( sceneId, selfId )				
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x229024_g_ScriptId, x229024_g_MissionId, bDone)
			
		else			
			-- »ŒŒÒ «∑Ò“—¬˙
			if IsMissionFull( sceneId, selfId ) == 1 then
				x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_23}" )
				return 0
			end
			
			SetMissionData( sceneId, selfId, MD_QIANXUN_SELECT_MISSIONTYPE, key )			-- …Ë÷√∂”≥§À˘—°µƒ»ŒŒÒ¿‡–Õ
					
			-- Ω¯»ÎΩ” ‹»ŒŒÒΩÁ√Ê			
			x229024_AcceptMission( sceneId, selfId, targetId )				
		end
	else
		x229024_NotifyTip( sceneId, selfId, "Nhßn nhiÆm v¯ th§t b’i" )					
		return 0
	end

end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x229024_OnEnumerate( sceneId, selfId, targetId )

	--≈–∂œ∏√npc «∑Ò «∂‘”¶»ŒŒÒµƒnpc
	if LuaFnGetName( sceneId, targetId ) ~= x229024_g_Name then
		return 0
	end

	AddText(sceneId,"#{QIANXUN_INFO_01}")
	if x229024_CheckHuoDongTime() == 1 then
		AddNumText( sceneId, x229024_g_ScriptId, "ThiÍn T•m", 6, x229024_g_QianXunMission_IDX )
	end
		
	AddNumText( sceneId, x229024_g_ScriptId, "LiÍn Quan ThiÍn T•m", 11, x229024_g_MissionInfo_IDX )

end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛£¨“≤π©◊”»ŒŒÒµ˜”√
--**********************************
function x229024_CheckAccept( sceneId, selfId, targetId )
	
	--ºÏ≤‚ÕÊº“ «∑Ò∑˚∫œΩ” ‹»ŒŒÒµƒÃıº˛
	--≈–∂œ∏√npc «∑Ò «∂‘”¶»ŒŒÒµƒnpc
	if LuaFnGetName( sceneId, targetId ) ~= x229024_g_Name then
		x229024_NotifyTip( sceneId, selfId, "Nhßn nhiÆm v¯ th§t b’i" )					
		return 0
	end
		
	--“—æ≠Ω”π˝‘Ú≤ª∑˚∫œÃıº˛
	if IsHaveMission( sceneId, selfId, x229024_g_MissionId ) > 0 then
		x229024_TalkInfo( sceneId, selfId, targetId, "#{QIANXUN_INFO_19}" )							
		return 0
	end
	
	return 1
end

--**********************************
--Ω” ‹£¨Ωˆπ©◊”»ŒŒÒµ˜”√…Ë÷√π´π≤≤Œ ˝
--**********************************
function x229024_OnAccept( sceneId, selfId, targetId, scriptId )
	
	--≈–∂œ∏√npc «∑Ò «∂‘”¶»ŒŒÒµƒnpc
 	if LuaFnGetName( sceneId, targetId ) ~= x229024_g_Name then
 		x229024_NotifyTip( sceneId, selfId, "Nhßn nhiÆm v¯ th§t b’i" )					
		return 0
	end

	if x229024_CheckAccept( sceneId, selfId, targetId )<=0 then
		return 0
	end

	local	nMisType = GetMissionData( sceneId, selfId, MD_QIANXUN_SELECT_MISSIONTYPE )	--ÕÊº“À˘—°µƒ»ŒŒÒ¿‡–Õ

	if nMisType == x229024_g_FuQiMission_IDX then
		if x229024_CheckMission_FuQi( sceneId, selfId ) == 0 then
			return 0
		end
	elseif nMisType == x229024_g_JieBaiMission_IDX then
		if x229024_CheckMission_JieBai( sceneId, selfId ) == 0 then
			return 0
		end
	elseif nMisType == x229024_g_ShiTuMission_IDX then
		if x229024_CheckMission_ShiTu( sceneId, selfId ) == 0 then
			return 0
		end
	else		
		x229024_NotifyTip( sceneId, selfId, "Nhßn nhiÆm v¯ th§t b’i" )		
		return 0
	end
	local itemidx = random(getn(x229024_g_ItemId))
	
	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < x229024_g_ItemId[itemidx].num then
		x229024_NotifyTip( sceneId, selfId, "#{QX_20071129_027}" )		
		return 0
	end
	
	local nYear	 = LuaFnGetThisYear()
	local nMonth = LuaFnGetThisMonth()
  local nDay   = LuaFnGetDayOfThisMonth()
  local curDayTime = nYear*10000+(nMonth+1)*100+nDay
		
	BeginAddItem(sceneId)
	AddItem(sceneId,x229024_g_ItemId[itemidx].id, x229024_g_ItemId[itemidx].num)
	local canAdd = EndAddItem(sceneId,selfId)						
	if canAdd > 0 then						
		--º”»Î»ŒŒÒµΩÕÊº“¡–±Ì
		local bAdd = AddMission( sceneId, selfId, x229024_g_MissionId, x229024_g_ScriptId, 0, 1, 0 )
		if bAdd >= 1 then				
			AddItemListToHuman(sceneId,selfId)
			
			--µ√µΩ»ŒŒÒµƒ–Ú¡–∫≈
			local	misIndex		= GetMissionIndexByID( sceneId, selfId, x229024_g_MissionId )
			
			--∏˘æ›–Ú¡–∫≈∞—»ŒŒÒ±‰¡øµƒµ⁄0Œª÷√0 (»ŒŒÒÕÍ≥…«Èøˆ)
			SetMissionByIndex( sceneId, selfId, misIndex, x229024_g_Mission_IsComplete, 0 )
			--∏˘æ›–Ú¡–∫≈∞—»ŒŒÒ±‰¡øµƒµ⁄1Œª÷√Œ™»ŒŒÒΩ≈±æ∫≈
			SetMissionByIndex( sceneId, selfId, misIndex, 2, scriptId )		
			SetMissionByIndex(sceneId, selfId, misIndex, x229024_g_Mission_RoundNum, 1)
			SetMissionByIndex(sceneId, selfId, misIndex, x229024_g_Mission_ItemIdx, itemidx)
			SetMissionData( sceneId, selfId, MD_QIANXUN_SELECT_MISSIONTYPE, nMisType )
						
			if nMisType == x229024_g_FuQiMission_IDX then
				SetMissionData( sceneId, selfId, MD_QIANXUN_FUQI_DAYTIME, curDayTime )
			elseif nMisType == x229024_g_JieBaiMission_IDX then
				SetMissionData( sceneId, selfId, MD_QIANXUN_JIEBAI_DAYTIME, curDayTime )
			elseif nMisType == x229024_g_ShiTuMission_IDX then
				SetMissionData( sceneId, selfId, MD_QIANXUN_SHITU_DAYTIME, curDayTime )
			end
			
			local ScintInfo = x229024_g_scenePosInfoList[1]
			CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, ScintInfo.sceneId, ScintInfo.PosX, ScintInfo.PosY, x229024_g_MissionName)
			
			BeginEvent(sceneId)
				AddText(sceneId,x229024_g_MissionName)
				AddText(sceneId,x229024_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,"#{QX_20071129_025}")
				local strText = format("ThiÍn T•m nhiÆm v¯ 1: H„y c‰m nhßn b¢ng t‚m linh ¨ truy tÏm d§u v™t ™n %s #{_INFOAIM%d,%d,%d,%s} ¨ ho‡n th‡nh nhiÆm v¯", ScintInfo.scenename, ScintInfo.PosX, ScintInfo.PosY, ScintInfo.sceneId, ScintInfo.scenename)						
				AddText(sceneId,strText)
				AddText(sceneId,"#e00f000L∂i khuyÍn #e000000 sÿ d¯ng #gfff0f0 ho’t thÿ hÊu kiÆn #g000000 nh§p v‡o Ù ’o c¯ nhiÆm v¯#gfff0f0 t•m lµ chi t‚m#g000000 s® tÏm ﬂ˛c v∏ trÌ c•n tÏm.")											
			EndEvent( )					
			DispatchEventList(sceneId, selfId, targetId)
			
			-- LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x229024_g_Impact_Accept_Mission, 0 )
		end
	end

	return 1

end

--**********************************
--∑≈∆˙£¨Ωˆπ©◊”»ŒŒÒµ˜”√
--**********************************
function x229024_OnAbandon( sceneId, selfId )
  
  --…æ≥˝ÕÊº“»ŒŒÒ¡–±Ì÷–∂‘”¶µƒ»ŒŒÒ
  local itemidx = 1
  if IsHaveMission( sceneId, selfId, x229024_g_MissionId ) > 0 then
  	local misIndex = GetMissionIndexByID(sceneId,selfId,x229024_g_MissionId)
 	  itemidx = GetMissionParam(sceneId,selfId,misIndex,x229024_g_Mission_ItemIdx) 	
 	end
	if HaveItem(sceneId, selfId, x229024_g_ItemId[itemidx].id) > 0 then
	  if LuaFnGetAvailableItemCount(sceneId, selfId, x229024_g_ItemId[itemidx].id) >= x229024_g_ItemId[itemidx].num then
	    DelItem( sceneId, selfId, x229024_g_ItemId[itemidx].id, LuaFnGetAvailableItemCount(sceneId, selfId, x229024_g_ItemId[itemidx].id) )
			if IsHaveMission( sceneId, selfId, x229024_g_MissionId ) > 0 then
	 			DelMission( sceneId, selfId, x229024_g_MissionId )
			else		
				return 0
			end
	  else
	  	x229024_NotifyTip( sceneId, selfId, "KhÙng cÛ vßt ph¶m ho£c „ b∏ kho·" )			
			return 0
	  end 
  else
 		if IsHaveMission( sceneId, selfId, x229024_g_MissionId ) > 0 then
	 		DelMission( sceneId, selfId, x229024_g_MissionId )
		else		
			return 0
		end	    
  end
  
end

--**********************************
--ºÃ–¯
--**********************************
function x229024_OnContinue( sceneId, selfId, targetId )
	
	--≈–∂œ∏√npc «∑Ò «∂‘”¶»ŒŒÒµƒnpc
	if LuaFnGetName( sceneId, targetId ) ~= x229024_g_Name then
		x229024_NotifyTip( sceneId, selfId, "Nhßn nhiÆm v¯ th§t b’i" )					
		return 0
	end
	
	--ºÏ≤‚µ»º∂
	if LuaFnGetLevel( sceneId, selfId ) < x229024_g_PlayerSlow_LVL then		
		x229024_NotifyTip( sceneId, selfId, "Nhßn nhiÆm v¯ th§t b’i" )					
		return 0
	end
	
	-- ºÏ≤È»ŒŒÒ «∑ÒÕÍ≥…
	if x229024_CheckSubmit( sceneId, selfId ) ~= 1 then			
		return 0
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x229024_g_MissionName)
		AddText( sceneId, x229024_g_MissionComplete )				
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x229024_g_ScriptId,x229024_g_MissionId)
	
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x229024_CheckSubmit( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x229024_g_MissionId ) <= 0 then				
		return 0
	end

	--‘⁄¥À≈–∂œÃ·ΩªÃıº˛ «∑Ò∑˚∫œ£¨≤¢∏¯”Ëœ‡”¶Ω±¿¯
	--µ√µΩ»ŒŒÒµƒ–Ú¡–∫≈
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229024_g_MissionId)	
	if GetMissionParam(sceneId, selfId, misIndex, 0) > 0 then	--≤Ïø¥»ŒŒÒ «∑ÒÕÍ≥…		
		return 1
	end
	
	return 0
	
end

--**********************************
--ºÏ≤‚∑Ú∆ﬁ»ŒŒÒ
--**********************************
function x229024_CheckMission_FuQi( sceneId, selfId )

	local nYear	 = LuaFnGetThisYear()
	local nMonth = LuaFnGetThisMonth()
  local nDay   = LuaFnGetDayOfThisMonth()
  local curDayTime = nYear*10000+(nMonth+1)*100+nDay
		
	local nMisDaytime = 0
	local	IsHaveMis = 0
	
	--»Áπ˚ÕÊº““—æ≠Ω”¡À»ŒŒÒ
	if IsHaveMission( sceneId, selfId, x229024_g_MissionId ) > 0 then
		local nMisType 	= GetMissionData( sceneId, selfId, MD_QIANXUN_SELECT_MISSIONTYPE )				-- ÕÊº“…Ì…œµƒ»ŒŒÒ¿‡–Õ
			
		if nMisType ~= x229024_g_FuQiMission_IDX then
			x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_18}" )
			return 0
		end
		
		IsHaveMis = 1
	else
		nMisDaytime = GetMissionData( sceneId, selfId, MD_QIANXUN_FUQI_DAYTIME )			-- ªÒµ√…œ¥ŒΩ” ‹∑Ú∆ﬁπÿœµ»ŒŒÒµƒ ±º‰
		
		if nMisDaytime == curDayTime then
			x229024_NotifyTip( sceneId, selfId, "#{QX_20071129_032}" )
			
			return 0
		end
		
		IsHaveMis = 0
	end
	
	if x229024_GeneralRule( sceneId, selfId ) == 0 then
		return 0
	end

	-- ◊È∂”÷– «∑Ò”–¡Ω∏ˆ(∫¨)“‘…œµƒ∂”‘±
	local NumMem = LuaFnGetTeamSize( sceneId, selfId )
  if NumMem < 2 then   	
   	if IsHaveMis == 1 then
    	x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_08}" )
    else
     	x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_07}" )						
    end
    return 0
	end 
		
	-- ◊È∂”÷–µƒ¡Ω∏ˆ»À±ÿ–Î∂º‘⁄∏ΩΩ¸
	local nNearTeamCount = GetNearTeamCount( sceneId, selfId )
  if GetNearTeamCount( sceneId, selfId ) < 2 then  	
   	x229024_NotifyTip( sceneId, selfId, "#{QX_20071129_034}" )						
    return 0
	end 
	
	-- «∑Ò”–∑Ú∆ﬁπÿœµ....
	local ObjID0 = selfId
	local ObjID1
	for i=0, nNearTeamCount-1 do
		ObjID1 = GetNearTeamMember( sceneId, selfId, i )
		if ObjID0 ~= ObjID1 then
			local	SelfGUID	= LuaFnObjId2Guid( sceneId, ObjID0 )
			local	SpouGUID	= LuaFnGetSpouseGUID( sceneId, ObjID1 )
		
			if LuaFnIsMarried( sceneId, ObjID0 ) ~= 0 and LuaFnIsMarried( sceneId, ObjID1 ) ~= 0 and SelfGUID == SpouGUID then			
		    return 1
			end
		end
	end
	
	x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_11}" )							
	return 0
	
end

--**********************************
--ºÏ≤‚Ω·∞›»ŒŒÒ
--**********************************
function x229024_CheckMission_JieBai( sceneId, selfId )

	local nYear	 = LuaFnGetThisYear()
	local nMonth = LuaFnGetThisMonth()
  local nDay   = LuaFnGetDayOfThisMonth()
  local curDayTime = nYear*10000+(nMonth+1)*100+nDay
  		
	local nMisDaytime = 0
	local	IsHaveMis = 0
	--»Áπ˚ÕÊº““—æ≠Ω”¡À»ŒŒÒ
	if IsHaveMission( sceneId, selfId, x229024_g_MissionId ) > 0 then	
		local nMisType 	= GetMissionData( sceneId, selfId, MD_QIANXUN_SELECT_MISSIONTYPE )				-- ÕÊº“…Ì…œµƒ»ŒŒÒ¿‡–Õ
			
		if nMisType ~= x229024_g_JieBaiMission_IDX then
			x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_18}" )
			return 0
		end
	
		IsHaveMis = 1
	else		
		nMisDaytime = GetMissionData( sceneId, selfId, MD_QIANXUN_JIEBAI_DAYTIME )		-- ªÒµ√…œ¥ŒΩ” ‹Ω·∞›πÿœµ»ŒŒÒµƒ ±º‰
		
		if nMisDaytime == curDayTime then
			x229024_NotifyTip( sceneId, selfId, "#{QX_20071129_033}" )
			
			return 0
		end
		
		IsHaveMis = 0
	end

	if x229024_GeneralRule( sceneId, selfId ) == 0 then
		return 0
	end

	-- ◊È∂”÷– «∑Ò”–¡Ω∏ˆ(∫¨)“‘…œµƒ∂”‘±
	local NumMem = LuaFnGetTeamSize( sceneId, selfId )
  if NumMem < 2 then
   	if IsHaveMis == 1 then
      x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_15}" )
    else
     x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_14}" )						
    end
    return 0
	end 
	
	-- ◊È∂”÷–µƒ∂”‘±±ÿ–Î∂º‘⁄∏ΩΩ¸		
	local nNearTeamCount = GetNearTeamCount( sceneId, selfId )
  if GetNearTeamCount( sceneId, selfId ) < 2 then
   	x229024_NotifyTip( sceneId, selfId, "#{QX_20071129_035}" )						
  	return 0
	end 
	
	-- «∑Ò”–Ω·∞›πÿœµ....	
	local firstPlayer = selfId
	local otherPlayer
	for i=0, nNearTeamCount-1 do
		otherPlayer = GetNearTeamMember( sceneId, selfId, i )
		if firstPlayer ~= otherPlayer then
			if LuaFnIsBrother(sceneId, firstPlayer, otherPlayer) == 1 then			
				return 1
			end
		end
	end

	x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_16}" )			
	return 0
	
end

--**********************************
--ºÏ≤‚ ¶ÕΩ»ŒŒÒ
--**********************************
function x229024_CheckMission_ShiTu( sceneId, selfId )
	
	local nYear	 = LuaFnGetThisYear()
	local nMonth = LuaFnGetThisMonth()
  local nDay   = LuaFnGetDayOfThisMonth()
  local curDayTime = nYear*10000+(nMonth+1)*100+nDay

	local nMisDaytime = 0
	local	IsHaveMis = 0
	--»Áπ˚ÕÊº““—æ≠Ω”¡À»ŒŒÒ
	if IsHaveMission( sceneId, selfId, x229024_g_MissionId ) > 0 then
		local nMisType 	= GetMissionData( sceneId, selfId, MD_QIANXUN_SELECT_MISSIONTYPE )				-- ÕÊº“…Ì…œµƒ»ŒŒÒ¿‡–Õ
			
		if nMisType ~= x229024_g_ShiTuMission_IDX then
			x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_18}" )
			return 0
		end
		
		IsHaveMis = 1
	else		
		nMisDaytime = GetMissionData( sceneId, selfId, MD_QIANXUN_SHITU_DAYTIME )			-- ªÒµ√…œ¥ŒΩ” ‹ ¶ÕΩπÿœµ»ŒŒÒµƒ ±º‰
		
		if nMisDaytime == curDayTime then
			x229024_NotifyTip( sceneId, selfId, "#{QX_20071129_039}" )
			
			return 0
		end
		
		IsHaveMis = 0
	end

	if x229024_GeneralRule( sceneId, selfId ) == 0 then
		return 0
	end

	-- ◊È∂”÷– «∑Ò”–¡Ω∏ˆ(∫¨)“‘…œµƒ∂”‘±
	local NumMem = LuaFnGetTeamSize( sceneId, selfId )
  if NumMem < 2 then
   	if IsHaveMis == 1 then
       x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_15}" )
    else
     	x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_14}" )						
    end
    return 0
	end 
	
	-- ◊È∂”÷–µƒ∂”‘±±ÿ–Î∂º‘⁄∏ΩΩ¸		
	local nNearTeamCount = GetNearTeamCount( sceneId, selfId )
  if GetNearTeamCount( sceneId, selfId ) < 2 then
   	x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_17}" )						
    return 0
	end 
	
	-- ∂”ŒÈ÷– «∑Ò”– ¶ÕΩπÿœµ....	
	local firstPlayer = selfId
	local otherPlayer
	for i=0, nNearTeamCount-1 do
		otherPlayer = GetNearTeamMember( sceneId, selfId, i )		
		if firstPlayer ~= otherPlayer then
			if LuaFnIsMaster(sceneId, otherPlayer, firstPlayer) == 1 then
				return 1
			end
			if LuaFnIsMaster(sceneId, firstPlayer, otherPlayer) == 1 then
				return 1
			end
		end
	end
	
	x229024_NotifyTip( sceneId, selfId, "#{QX_20071129_036}" )
	return 0
	
end

--**********************************
--Ã·Ωª£¨Ωˆπ©◊”»ŒŒÒµ˜”√
--**********************************
function x229024_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--≈–∂œ∏√npc «∑Ò «∂‘”¶»ŒŒÒµƒnpc
	if LuaFnGetName( sceneId, targetId ) ~= x229024_g_Name then
		x229024_NotifyTip( sceneId, selfId, "Nhßn nhiÆm v¯ th§t b’i" )					
		return 0
	end
	
	--ºÏ≤‚µ»º∂
	if LuaFnGetLevel( sceneId, selfId ) < x229024_g_PlayerSlow_LVL then		
		x229024_NotifyTip( sceneId, selfId, "Nhßn nhiÆm v¯ th§t b’i" )					
		return 0
	end
		
  -- ºÏ≤È»ŒŒÒ «∑ÒÕÍ≥…
	if x229024_CheckSubmit( sceneId, selfId ) ~= 1 then
		x229024_NotifyTip( sceneId, selfId, "Nhßn nhiÆm v¯ th§t b’i" )				
		return 0
	end
	
	local	nMisType = GetMissionData( sceneId, selfId, MD_QIANXUN_SELECT_MISSIONTYPE )	--∂”‘±À˘—°µƒ»ŒŒÒ¿‡–Õ

	if nMisType == x229024_g_FuQiMission_IDX then
		if x229024_CheckMission_FuQi( sceneId, selfId ) == 0 then
			return 0
		end
	elseif nMisType == x229024_g_JieBaiMission_IDX then
		if x229024_CheckMission_JieBai( sceneId, selfId ) == 0 then
			return 0
		end
	elseif nMisType == x229024_g_ShiTuMission_IDX then
		if x229024_CheckMission_ShiTu( sceneId, selfId ) == 0 then
			return 0
		end
	else		
		x229024_NotifyTip( sceneId, selfId, "Nhßn nhiÆm v¯ th§t b’i" )		
		return 0
	end

	-- ∂”≥§∑¢œµÕ≥π´∏Ê
	if selfId == GetTeamLeader( sceneId, selfId ) then
		local temp = ""
				
		if nMisType == x229024_g_FuQiMission_IDX then
			temp = "#{QX_20071129_043}"
		elseif nMisType == x229024_g_JieBaiMission_IDX then
			temp = "#{QX_20071129_046}"
		elseif nMisType == x229024_g_ShiTuMission_IDX then
			temp = "#{QX_20071129_047}"
		end
		
		local strText = format("#{_INFOUSR%s}#{QX_20071129_048}%s#{QIANXUN_INFO_24}", GetName(sceneId,selfId), temp )
		BroadMsgByChatPipe( sceneId, 0, strText, 4 )
	end
	
	local playerlvl = LuaFnGetLevel( sceneId, selfId )	
	LuaFnAddExp( sceneId, selfId, x229024_g_BonusEXP_List[playerlvl] )
	DelMission( sceneId, selfId, x229024_g_MissionId )			

end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x229024_OnKillObject( sceneId, selfId, objdataId ,objId)--≤Œ ˝“‚Àº£∫≥°æ∞∫≈°¢ÕÊº“objId°¢π÷ŒÔ±ÌŒª÷√∫≈°¢π÷ŒÔ
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x229024_OnEnterArea( sceneId, selfId, zoneId )

	if IsHaveMission( sceneId, selfId, x229024_g_MissionId ) <= 0 then
		return 0
	end
	local misIndex = GetMissionIndexByID(sceneId,selfId,x229024_g_MissionId)
	local index = GetMissionParam(sceneId,selfId,misIndex,x229024_g_Mission_RoundNum)
	if sceneId ~= x229024_g_scenePosInfoList[index].sceneId or zoneId ~= x229024_g_scenePosInfoList[index].Area then
		return 0
	end
	
	local nposX = random(3)
	local nposY = random(3)
	CreateSpecialObjByDataIndex(sceneId, selfId, x229024_g_Impact_Complete_Mission, x229024_g_scenePosInfoList[index].PosX+nposX, x229024_g_scenePosInfoList[index].PosY+nposY, 0)			-- Ω¯»ÎÃΩÀ˜«¯”Ú∫Û≤•∑≈µƒÃÿ–ß
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x229024_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--Ω”»ŒŒÒ∫Ûœ‘ æµƒΩÁ√Ê
--**********************************
function x229024_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--Ωª»ŒŒÒ∫Ûœ‘ æµƒΩÁ√Ê
--**********************************
function x229024_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--–—ƒøÃ· æ
--**********************************
function x229024_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--”ÎNPC∂‘ª∞
--**********************************
function x229024_TalkInfo( sceneId, selfId, targetId, msg )

	BeginEvent(sceneId)
		AddText( sceneId, msg )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--»°µ√±æ ¬º˛µƒMissionId£¨”√”⁄objŒƒº˛÷–∂‘ª∞«Èæ∞µƒ≈–∂œ
--**********************************
function x229024_GetEventMissionId( sceneId, selfId )	
	return x229024_g_MissionId
end

function x229024_AcceptMission( sceneId, selfId, targetId )
	
	--≈–∂œ∏√npc «∑Ò «∂‘”¶»ŒŒÒµƒnpc
	if LuaFnGetName( sceneId, targetId ) ~= x229024_g_Name then
		x229024_NotifyTip( sceneId, selfId, "Nhßn nhiÆm v¯ th§t b’i" )		
		return 0
	end

	local  PlayerName=GetName(sceneId,selfId)		
	
	--∑¢ÀÕ»ŒŒÒΩ” ‹ ±œ‘ æµƒ–≈œ¢
	BeginEvent(sceneId)
		AddText(sceneId,x229024_g_MissionName)
		AddText( sceneId, x229024_g_MissionInfo )
		AddText(sceneId,"#{M_MUBIAO}")
		AddText(sceneId,"#{QX_20071129_025}")
		AddText(sceneId,"#{M_SHOUHUO}")
		AddText(sceneId,"#{QX_20071129_050}")
		
	EndEvent( )
	DispatchMissionInfo(sceneId,selfId,targetId,x229024_g_ScriptId,x229024_g_MissionId)	

end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--ªÒ»°æﬂÃÂitemµƒœÍœ∏–≈œ¢
function x229024_GetItemDetailInfo(itemId)
	local itemId, itemName, itemDesc = GetItemInfoByItemId(itemId)
	if itemId == -1 then
		local strText = format("%s khÙng tÏm th§y trong EquipBase.txt !!", itemName)		
	end
	return itemId, itemName, itemDesc
end	

--/////////////////////////////////////////////////////////////////////////////////////////////////////
-- ºÏ≤‚»ŒŒÒÕ®”√πÊ‘Ú
function x229024_GeneralRule( sceneId, selfId )
		
	if GetLevel( sceneId, selfId ) < x229024_g_PlayerSlow_LVL then
		x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_10}" )		
		return 0
	end
	
	if x229024_CheckHuoDongTime() ~= 1 then
		return 0
	end
	
	-- »ŒŒÒŒÔ∆∑¿∏ «∑Ò“—¬˙
	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < x229024_g_ItemId[1].num then
		x229024_NotifyTip( sceneId, selfId, "#{QX_20071129_027}" )
		return 0
	end
	
	--  «∑Ò¥¶”⁄◊È∂”◊¥Ã¨
  if LuaFnHasTeam( sceneId, selfId ) == 0 then
  	--»Áπ˚ÕÊº““—æ≠Ω”¡À»ŒŒÒ
  	if IsHaveMission( sceneId, selfId, x229024_g_MissionId ) > 0 then
  		x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_05}" )
  	else
  	  x229024_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_03}" )
  	end
  	
    return 0
  end
 	
	return 1
end

--**********************************
--ºÏ≤‚ªÓ∂Ø ±º‰
--**********************************
function x229024_CheckHuoDongTime()

  local nDay = GetTodayWeek()

	-- ºÏ≤‚ «∑Ò–«∆⁄ŒÂ
  --if nDay == x229024_g_Activity_DayTime then
  	--return 1
	--else
		--return 0
	--end
	return 1
end

--**********************************
--µ¿æﬂ π”√
--**********************************
function x229024_OnUseItem( sceneId, selfId, bagIndex )

	if IsHaveMission( sceneId, selfId, x229024_g_MissionId ) <= 0 then
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x229024_g_MissionId)
	local nRoundNum = GetMissionParam(sceneId, selfId, misIndex, x229024_g_Mission_RoundNum)	
	local ScintInfo = x229024_g_scenePosInfoList[nRoundNum]
	
	--»°µ√ÕÊº“µ±«∞◊¯±Í
	local PlayerX = GetHumanWorldX(sceneId,selfId)
	local PlayerY = GetHumanWorldZ(sceneId,selfId)
	--º∆À„ÕÊº“”Îƒø±Íµ„µƒæ‡¿Î
	local Distance = floor(sqrt((ScintInfo.PosX-PlayerX)*(ScintInfo.PosX-PlayerX)+(ScintInfo.PosY-PlayerY)*(ScintInfo.PosY-PlayerY)))
	
	local str = ""

  if nRoundNum >= x229024_g_MaxRound then
  	local missitemid = GetItemTableIndexByIndex( sceneId, selfId, bagIndex )
		local ret = DelItem( sceneId, selfId, missitemid, 1 )
		
		if ret <= 0 then
			return 0
		end

		-- 100%º∏¬ µÙ¬‰∞¸	
		-- ∏¯ÕÍ≥…»ŒŒÒµƒÕÊº““ª∏ˆµÙ¬‰∞¸
		local nItemId = 0
		local nItemCount = 0					
		local rand =random(100)
		local ntype = 1
		local IsTalkWorld = 0
		local playerlvl = LuaFnGetLevel( sceneId, selfId )
		
		-- 1/20º∏¬ µÙ¬‰ •µÆ√±
		-- 31492 ∏ƒŒ™µÙ¬‰∞¸º∏¬ Œ™0
		if random(1) == 10 then
			if playerlvl < 12 then
				ntype = 1
			elseif playerlvl < 22 then
				ntype = 2
			elseif playerlvl < 32 then
				ntype = 3
			elseif playerlvl < 42 then
				ntype = 4
			elseif playerlvl < 52 then
				ntype = 5
			elseif playerlvl < 62 then
				ntype = 6
			elseif playerlvl < 72 then
				ntype = 7
			elseif playerlvl < 82 then
				ntype = 8
			elseif playerlvl < 92 then
				ntype = 9
			else
				ntype = 10
			end
					
			if rand <= 96 then
				nItemId = x229024_g_BonusItem[ntype].ItemID01					--  ∞»°∞Û∂®
				nItemCount = 1			  	
			else
				nItemId = x229024_g_BonusItem[1].ItemID02					-- ◊∞±∏∞Û∂®
				nItemCount = 1
				IsTalkWorld = 1
			end
		end
							
		-- local x,z = GetWorldPos(sceneId, selfId)
							
		-- local nBoxId = DropBoxEnterScene(	x,z,sceneId )		
		
		-- if nBoxId > -1  then
		-- 	AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,1,x229024_g_BonusFuJie)						
		-- 	if nItemCount > 0 then							
		-- 		AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,1,nItemId)						
		-- 	end
		-- 							
		-- 	-- ∞—’‚∏ˆµÙ¬‰∞Û∂®∏¯÷∆∂®ÕÊº“
		-- 	SetItemBoxOwner(sceneId, nBoxId, LuaFnGetGUID(sceneId,selfId))
		-- 	
		-- 	if IsTalkWorld == 1 then							
		-- 		local strText = format("#{QX_20071129_040}#R#{_INFOUSR%s}#{QX_20071129_041}%s#{QX_20071129_042}", GetName(sceneId,selfId), GetItemName(sceneId,nItemId) )
		-- 		BroadMsgByChatPipe( sceneId, 0, strText, 4 )
		-- 	end
		-- 	-- ‘⁄’‚¿Ôº«¬ºø™∆Ù±¶œ‰µƒ»’÷æ
		-- 	LuaFnAuditPlayerBehavior(sceneId, selfId, "ø™∆Ù«ß—∞±¶œ‰");
		-- end
		
		SetMissionByIndex( sceneId, selfId, misIndex, x229024_g_Mission_IsComplete, 1 )													-- »ŒŒÒÕÍ≥…
		
	else
		
		x229024_NotifyTip( sceneId, selfId, "Ho‡n th‡nh nhiÆm v¯ : „ ho‡n t§t "..nRoundNum.."/"..x229024_g_MaxRound )
		nRoundNum = nRoundNum+1							
		SetMissionByIndex(sceneId, selfId, misIndex, x229024_g_Mission_RoundNum, nRoundNum)				
		ScintInfo = x229024_g_scenePosInfoList[nRoundNum]
		
		PlayerX = GetHumanWorldX(sceneId,selfId)
		PlayerY = GetHumanWorldZ(sceneId,selfId)
		--º∆À„ÕÊº“”Îƒø±Íµ„µƒæ‡¿Î
		Distance = floor(sqrt((ScintInfo.PosX-PlayerX)*(ScintInfo.PosX-PlayerX)+(ScintInfo.PosY-PlayerY)*(ScintInfo.PosY-PlayerY)))
		nRoundNum = GetMissionParam(sceneId, selfId, misIndex, x229024_g_Mission_RoundNum)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, ScintInfo.sceneId, ScintInfo.PosX, ScintInfo.PosY, x229024_g_MissionName)
		
		str = format("ThiÍn T•m nhiÆm v¯ l•n % : ™n #G%s#W to’ µ #G%s#{_INFOAIM%d,%d,%d,%s}#W ¨ ho‡n th‡nh nhiÆm v¯ #YT•m Lµ Chi T‚m#W.", nRoundNum, ScintInfo.scenename, ScintInfo.PosName, ScintInfo.PosX, ScintInfo.PosY, ScintInfo.sceneId, ScintInfo.scenename)	
		
		BeginEvent(sceneId)
			AddText(sceneId, str)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	end
end
