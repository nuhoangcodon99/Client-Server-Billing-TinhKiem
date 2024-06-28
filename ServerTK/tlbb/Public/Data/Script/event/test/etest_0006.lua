--挖出四品叶人参
--雁北

--脚本号
x804006_g_scriptId = 804006
--任务号
x804006_g_MissionId = 4006

local  PlayerName=""
--任务名
x804006_g_missionName="朽o 疬㧟 Di畃 nh鈔 s鈓 t� ph"
x804006_g_missionText_0="C� bi猼 c鬾g hi畊 k� di畊 c黙 nh鈔 s鈓 kh鬾g?"
x804006_g_missionText_1="Nghe n骾 � Chung Nam S絥 c醕h kh鬾g 疴y kh鬾g xa c� th� 疣o 疬㧟 nh鈔 s鈓 ngh靚 n錷"

x804006_g_missionText_2="Ng呓i l� ai? T緄 c痗 ta l鄊 g�?"

x804006_g_MoneyBonus=166
x804006_g_ItemBonus={{id=10105001,num=1}}
x804006_g_name	= ""

--**********************************
--任务入口函数
--**********************************
function x804006_OnDefaultEvent( sceneId, selfId, targetId )
    --如果玩家完成过这个任务
  --if (IsMissionHaveDone(sceneId,selfId,x804006_g_MissionId) > 0 ) then
	-- 	return
	--else
	if( IsHaveMission(sceneId,selfId,x804006_g_MissionId) > 0)  then
		if x804006_CheckSubmit(sceneId,selfId) == 1 then
			BeginEvent(sceneId)
			AddText(sceneId,x804006_g_missionName)
			AddMoneyBonus( sceneId, x804006_g_MoneyBonus )
			EndEvent()
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804006_g_scriptId,x804006_g_MissionId,1)
		else
			--发送任务接受时显示的信息
			BeginEvent(sceneId)
			AddText(sceneId,x804006_g_missionName)
			AddText(sceneId,"Ng呓i kh鬾g c� 鹫o c� nhi甿 v� 20001001")
			AddMoneyBonus( sceneId, x804006_g_MoneyBonus )
			for i, item in x804006_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
			end
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804006_g_scriptId,x804006_g_MissionId,0)
	  end
			
  elseif x804006_CheckAccept(sceneId,selfId) > 0 then
		--发送任务接受时显示的信息
		BeginEvent(sceneId)
		AddText(sceneId,x804006_g_missionName)
		AddText(sceneId,x804006_g_missionText_0)
		AddText(sceneId,x804006_g_missionText_1)
		AddMoneyBonus( sceneId, x804006_g_MoneyBonus )
		for i, item in x804006_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x804006_g_scriptId,x804006_g_MissionId)
	
  end
end

--**********************************
--列举事件
--**********************************
function x804006_OnEnumerate( sceneId, selfId, targetId )
    --如果玩家完成过这个任务
    --if IsMissionHaveDone(sceneId,selfId,x804006_g_MissionId) > 0 then
    	--return 
    --如果已接此任务
    --else
    if IsHaveMission(sceneId,selfId,x804006_g_MissionId) > 0 then
			if GetName(sceneId,targetId) == x804006_g_name then
				AddNumText(sceneId, x804006_g_scriptId,x804006_g_missionName);
			end
    --满足任务接收条件
    elseif x804006_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x804006_g_scriptId,x804006_g_missionName);
    end
end

--**********************************
--检测接受条件
--**********************************
function x804006_CheckAccept( sceneId, selfId )
	--需要1级才能接
	return 1
end

--**********************************
--接受
--**********************************
function x804006_OnAccept( sceneId, selfId )
	--加入任务到玩家列表
	AddMission( sceneId,selfId, x804006_g_MissionId, x804006_g_scriptId, 0, 0, 0 )
end

--**********************************
--放弃
--**********************************
function x804006_OnAbandon( sceneId, selfId )
	--删除玩家任务列表中对应的任务
    DelMission( sceneId, selfId, x804006_g_MissionId )
end

--**********************************
--继续
--**********************************
function x804006_OnContinue( sceneId, selfId, targetId )
	--提交任务时的说明信息
    BeginEvent(sceneId)
    AddText(sceneId,x804006_g_missionName)
    AddText(sceneId,x804006_g_missionText_2)
   	AddMoneyBonus( sceneId, x804006_g_MoneyBonus )
    for i, item in x804006_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x804006_g_scriptId,x804006_g_MissionId)
end

--**********************************
--检测是否可以提交
--**********************************
function x804006_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x804006_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	if HaveItem(sceneId,selfId,20001004) >= 1 then
		return 1
	end
	return 0
end

--**********************************
--提交
--**********************************
function x804006_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if x804006_CheckSubmit( sceneId, selfId ) == 1 then
    	BeginAddItem(sceneId)
		for i, item in x804006_g_ItemBonus do
			AddItem( sceneId,item.id, item.num )
		end
		ret = EndAddItem(sceneId,selfId)
		--添加任务奖励
		if ret > 0 then
			DelItem(sceneId,selfId,20001001,1)
			AddItemListToHuman(sceneId,selfId)
			AddMoney(sceneId,selfId,x804006_g_MoneyBonus );
			--设置任务已经被完成过
			MissionCom( sceneId,selfId,x804006_g_MissionId )
			DelMission( sceneId,selfId,x804006_g_MissionId )
			
			--CallScriptFunction( 201001, "OnDefaultEvent",sceneId, selfId, targetId)
		else
		--任务奖励没有加成功
			PrintStr("Kh鬾g gian tay n鋓 kh鬾g 瘘")
		end
	        
	end
end

--**********************************
--杀死怪物或玩家
--**********************************
function x804006_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--进入区域事件
--**********************************
function x804006_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x804006_OnItemChanged( sceneId, selfId, itemdataId )
end








