--注意：

--物品技能的逻辑只能使用基础技能和脚本来实现


--脚本:

--以下是脚本样例:


--4915.lua
------------------------------------------------------------------------------------------
--一般物品的默认脚本

--脚本号
x334915_g_scriptId = 334915 --临时写这个,真正用的时候一定要改.

x334915_g_active_e =0 

--需要的等级
x334915_g_levelRequire = 1
--AE范围半径
x334915_g_radiusAE = 3.0
--AE的目标关系标记
x334915_g_standFlag = 1 -- 2:队友， 1：友军， -1：敌军
--AE影响数目限制
x334915_g_effectCount = 4 -- -1:不限制
--效果的ID
x334915_g_Impact1 = 4915 --临时写这个
x334915_g_Impact2 = -1 --不用

--**********************************
--事件交互入口
--**********************************
function x334915_OnDefaultEvent( sceneId, selfId, bagIndex )
-- 不需要这个接口，但要保留空函数
end

--**********************************
--这个物品的使用过程是否类似于技能：
--系统会在执行开始时检测这个函数的返回值，如果返回失败则忽略后面的类似技能的执行。
--返回1：技能类似的物品，可以继续类似技能的执行；返回0：忽略后面的操作。
--**********************************
function x334915_IsSkillLikeScript( sceneId, selfId)
	return 1; --这个脚本需要动作支持
end

--**********************************
--直接取消效果：
--系统会直接调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：已经取消对应效果，不再执行后续操作；返回0：没有检测到相关效果，继续执行。
--**********************************
function x334915_CancelImpacts( sceneId, selfId )
	return 0; --不需要这个接口，但要保留空函数,并且始终返回0。
end

--**********************************
--条件检测入口：
--系统会在技能检测的时间点调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：条件检测通过，可以继续执行；返回0：条件检测失败，中断后续执行。
--**********************************
function x334915_OnConditionCheck( sceneId, selfId )
	--校验使用的物品
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if(0<=targetId) then
		-- 目标必须是友军的检测
		if LuaFnIsFriend(sceneId, targetId, selfId) ~= 1 then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 0;
		end
		
		if LuaFnIsFriend(sceneId, selfId, targetId ) ~= 1 then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 0;
		end
		
    local SelfSex = LuaFnGetSex(sceneId, selfId)
    local TargetSex = LuaFnGetSex(sceneId, targetId)                
    if( SelfSex == TargetSex ) then
      LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
      
      return 0;                                            
    end 
       
		-- 目标必须是敌军的检测
--		if(1~=LuaFnUnitIsEnemy(sceneId, selfId, targetId)) then
--			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
--			return 0;
--		end
		-- 目标必须是队友的检测
--		if(1~=LuaFnUnitIsPartner(sceneId, selfId, targetId)) then
--			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
--			return 0;
--		end
		-- 目标级别的检测
--		if(g_LevelRequire<=LuaFnGetLevel(sceneId, targetId)) then
--			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
--			return 0;
--		end
--		if(g_LevelRequire>=LuaFnGetLevel(sceneId, targetId)) then
--			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
--			return 0;
--		end

	end
	
	return 1; --不需要任何条件，并且始终返回1。
end

--**********************************
--消耗检测及处理入口：
--系统会在技能消耗的时间点调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：消耗处理通过，可以继续执行；返回0：消耗检测失败，中断后续执行。
--注意：这不光负责消耗的检测也负责消耗的执行。
--**********************************
function x334915_OnDeplete( sceneId, selfId )
	if(LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end

--**********************************
--只会执行一次入口：
--聚气和瞬发技能会在消耗完成后调用这个接口（聚气结束并且各种条件都满足的时候），而引导
--技能也会在消耗完成后调用这个接口（技能的一开始，消耗成功执行之后）。
--返回1：处理成功；返回0：处理失败。
--注：这里是技能生效一次的入口
--**********************************
function x334915_OnActivateOnce( sceneId, selfId )
	if(-1~=x334915_g_Impact1) then
		--给自己加效果
--		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x334915_g_Impact1, 0);
		--给目标加效果
		local targetId = LuaFnGetTargetObjID(sceneId, selfId)
		if(0<=targetId) then
			if LuaFnIsFriend(sceneId, targetId, selfId) > 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, targetId, x334915_g_Impact1, 0);
			
				--hd add event hoa hong truyen tinh
				if x334915_g_active_e ==1 then
					local item_recv1 = 20700011 --t靚h nh鈔 k猼
					local item_recv2 = 20700012 --si t靚h ng鱟
					
					local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
					if slot >=1 then
						TryRecieveItem( sceneId, selfId, item_recv1, 1 )
					else
						x334915_FailTips(sceneId, selfId,"T鷌 鸢 疸 馥y")
					end
					local slot =LuaFnGetPropertyBagSpace( sceneId, targetId)
					if slot >=1 then
						local tyle = random( 1, 100 )
						if tyle <40 then
							TryRecieveItem( sceneId, targetId, item_recv2, 1 )
						end
					else
						x334915_FailTips(sceneId, selfId,"T鷌 鸢 c黙 鸠i ph呓ng 疸 馥y")
					end
				end
				--end hd add

			
			
			BeginEvent(sceneId)
			    AddText(sceneId, "C醕 h� v� 鸠i ph呓ng c� 鸬 th鈔 thi畁 t錸g 5");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			  
			  local	namSelf		= GetName( sceneId, selfId )
			  local	namTarget	= GetName( sceneId, targetId )
				local	str	= format( "#B#{_INFOUSR"..namSelf.."}#cffffff t� tay 疬a#W [1 b鬾g hoa h皀g]#cffffffcho #B#{_INFOUSR"..namTarget.."}#cffffff, 稹m 饀痠 nh靚 #B#{_INFOUSR"..namTarget.."}#cffffff." )
--			  AddGlobalCountNews( sceneId, str )
			  
			end
		end
		--自己周围AE
--		local posX,posZ = LuaFnGetUnitPosition(sceneId, selfId)
--		LuaFnSendImpactAroundPosition(sceneId, selfID, posX, posZ, x334915_g_radiusAE, x334915_g_standFlag, x334915_g_levelRequire, x334915_g_effectCount, x334915_g_Impact1, 0)
		--指定地点周围AE
--		local posX,posZ = LuaFnGetTargetPosition(sceneId, selfId)
--		LuaFnSendImpactAroundPosition(sceneId, selfID, posX, posZ, x334915_g_radiusAE, x334915_g_standFlag, x334915_g_levelRequire, x334915_g_effectCount, x334915_g_Impact1, 0)
		--目标个体周围AE
--		local targetId = LuaFnGetTargetObjID(sceneId, selfId)
--		if(0<=targetId) then
--			local posX,posZ = LuaFnGetUnitPosition(sceneId, targetId)
--			LuaFnSendImpactAroundPosition(sceneId, selfID, posX, posZ, x334915_g_radiusAE, x334915_g_standFlag, x334915_g_levelRequire, x334915_g_effectCount, x334915_g_Impact1, 0)
--		end
		

	end
	return 1;
end

--**********************************
--引导心跳处理入口：
--引导技能会在每次心跳结束时调用这个接口。
--返回：1继续下次心跳；0：中断引导。
--注：这里是技能生效一次的入口
--**********************************
function x334915_OnActivateEachTick( sceneId, selfId)
	return 1; --不是引导性脚本, 只保留空函数.
end

function x334915_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end

