--夜访马夫人
--雁北

--脚本号
x804013_g_scriptId = 804013
--任务号
x804013_g_MissionId = 4013


local  PlayerName=""
--任务名
x804013_g_missionName="嘘m vi猲g M� phu nh鈔"
x804013_g_missionText_0="嘘m vi猲g M� phu nh鈔, nhi甿 v� h� t痭g"
x804013_g_missionText_1="H� t痭g 衞鄋 Ch韓h Thu"

x804013_g_missionText_2="Ng呓i l� ai? T緄 c痗 ta l鄊 g�?"

x804013_g_MoneyBonus=80000
x804013_g_ItemBonus={{id=10101001,num=1}}
x804013_g_name	= ""

--**********************************
--任务入口函数
--**********************************
function x804013_OnDefaultEvent( sceneId, selfId, targetId )
    --如果玩家完成过这个任务
	if( IsHaveMission(sceneId,selfId,x804013_g_MissionId) > 0)  then
		if x804013_CheckSubmit(sceneId,selfId) == 1 then
			BeginEvent(sceneId)
			AddText(sceneId,x804013_g_missionName)
			AddMoneyBonus( sceneId, x804013_g_MoneyBonus )
			EndEvent()
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804013_g_scriptId,x804013_g_MissionId,1)
		else
			BeginEvent(sceneId)
			AddText(sceneId,x804013_g_missionName)
			AddText(sceneId,"T礽 v� danh")
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804013_g_scriptId,x804013_g_MissionId,0)
		end
			
    --满足任务接收条件
  elseif x804013_CheckAccept(sceneId,selfId) > 0 then
		name = GetName(sceneId,selfId)
		playname = format("Danh x遪g c黙 ng叨i ch絠 l� : %s\n",name)
		--发送任务接受时显示的信息
		BeginEvent(sceneId)
		AddText(sceneId,x804013_g_missionName)
		AddText(sceneId,x804013_g_missionText_0)
		AddText(sceneId,playname)
		AddText(sceneId,x804013_g_missionText_1)
		AddMoneyBonus( sceneId, x804013_g_MoneyBonus )
		for i, item in x804013_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x804013_g_scriptId,x804013_g_MissionId)
  end
end

--**********************************
--列举事件
--**********************************
function x804013_OnEnumerate( sceneId, selfId, targetId )
   if IsHaveMission(sceneId,selfId,x804013_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x804013_g_name then
			AddNumText(sceneId, x804013_g_scriptId,x804013_g_missionName);
		end
    --满足任务接收条件
    elseif x804013_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x804013_g_scriptId,x804013_g_missionName)
    end
end

--**********************************
--检测接受条件
--**********************************
function x804013_CheckAccept( sceneId, selfId )
	return 1	
end

--**********************************
--接受
--**********************************
function x804013_OnAccept( sceneId, selfId ,targetId)
	--加入任务到玩家列表
	AddMission( sceneId,selfId, x804013_g_MissionId, x804013_g_scriptId, 0, 0, 0 )
	timerIndex =SetTimer(sceneId,selfId,x804013_g_scriptId,"OnTimer",1000)
	misIndex = GetMissionIndexByID(sceneId,selfId,x804013_g_MissionId)
	SetMissionByIndex(sceneId,selfId,misIndex,0,timerIndex)
	SetMissionByIndex(sceneId,selfId,misIndex,1,targetId)
	SetPatrolId(sceneId,targetId,0)
end

function x804013_OnTimer(sceneId,selfId)
	misIndex = GetMissionIndexByID(sceneId,selfId,x804013_g_MissionId)
	x804013_g_sdhyTargetId = GetMissionParam(sceneId,selfId,misIndex,1)
  if IsInDist(sceneId,selfId,x804013_g_sdhyTargetId,64) < 0 then
  	DelMission(sceneId,selfId,x804013_g_MissionId)
  	StopTimer(sceneId,selfId,GetMissionParam(sceneId,selfId,misIndex,0))
  	Msg2Player(sceneId,selfId,"Nhi甿 v� b鋙 h� th b読, nhi甿 v� b� h鼀 b�",MSG2PLAYER_PARA)
  	
  	--protectTargetId = GetMissionParam(sceneId,selfId,misIndex,1)
  	--RemoveMonster(sceneId,protectTargetId)
  end		
end

--**********************************
--放弃
--**********************************
function x804013_OnAbandon( sceneId, selfId )
	--删除玩家任务列表中对应的任务
    DelMission( sceneId, selfId, x804013_g_MissionId )
end

--**********************************
--继续
--**********************************
function x804013_OnContinue( sceneId, selfId, targetId )
	--提交任务时的说明信息
    BeginEvent(sceneId)
    AddText(sceneId,x804013_g_missionName)
     AddText(sceneId,x804013_g_missionText_2)
   AddMoneyBonus( sceneId, x804013_g_MoneyBonus )
    for i, item in x804013_g_ItemBonus do
		AddItemBonus( sceneId, item.id, item.num )
	end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x804013_g_scriptId,x804013_g_MissionId)
end

--**********************************
--检测是否可以提交
--**********************************
function x804013_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x804013_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	if GetTitle(sceneId,selfId,3) == 0 then
		return 1
	end
	return 0
end

--**********************************
--提交
--**********************************
function x804013_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x804013_CheckSubmit( sceneId, selfId ) then
    BeginAddItem(sceneId)
		for i, item in x804013_g_ItemBonus do
			AddItem( sceneId,item.id, item.num )
		end
		ret = EndAddItem(sceneId,selfId)
		--添加任务奖励
		if ret > 0 then
			DelItem(sceneId,selfId,20001003,1)
			AddItemListToHuman(sceneId,selfId)
			AddMoney(sceneId,selfId,x804013_g_MoneyBonus );
			DelMission( sceneId,selfId,  x804013_g_MissionId )
			--设置任务已经被完成过
			MissionCom( sceneId,selfId,  x804013_g_MissionId )
			CallScriptFunction( 201001, "OnDefaultEvent",sceneId, selfId, targetId)
		else
		--任务奖励没有加成功
		end
	        
	end
end

--**********************************
--杀死怪物或玩家
--**********************************
function x804013_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--进入区域事件
--**********************************
function x804013_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x804013_OnItemChanged( sceneId, selfId, itemdataId )
end








