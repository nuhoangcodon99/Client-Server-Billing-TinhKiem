--注意：

--物品技能的逻辑只能使用基础技能和脚本来实现

--脚本:

--以下是脚本样例:


--GuiHuaPie.lua
------------------------------------------------------------------------------------------
--一般物品的默认脚本

--脚本号
x300059_g_scriptId = 300059 --临时写这个,真正用的时候一定要改.

--buff的列表
x300059_g_Impact = {

		8020,
		8021,
		8022,
		8023,
		8024,
		8025,
		8026,
		8027,
		8028,
		8029,
		30161,
		30162,
		30163,
		30164,
		30165,
		30166,
		30167,
		30168,
		30169,
		30170,
}


--吃到好东西的公告
x300059_g_strGetItem1 = {

	"#W#{_INFOUSR%s}#P m� bao b醤h Trung Thu v裻 餴, kh鬾g ng� c� 鸢 r絠 ra, #W#{_INFOUSR%s}#P l鴐 l阯 xem th�, th� ra l� #W#{_INFOMSG%s}#P th� m�  th ti阯 c鹡g kh鬾g c� cho n阯 kh鬾g k玬 n眎 ni玬 vui m� c叨i th to",
	"#W#{_INFOUSR%s}#P 餴 疬秐g v� t靚h v ph鋓 c鴆 疳 kh鬾g may b� ng�, l鄊 b醤h Trung Thu Qu� Hoa b� 痂 nh鉶, #W#{_INFOUSR%s}#P trong l騨g ti猚 nu痠, b鑞 錸 1 mi猲g, b瞡g nhi阯 ph醫 hi畁 1 vi阯 #W#{_INFOMSG%s}#P  ch補 trong b醤h Trung Thu!",
	"B醤h Trung Thu ngon, ti阯 餫n kh� c, #W#{_INFOUSR%s}#P v譨 錸 v譨 m� t叻ng Duy阯 Ni阯 Gi鋗 Th�, k猼 qu� tr阯 tr秈 gi醤g xu痭g 1 vi阯 #W#{_INFOMSG%s}#P b瞡g nhi阯 r絠 v鄌 tay #W#{_INFOUSR%s}#P.",
}

x300059_g_strGetItem2 = {

	"#W#{_INFOUSR%s}#P vui m譶g c l B醤h Trung Thu, h� h豱g m� ra, ai ng� kh鬾g c th 疳nh r絠 � d呔i b鄋, #W#{_INFOUSR%s}#P b鑞 cu痠 xu痭g t靘, th� b瞡g nhi阯 ph醫 hi畁 1 c醝 #W#{_INFOMSG%s}#P.",
	"#P 嘘m 餺鄋 vi阯, c鵱g th叻ng Nguy畉, #W#{_INFOUSR%s}#P suy ngh� nhi玼 th� trong 馥u, mang theo b醤h Trung Thu kh鬾g n� nu痶, 醤h tr錸g ph鋘 chi猽, ch� th trong b醤h Trung Thu c� 醤h s醤g v鄋g nh nh醳, #W#{_INFOUSR%s}#P m� bao b醤h Trung Thu nh靚 qua th� ra tr阯 m c� 1 c醝 #W#{_INFOMSG%s}#P.",
	"#W#{_INFOUSR%s}#P u痭g r唼u 1 m靚h d呔i tr錸g, m緄 v譨 鸶nh  l b醤h Trung Thu Qu� Hoa ra 錸 t� nhi阯 ph醫 hi畁 trong h祊 b醤h Trung Thu c� 1 c醝 #W#{_INFOMSG%s}#P, v� vui m譶g li玭 l� h苙 ra m mang b� v鄌 trong t鷌 c黙 m靚h.",
}
--**********************************
--事件交互入口
--**********************************
function x300059_OnDefaultEvent( sceneId, selfId, bagIndex )
-- 不需要这个接口，但要保留空函数
end

--**********************************
--这个物品的使用过程是否类似于技能：
--系统会在执行开始时检测这个函数的返回值，如果返回失败则忽略后面的类似技能的执行。
--返回1：技能类似的物品，可以继续类似技能的执行；返回0：忽略后面的操作。
--**********************************
function x300059_IsSkillLikeScript( sceneId, selfId)
	return 1; --这个脚本需要动作支持
end

--**********************************
--直接取消效果：
--系统会直接调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：已经取消对应效果，不再执行后续操作；返回0：没有检测到相关效果，继续执行。
--**********************************
function x300059_CancelImpacts( sceneId, selfId )
	return 0; --不需要这个接口，但要保留空函数,并且始终返回0。
end

--**********************************
--条件检测入口：
--系统会在技能检测的时间点调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：条件检测通过，可以继续执行；返回0：条件检测失败，中断后续执行。
--**********************************
function x300059_OnConditionCheck( sceneId, selfId )
	--校验使用的物品
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	return 1;
end

--**********************************
--消耗检测及处理入口：
--系统会在技能消耗的时间点调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：消耗处理通过，可以继续执行；返回0：消耗检测失败，中断后续执行。
--注意：这不光负责消耗的检测也负责消耗的执行。
--**********************************
function x300059_OnDeplete( sceneId, selfId )
	--不消耗....后边还要使用存到物品上的信息呢....
	return 1;
end

--**********************************
--只会执行一次入口：
--聚气和瞬发技能会在消耗完成后调用这个接口（聚气结束并且各种条件都满足的时候），而引导
--技能也会在消耗完成后调用这个接口（技能的一开始，消耗成功执行之后）。
--返回1：处理成功；返回0：处理失败。
--注：这里是技能生效一次的入口
--**********************************
function x300059_OnActivateOnce( sceneId, selfId )

	--自己不能使用....
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagId < 0 then
		return
	end
	local OwnGUID	= GetBagItemParam( sceneId, selfId, bagId, 4, 2 )
	OwnGUID = OwnGUID + 2147483648
	local SelfGUID = LuaFnGetGUID( sceneId, selfId )
	if OwnGUID == SelfGUID then
		BeginEvent( sceneId )
			AddText( sceneId, "L� ph b醤h Trung Thu ch� c� th� giao d竎h cho ng叨i kh醕 s� d鴑g." )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		return
	end

	--扣物品....
	if LuaFnDepletingUsedItem(sceneId, selfId) <= 0 then
		return
	end

	--加buff....
	local myLevel = GetLevel(sceneId, selfId)
	local impactID = x300059_g_Impact[1]
	local PlayerMaxLevel = GetHumanMaxLevelLimit()

  if myLevel > PlayerMaxLevel then
		impactID = x300059_g_Impact[16]
	elseif myLevel > 140 then
		impactID = x300059_g_Impact[15]
	elseif myLevel > 130 then
		impactID = x300059_g_Impact[14]
	elseif myLevel > 120 then
		impactID = x300059_g_Impact[13]
	elseif myLevel > 110 then
		impactID = x300059_g_Impact[12]
	elseif myLevel > 100 then
		impactID = x300059_g_Impact[11]
	elseif myLevel > 90 then
		impactID = x300059_g_Impact[10]
	elseif myLevel > 80 then
		impactID = x300059_g_Impact[9]
	elseif myLevel > 70 then
		impactID = x300059_g_Impact[8]
	elseif myLevel > 60 then
		impactID = x300059_g_Impact[7]
	elseif myLevel > 50 then
		impactID = x300059_g_Impact[6]
	elseif myLevel > 40 then
		impactID = x300059_g_Impact[5]
	elseif myLevel > 30 then
		impactID = x300059_g_Impact[4]
	elseif myLevel > 20 then
		impactID = x300059_g_Impact[3]
	elseif myLevel > 10 then
		impactID = x300059_g_Impact[2]
	else
		impactID = x300059_g_Impact[1]
	end

	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, impactID, 0);
	
	if myLevel < 35 then
		return 1
	end

	--35级以上....会1/500吃出强制绑定延寿丹....
	local GoodLuck = random(5000)
	if GoodLuck < 10 then
		local BagIndex = TryRecieveItem( sceneId, selfId, 30606001, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			--强制绑定....
			LuaFnItemBind( sceneId, selfId, BagIndex )
			--发公告....
			local ItemTransfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
			local PlayerName = GetName(sceneId, selfId)
			local nMsgIndex = random(3)
			local str
			if nMsgIndex == 1 then
				str = format( x300059_g_strGetItem1[1], PlayerName, PlayerName, ItemTransfer )
			elseif nMsgIndex == 2 then
				str = format( x300059_g_strGetItem1[2], PlayerName, PlayerName, ItemTransfer )
			else
				str = format( x300059_g_strGetItem1[3], PlayerName, ItemTransfer, PlayerName )
			end
			BroadMsgByChatPipe( sceneId, selfId, str, 4 )
		end
		return	--吃到这个就不能再吃出下边的了....
	end

	--35级以上....会1/1000吃出强制绑定暗金钥匙....
	GoodLuck = random(10000)
	if GoodLuck < 10 then
		local BagIndex = TryRecieveItem( sceneId, selfId, 30008011, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			--强制绑定....
			LuaFnItemBind( sceneId, selfId, BagIndex )
			--发公告....
			local ItemTransfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
			local PlayerName = GetName(sceneId, selfId)
			local nMsgIndex = random(3)
			local str
			if nMsgIndex == 1 then
				str = format( x300059_g_strGetItem2[1], PlayerName, PlayerName, ItemTransfer )
			elseif nMsgIndex == 2 then
				str = format( x300059_g_strGetItem2[2], PlayerName, PlayerName, ItemTransfer )
			else
				str = format( x300059_g_strGetItem2[3], PlayerName, ItemTransfer )
			end
			BroadMsgByChatPipe( sceneId, selfId, str, 4 )
		end
	end

	return 1;
end

--**********************************
--引导心跳处理入口：
--引导技能会在每次心跳结束时调用这个接口。
--返回：1继续下次心跳；0：中断引导。
--注：这里是技能生效一次的入口
--**********************************
function x300059_OnActivateEachTick( sceneId, selfId)
	return 1; --不是引导性脚本, 只保留空函数.
end
