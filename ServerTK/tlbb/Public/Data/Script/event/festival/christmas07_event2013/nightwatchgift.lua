--2007圣诞元旦活动....
--圣诞守夜活动....

--活动脚本....

--本活动需要保证服务器重启后Tuy猼 Nh鈔仍然存在....并且是正确大小的Tuy猼 Nh鈔....
--ActivityNotice.txt中配置了在活动时间内服务器重启也会调用本脚本来启动活动....


--脚本号
x050023_g_ScriptId	= 050023

--Tuy猼 Nh鈔NPC脚本....
x050023_g_SnowManScriptId	= 050027

--Tuy猼 Nh鈔坐标....
x050023_g_SnowManX = 160
x050023_g_SnowManY = 114

x050023_g_SnowEndTime = 73100
--Tuy猼 Nh鈔资源表....
x050023_g_SnowMan = {
--begin modified by zhangguoxin 090207
	--[1]  = { ID = 3870, HourTime = 72348, BallCount = -1   },
	--[2]  = { ID = 3871, HourTime = 72352, BallCount = 100  },
	--[3]  = { ID = 3872, HourTime = 72356, BallCount = 160  },
	--[4]  = { ID = 3873, HourTime = 72360, BallCount = 250  },
	--[5]  = { ID = 3874, HourTime = 72364, BallCount = 350  },
	--[6]  = { ID = 3875, HourTime = 72368, BallCount = 500  },
	--[7]  = { ID = 3876, HourTime = 72372, BallCount = 700  },
	--[8]  = { ID = 3877, HourTime = 72376, BallCount = 900  },
	--[9]  = { ID = 3878, HourTime = 72380, BallCount = 1150 },
	--[10] = { ID = 3879, HourTime = 72384, BallCount = 1400 },
	--[11] = { ID = 3880, HourTime = 72388, BallCount = 1700 },
	--[12] = { ID = 3881, HourTime = 72392, BallCount = 2000 },
	--[13] = { ID = 3882, HourTime = 72400, BallCount = 2500 }835900-1135495
	[1]  = { ID = 3870, HourTime = 1135448, BallCount = -1   },
	[2]  = { ID = 3871, HourTime = 1135452, BallCount = 100  },
	[3]  = { ID = 3872, HourTime = 1135456, BallCount = 160  },
	[4]  = { ID = 3873, HourTime = 1135460, BallCount = 250  },
	[5]  = { ID = 3874, HourTime = 1135464, BallCount = 350  },
	[6]  = { ID = 3875, HourTime = 1135468, BallCount = 500  },
	[7]  = { ID = 3876, HourTime = 1135472, BallCount = 700  },
	[8]  = { ID = 3877, HourTime = 1135476, BallCount = 900  },
	[9]  = { ID = 3878, HourTime = 1135480, BallCount = 1150 },
	[10] = { ID = 3879, HourTime = 1135484, BallCount = 1400 },
	[11] = { ID = 3880, HourTime = 1135488, BallCount = 1700 },
	[12] = { ID = 3881, HourTime = 1135492, BallCount = 2000 },
	[13] = { ID = 3882, HourTime = 1135900, BallCount = 2500 } 
--end modified by zhangguoxin 090207
} 
  
--散落宝箱坐标表....
x050023_g_ItemBoxPos = {
  
{162,114},{164,114},{166,114},{168,114},{169,111},
{166,110},{163,115},{160,109},{166,105},{167,107},
{172,110},{171,117},{169,118},{167,118},{166,117},
{163,117},{162,117},{160,119},{161,117},{163,116},
{161,107},{176,107},{179,112},{181,111},{174,102},
{158,111},{156,111},{154,112},{157,113},{154,113},
{152,116},{153,116},{156,117},{157,118},{158,119},
{153,113},{151,109},{153,110},{157,113},{150,109},
{148,110},{146,112},{144,114},{146,115},{147,117},
{149,118},{145,105},{148,99},{137,101},{135,110},

}

--散落宝箱物品掉落表....(odds总和为100000)
x050023_g_ItemBoxDrop = {

	--垃圾....
	{ itemId = 30509039, odds = 3000  },
	{ itemId = 30509039, odds = 3000  },
	{ itemId = 30509039, odds = 3000  },
	{ itemId = 30509039, odds = 3000  },
	{ itemId = 30509082, odds = 3000  },
	{ itemId = 30509082, odds = 3000  },
	{ itemId = 30509082, odds = 2000  },
	{ itemId = 30509082, odds = 2000  },
	{ itemId = 30509082, odds = 2000  },
	{ itemId = 30509082, odds = 4000  },
	{ itemId = 30509082, odds = 4000  },
	{ itemId = 30509082, odds = 4000  },
	{ itemId = 30509082, odds = 4000  },

	--低级帽子....
	{ itemId = 30505107, odds = 400   },
	{ itemId = 30505107, odds = 1000  },
	{ itemId = 30505201, odds = 1600  },
	{ itemId = 30505201, odds = 2000  },

	--高级万灵....
	{ itemId = 30008018, odds = 3000  },
	{ itemId = 30008018, odds = 3000  },
	{ itemId = 30008019, odds = 3000  },
	{ itemId = 30008019, odds = 4000  },

	--高级帽子....
	{ itemId = 30008018, odds = 3000  },
	{ itemId = 30008014, odds = 4000  },
	{ itemId = 30008014, odds = 5000  },
	{ itemId = 30008019, odds = 4000  },
	{ itemId = 30900016, odds = 4000  },
	{ itemId = 30900016, odds = 2050  },

	--宝石....
	{ itemId = 50501001, odds = 950   },
	{ itemId = 50501002, odds = 950   },
	{ itemId = 50501003, odds = 950   },
	{ itemId = 50502002, odds = 950   },
	{ itemId = 50502003, odds = 950   },
	{ itemId = 50502004, odds = 950   },
	{ itemId = 50503001, odds = 950   },
	{ itemId = 50504002, odds = 950   },
	{ itemId = 50511001, odds = 950   },
	{ itemId = 50511002, odds = 950   },	
	{ itemId = 50512001, odds = 950   },
	{ itemId = 50512002, odds = 950   },
	{ itemId = 50512003, odds = 950   },
	{ itemId = 50512004, odds = 950   },
	{ itemId = 50513001, odds = 950   },
	{ itemId = 50513002, odds = 950   },
	{ itemId = 50513003, odds = 950   },
	{ itemId = 50613004, odds = 950   },
	{ itemId = 50613005, odds = 950   },
	{ itemId = 50613006, odds = 950   },
	{ itemId = 50614001, odds = 950   },

}

x050023_g_IDXSnowManID			= 0	--当前Tuy猼 Nh鈔的场景ID....
x050023_g_IDXSnowManState		= 1	--Tuy猼 Nh鈔当前的状态....(0无效 1~12不同大小的Tuy猼 Nh鈔 13发奖品的Tuy猼 Nh鈔)
x050023_g_IDXBallCount			= 2	--Tuy猼 Nh鈔被雪球砸到的次数....
x050023_g_IDXLastSpeakTime	= 3	--Tuy猼 Nh鈔上次喊话时间....(活动期间Tuy猼 Nh鈔每到整点30min会喊话)


--**********************************
--脚本入口函数
--**********************************
function x050023_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	MissionLog(sceneId, "[07SHOUYE]: ActivityStart")

	--开启活动....
	--hd edit
	local actId =88
	local iNoticeType =-1 
	--end hd edit
	StartOneActivity( sceneId, actId, 60000, iNoticeType )

	--重置活动状态....
	x050023_ResetActivityState( sceneId, actId )

end

--**********************************
--心跳函数
--**********************************
function x050023_OnTimer( sceneId, actId, uTime )

	--hd edit
	local actId =88
	--local iNoticeType =-1 
	--end hd edit
	--获取当前Tuy猼 Nh鈔状态....
	local MstID = GetActivityParam( sceneId, actId, x050023_g_IDXSnowManID )
	local CurState = GetActivityParam( sceneId, actId, x050023_g_IDXSnowManState )

	--错误处理....
	if CurState < 1 or CurState > 13 then
		StopOneActivity( sceneId, actId )
		MissionLog(sceneId, "[07SHOUYE]: ActivityExit Error1")
		return
	end
	local CurMstDateID = GetMonsterDataID( sceneId, MstID )
	if CurMstDateID ~= x050023_g_SnowMan[CurState].ID then
		StopOneActivity( sceneId, actId )
		MissionLog(sceneId, "[07SHOUYE]: ActivityExit Error2")
		return
	end

	--检测活动是否过期....
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		MonsterTalk(sceneId, -1, "L誧 D呓ng", "#P[Tuy猼 Nh鈔]#W c醕 bg h鎢 th鈔 m猲, ta d� ph醫 c醕 m髇 qu� gi醤g sinh, h﹏ g l読 c醕 bg h鎢 !")
		SetCharacterDieTime(sceneId, MstID, 6000 )
		StopOneActivity( sceneId, actId )
		MissionLog(sceneId, "[07SHOUYE]: ActivityExit Normal")
		return
	end

	--begin modified by zhangguoxin 090207
	--local CurHourTime = GetHourTime()
	local CurHourTime = GetQuarterTime()
	
	--24日24点以前....Tuy猼 Nh鈔每个整点过30分钟在场景内喊一次话....
	local QTime = mod(CurHourTime,100)
	
	if CurHourTime < 1135490 and mod(QTime,4) == 2 then --zchw
		local LastSpeakTime = GetActivityParam( sceneId, actId, x050023_g_IDXLastSpeakTime )
		if CurHourTime > LastSpeakTime then
			MonsterTalk(sceneId, -1, "L誧 D呓ng", "#P[Tuy猼 Nh鈔]#W T鵱g ! T鵱g ! T鵱g ! Tuy猼 Nh鈔 疸 xu hi畁 t読 L誧 D呓ng (160,114) , c醕 h� ch遖 bao gi� g ng叨i tuy猼 ? c騨 ch� g� n鎍, h銀 nhanh ch鈔 皙n xem n鄌 !")
			SetActivityParam( sceneId, actId, x050023_g_IDXLastSpeakTime, CurHourTime )
		end
		return
	end

	--24日24点以前....Tuy猼 Nh鈔每个整点差5分钟在场景内喊一次话....
	if CurHourTime < 1135490 and GetMinute() == 54 then	--zchw
			MonsterTalk(sceneId, -1, "L誧 D呓ng", "#P[Tuy猼 Nh鈔]#W ta 疸 l緉 h絥, h銀 nhanh ch髇g 皙n ch鄌 m譶g c鵱g nhau, r nhi玼 qu� tg 餫ng ch� c醕 b課 !")
		return
	end
	
	--Tuy猼 Nh鈔变大的处理....
	if CurState < 13 then
		--如果时间到了则变大....
		if CurHourTime >= x050023_g_SnowMan[CurState+1].HourTime then
			x050023_MakeBigSnowMan( sceneId, actId, MstID, CurState+1 )
		end
	end
	
	--end modified by zhangguoxin 090207
end

--**********************************
--检测当前是否是活动时间
--**********************************
function x050023_CheckActivityTime( sceneId )
	--2009年12月25日2时 以后为非活动时间....
	--非活动时间不允许刷出Tuy猼 Nh鈔....
	--begin modified by zhangguoxin 090207
	--if 2008 == LuaFnGetThisYear() and GetHourTime() < 72408 then
	--if 2011 == LuaFnGetThisYear() and GetQuarterTime() < 835908 then
	--end modified by zhangguoxin 090207
		return 1 -- hd edit
	--end
	--return 0
end

--**********************************
--重置活动状态
--**********************************
function x050023_ResetActivityState( sceneId, actId )

	MissionLog(sceneId, "[07SHOUYE]: ResetActivity")

	--当活动启动时会调用本函数来重置活动状态....
	--服务器重启时也会调用本函数来重置活动状态....
	--hd edit
	local actId =88
	--local iNoticeType =-1 
	--end hd edit
	--重置活动参数....
	SetActivityParam( sceneId, actId, x050023_g_IDXSnowManID, -1 )
	SetActivityParam( sceneId, actId, x050023_g_IDXSnowManState, 0 )
	SetActivityParam( sceneId, actId, x050023_g_IDXBallCount, 0 )
	SetActivityParam( sceneId, actId, x050023_g_IDXLastSpeakTime, 0 )

	--非活动时间则不刷出Tuy猼 Nh鈔....
	if 0 == x050023_CheckActivityTime( sceneId ) then
		MissionLog(sceneId, "[07SHOUYE]: ResetActivity Failed WrongTime")
		StopOneActivity( sceneId, actId )
		return
	end

	--根据时间获得当前要创建的Tuy猼 Nh鈔数据....
	local CurState = 0
	--begin modified by zhangguoxin 090207
	--local CurHourTime = GetHourTime()
	local CurHourTime = GetQuarterTime()
	--end modified by zhangguoxin 090207
	for i, v in x050023_g_SnowMan do
		if CurHourTime >= v.HourTime then
			CurState = i
		end
	end

	--重建Tuy猼 Nh鈔....
	local MstID = -1

	if 0 == CurState then
		--容错处理....Server的时间可能还没到活动时间....
		CurState = 1
	end

	--创建Tuy猼 Nh鈔....
	MstID = LuaFnCreateMonster(sceneId, x050023_g_SnowMan[CurState].ID, x050023_g_SnowManX, x050023_g_SnowManY, 3, 0, x050023_g_SnowManScriptId )
	LuaFnSendSpecificImpactToUnit(sceneId, MstID, MstID, MstID, 10488, 0)
	AddGlobalCountNews(sceneId, "#{SDSY_081212_01}"); --zchw
	--设置活动参数....
	SetActivityParam( sceneId, actId, x050023_g_IDXSnowManID, MstID )
	SetActivityParam( sceneId, actId, x050023_g_IDXSnowManState, CurState )

	MissionLog(sceneId, "[07SHOUYE]: ResetActivity Succ CurState="..CurState.." ObjID="..MstID)

end

--**********************************
--将Tuy猼 Nh鈔变大
--**********************************
function x050023_MakeBigSnowMan( sceneId, actId, MstID, CurState )

	--hd edit
	local actId =88
	--local iNoticeType =-1 
	--end hd edit
	MissionLog(sceneId, "[07SHOUYE]: x050023_MakeBigSnowMan CurState="..CurState)

	--删旧的....
	LuaFnDeleteMonster(sceneId, MstID)

	--建立新的....
	local MstID = -1
	MstID = LuaFnCreateMonster(sceneId, x050023_g_SnowMan[CurState].ID, x050023_g_SnowManX, x050023_g_SnowManY, 3, 0, x050023_g_SnowManScriptId )
	LuaFnSendSpecificImpactToUnit(sceneId, MstID, MstID, MstID, 10488, 0)

	--变大特效....
	LuaFnSendSpecificImpactToUnit(sceneId, MstID, MstID, MstID, 10487, 0)

	--散落宝箱....
	x050023_GiveItemBox( sceneId )

	--公告....
	MonsterTalk(sceneId, -1, "L誧 D呓ng", "#P[Tuy猼 Nh鈔]#W ha ha, ch遖 g may m �, ta v譨 ph醫 50 c醝 b鋙 s呓ng, h銀 nhanh ch鈔 l阯. Ch鷆 c醕 h� Gi醤g sinh anh l鄋h h課h ph鷆 !")

	--设置活动参数....
	SetActivityParam( sceneId, actId, x050023_g_IDXSnowManID, MstID )
	SetActivityParam( sceneId, actId, x050023_g_IDXSnowManState, CurState )

end

--**********************************
--散落宝箱
--**********************************
function x050023_GiveItemBox( sceneId )

	local BoxId = -1
	local DropItemId = -1
	local randValue = 0
	local index = 1
	for _, box in x050023_g_ItemBoxPos do
		--zchw 1/60几率珍兽蛋，欢乐猪
		local rdm = random(0, 6000);
		if rdm < 100 then
		
			local BoxId = ItemBoxEnterScene( box[1], box[2], 779, sceneId, QUALITY_MUST_BE_CHANGE, 1, 30505150 ) ---L� v gi醤g sinh
			SetItemBoxMaxGrowTime( sceneId, BoxId, 1200000 )	--20分钟生命期....		
			
		else
		
			--随机出第一个物品....
			randValue = random(0, 99999);
			for i, item in x050023_g_ItemBoxDrop do
				if item.odds >= randValue then
					DropItemId = item.itemId;
					index = i
					break
				end
				randValue = randValue - item.odds;
			end
			if DropItemId == -1 then
				break
			end
			BoxId = ItemBoxEnterScene( box[1], box[2], 779, sceneId, QUALITY_MUST_BE_CHANGE, 1, DropItemId )
			SetItemBoxMaxGrowTime( sceneId, BoxId, 1200000 )	--20分钟生命期....
	
			--之前没有随机出圣诞帽和宝石才会给第二个物品....
			if ( index < 13 ) or ( index >= 18 and index <= 21 )then
				randValue = random(0, 99999);
				for _, item in x050023_g_ItemBoxDrop do
					if item.odds >= randValue then
						DropItemId = item.itemId
						break
					end
					randValue = randValue - item.odds;
				end
				if DropItemId == -1 then
					break
				end
				AddItemToBox( sceneId, BoxId, QUALITY_MUST_BE_CHANGE, 1, DropItemId )
			end
			
		end
	end
end

--**********************************
--被雪球击中事件
--**********************************
function x050023_CanThrowSnowBall( sceneId, playerId, targetId )

	local actId = 88	--特例用法....其他人不要学....

	--活动是否已经无效....
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		return 0
	end

	--获取当前Tuy猼 Nh鈔状态....
	local MstID = GetActivityParam( sceneId, actId, x050023_g_IDXSnowManID )
	local CurState = GetActivityParam( sceneId, actId, x050023_g_IDXSnowManState )
	local BallCount = GetActivityParam( sceneId, actId, x050023_g_IDXBallCount )

	--错误处理....
	if CurState < 1 or CurState > 13 then
		return 0
	end
	local CurMstDateID = GetMonsterDataID( sceneId, MstID )
	if CurMstDateID ~= x050023_g_SnowMan[CurState].ID then
		return 0
	end

	--打的是否是Tuy猼 Nh鈔....
	if targetId ~= MstID then
		return 0
	end

	return 1

end

--**********************************
--被雪球击中事件
--**********************************
function x050023_OnHitBySnowBall( sceneId, playerId, targetId )

	local actId = 88	--特例用法....其他人不要学....

	--活动是否已经无效....
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		return 0
	end

	--获取当前Tuy猼 Nh鈔状态....
	local MstID = GetActivityParam( sceneId, actId, x050023_g_IDXSnowManID )
	local CurState = GetActivityParam( sceneId, actId, x050023_g_IDXSnowManState )
	local BallCount = GetActivityParam( sceneId, actId, x050023_g_IDXBallCount )

	--错误处理....
	if CurState < 1 or CurState > 13 then
		return 0
	end
	local CurMstDateID = GetMonsterDataID( sceneId, MstID )
	if CurMstDateID ~= x050023_g_SnowMan[CurState].ID then
		return 0
	end

	--打的是否是Tuy猼 Nh鈔....
	if targetId ~= MstID then
		return 0
	end

	if CurState >= 1 and CurState <= 12 then

		--增加计数....
		BallCount = BallCount + 1
		SetActivityParam( sceneId, actId, x050023_g_IDXBallCount, BallCount )

		--还差50,30,10个球的时候喊话....
		local NeedCount = x050023_g_SnowMan[CurState+1].BallCount - BallCount
		if NeedCount == 50 or NeedCount == 30 or NeedCount == 10 then
			MonsterTalk(sceneId, -1, "L誧 D呓ng", "#P[Tuy猼 Nh鈔]#Wc th阭 "..NeedCount.."nhi玼 qu� c tuy猼 瓞 t鬷 l緉 l阯, s� c� gg c黙 b課, s� nh 疬㧟 ph th叻ng x裯g 疳ng!")
		end

		--处理Tuy猼 Nh鈔变大....
		if BallCount >= x050023_g_SnowMan[CurState+1].BallCount then
			x050023_MakeBigSnowMan( sceneId, actId, MstID, CurState+1 )
		end

	end

	return 1

end

--**********************************
--获得离下次变大还差多少个雪球....
--**********************************
function x050023_GetNeedBallCount( sceneId )

	local actId = 88	--特例用法....其他人不要学....

	--活动是否已经无效....
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		return -1
	end

	--获取当前Tuy猼 Nh鈔状态....
	local MstID = GetActivityParam( sceneId, actId, x050023_g_IDXSnowManID )
	local CurState = GetActivityParam( sceneId, actId, x050023_g_IDXSnowManState )
	local BallCount = GetActivityParam( sceneId, actId, x050023_g_IDXBallCount )

	--错误处理....
	if CurState < 1 or CurState > 13 then
		return -1
	end
	local CurMstDateID = GetMonsterDataID( sceneId, MstID )
	if CurMstDateID ~= x050023_g_SnowMan[CurState].ID then
		return -1
	end

	if CurState >= 1 and CurState <= 12 then
		local NeedCount = x050023_g_SnowMan[CurState+1].BallCount - BallCount
		return NeedCount
	end

	return -1

end

--**********************************
--玩家在洛阳拾取物品的回调函数....
--**********************************
function x050023_OnPlayerPickUpItemInLuoyang( sceneId, selfId, itemId, bagidx )

	--非活动时间则不公告....
	if 0 == x050023_CheckActivityTime( sceneId ) then
		return 0
	end

	local IsBoxItem = 0
	local ItemCount = getn(x050023_g_ItemBoxDrop)
	for i = 22, ItemCount do --万灵石不公告 zchw
		if x050023_g_ItemBoxDrop[i].itemId == itemId then
			IsBoxItem = 1
			break
		end
	end
	--珍兽蛋：当扈（95级） 公告 30309683 zchw
	if itemId == 30309683 then
		IsBoxItem = 1;
		--日志统计
		local guid = LuaFnObjId2Guid(sceneId, selfId)
		local log = format("itemId=%d", itemId)
		ScriptGlobal_AuditGeneralLog(LUAAUDIT_SNOW, guid, log)
	end
	
	if IsBoxItem == 0 then
		return 0
	end

	--公告....
	local playerName = GetName(sceneId, selfId)
	local transfer = GetBagItemTransfer(sceneId,selfId,bagidx)
	local rand = random(3)
	local message
	if rand == 1 then
		message = format("#PThi阯 gi醤g h鄋 tuy猼, h� s� doanh m鬾. #{_INFOUSR%s}#P t靚h c� 餴 b� tr阯 疬秐g ph� L誧 D呓ng may m nh 疬㧟 #{_INFOMSG%s}#P, 餫ng v 瘀, n阯 c� ti猵 t鴆 h錸g say.", playerName, transfer )
	elseif rand == 2 then
		message = format("#PB phong xuy, tuy猼 hoa phi陁, L誧 D呓ng th唼ng kh鬾g h� t鄆 b鋙 #{_INFOUSR%s}#P 疸 nhanh ch髇g ch鱪 疬㧟 #{_INFOMSG%s}#P th l� may m !", playerName, transfer )
	else
		message = format("#PTuy猼 Nh鈔 h鋙, Tuy猼 Nh鈔 di畊, Tuy猼 Nh鈔 t鋘 l誧 b鋙 b痠 oa oa khi猽. #{_INFOUSR%s}#P 疬㧟 ch鱪 gi� #{_INFOMSG%s}#P ng癷 x眒 tr阯 疬秐g ph� L誧 D呓ng c叨i ng� ng", playerName, transfer )
	end
	BroadMsgByChatPipe(sceneId, selfId, message, 4)

	return 1

end
