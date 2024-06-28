--注意：

--物品技能的逻辑只能使用基础技能和脚本来实现


--脚本:

--以下是脚本样例:


--5028.lua
------------------------------------------------------------------------------------------
--马鞍的默认脚本

--脚本号
 x335023_g_scriptId = 335023 --临时写这个,真正用的时候一定要改.

--4801	坐骑：虎		447	骑术：虎  			456	骑术：白虎
--4802	坐骑：黄骠马	448	骑术：黄骠马		457	骑术：青白骢马
--4803	坐骑：骆驼		449	骑术：骆驼			458	骑术：白骆驼
--4804	坐骑：鹤		450	骑术：鹤			459	骑术：金翼鹤
--4805	坐骑：青凤		451	骑术：青凤			460	骑术：红白凤
--4806	坐骑：牦牛		452	骑术：牦牛			461	骑术：白牦牛
--4807	坐骑：鹿		453	骑术：鹿			462	骑术：白鹿
--4808	坐骑：雕		454	骑术：雕			463	骑术：白雕
--4809	坐骑：灰狼		455	骑术：灰狼			464	骑术：白狼
--4810	坐骑：白虎		456	骑术：白虎    
--4811	坐骑：青白骢马  457	骑术：青白骢马
--4812	坐骑：白骆驼    458	骑术：白骆驼  
--4813	坐骑：金翼鹤    459	骑术：金翼鹤  
--4814	坐骑：红白凤    460	骑术：红白凤  
--4815	坐骑：白牦牛    461	骑术：白牦牛  
--4816	坐骑：白鹿      462	骑术：白鹿    
--4817	坐骑：白雕      463	骑术：白雕    
--4912	坐骑：白狼      464	骑术：白狼  
--4952  坐骑：大象      443	骑术：大象
--4914  坐骑：白象      444	骑术：白象
--4948									437	骑术：蜘蛛
--4952									438	骑术：熊
--4951									439	骑术：木牛流马
--5028									440	骑术：陆吾
--4949									441	骑术：玄龟
--4946									442	骑术：犀牛

--注：两个骑术会一个就可以骑了
 x335023_g_Equitation1 = 1077 --需要的骑术
 x335023_g_Equitation2 = -1 --需要的骑术
--效果的ID
 x335023_g_Impact1 = 5028 --临时写这个
 x335023_g_Impact2 = -1 --不用

--**********************************
--事件交互入口
--**********************************
function  x335023_OnDefaultEvent( sceneId, selfId, bagIndex )
-- 骑乘不需要这个接口，但要保留空函数
end

--**********************************
--这个物品的使用过程是否类似于技能：
--系统会在执行开始时检测这个函数的返回值，如果返回失败则忽略后面的类似技能的执行。
--返回1：技能类似的物品，可以继续类似技能的执行；返回0：忽略后面的操作。
--**********************************
function  x335023_IsSkillLikeScript( sceneId, selfId)
	return 1; --这个脚本需要动作支持
end

--**********************************
--直接取消效果：
--系统会直接调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：已经取消对应效果，不再执行后续操作；返回0：没有检测到相关效果，继续执行。
--**********************************
function  x335023_CancelImpacts( sceneId, selfId )
	nRet = 0;
	nRet = LuaFnCancelSpecificImpact(sceneId, selfId,  x335023_g_Impact1)
	if(0<nRet) then
		return 1;
	end
	return 0;
end

--**********************************
--条件检测入口：
--系统会在技能检测的时间点调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：条件检测通过，可以继续执行；返回0：条件检测失败，中断后续执行。
--**********************************
function  x335023_OnConditionCheck( sceneId, selfId )
	--校验使用的物品
	--if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		--return 0
	--end
	--两个骑术，会一个就可以了
	if(-1~= x335023_g_Equitation1) then
		if(1==LuaFnHaveSpecificEquitation(sceneId, selfId,  x335023_g_Equitation1)) then
			return 1
		end
	end
	if(-1~= x335023_g_Equitation2) then
		if(1==LuaFnHaveSpecificEquitation(sceneId, selfId,  x335023_g_Equitation2)) then
			return 1
		end
	end
	LuaFnSendOResultToPlayer(sceneId, selfId, OR_NEED_EQUITATION_FIRST)
	return 0; 
end

--**********************************
--消耗检测及处理入口：
--系统会在技能消耗的时间点调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：消耗处理通过，可以继续执行；返回0：消耗检测失败，中断后续执行。
--注意：这不光负责消耗的检测也负责消耗的执行。
--**********************************
function  x335023_OnDeplete( sceneId, selfId )
	return 1; --骑乘不消耗
end

--**********************************
--只会执行一次入口：
--聚气和瞬发技能会在消耗完成后调用这个接口（聚气结束并且各种条件都满足的时候），而引导
--技能也会在消耗完成后调用这个接口（技能的一开始，消耗成功执行之后）。
--返回1：处理成功；返回0：处理失败。
--注：这里是技能生效一次的入口
--**********************************
function  x335023_OnActivateOnce( sceneId, selfId )
	if(-1~= x335023_g_Impact1) then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId,  x335023_g_Impact1, 0)
	end
	Msg2Player( sceneId,selfId,"您已經騎上坐騎了。",MSG2PLAYER_PARA) --通知玩家
	return 1;
end

--**********************************
--引导心跳处理入口：
--引导技能会在每次心跳结束时调用这个接口。
--返回：1继续下次心跳；0：中断引导。
--注：这里是技能生效一次的入口
--**********************************
function  x335023_OnActivateEachTick( sceneId, selfId)
	return 1; --骑乘不是引导性脚本, 只保留空函数.
end

