--城市NPC
--金库

x805012_g_scriptId=805012
x805012_g_BuildingID6 = 3

--银票类型ID
x805012_g_TicketItemIdx	=	40002000
x805012_g_OutDateTicketItemIdx	=	40000000
x805012_g_MerchandiseRate = 1.5
-- 交官票的奖励比例
x805012_g_GuildRate = 1.00		-- 帮派获得的资金回报100%
x805012_g_PlayerRate = 0.20		-- 个人获得的资金回报20%

-- 每个玩家一天可以领取银票的次数
x805012_g_TicketTakeTimes = 8

-- 每个帮派一天可以领取银票的次数基数
x805012_g_BaseTotalTicketTakeTimes = 200

-- 帮派每升一级可以增加的银票领取次数
x805012_g_TicketTakeTimesBonusPerLvl = 25
x805012_g_TicketDecValue = 136
x805012_g_TicketIncValue = 680
x805012_g_TicketDecRate = 1.0
x805012_g_TicketIncRate = 1.0
x805012_g_GuildBoomIndex = 18
--捐助的最小金额
x805012_g_GuildMoneyLimit	=	10000

--**********************************
--事件交互入口
--**********************************
function x805012_OnDefaultEvent( sceneId, selfId,targetId )

	--是否是本帮成员
	local guildid 		= GetHumanGuildID(sceneId,selfId)
	local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)
	local strText

	if(guildid ~= cityguildid) then
		BeginEvent(sceneId)
			strText = "     V鵱g t鄆 ch韓h tr鱪g y猽 c黙 b眓 bang, xin 鹱ng n n� l読, t読 h� th鈔 m課g tr鱪g tr醕h, kh鬾g ti畁 ti猵 痼n"
			AddText(sceneId,strText)
			AddNumText( sceneId, x805012_g_scriptId, "C豠 h鄋g th呓ng nh鈔",7,5)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	BeginEvent(sceneId)
		strText = "T読 h� ph� tr醕h ti玭 c黙 b眓 bang, ti玭 l� ngu皀 s痭g,h銀 皙n ch� ta t靘 vi甤 瓞 l鄊, 瓞 c� l㱮 韈h cho Bang h礽 v� b鋘 th鈔."
		AddText(sceneId,strText);
		AddNumText( sceneId, x805012_g_scriptId, "#GC痭g hi猲 v鄋g v鄌 Bang qu�", 6, 9 )
		AddNumText( sceneId, x805012_g_scriptId, "L頽h ng鈔 phi猽", 6, 2 )
		AddNumText( sceneId, x805012_g_scriptId, "Ho鄋 tr� ng鈔 phi猽", 6, 3 )
		--AddNumText( sceneId, x805012_g_scriptId, "商人店铺",7,1)
		AddNumText( sceneId, x805012_g_scriptId, "Gi緄 thi畊 ti玭 trang", 11, 4 )
		AddNumText( sceneId, x805012_g_scriptId, "C豠 h鄋g th呓ng nh鈔",7,5)
		AddNumText( sceneId, x805012_g_scriptId, "Con 疬秐g th呓ng nghi畃", 12, 6 )
		AddNumText( sceneId, x805012_g_scriptId, "Giao ng鈔 phi猽 qu� h課", 6, 7 )
		AddNumText( sceneId, x805012_g_scriptId, "L頽h ti玭 l呓ng", 7, 8 )
		--life 添加这个建筑物的相应生活技能选项
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "AddCityLifeAbilityOpt",sceneId, selfId, x805012_g_scriptId,x805012_g_BuildingID6,888)
		AddNumText( sceneId, x805012_g_scriptId, "#{BPZJ_0801014_001}", 6, 11 )--帮会资金捐助
		AddNumText( sceneId, x805012_g_scriptId, "#{BPZJ_0801014_002}", 11, 12 )--关于帮会资金捐助
		
		local Guildpos = GetGuildPos(sceneId, selfId)
		if x805012_IsManager(Guildpos)==1 then
			--管理者福利
			AddNumText( sceneId, x805012_g_scriptId, "L頽h th� Bang Ph醝 qu鋘 l� gi� ph鷆 l㱮", 7,  9)
			AddNumText( sceneId, x805012_g_scriptId, "Quan vi阯 Bang Ph醝 qu鋘 l� gi� ph鷆 l㱮", 11, 10 )
		end
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x805012_DrawPay( sceneId, selfId  )

	--等级超过40级。
	local msg;
	if GetLevel( sceneId, selfId ) < 40 then
		msg = format("C醕 h� kh鬾g 瘘 c 40, v� v kh鬾g th� l頽h ti玭 l呓ng.");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	
	--必须入帮时间大于等于1周。
	local nFactionJoinTime = GetFactionJoinTime( sceneId, selfId );
	
	local nTimeCur = LuaFnGetCurrentTime()
	local nTimeDelta = nTimeCur - nFactionJoinTime;
	if nTimeDelta < 7*24*60*60 then
		msg = format("Th秈 gian v鄌 bang c黙 c醕 h� ch遖 瘘 1 tu, kh鬾g th� l頽h ti玭 l呓ng.");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	
	local nWeekCur = GetWeekTime();		--当前时间			

	--必须每周跑2次商以上。
	local nCaoYunTime = GetMissionData( sceneId, selfId, MD_CAOYUN_COMPLETE_TIME );
	local nCaoYunNum = mod(nCaoYunTime,1000);
	local nWeek = floor(nCaoYunTime/1000)
	local Guildpos = GetGuildPos(sceneId, selfId)

	if ((Guildpos ~= GUILD_POSITION_CHIEFTAIN) and (Guildpos ~= GUILD_POSITION_ASS_CHIEFTAIN)) then
		if nCaoYunNum < 2 or nWeek~= nWeekCur then
			msg = format("S� l th呓ng v� tu n鄖 c黙 c醕 h� kh鬾g 瘘 2 l.");
			x805012_NotifyTips(sceneId, selfId, msg);
			return 0;
		end	
	end


	--帮派领取次数达到上线
	local nFactionAllTimeNum = CityGetAttr(sceneId, selfId, 14);
	
	local nFactionAllNum = mod(nFactionAllTimeNum,1000)
	local nFactionWeek = floor(nFactionAllTimeNum/1000)
	
	if nWeekCur ~= nFactionWeek then
		nFactionAllNum = 0;
		nFactionAllTimeNum = nWeekCur*1000 + nFactionAllNum;
		local canset = CanCitySetAttr(sceneId, selfId, 14)
	--	if canset >= 1 then
			CitySetAttr(sceneId, selfId, 14, nFactionAllTimeNum)			
	--	end
	end
	
	if nFactionAllNum >= 200 then
		msg = format("Xin l瞚, ti玭 l呓ng b眓 bang tu n鄖 疸 鹫t m裞 gi緄 h課");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	
	if CityGetMaintainStatus(sceneId, selfId, sceneId) == 1  then
		msg = format("B眓 bang � tr課g th醝 b鋙 v� th, kh鬾g th� l頽h ti玭 l呓ng!");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	
	
	--每周只能领取1次工资。	
	local nDrawPayTimeLast = GetMissionData( sceneId, selfId, MD_DRAWPAY_TIME );	
	
	local nNum = mod(nDrawPayTimeLast,1000)
	local nWeek = floor(nDrawPayTimeLast/1000)

	local isPosLongEnough = IsGuildPosLongEnough(sceneId, selfId);
	local minusContri = 30

	if (isPosLongEnough == 1) then
		if (Guildpos == GUILD_POSITION_ASS_CHIEFTAIN) then
			minusContri = 15
		elseif (Guildpos == GUILD_POSITION_CHIEFTAIN) then
			minusContri = 0
		end
	end
	
	if nWeekCur ~= nWeek then
	
		--每次领取需要耗费30点帮贡。
		local nContribPoint = CityGetAttr(sceneId, selfId, GUILD_CONTRIB_POINT);
		nContribPoint = nContribPoint - minusContri;		
		if nContribPoint < 0 then
			msg = format("械 c痭g hi猲 bang h礽 c黙 c醕 h� kh鬾g 瘘, n阯 kh鬾g th� nh l頽h ti玭 l呓ng");
			x805012_NotifyTips(sceneId, selfId, msg);
			nContribPoint = 0;
			return 0;
		end
		
		--获取金钱
		local guildLevel = GetGuildLevel( sceneId, selfId )
		local goldGet = 0;
		if guildLevel == 1 then
			goldGet = 5*10000;
		elseif guildLevel == 2 then
			goldGet = 6*10000;
		elseif guildLevel == 3 then
			goldGet = 7*10000;
		elseif guildLevel == 4 then
			goldGet = 8*10000;
		elseif guildLevel == 5 then
			goldGet = 9*10000;
		end		
		
		local GuildMoney = CityGetAttr(sceneId, selfId, GUILD_MONEY);
		
		if GuildMoney < goldGet then
			x805012_NotifyTips(sceneId, selfId, "Qu� c黙 bang h礽 kh鬾g 瘘, kh鬾g th� l頽h 疬㧟.");
			return 0;
		end
		
		CityChangeAttr(sceneId, selfId, GUILD_MONEY, (-1)*goldGet)
		
		nFactionAllNum = nFactionAllNum + 1;
		nFactionAllTimeNum = nWeekCur*1000 + nFactionAllNum;
		local canset = CanCitySetAttr(sceneId, selfId, 14)
	--	if canset >= 1 then
			CitySetAttr(sceneId, selfId, 14, nFactionAllTimeNum)			
	--	end

		if (isPosLongEnough == 1) then
			if(Guildpos == GUILD_POSITION_CHIEFTAIN) then
				x805012_NotifyTips(sceneId, selfId, "C醕 h� 疸 疬絥g nhi甿 ch裞 Bang Ch� th秈 gian h絥 1 tu, n阯 khi nh l頽h ti玭 l呓ng s� kh鬾g ti陁 hao 鸬 c痭g hi猲 bang h礽.");
			elseif(Guildpos == GUILD_POSITION_ASS_CHIEFTAIN) then
				x805012_NotifyTips(sceneId, selfId, "C醕 h� 疸 疬絥g nhi甿 ch裞 Ph� Bang Ch� th秈 gian h絥 1 tu, n阯 khi nh l頽h ti玭 l呓ng s� ti陁 hao 鸬 c痭g hi猲 bang h礽 gi鋗 b総 1 n豠.");
			end
		end

		CityChangeAttr(sceneId, selfId, GUILD_CONTRIB_POINT, (-1)*minusContri)			
		
		local guildid = GetHumanGuildID(sceneId,selfId);
		LuaFnAuditPlayerGetGuildWage( sceneId, selfId, guildid, goldGet);

		nNum = 1;
		nDrawPayTimeLast = nWeekCur*1000 + nNum;
		SetMissionData(sceneId, selfId, MD_DRAWPAY_TIME, nDrawPayTimeLast );	
				
		
		AddMoney( sceneId, selfId, goldGet );
		local  PlayerName=GetName(sceneId,selfId);
		local sMessage = format("@*;SrvMsg;GLD:#Y#{_INFOUSR%s}#cffff00 t読 Kim kh� t眓g qu鋘 c黙 Bang ph醝 l頽h ti玭 l呓ng c黙 tu n鄖, t眓g c祅g #{_MONEY%d}.", PlayerName, goldGet );	
	    BroadMsgByChatPipe(sceneId, selfId, sMessage, 6);
		
		
	else
		if nNum >= 1 then
			msg = format("Tu n鄖 c醕 h� 疸 nh ti玭 l呓ng, tu sau h銀 皙n nh�.");
			x805012_NotifyTips(sceneId, selfId, msg);
			return 0;
		end
		--每次领取需要耗费30点帮贡。
		local nContribPoint = CityGetAttr(sceneId, selfId, GUILD_CONTRIB_POINT);
		nContribPoint = nContribPoint - minusContri;		
		if nContribPoint < 0 then
			msg = format("械 c痭g hi猲 bang h礽 c黙 c醕 h� kh鬾g 瘘, n阯 kh鬾g th� nh l頽h ti玭 l呓ng");
			x805012_NotifyTips(sceneId, selfId, msg);
			nContribPoint = 0;
			return 0;
		end
		
		--获取金钱
		local guildLevel = GetGuildLevel( sceneId, selfId )
		local goldGet = 0;
		if guildLevel == 1 then
			goldGet = 5*10000;
		elseif guildLevel == 2 then
			goldGet = 6*10000;
		elseif guildLevel == 3 then
			goldGet = 7*10000;
		elseif guildLevel == 4 then
			goldGet = 8*10000;
		elseif guildLevel == 5 then
			goldGet = 9*10000;
		end		
		
		local GuildMoney = CityGetAttr(sceneId, selfId, GUILD_MONEY);
		
		if GuildMoney < goldGet then
			x805012_NotifyTips(sceneId, selfId, "Qu� c黙 bang h礽 kh鬾g 瘘, kh鬾g th� l頽h 疬㧟.");
			return 0;
		end
		
		CityChangeAttr(sceneId, selfId, GUILD_MONEY, (-1)*goldGet)
		
		
		
		nFactionAllNum = nFactionAllNum + 1;
		nFactionAllTimeNum = nWeekCur*1000 + nFactionAllNum;
		local canset = CanCitySetAttr(sceneId, selfId, 14)
	--	if canset >= 1 then
			CitySetAttr(sceneId, selfId, 14, nFactionAllTimeNum)
	--	end
		
		if (isPosLongEnough == 1) then
			if(Guildpos == GUILD_POSITION_CHIEFTAIN) then
				x805012_NotifyTips(sceneId, selfId, "C醕 h� 疸 疬絥g nhi甿 ch裞 Bang Ch� th秈 gian h絥 1 tu, n阯 khi nh l頽h ti玭 l呓ng s� kh鬾g ti陁 hao 鸬 c痭g hi猲 bang h礽.");
			elseif(Guildpos == GUILD_POSITION_ASS_CHIEFTAIN) then
				x805012_NotifyTips(sceneId, selfId, "C醕 h� 疸 疬絥g nhi甿 ch裞 Ph� Bang Ch� th秈 gian h絥 1 tu, n阯 khi nh l頽h ti玭 l呓ng s� ti陁 hao 鸬 c痭g hi猲 bang h礽 gi鋗 b総 1 n豠.");
			end
		end
		
		CityChangeAttr(sceneId, selfId, GUILD_CONTRIB_POINT, (-1)*minusContri)	
		local guildid = GetHumanGuildID(sceneId,selfId);
		LuaFnAuditPlayerGetGuildWage( sceneId, selfId, guildid, goldGet);		

		nNum = nNum + 1;
		nDrawPayTimeLast = nWeekCur*1000 + nNum;
		SetMissionData(sceneId, selfId, MD_DRAWPAY_TIME, nDrawPayTimeLast );
		
		AddMoney( sceneId, selfId, goldGet );

		local  PlayerName=GetName(sceneId,selfId);
		local sMessage = format("@*;SrvMsg;GLD:#Y#{_INFOUSR%s}#cffff00 t読 Kim kh� t眓g qu鋘 c黙 Bang ph醝 l頽h ti玭 l呓ng c黙 tu n鄖, t眓g c祅g #{_MONEY%d}.", PlayerName, goldGet );	
	    BroadMsgByChatPipe(sceneId, selfId, sMessage, 6);
	end
	

end


--判断是否是管理层
function x805012_IsManager( Guildpos  )
    if (   (Guildpos == GUILD_POSITION_CHIEFTAIN) 
	    or (Guildpos == GUILD_POSITION_ASS_CHIEFTAIN)
	    or (Guildpos == GUILD_POSITION_HR)
	    or (Guildpos == GUILD_POSITION_INDUSTRY)
	    or (Guildpos == GUILD_POSITION_AGRI)
	    or (Guildpos == GUILD_POSITION_COM) 
	   )then
        return 1;
		end
		return 0;
end


--领取帮派管理者福利
function x805012_DrawManagerBonus( sceneId, selfId  )

	local msg;
	
	--必须担任官职大于等于5天。
	if( LuaFnGetGuildAppointTime( sceneId, selfId ) < MIN_APPOINT_TIME_FOR_BONUS ) then
	    msg = format("你看看你，新官上任，要多為弟兄們做點事情，而不是急衝衝的來領福利。過幾天再來吧！");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end


	local Guildpos = GetGuildPos(sceneId, selfId)
	if ( x805012_IsManager(Guildpos)~=1 ) then
        msg = format("你不是管理層，不能領取幫派官員福利！");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end


	if CityGetMaintainStatus(sceneId, selfId, sceneId) == 1  then
		msg = format("幫會現在資金短缺，每一分錢都要用在刀刃上。管理者福利只能暫停發放啦。");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	
	if GetTodayWeek() ~= 0 then
	    msg = format("還沒到發放管理者福利的時候呢，不要太著急啊！");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	
	
	if GetFullExp(sceneId, selfId) == GetExp(sceneId, selfId) then
	    msg = format("你的經驗已經達到上限，現在領取福利太不值了吧。去用掉一些再來吧！");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	
	--每周只能领取1次帮会福利。	
	local nWeekCur = GetWeekTime();		--当前时间		
	
	local nDrawPayTimeLast = GetMissionData( sceneId, selfId, MD_GUILD_MANAGER_DRAW_BONUS );	
		
	if nWeekCur ~= nDrawPayTimeLast then

		--获取金钱
		local guildLevel = GetGuildLevel( sceneId, selfId )
		local goldGet = 0;	
		
		local GuildMoney = CityGetAttr(sceneId, selfId, GUILD_MONEY);
	
		local nCount1 = GuildMoney * GUILD_MANAGER_BONUS_MONEY_TABLE[Guildpos][1];
		local nCount2 = guildLevel * GUILD_MANAGER_BONUS_MONEY_TABLE[Guildpos][2];
	
		goldGet = (( nCount1 < nCount2 ) and nCount1) or nCount2
		
		if GuildMoney < goldGet then
			x805012_NotifyTips(sceneId, selfId, "幫派的資金不足，不能領出。");
			return 0;
		end
		CityChangeAttr(sceneId, selfId, GUILD_MONEY, (-1)*goldGet)
		AddMoney( sceneId, selfId, goldGet );
		
		--获得经验
		local level = GetLevel(sceneId, selfId)
		local expGet = guildLevel * level * GUILD_MANAGER_BONUS_EXP_TABLE[Guildpos];
		AddExp( sceneId, selfId, expGet );
		-- add by zchw for welfare
		AuditDrawGuildWelfare(sceneId, selfId, goldGet, expGet);
			
		SetMissionData(sceneId, selfId, MD_GUILD_MANAGER_DRAW_BONUS, nWeekCur );	
		
		local  PlayerName=GetName(sceneId,selfId);
		local sMessage = format("@*;SrvMsg;GLD:#Y本幫[%s][#{_INFOUSR%s}]#cffff00領取幫派官員俸祿#{_MONEY%d}和%d點經驗。", GUILD_POSITION_NAME_TABLE[Guildpos],PlayerName, goldGet, expGet );	
        BroadMsgByChatPipe(sceneId, selfId, sMessage, 6);
	  
        msg = format("你的職務是：%s",GUILD_POSITION_NAME_TABLE[Guildpos]);
        x805012_NotifyTips(sceneId, selfId, msg);
				
	else
		msg = format("好你個當官的，本周已經領過一次管理者福利了，還要領一次不成？");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	

end



--**********************************
--事件列表选中一项
--**********************************
function x805012_OnEventRequest( sceneId, selfId, targetId, eventId )
	--处理这个建筑物的相应生活技能选项
	if eventId ~= x805012_g_scriptId then
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnDefaultEvent",sceneId, selfId, targetId, eventId, x805012_g_scriptId, x805012_g_BuildingID6 )
		return
	end

	--特产商店
	if GetNumText() == 1 then
		if(sceneId == 205) then DispatchShopItem( sceneId, selfId,targetId, 120 )
			elseif(sceneId == 206) then DispatchShopItem( sceneId, selfId,targetId, 121 )
			elseif(sceneId == 207) then DispatchShopItem( sceneId, selfId,targetId, 122 )
			elseif(sceneId == 208) then DispatchShopItem( sceneId, selfId,targetId, 123 )
			elseif(sceneId == 209) then DispatchShopItem( sceneId, selfId,targetId, 124 )
			elseif(sceneId == 210) then DispatchShopItem( sceneId, selfId,targetId, 125 )
			elseif(sceneId == 211) then DispatchShopItem( sceneId, selfId,targetId, 126 )
			elseif(sceneId == 212) then DispatchShopItem( sceneId, selfId,targetId, 127 )
			elseif(sceneId == 213) then DispatchShopItem( sceneId, selfId,targetId, 128 )
			elseif(sceneId == 214) then DispatchShopItem( sceneId, selfId,targetId, 129 )
			elseif(sceneId == 215) then DispatchShopItem( sceneId, selfId,targetId, 130 )
			elseif(sceneId == 216) then DispatchShopItem( sceneId, selfId,targetId, 131 )
			elseif(sceneId == 217) then DispatchShopItem( sceneId, selfId,targetId, 132 )
			elseif(sceneId == 218) then DispatchShopItem( sceneId, selfId,targetId, 133 )
			elseif(sceneId == 219) then DispatchShopItem( sceneId, selfId,targetId, 134 )
			elseif(sceneId == 220) then DispatchShopItem( sceneId, selfId,targetId, 135 )
			elseif(sceneId == 221) then DispatchShopItem( sceneId, selfId,targetId, 136	)
			elseif(sceneId == 222) then DispatchShopItem( sceneId, selfId,targetId, 137	)
		end
	elseif GetNumText() == 888 then
		BeginEvent(sceneId)
		--life 添加这个建筑物的相应生活技能选项
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnEnumerate",sceneId, selfId, targetId, x805012_g_BuildingID6 )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	--获得跑商银票
	elseif GetNumText() == 2 then
		--是否是本帮成员
		local guildid 		= GetHumanGuildID(sceneId,selfId)
		local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)

		if(guildid ~= cityguildid) then
				BeginEvent(sceneId)
					strText = "C醕 h� kh鬾g ph鋓 l� ng叨i c黙 bang h礽, nhi甿 v� c黙 bang h礽 kh鬾g ti畁 n骾 ra"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--是否是商人或帮主
		local	guildpos = GetGuildPos(sceneId, selfId)
		if ((guildpos ~= GUILD_POSITION_COM) and (guildpos ~= GUILD_POSITION_CHIEFTAIN) and (guildpos ~= GUILD_POSITION_ASS_CHIEFTAIN) and (guildpos ~= GUILD_POSITION_AGRI) and (guildpos ~= GUILD_POSITION_INDUSTRY) and (guildpos ~= GUILD_POSITION_HR)) then
				BeginEvent(sceneId)
					strText = "Xin l瞚, ch� c� Quan vi阯 th呓ng nghi畃 (Th呓ng nh鈔), Ph� bang ch� ho bang ch� m緄 c� th� l Ng鈔 phi猽."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--级别是否够
		local level = GetLevel(sceneId, selfId)
		if(level<40) then
				BeginEvent(sceneId)
					strText = "V� huynh 甬 n鄖 b鈟 gi� m� kinh doanh, c� l� h絠 s緈 m祎 ch鷗. Hay l� 瘙i 皙n c 40 r癷 quay l読 t靘 ta, nh� th� s� t痶 h絥"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--不同级别对应不同的金额
		local curMoney = 0
		local maxMoney = 0
		local maxmaxMoney = 0

		if level>=40 and level<55 then
			curMoney = 20000
			maxMoney = 100000
			maxmaxMoney = 250000
		elseif level>=55 and level<70 then
			curMoney = 30000
			maxMoney = 150000
			maxmaxMoney = 350000
		elseif level>=70 and level<85 then
			curMoney = 40000
			maxMoney = 250000
			maxmaxMoney = 450000
		elseif level>=85 and level<100 then
			curMoney = 50000
			maxMoney = 300000
			maxmaxMoney = 550000
		
		elseif level>=100 and level<115 then
			curMoney = 50000
			maxMoney = 310000
			maxmaxMoney = 600000
		elseif level>=115 and level<130 then
			curMoney = 60000
			maxMoney = 320000
			maxmaxMoney = 650000
		
		elseif level>=130 and level<145 then
			curMoney = 70000
			maxMoney = 330000
			maxmaxMoney = 700000
		else
			curMoney = 80000
			maxMoney = 340000
			maxmaxMoney = 750000
		end

		--是否在漕运
		local haveImpact = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 113)
		if haveImpact == 1 then
				BeginEvent(sceneId)
					strText = "Xin l瞚, c醕 h� 餫ng � tr課g th醝 v chuy琻 kh鬾g th� nh ng鈔 phi猽."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end
		--是否有银票
		local	bagpos = GetBagPosByItemSn(sceneId, selfId, x805012_g_TicketItemIdx)

		if bagpos ~= -1	then
				BeginEvent(sceneId)
					strText = "Xin l瞚, c醕 h� ch� c� th� nh 疬㧟 m祎 t� ng鈔 phi猽."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return

		elseif bagpos == -1 then

				--帮派资金是否够开出一张银票的
				local GuildMoney = CityGetAttr(sceneId, selfId, GUILD_MONEY)
				if GuildMoney <= curMoney then
						BeginEvent(sceneId)
							strText = "Qu� c黙 bang ph醝 kh鬾g 瘘 瓞 xu ng鈔 phi猽 cho c醕 h�"
							AddText(sceneId,strText);
						EndEvent(sceneId)
						DispatchMissionTips(sceneId,selfId)
						return
				end

				-- 一天只能领 8 次
				local DayTimes, oldDate, nowDate, takenTimes, totalTakenTimes

				DayTimes = GetMissionData( sceneId, selfId, MD_GUILDTICKET_TAKENTIMES )
				oldDate = mod( DayTimes, 100000 )
				takenTimes = floor( DayTimes/100000 )

				nowDate = GetDayTime()
				if nowDate == oldDate then
					takenTimes = takenTimes + 1
				else
					takenTimes = 1
				end

				if takenTimes > x805012_g_TicketTakeTimes then
					BeginEvent( sceneId )
						AddText( sceneId, "Xin l瞚, c醕 h� nh nhi甿 v� th呓ng nh鈔 h鬽 nay 疸 疬㧟 8 l, xin ng鄖 mai quay l読." )
					EndEvent( sceneId )
					DispatchMissionTips( sceneId, selfId )
					return
				end

				-- 帮派一天接取次数有上限
				DayTimes = GetTicketTakenTimes( sceneId, selfId )
				oldDate = mod( DayTimes, 100000 )
				totalTakenTimes = floor( DayTimes/100000 )

				if nowDate == oldDate then
					totalTakenTimes = totalTakenTimes + 1
				else
					totalTakenTimes = 1
				end

				local guildLevel = GetGuildLevel( sceneId, selfId )
				if not guildLevel or guildLevel < 1 or guildLevel > 5 then
					guildLevel = 1
				end

				local maxTimes = x805012_g_BaseTotalTicketTakeTimes +
					x805012_g_TicketTakeTimesBonusPerLvl * ( guildLevel - 1 );
					
				local curGuildBoom = CityGetAttr(sceneId, selfId,x805012_g_GuildBoomIndex);
				if(curGuildBoom < x805012_g_TicketDecValue) then
					maxTimes = floor(maxTimes * x805012_g_TicketDecRate);
				elseif(curGuildBoom >= x805012_g_TicketIncValue) then
					maxTimes = floor(maxTimes * x805012_g_TicketIncRate);
				end

				if totalTakenTimes > maxTimes then
					BeginEvent( sceneId )
						AddText( sceneId, "Ch� t読 h� ng鄖 n鄌 c鹡g c� " .. maxTimes .. " s� t� ng鈔 phi猽 瓞 giao cho c醕 h�, hi畁 t読 疸 v唼t qu� s� n鄖." )
					EndEvent( sceneId )
					DispatchMissionTips( sceneId, selfId )
					return
				end


				-- 删除身上的跑商商品
				local itemIdx = 0
				for i = 0, 99 do
					itemIdx = LuaFnGetItemTableIndexByIndex( sceneId, selfId, i )
					if itemIdx >= 20400001 and itemIdx <= 20400200 then
						LuaFnEraseItem( sceneId, selfId, i )
					end
				end

				BeginAddItem( sceneId )
				AddItem( sceneId, x805012_g_TicketItemIdx, 1 )
				ret = EndAddItem( sceneId, selfId )
				if ret > 0 then
					AddItemListToHuman(sceneId,selfId )
					bagpos = GetBagPosByItemSn(sceneId, selfId, x805012_g_TicketItemIdx)
					--根据所在场景,物品类型获得应该的物品价值
					SetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_CUR_MONEY_START, TICKET_ITEM_PARAM_CUR_MONEY_TYPE, curMoney)
					SetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_MAX_MONEY_START, TICKET_ITEM_PARAM_MAX_MONEY_TYPE, maxMoney)
					SetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_MAX_MAX_MONEY_START, TICKET_ITEM_PARAM_MAX_MAX_MONEY_TYPE, maxmaxMoney)
					CityChangeAttr(sceneId, selfId, GUILD_MONEY, (-1)*curMoney)
					
					DayTimes = nowDate + totalTakenTimes * 100000
					SetTicketTakenTimes( sceneId, selfId, DayTimes )
					
					DayTimes = nowDate + takenTimes * 100000
					SetMissionData( sceneId, selfId, MD_GUILDTICKET_TAKENTIMES, DayTimes )
					
					LuaFnRefreshItemInfo(sceneId, selfId, bagpos)
					--跑商buff
					LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,113,0)
					BeginEvent(sceneId)
						strText = "Ch� t読 h� v鏽 c騨 " .. ( maxTimes + 1 - totalTakenTimes ) .. "  Ng鈔 phi猽, r t痶 r t痶, t� ng鈔 phi猽 n鄖 c醕 h� c l, ki猰 v� nhi玼 ng鈔 l唼ng cho b眓 Bang qu� c鬾g lao kh鬾g nh�."
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
				else
					BeginEvent(sceneId)
						strText = "L頽h ng鈔 phi猽 th b読 !"
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
				end
		end
	--交回银票
	elseif GetNumText() == 3 then
		--是否是本帮成员
		local guildid 		= GetHumanGuildID(sceneId, selfId)
		local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)
		--是否是商人日
		local merchandiseDayRate	=	1.0;
		
		if (GetTodayWeek() == 6 )then
			merchandiseDayRate = x805012_g_MerchandiseRate;
		end
		
		if(guildid ~= cityguildid) then
				BeginEvent(sceneId)
					strText = "C醕 h� kh鬾g ph鋓 l� ng叨i c黙 b眓 bang..."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--是否是商人或帮主
		local	guildpos = GetGuildPos(sceneId, selfId)
		if ( (guildpos ~= GUILD_POSITION_COM) and (guildpos ~= GUILD_POSITION_CHIEFTAIN) and (guildpos ~= GUILD_POSITION_ASS_CHIEFTAIN) and (guildpos ~= GUILD_POSITION_AGRI) and (guildpos ~= GUILD_POSITION_INDUSTRY) and (guildpos ~= GUILD_POSITION_HR)) then
				BeginEvent(sceneId)
					strText = "Xin l瞚, ch� c� Quan vi阯 th呓ng nghi畃 (Th呓ng nh鈔), Ph� bang ch� ho bang ch� m緄 c� th� giao tr� Ng鈔 phi猽."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--级别是否够
		local level = GetLevel(sceneId, selfId)
		if(level<40) then
				BeginEvent(sceneId)
					strText = "V� huynh 甬 n鄖 b鈟 gi� m� kinh doanh, c� l� h絠 s緈 m祎 ch鷗.."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		local	bagpos = GetBagPosByItemSn(sceneId, selfId, x805012_g_TicketItemIdx)
		if bagpos ~= -1	then
			local	TicketMoney = GetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_CUR_MONEY_START, TICKET_ITEM_PARAM_CUR_MONEY_TYPE)
			local	MaxTicketMoney = GetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_MAX_MONEY_START, TICKET_ITEM_PARAM_MAX_MONEY_TYPE)
			if TicketMoney ~= 0 then

				if TicketMoney < MaxTicketMoney	then
						BeginEvent(sceneId)
							strText = "Ng鈔 phi猽 c黙 c醕 h� kh鬾g nh 疬㧟 s� ti玭 疳ng ph鋓 nh, ti猵 t鴆 餴 ki猰 ti玭 餴"
							AddText(sceneId,strText);
						EndEvent(sceneId)
						DispatchMissionTips(sceneId,selfId)
						return
				end

				local ReturnType = DelItem(sceneId, selfId, x805012_g_TicketItemIdx, 1)
				LuaFnCancelSpecificImpact(sceneId,selfId,113)
				if ReturnType == 0 then
					BeginEvent(sceneId)
						strText = "Kh鬾g th� x骯 ng鈔 phi猽"
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
					return
				else
					BeginEvent(sceneId)
						strText = "X骯 ng鈔 phi猽 th鄋h c鬾g"
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
				end

				LuaFnAuditPaoShang(sceneId, selfId, TicketMoney)

				local	FatigueRate = 1.0

				local isLittleFatigueState 		= LuaFnIsLittleFatigueState(sceneId, selfId)
				local isExceedingFatigueState = LuaFnIsExceedingFatigueState(sceneId, selfId)
				
				if(isExceedingFatigueState == 1) then
					FatigueRate = 0.0
				elseif(isLittleFatigueState == 1) then
					FatigueRate = 0.5
				end

				CityChangeAttr(sceneId, selfId, GUILD_MONEY, TicketMoney * x805012_g_GuildRate*merchandiseDayRate*FatigueRate)	-- 帮派获得的资金回报
				AddMoney(sceneId, selfId, TicketMoney * x805012_g_PlayerRate*merchandiseDayRate)	-- 个人获得的资金回报

				local contripoint = 0
				local exppoint		= 0

				if level>=11 and level <40 then
					contripoint = 5
					exppoint = 30000
				elseif level>=40 and level<60 then
					contripoint = 5
					exppoint = 45000
				elseif level>=60 and level<80 then
					contripoint = 5
					exppoint = 50000
				elseif level>=80 and level<100 then
					contripoint = 5
					exppoint = 55000
				elseif level>=100 and level<120 then
					contripoint = 5
					exppoint = 60000
				elseif level>=120 then
					contripoint = 5
					exppoint = 65000
				--else
				--	contripoint = 5
				--	exppoint = 30000
				end

				CityChangeAttr(sceneId, selfId, GUILD_CONTRIB_POINT, contripoint)
				AddExp(sceneId, selfId, exppoint*merchandiseDayRate)

				--记录 完成 信息
				local nCaoYunTime = GetMissionData( sceneId, selfId, MD_CAOYUN_COMPLETE_TIME );
				
				local nCaoYunNum = mod(nCaoYunTime,1000)
				
				
				local nWeek = floor(nCaoYunTime/1000)
				

				local nWeekCur = GetWeekTime()		--当前时间
				--超过一周， 重新设置 完成次数
				if nWeekCur ~= nWeek then
					nCaoYunNum = 1;
					nCaoYunTime = nWeekCur*1000 + nCaoYunNum;
					SetMissionData(sceneId, selfId, MD_CAOYUN_COMPLETE_TIME, nCaoYunTime );				
				else
					nCaoYunNum = nCaoYunNum + 1;
					nCaoYunTime = nWeekCur*1000 + nCaoYunNum;
					SetMissionData(sceneId, selfId, MD_CAOYUN_COMPLETE_TIME, nCaoYunTime );
				end
			
			
				--帮派频道通知
				local name = GetName( sceneId, selfId )
				BroadMsgByChatPipe( sceneId, selfId, "@*;SrvMsg;GLD:#Y#{_INFOUSR" .. name .. "}#RHo鄋 t nhi甿 v� th呓ng nh鈔, gi鷓 b眓 bang t錸g s� ti玭 c黙 bang h礽 l阯 #{_MONEY"..TicketMoney*x805012_g_GuildRate*merchandiseDayRate*FatigueRate .. "}", 6 )
				--BroadMsgByChatPipe( sceneId, selfId, "22", 6 )
				
				if (merchandiseDayRate ~= 1.0  )then
					Msg2Player(sceneId, selfId, "#RDo mai l� ng鄖 th呓ng nh鈔, v� v c醕 h� thu 疬㧟 nhi玼 thu nh h絥 b靚h th叨ng.",MSG2PLAYER_PARA);
				end
				
				LuaFnComMissComplete( sceneId, selfId )
	
			else
				BeginEvent(sceneId)
					strText = "Xin l瞚, ng鈔 phi猽 c黙 c醕 h� kh鬾g c� ti玭"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
			end
		else
			BeginEvent(sceneId)
				strText = "Xin l瞚, c醕 h� kh鬾g c� ng鈔 phi猽"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	elseif GetNumText() == 4 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{City_Intro_QianZhuang}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 5 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --调用城市商店界面
			UICommand_AddInt(sceneId,x805012_g_BuildingID6)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 104)
	elseif GetNumText() == 6 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --调用城市商业路线界面
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 105)
	elseif GetNumText() == 7 then
			BeginEvent( sceneId )
				AddText( sceneId, "Xin h銀 mang ng鈔 phi猽 qu� h課 穑t v鄌 trong � v ph th� nh!" )
			EndEvent( sceneId )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x805012_g_scriptId, -1, 2 )
	elseif GetNumText() == 8 then
		--x805012_DrawPay( sceneId, selfId );
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x805012_g_scriptId)
			UICommand_AddInt(sceneId, targetId)
			UICommand_AddString(sceneId, "DrawPay");
			UICommand_AddString(sceneId, "您確定要消耗一定數量的幫貢，領取本周的幫派工資嗎？");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
	elseif GetNumText() == 9 then
		x805012_DrawManagerBonus( sceneId, selfId );
	elseif GetNumText() == 10 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BPFL_20080318_01}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 11 then
		local guildmoney = CityGetAttr(sceneId, selfId, GUILD_MONEY)
		local guildmaxmoney = CityGetAttr(sceneId, selfId, 16)
		
		if guildmoney < guildmaxmoney then
			BeginUICommand(sceneId)
				UICommand_AddInt(sceneId,targetId) --调用帮派资金捐助界面
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 19822)
		else  --帮会资金已经到达上限，不需要再捐助了。
			BeginEvent(sceneId)
				AddText(sceneId,"#{BPZJ_0801014_003}")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif GetNumText() == 12 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BPZJ_0801014_019}")--帮会资金捐助介绍
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

end

--**********************************
--玩家提交珍兽后的回调函数
--**********************************
function x805012_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	if index1 < 0 or index1 >= 255 then
		x805012_MyNotifyTip( sceneId, selfId, "您還沒有放置想要上交的過期銀票。" )
		return
	else
		if LuaFnIsItemAvailable( sceneId, selfId, index1) == 1 then
			local	itm_id		= LuaFnGetItemTableIndexByIndex( sceneId, selfId, index1 )
			if(itm_id == x805012_g_OutDateTicketItemIdx) then
				local	TicketMoney = GetBagItemParam(sceneId, selfId, index1, 0, 2)
				EraseItem( sceneId, selfId, index1) 
				CityChangeAttr(sceneId, selfId, GUILD_MONEY, TicketMoney)	-- 帮派获得的资金回报
				AddMoney(sceneId, selfId, TicketMoney * 0.2)	-- 个人获得的资金回报
				local name = GetName( sceneId, selfId )
				BroadMsgByChatPipe( sceneId, selfId, "@*;SrvMsg;GLD:#{_INFOUSR"..name.."}不知從哪里得來一張過期銀票，#{_MONEY"..TicketMoney.."}已充入為本幫的幫會資金。", 6 )
				x805012_MyNotifyTip( sceneId, selfId, "過期銀票充入幫會資金成功。" )
				return
			else
				x805012_MyNotifyTip( sceneId, selfId, "您要上交的物品似乎不是過期銀票啊。" )
				return
			end
		end
	end
	x805012_MyNotifyTip( sceneId, selfId, "提交失敗" )
end

--**********************************
--玩家提交帮会资金捐助后的回调函数
--**********************************
function x805012_PutGuildMoney( sceneId, selfId, money )
	--是否是本帮成员，按道理是不会走这里，不是本帮的成员不可能打开捐助界面，但为了保险还是加上
	local guildid 		= GetHumanGuildID(sceneId,selfId)
	local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)

	if guildid ~= cityguildid then
		x805012_NotifyTips(sceneId, selfId, "閣下不是本幫成員！")
		return
	end
	
	if money < x805012_g_GuildMoneyLimit then --不应该走到这里，除非客户端非法数据
		x805012_NotifyTips(sceneId, selfId, "输入的金额小于#{_EXCHG"..x805012_g_GuildMoneyLimit.."}")
		return
	end
	
	--对不起，您输入的金额大于您所携带的金额。
	local nMoneyJZ = GetMoneyJZ(sceneId,selfId)
	local nMoneyJB = GetMoney(sceneId,selfId)
	local nMoneySelf = nMoneyJZ + nMoneyJB
	if nMoneySelf < money then
		x805012_NotifyTips(sceneId, selfId, "#{BPZJ_0801014_007}")
		return
	end
	
	--是否安全时间，这个判断函数里面自己有提示信息，不需要这里写提示信息
	if IsPilferLockFlag(sceneId, selfId) <= 0 then
		return
	end
	
	local addmoney = floor(money*0.9)
	--hzp 2008-12-15
	local guildmoney = CityGetAttr(sceneId, selfId, GUILD_MONEY)
	local guildmaxmoney = CityGetAttr(sceneId, selfId, 16)
	
	--PrintStr(" addmoney "..addmoney.." guildmoney "..guildmoney.." guildmaxmoney "..guildmaxmoney)
	
	if addmoney + guildmoney > guildmaxmoney then
		x805012_NotifyTips(sceneId, selfId, "#{BPZJ_0801014_021}#{_MONEY"..guildmaxmoney.."}#{BPZJ_0801014_014}")
		return
	end
	
	--local ret = CostMoney(sceneId, selfId, money)
	local jzCost, jbCost = LuaFnCostMoneyWithPriority( sceneId, selfId, money );	
	if jzCost == -1 then
		x805012_NotifyTips(sceneId, selfId, "扣除金錢失敗！")
		return
	end
	--如果只扣除金币
	if jzCost == 0 then
		CityChangeAttr(sceneId, selfId, GUILD_MONEY, addmoney)
		x805012_NotifyTips(sceneId, selfId, "#{BPZJ_0801014_015}#{_MONEY"..jbCost.."}！")
		x805012_NotifyTips(sceneId, selfId, "扣税之后，帮会资金实际增长了#{_MONEY"..addmoney.."}！")
		local name = GetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "@*;SrvMsg;GLD:#{_INFOUSR"..name.."}#{BPZJ_0801014_017}#{_MONEY"..jbCost.."}#{BPZJ_0801014_018}", 6 )
	end
	--如果只扣除交子
	if jbCost == 0 then
		CityChangeAttr(sceneId, selfId, GUILD_MONEY, addmoney)
		x805012_NotifyTips(sceneId, selfId, "#{BPZJ_0801014_015}#{_EXCHG"..jzCost.."}！")
		x805012_NotifyTips(sceneId, selfId, "扣税之后，帮会资金实际增长了#{_MONEY"..addmoney.."}！")
		local name = GetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "@*;SrvMsg;GLD:#{_INFOUSR"..name.."}#{BPZJ_0801014_017}#{_EXCHG"..jzCost.."}#{BPZJ_0801014_018}", 6 )
	end
	--如果既有交子又有金币
	if jzCost ~= 0 and jbCost ~= 0 then
		CityChangeAttr(sceneId, selfId, GUILD_MONEY, addmoney)
		x805012_NotifyTips(sceneId, selfId, "#{BPZJ_0801014_015}#{_EXCHG"..jzCost.."}！")
		x805012_NotifyTips(sceneId, selfId, "#{BPZJ_0801014_015}#{_MONEY"..jbCost.."}！")
		x805012_NotifyTips(sceneId, selfId, "扣税之后，帮会资金实际增长了#{_MONEY"..addmoney.."}！")
		local name = GetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "@*;SrvMsg;GLD:#{_INFOUSR"..name.."}#{BPZJ_0801014_017}#{_EXCHG"..jzCost.."}和#{_MONEY"..jbCost.."}#{BPZJ_0801014_018}", 6 )
		--BroadMsgByChatPipe( sceneId, selfId, "@*;SrvMsg;GLD:#{_INFOUSR"..name.."}#{BPZJ_0801014_017}#{_MONEY"..jbCost.."}#{BPZJ_0801014_018}", 6 )

	end
end

--**********************************
--醒目提示
--**********************************
function x805012_NotifyTips( sceneId, selfId, Tip )

	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
--**********************************
--醒目提示
--**********************************
function x805012_MyNotifyTip( sceneId, selfId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
