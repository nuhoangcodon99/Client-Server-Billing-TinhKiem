--道具：暗金钥匙串<ID:30008012>
--脚本号 332201
--Author: Steven.Han 10:39 2007-5-24

x332201_g_scriptId = 332201
x332201_g_DarkBox = 30008010
x332201_g_MultiDarkKeyMaxUseCount = 99

--**********************************
--事件交互入口
--**********************************
function x332201_OnDefaultEvent( sceneId, selfId, bagIndex )
-- 不需要这个接口，但要保留空函数
end

--**********************************
--这个物品的使用过程是否类似于技能：
--系统会在执行开始时检测这个函数的返回值，如果返回失败则忽略后面的类似技能的执行。
--返回1：技能类似的物品，可以继续类似技能的执行；返回0：忽略后面的操作。
--**********************************
function x332201_IsSkillLikeScript( sceneId, selfId)
	return 1; --这个脚本需要动作支持
end

--**********************************
--直接取消效果：
--系统会直接调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：已经取消对应效果，不再执行后续操作；返回0：没有检测到相关效果，继续执行。
--**********************************
function x332201_CancelImpacts( sceneId, selfId )
	return 0; --不需要这个接口，但要保留空函数,并且始终返回0。
end

--**********************************
--条件检测入口：
--系统会在技能检测的时间点调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：条件检测通过，可以继续执行；返回0：条件检测失败，中断后续执行。
--**********************************
function x332201_OnConditionCheck( sceneId, selfId )
	--校验使用的物品
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 2 ) then
	        local strNotice = "C祎 鹫o c� c黙 c醕 h� kh鬾g c� ch� tr痭g, c s x猵 l読."
		    x332201_ShowNotice( sceneId, selfId, strNotice)
	        return 0
	end
	
	FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
	        local strNotice = "C祎 nguy阯 li畊 c黙 c醕 h� kh鬾g c� ch� tr痭g, c s x猵 l読."
		    x332201_ShowNotice( sceneId, selfId, strNotice)
	        return 0
	end
	
		
	local ItemCount = LuaFnGetAvailableItemCount( sceneId, selfId, x332201_g_DarkBox )
	if ItemCount < 1 then
		local strNotice = "C ".."#{_ITEM"..(x332201_g_DarkBox).."}" --暗金宝箱
		x332201_ShowNotice( sceneId, selfId, strNotice)
	    return 0
	end
	
	return 1; --不需要任何条件，并且始终返回1。
end

--**********************************
--消耗检测及处理入口：
--系统会在技能消耗的时间点调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：消耗处理通过，可以继续执行；返回0：消耗检测失败，中断后续执行。
--注意：这不光负责消耗的检测也负责消耗的执行。
--**********************************
function x332201_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end

	return 0;
end

function x332201_GetPos( DropList, RandomID )
    local ListSize = getn( DropList )
    for i=1, ListSize do
        if RandomID == DropList[i][1] then
            return i
        end
    end
    
    return 0
end

function x332201_OnTest( sceneId, selfId )

    local DropList = {}
    local RandomBase = GetDarkBoxItemDropCount( sceneId, selfId )
    
    --PrintNum( RandomBase )
    
    for ii = 1, RandomBase do
		if( RandomBase > 0 ) then    
			local RandomNum = random( 0, RandomBase - 1 )
			local RandomID, Notice = DarkBoxItemDropRandom( sceneId, selfId, RandomNum )
	        local Pos = x332201_GetPos( DropList, RandomID )
	        local ListSize = getn( DropList )
	       
	        if 0 == Pos then
	            DropList[ ListSize+1 ] = { RandomID, 1 }
	        else
	            DropList[ Pos ] = { RandomID, DropList[ Pos ][2] + 1 }
	        end
	        
		end
        
    end
    
    local ListSize = getn( DropList )
    local sysstr = "=====================#r"
    local TotalItem = 0
    sysstr = sysstr.."T眓g c祅g ch黱g lo読 v ph"..ListSize..", s� li畊 c� th�:"
	BroadMsgByChatPipe( sceneId, selfId, sysstr, 4 )
	
	for i=1, ListSize do
	    TotalItem = TotalItem + DropList[ i ][2]
	end
	
	for i=1, ListSize do
	    sysstr = DropList[ i ][1]..","..DropList[ i ][2]
	    local per = DropList[ i ][2] / TotalItem * 100
	    sysstr = sysstr.."     "
	    sysstr = sysstr..(per).."%"
	    BroadMsgByChatPipe( sceneId, selfId, sysstr, 4 )
	end
	
	sysstr = "T眓g c祅g s� l唼ng v ph."..TotalItem
	BroadMsgByChatPipe( sceneId, selfId, sysstr, 4 )
	
	
    
end


--**********************************
--只会执行一次入口：
--聚气和瞬发技能会在消耗完成后调用这个接口（聚气结束并且各种条件都满足的时候），而引导
--技能也会在消耗完成后调用这个接口（技能的一开始，消耗成功执行之后）。
--返回1：处理成功；返回0：处理失败。
--注：这里是技能生效一次的入口
--**********************************
function x332201_OnActivateOnce( sceneId, selfId )
    
    --x332201_OnTest( sceneId, selfId )
    
    local bagId	 = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
    local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
    local ValidValue = x332201_g_MultiDarkKeyMaxUseCount - UseValue
    
    --消耗一个宝箱
    ret = LuaFnDelAvailableItem(sceneId, selfId, x332201_g_DarkBox, 1)
	if ret ~= 1 then
		return   --假如删除操失败,则中断操作,不会给予玩家任何物品
	end
	
	--消耗一次暗金钥匙串
	if bagId >= 0 then
		local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
		
		if UseValue >= x332201_g_MultiDarkKeyMaxUseCount then   --记录的使用次数大于等于最大可用次数,理论上不可能出现.
		    return 0
		end
		
		local CurValue = UseValue + 1
		
		SetBagItemParam( sceneId, selfId, bagId, 4, 2, x332201_g_MultiDarkKeyMaxUseCount ) --设置最大次数
		SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurValue ) --设置已用次数
		
		--------------参数设置安全性检测,虽然理论上参数设置不会失败
		local CheckParam1 = GetBagItemParam( sceneId, selfId, bagId, 4, 2 )   
		local CheckParam2 = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
		
		if CheckParam1 ~= x332201_g_MultiDarkKeyMaxUseCount then
		    return 0
		end
		if CheckParam2 ~= CurValue then
		    return 0
		end
		--------------参数设置安全性检测,虽然理论上参数设置不会失败
		
		
		LuaFnRefreshItemInfo( sceneId, selfId, bagId )
	    
		if CurValue >= x332201_g_MultiDarkKeyMaxUseCount then  --当使用次数达到最大次数时,将删除此物品
			local EraseRet = EraseItem( sceneId, selfId, bagId )
			if EraseRet < 0 then      --如果删除失败,将不会给玩家物品
			    local strNotice = "C ch靉 kh骯 耺 Kim"
				x332201_ShowNotice( sceneId, selfId, strNotice)
				return 0
			end
			
		end
	else
		local strNotice = "C ch靉 kh骯 耺 Kim"
		x332201_ShowNotice( sceneId, selfId, strNotice)
		return 0
	end
    
    --数据统计：暗金宝箱的使用
    local nRemain = x332201_g_MultiDarkKeyMaxUseCount-UseValue-1;
    if(0>nRemain) then
    	nRemain = 0
    end
    
	LuaFnAuditDarkKeyUsed(sceneId, selfId, 1, nRemain);
		
    --消耗箱子和钥匙串完毕,给予玩家物品
    local RandomBase = GetDarkBoxItemDropCount( sceneId, selfId )
    if( RandomBase > 0 ) then    
         
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = DarkBoxItemDropRandom( sceneId, selfId, RandomNum )
       
        if( RandomID > 0 ) then

			BeginAddItem(sceneId)
				AddItem( sceneId, RandomID, 1 )
			local Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			
			if Ret > 0 then
				LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
				
				if 1 == Notice then
					local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
					local ItemInfo = "#{_INFOMSG".. szItemTransfer .."}"
					x332201_ShowRandomSystemNotice( sceneId, selfId, ItemInfo )
				end
				
				local strNotice = "M� b鋙 s呓ng th鄋h c鬾g, ch鷆 m譶g c醕 h� thu 疬㧟: ".."#B#{_ITEM"..(RandomID).."}" --暗金宝箱
				x332201_ShowNotice( sceneId, selfId, strNotice)
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
				
			else
				local strNotice = "Ch� tr痭g trong t鷌 x醕h kh鬾g 瘘"
				x332201_ShowNotice( sceneId, selfId, strNotice)
			end
			
			local SubItem = 30008026  --附属物品，100%几率获得
			BeginAddItem(sceneId)
				AddItem( sceneId, SubItem, 1 )
			Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			if Ret > 0 then
				LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
			else
				local strNotice = "Ch� tr痭g trong t鷌 x醕h kh鬾g 瘘"
				x332201_ShowNotice( sceneId, selfId, strNotice)
			end

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
function x332201_OnActivateEachTick( sceneId, selfId)
	return 1; --不是引导性脚本, 只保留空函数.
end

function x332201_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x332201_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local strNotice =
	{
	"#W%s#c00FFFF nh靚 c醝#Y%s#c00FFFF tr痭g r瞡g, kh鬾g ki玬 疬㧟 s� t裞 gi, vung 餫o ch閙 n醫 v鴑. K猼 qu� 疸 ph醫 hi畁 trong n b鋙 s呓ng ch補 #W%s. ",
	"#W%s#c00FFFF h癷 h祊 run r d鵱g tay m�#Y%s#c00FFFF ra, ch� th 1 醤h s醤g ch緋 qua, v� 1 #W%s#c00FFFF 餫ng n y阯 d呔i 疳y th鵱g.",
	"#W%s#c00FFF M礳 d鴆 canh y, Trai gi緄 t� th馽, T竛h thu� b醫 nhai, Ho鄋g th� 餴猰 鹫o.....T鴑g kinh thi阯 bi猲. M� c醝 #Y%s#c00FFFF ra, th l� linh, trong g呓ng qu� th c� 1 c醝 #W%s!"
	}
	
	local strDarkBox = "#{_ITEM30008010}" --暗金宝箱
	
	local PlayerName = GetName( sceneId, selfId )
	local PlayerInfoName = "#{_INFOUSR"..PlayerName .."}"
	
	local RandomNotice = random( 1, 3 )
	local SysStr = format( strNotice[ RandomNotice ], PlayerInfoName, strDarkBox, strItemInfo )
	
	BroadMsgByChatPipe( sceneId, selfId, SysStr, 4 )
	
end
