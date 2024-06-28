--领CD-KEY、查询点数、购买元宝

x888899_g_scriptId = PRIZE_SCRIPT_ID

x888899_g_prizeGems = {
50101001,
50101002,
50102001,
50102002,
50102003,
50102004,
50103001,
50104002,
50111001,
50111002,
50112001,
50112002,
50112003,
50112004,
50113001,
50113002,
50113003,
50113004,
50113005,
50114001
};



--**********************************
-- 检查 CDKey
--**********************************
function x888899_AskCDKey( sceneId, selfId )
	GetCharPrize( sceneId, selfId, 1, 980,0,0 )					--领CD-KEY (980是CD-KEY在Billing的物品类型)
end

--**********************************
-- 检查 财富卡
--**********************************
function x888899_AskNewUserCard( sceneId, selfId, card, op)
	NewUserCard( sceneId, selfId, card, op)									--领财富卡/体育竞猜卡 (card是卡号字符串)
end

--**********************************
-- 购买 元宝
--**********************************
function x888899_AskYuanBao( sceneId, selfId, nYuanBao, nPoint )
	GetCharPrize(sceneId,selfId,3,999,nYuanBao,nPoint);	--买nYuanBao个共nPoint点的元宝
end

--**********************************
-- 查询 点数
--**********************************
function x888899_AskPoint( sceneId, selfId )
	GetCharPrize(sceneId,selfId,2,0,0,0);								--查询人物点数
end

--**********************************
-- 抽奖
--**********************************
function x888899_AskPrize( sceneId, selfId )
	GetCharPrize(sceneId,selfId,6,0,0,0);								--先查询人物奖品
end

--**********************************
-- 检查 CDKey 的返回回调函数
-- ntype 请参考 enum PRIZE_TYPE_ENUM
--**********************************
function x888899_PrizeRet( sceneId, selfId, ntype, nserial, num )
--	另外，这里没有 targetId，不知道写 -1 会不会有问题
	local targetId = -1

	--CD-KEY
	if( 1 == ntype ) then
		SetMissionFlag( sceneId, selfId, MF_GetAwardFlag, 1 )
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    C醕 h� 疸 k韈h ho誸 th鄋h c鬾g 餴玼 ki畁 l頽h th叻ng, c� th� t緄 ch� t読 h� nh v ph tg th叻ng" )
	--财富卡
	elseif( 3 == ntype ) then
		SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard, 1 )
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Xin ch鷆 m譶g! C醕 h� 疸 k韈h ho誸 th鄋h c鬾g th� t鄆 ph�, sau khi 鹫t c 鸬 nh 鸶nh c� th� quay l読 ch� t読 h� l頽h th叻ng.")
	--赠点
	elseif( 4 == ntype ) then
		--ZengDian(sceneId,selfId,-1,1,nserial*num)
	--物品
	elseif( 5 == ntype ) then
		LuaFnBeginAddItem( sceneId )
			LuaFnAddItem( sceneId, nserial, num)
		local ret = LuaFnEndAddItem( sceneId, selfId )
		if 1 == ret then
			AddItemListToHuman(sceneId,selfId)
			--神笛一个玩家只能参加一次活动
			if( nserial == 30309052 ) then
				SetMissionFlag( sceneId, selfId, MF_ActiveWenZhouCard, 1 )
				BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Ch鷆 m譶g ! vui l騨g l頽h nh ph th叻ng s� ki畁", 0);
			end
			x888899_NotifyFailBox( sceneId, selfId, targetId, "Ho醤 鸨i th鄋h c鬾g, 餫 t� c醕 h� 疸 黱g h� Thi阯 Long B醫 B�" )
		end
	--体育竞猜卡
	elseif( 6 == ntype ) then
		local prizeItem = x888899_GetSportsPrize()
		if prizeItem then
			LuaFnBeginAddItem( sceneId )
				LuaFnAddItem( sceneId, prizeItem, 1)
			local ret = LuaFnEndAddItem( sceneId, selfId )
			if 1 == ret then
				AddItemListToHuman(sceneId,selfId)
				SetMissionFlag( sceneId, selfId, MF_ActiveSportsCard, 1 )
				--x888899_NotifyFailBox( sceneId, selfId, targetId, "    恭喜您成功领取了活动奖励，请查收。" )
				BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: Ch鷆 m譶g c醕 h� 疸 nh gi鋓 th叻ng th鄋h c鬾g, xin h銀 ki琺 tra", 0);
			end
		end
	--网聚活动卡
	elseif( 7 == ntype ) then
		LuaFnBeginAddItem( sceneId )
		LuaFnAddItem( sceneId, 30505108, 1 )
		local ret = LuaFnEndAddItem( sceneId, selfId )
		if 1 == ret then
			AddItemListToHuman( sceneId, selfId )
			SetMissionFlag( sceneId, selfId, MF_ActiveJuCard, 1 )
			BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: Ch鷆 m譶g c醕 h� 疸 nh gi鋓 th叻ng th鄋h c鬾g, xin h銀 ki琺 tra", 0);
		end
		
	elseif( 8 == ntype ) then	
		SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard666, 1 )
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Congratulations! You have successfully started the super strong card, after reaching a certain level can go to the cool marble are large (157,164) at the receiving award" )
	end

	return
end

--**********************************
-- 抽奖成功后给玩家提示信息
--**********************************
function x888899_PrizeRetEnd( sceneId, selfId, retId )
	if retId and retId == 15 then
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Xin ch鷆 m譶g c醕 h� nh l頽h ph th叨ng c黙 ho誸 鸬ng th鄋h c鬾g, xin h銀 nh l." )
	elseif( retId == 12 ) then
	  x888899_NotifyFailBox( sceneId, selfId, -1, "   Congratulations to receive the event rewards, please check" )
	end
end

--**********************************
-- 新手卡或体育抽奖卡检查
--**********************************
function x888899_OpenCard(sceneId,selfId,card)
	if nil == card then return end
	--PrintStr(card)
	local targetId = -1
	local firstbyte = strbyte(card)
	--'k' 体育卡
	if 107 == firstbyte then
		if GetMissionFlag( sceneId, selfId, MF_ActiveSportsCard ) == 1 then
			x888899_NotifyFailBox( sceneId, selfId, targetId, "    C醕 h� 疸 nh gi鋓 th叻ng r癷, kh鬾g th� ti猵 t鴆 nh n鎍." )
			return
		end
	--'t' 新手卡
	elseif 116 == firstbyte or 115 == firstbyte then
		if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard ) == 1 then
			x888899_NotifyFailBox( sceneId, selfId, targetId, "    C醕 h� 疸 k韈h ho誸 Th� T鄆 Ph�, kh鬾g th� k韈h ho誸 ti猵 n鎍" )
			return
		end
	elseif 99 == firstbyte then
		if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard666 ) == 1 then
			x888899_NotifyFailBox( sceneId, selfId, targetId, "    C醕 h� 疸 nh gi鋓 th叻ng r癷, kh鬾g th� ti猵 t鴆 nh n鎍." )
			return
		end
	end
	
	x888899_AskNewUserCard( sceneId, selfId, card, 0)
end

--**********************************
-- 购买 元宝 的返回回调函数
-- ntype 请参考 enum PRIZE_TYPE_ENUM
-- 1 代表 OPT_YUANBAO_ADD 增加元宝
--**********************************
function x888899_BuyRet( sceneId, selfId, ntype, nYuanBao, nLeftPoint )
--	另外，这里没有 targetId，不知道写 -1 会不会有问题
	local targetId = -1

	if( 2 == ntype ) then
		--YuanBao(sceneId,selfId,targetId,1,nYuanBao)
		--ZengDian(sceneId,selfId,targetId,1,nYuanBao)
		BuyYuanBaoCount(sceneId,selfId,targetId,1,nYuanBao)
		x888899_NotifyLeftPoint(sceneId,selfId,nLeftPoint)
		
		--给客户端提示信息
		local strText = ""
		BeginEvent(sceneId)
			strText = "C醕 h� ho醤 鸨i th鄋h c鬾g r癷. Nh 疬㧟 "..tostring(nYuanBao).." 衖琺 tg."
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		LuaFnMsg2Player( sceneId, selfId,strText,MSG2PLAYER_PARA)
		
		--大于等于1200元宝给神秘彩袜
		local curTime = GetHourTime()
	--活动时间1月21日——2月26日
	--if (curTime>75100 and curTime<78750) then
		if (nYuanBao and nYuanBao >=1200) then
			local BagIndex = TryRecieveItem( sceneId, selfId, 30504085, QUALITY_MUST_BE_CHANGE )
				
				if BagIndex == -1 then
					return
				end
				
				LuaFnItemBind(sceneId, selfId,BagIndex)
				
				BeginEvent(sceneId);
					AddText(sceneId, "Congratulations, you receive a carnival turn eggs, please check");
				EndEvent(sceneId);
				DispatchMissionTips(sceneId, selfId);
		end
	--end	

		--200+元宝给3级红宝石-绑定
		
		if nYuanBao and nYuanBao >= 200 then
			local countPrize = GetMissionData(sceneId, selfId, MD_YUANBAO_PRIZE_GEM_COUNT);
			if countPrize and countPrize == 0 then
				local BagIndex = TryRecieveItem( sceneId, selfId, 50313004, QUALITY_MUST_BE_CHANGE )
				
				if BagIndex == -1 then
					return
				end
				
				LuaFnItemBind(sceneId, selfId,BagIndex)
					SetMissionData(sceneId, selfId, MD_YUANBAO_PRIZE_GEM_COUNT, countPrize + 1);
				
				BeginEvent(sceneId);
					AddText(sceneId, "Congratulations, you receive a gem, please check");
				EndEvent(sceneId);
				DispatchMissionTips(sceneId, selfId);
			end
		end
	end
	return	

--		local randidx = random(100)
--		兑换元宝给宝石
-- 		只有50%的几率获得宝石
--		if nYuanBao and nYuanBao >= 600 then
--			local countPrize = GetMissionData(sceneId, selfId, MD_YUANBAO_PRIZE_GEM_COUNT);
--			if countPrize and countPrize == 0 then
--				if randidx <= 50 then
--					local maxIndex = getn(x888899_g_prizeGems);
--					local randIndex = random(maxIndex) - 1;
--					if not x888899_g_prizeGems[randIndex] then
--						randIndex = 0;
--					end
--					local itemDataId = x888899_g_prizeGems[randIndex];
--					LuaFnBeginAddItem(sceneId);
--					LuaFnAddItem(sceneId, itemDataId, 1);
--					local addItemRet = LuaFnEndAddItem(sceneId, selfId);
--					if addItemRet and addItemRet == 1 then
--						SetMissionData(sceneId, selfId, MD_YUANBAO_PRIZE_GEM_COUNT, countPrize + 1);
--						
--						LuaFnAddItemListToHuman(sceneId, selfId);
--						BeginEvent(sceneId);
--							AddText(sceneId, "恭喜您获赠宝石一颗，请查收。");
--						EndEvent(sceneId);
--						DispatchMissionTips(sceneId, selfId);
--					else
--						BeginEvent(sceneId);
--							AddText(sceneId, "对不起，您的背包没有足够空间容纳赠送的宝石。");
--						EndEvent(sceneId);
--						DispatchMissionTips(sceneId, selfId);
--					end
--				else
--					SetMissionData(sceneId, selfId, MD_YUANBAO_PRIZE_GEM_COUNT, countPrize + 1);
--				end
--			end
--		end
end

--**********************************
-- 查询点数 的返回回调函数
--**********************************
function x888899_PointRet( sceneId, selfId, nLeftPoint )
	x888899_NotifyLeftPoint(sceneId,selfId,nLeftPoint)
end

--**********************************
-- 检查奖品 开始的回调函数
--**********************************
function x888899_CheckRetBegin(sceneId,selfId)
	LuaFnBeginAddItem( sceneId )
end
--**********************************
-- 检查奖品 添加检查物品的回调函数
--**********************************
function x888899_CheckAddItem(sceneId,selfId,itemid,num)
	LuaFnAddItem( sceneId, itemid, num)
end

--**********************************
-- 检查奖品 结束的回调函数
--**********************************
function x888899_CheckRetEnd(sceneId,selfId)
	local ret = LuaFnEndAddItem( sceneId, selfId )
	if 1 == ret then
		--检查成功，开始抽奖
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Ki琺 tra th鄋h c鬾g, xin 瘙i... 餫ng l頽h th叻ng." )
		GetCharPrize(sceneId,selfId,4,0,0,0);		--查询人物现在拥有的奖品
	else
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Xin l瞚, c醕 h� kh鬾g 瘘 � tr痭g, xin s x猵 l読 r癷 h銀 皙n nh." )
	end
end

--**********************************
-- 卡片检查奖品 结束的回调函数
--**********************************
function x888899_CardCheckRetEnd(sceneId,selfId)
	local ret = LuaFnEndAddItem( sceneId, selfId )
	if 1 == ret then
		--检查成功，开始开卡
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Ki琺 tra th鄋h c鬾g...餫ng ch� l頽h th叻ng." )
		x888899_AskNewUserCard( sceneId, selfId, "MagicString", 1);
	else
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Sorry, you do not have enough items column space, and then organize to claim." )
	end
end
--**********************************
-- 卡片检查奖品 结束的回调函数,对天使礼包放出做特殊日志 By Vega 20090121
--**********************************
function x888899_CardCheckRetEndTSLB(sceneId,selfId)
	local ret = LuaFnEndAddItem( sceneId, selfId )
	if 1 == ret then
		--检查成功，开始开卡
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Ki琺 tra th鄋h c鬾g...餫ng ch� l頽h th叻ng." )
		x888899_AskNewUserCard( sceneId, selfId, "MagicString", 1);

		local guid = LuaFnObjId2Guid(sceneId, selfId);
		
		if guid ~= nil then
			--local LogInfo = format("0X%08X,", guid);
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_TSLBOUT, guid);
		end
	else
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Sorry, you do not have enough items column space, and then to receive order" )
	end
end

--**********************************
-- 检查 CDKey 的出错返回回调函数
--**********************************
function x888899_PrizeRetErr( sceneId, selfId, retId )
--enum	UserPrizeResult
--{
--	UPR_SUCCESS,							//抽奖信息成功
--	UPR_ASKPOINT_SUCCESS,			//查询点数成功
--	UPR_ASKBUY_SUCCESS,				//购买成功
--
--	UPR_ERR_NO_PRIZE,					//没有中奖
--	UPR_ERR_PRE_REQUEST,			//正在处理上次的请求信息
--	UPR_ERR_PRIZE_BUSY,				//等待处理的领奖信息过多
--	UPR_ERR_TIME_OUT,					//处理领奖信息超时
--	UPR_ERR_EXPIRE_PRIZE,			//奖品过期
--	UPR_ERR_CANT_NOW,					//现在不能处理抽奖请求
--	UPR_ERR_NOENOUGH_POINT,		//点数不足
--	UPR_ERR_GOODSCODE_ERR,		//物品代码错误
--	UPR_ERR_ALREADYGET_PRIZE,	//已经领奖
--	UPR_NEWUSERCARD_SUCCESS,	//财富卡成功
--	UPR_ERR_WRONGCARDNUMBER,	//卡号错误
--	UPR_ERR_OTHERUSERUSE,		//其他人已经使用
--	};
	local targetId = -1

	if retId == 3 then								-- 没有 CD-Key
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    CDK c黙 c醕 h� kh鬾g k韈h ho誸, xin l阯 trang http://tl.gate.vn 瓞 ki琺 tra" )
	elseif retId == 4 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    衋ng x� l�, xin ch�" )
	elseif retId == 5 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    H� th痭g b, ch� m祎 l醫 h銀 th� l読" )
	elseif retId == 6 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    X� l� qu� th秈 gian, ch� m祎 l醫 h銀 th� l読" )
	elseif retId == 9 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    S� B�C c黙 c醕 h� kh鬾g 瘘" )
	elseif retId == 11 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Account c黙 c醕 h� 疸 t譶g nh tg th叻ng, kh鬾g th� k韈h ho誸 th阭 餴玼 ki畁 nh th叻ng" )
	elseif retId == 13 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Xin l瞚, chu瞚 k� t� th� c黙 c醕 h� l� chu瞚 v� hi畊, xin ki琺 tra l読 r癷 h銀 nh l読." )
	elseif retId == 14 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Chu瞚 k� t� th� c黙 c醕 h� 疸 s� d鴑g qua r癷, h銀 ki琺 tra l読." )
	elseif retId == 16 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    M醳 ph鴆 v� kh鬾g khai th鬾g ch裞 n錸g b痗 th錷 tr鷑g th叻ng, xin x醕 nh" )
	elseif retId == 17 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    T鄆 kho鋘 n鄖 疸 qua c 10, kh鬾g th� s� d鴑g l読 th� t鄆 ph�." )
	elseif retId == 20 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Xin l瞚, c醕 h� kh鬾g c� ph th叻ng 瓞 nh l頽h" )
	else
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Quy 鸨i th b読, xin ch� m祎 l醫 h銀 th� l読. N猽 thao t醕 kh鬾g th鄋h c鬾g, xin li阯 h� v緄 nh鈔 vi阯 ph鴆 v� 瓞 x� l�" )
	end
end

--**********************************
-- 对话窗口信息提示
--**********************************
function x888899_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- 通知客户端剩余点数
--**********************************
function x888899_NotifyLeftPoint(sceneId,selfId,nLeftPoint)
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, nLeftPoint)
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 2003 )
end

--**********************************
-- 体育竞猜卡随机获得奖品
--**********************************
function x888899_GetSportsPrize()
	local total = getn(SPORTS_CARD_PRIZE)
	if total and total >= 1 then
		local idx = random(1,total)
		return SPORTS_CARD_PRIZE[idx]
	else
		return nil
	end
end
