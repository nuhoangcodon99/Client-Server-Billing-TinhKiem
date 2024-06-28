--学习技能
--九大门派技能传授

--MisDescBegin
--脚本号
x210209_g_ScriptId = 210209

--任务号
x210209_g_MissionId = 449




--任务归类
x210209_g_MissionKind = 13

--任务道具编号
x210209_g_ItemId = 40002108

--任务等级
x210209_g_MissionLevel = 1

--是否是精英任务
x210209_g_IfMissionElite = 0

--任务名
x210209_g_MissionName="K� n錸g h鱟 t"
x210209_g_MissionInfo="  H銀 餴 t靘 甬 t� c豼 鹫i m鬾 ph醝 瓞 h鱟 k� n錸g n鄖"
x210209_g_MissionTarget="K� n錸g h鱟 t"
x210209_g_MissionComplete="  C醕 h� 疸 c theo th� gi緄 thi畊 t緄, v ta s� d誽 cho c醕 h� 1 k� n錸g t鈔 th�, ph鋓 h鱟 cho t痶, luy畁 nhi玼 m緄 疬㧟"
x210209_g_Name_0="Tri畊 Thi阯 S� "
x210209_g_Name_1="Tu� D竎h "
x210209_g_Name_2="Th誧h B鋙 "
x210209_g_Name_3="Gi鋘 Ninh "
x210209_g_Name_4="Tr呓ng Ho誧h "
x210209_g_Name_5="L� Tam N呓ng "
x210209_g_Name_6="H鋓 Phong T� "
x210209_g_Name_7="Ph� Tham "
x210209_g_Name_8="Tr靚h Thanh S呓ng "
x210209_g_Name_9="朽m 朽i T� V� "

--MisDescEnd
--**********************************
--任务入口函数
--**********************************
function x210209_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName(sceneId,targetId) ~= x210209_g_Name_0 then
		x210209_OnContinue( sceneId, selfId, targetId )
	end
end

--**********************************
--列举事件
--**********************************
function x210209_OnEnumerate( sceneId, selfId, targetId )
	
	if x210209_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) == x210209_g_Name_1 then
			if	HaveSkill(  sceneId, selfId, 241)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_2	 then
			if	HaveSkill(  sceneId, selfId, 242)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_3	 then
			if	HaveSkill(  sceneId, selfId, 243)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_4	then
			if	HaveSkill(  sceneId, selfId, 244)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_5 then
			if	HaveSkill(  sceneId, selfId, 245)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_6 then
			if	HaveSkill(  sceneId, selfId, 246)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_7 then
			if	HaveSkill(  sceneId, selfId, 247)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_8 then
			if	HaveSkill(  sceneId, selfId, 248)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_Name_9 then
			if	HaveSkill(  sceneId, selfId, 249)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_MissionName,6,-1);
			end
		end
	end
	
	if GetName(sceneId,targetId) == x210209_g_Name_1 then
		--添加门派介绍
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l竎h Thi猽 L鈓 ph醝",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g ph醝 Thi猽 L鈓",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g cu礳 s痭g Thi猽 L鈓",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Ch鵤 c� Thi猽 L鈓",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_2	 then
		--添加门派介绍
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l竎h Minh Gi醥 ph醝",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g chi猲 黏u Minh Gi醥",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g cu礳 s痭g Minh Gi醥",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"姓i Quang Minh 酗nh",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_3	 then
		--添加门派介绍
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l竎h C醝 Bang ph醝",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g chi猲 黏u C醝 Bang",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g cu礳 s痭g C醝 Bang",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"C醝 Bang T眓g 朽 ",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_4	then
		--添加门派介绍
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l竎h V� 衋ng ph醝",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g ph醝 V� 衋ng",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g cu礳 s痭g V� 衋ng",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"V� 衋ng Ti阯 Phong",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_5 then
		--添加门派介绍
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l竎h Nga My ph醝",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g ph醝 Nga My",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g cu礳 s痭g Nga My",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Nga My Thi阯 h� t�",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_6 then
		--添加门派介绍
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l竎h Tinh T鷆 ph醝",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g ph醝 Tinh T鷆",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g cu礳 s痭g Tinh T鷆",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Tinh T鷆 Xu鈔 Thu",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_7 then
		--添加门派介绍
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l竎h Thi阯 Long ph醝",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g ph醝 Thi阯 Long",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g cu礳 s痭g Thi阯 Long",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Thi阯 Long Phong T靚h",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_8 then
		--添加门派介绍
		AddNumText(sceneId, x210209_g_ScriptId,"Nguy阯 do c黙 ph醝 Thi阯 S絥",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g ph醝 Thi阯 S絥",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"校c tr遪g cu礳 s痭g Thi阯 S絥",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Phi陁 Di璾 Thi阯 S絥",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_Name_9 then
		--添加门派介绍
		AddNumText(sceneId, x210209_g_ScriptId,"Xu x� c黙 ph醝 Ti陁 Dao",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Chi猲 黏u 穑c s c黙 ph醝 Ti陁 Dao",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Cu礳 s痭g 穑c s c黙 ph醝 Ti陁 Dao",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"L錸g Ba Ti陁 Dao",11,13);
	end

end

--**********************************
--检测接受条件
--**********************************
function x210209_CheckAccept( sceneId, selfId )
	--需要有道具才能接
	if	HaveItemInBag ( sceneId, selfId, x210209_g_ItemId)>0	then
		return 1
	else
		return 0
	end
end

--**********************************
--接受
--**********************************
function x210209_OnAccept( sceneId, selfId )
	--加入任务到玩家列表
	AddMission( sceneId,selfId, x210209_g_MissionId, x210209_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh nhi甿 v�: k� n錸g h鱟 t",MSG2PLAYER_PARA )
end

--**********************************
--放弃
--**********************************
function x210209_OnAbandon( sceneId, selfId )
	--删除玩家任务列表中对应的任务
    DelMission( sceneId, selfId, x210209_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, g_SignPost.tip )
end

--**********************************
--继续
--**********************************
function x210209_OnContinue( sceneId, selfId, targetId )
    --提交任务时的说明信息
    BeginEvent(sceneId)
		AddText(sceneId,x210209_g_MissionName)
		AddText(sceneId,x210209_g_MissionComplete)
		AddText(sceneId,"C醕 h� s� 疬㧟 h鱟 1 k� n錸g m緄")
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210209_g_ScriptId,x210209_g_MissionId)
end

--**********************************
--检测是否可以提交
--**********************************
function x210209_CheckSubmit( sceneId, selfId, selectRadioId )
	if	HaveItemInBag (  sceneId, selfId, x210209_g_ItemId)==1	then
		return 1
	else
		return 0
	end
end

--**********************************
--提交
--**********************************
function x210209_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210209_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--添加任务奖励
		DelMission( sceneId, selfId, x210209_g_MissionId )
		MissionCom( sceneId, selfId, x210209_g_MissionId )
		if  GetName(sceneId,targetId) == x210209_g_Name_1	then
			--判定玩家是不是已经学会了这个技能，会了就不让在学习了
			if  HaveSkill(sceneId, selfId, 241) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 241)
			BeginEvent(sceneId)
				strText = "Ng呓i 疸 h鱟 疬㧟 k� n錸g m緄: k� n錸g T鈔 th� Thi猽 L鈓: Ngo読 c鬾g h� th�"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_2	then
			--判定玩家是不是已经学会了这个技能，会了就不让在学习了
			if  HaveSkill(sceneId, selfId, 242) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 242)
			BeginEvent(sceneId)
				strText = "Ng呓i 疸 h鱟 疬㧟 k� n錸g m緄: k� n錸g T鈔 th� Minh Gi醥: Ra s裞 c鬾g k韈h"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_3	then
			--判定玩家是不是已经学会了这个技能，会了就不让在学习了
			if  HaveSkill(sceneId, selfId, 243) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 243)
			BeginEvent(sceneId)
				strText = "Ng呓i 疸 h鱟 疬㧟 k� n錸g m緄: k� n錸g T鈔 th� C醝 Bang: C鬾g k韈h Y猽 Hi琺"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_4	then
			--判定玩家是不是已经学会了这个技能，会了就不让在学习了
			if  HaveSkill(sceneId, selfId, 244) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 244)
			BeginEvent(sceneId)
				strText = "Ng呓i 疸 h鱟 疬㧟 k� n錸g m緄: k� n錸g T鈔 th� V� 衋ng: C鬾g k韈h N礽 K靚h"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_5	then
			--判定玩家是不是已经学会了这个技能，会了就不让在学习了
			if  HaveSkill(sceneId, selfId, 245) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 245)
			BeginEvent(sceneId)
				strText = "Ng呓i 疸 h鱟 疬㧟 k� n錸g m緄: k� n錸g T鈔 th� Nga My: Tr� li畊 s� c"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_6	then
			--判定玩家是不是已经学会了这个技能，会了就不让在学习了
			if  HaveSkill(sceneId, selfId, 246) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 246)
			BeginEvent(sceneId)
				strText = "Ng呓i 疸 h鱟 疬㧟 k� n錸g m緄: k� n錸g T鈔 th� Tinh T鷆: N礽 c鬾g h� th�"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_7	then
			--判定玩家是不是已经学会了这个技能，会了就不让在学习了
			if  HaveSkill(sceneId, selfId, 247) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 247)
			BeginEvent(sceneId)
				strText = "Ng呓i 疸 h鱟 疬㧟 k� n錸g m緄: k� n錸g T鈔 th� Thi阯 Long: C鬾g k韈h y猽 餴琺"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_8	then
			--判定玩家是不是已经学会了这个技能，会了就不让在学习了
			if  HaveSkill(sceneId, selfId, 248) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 248)
			BeginEvent(sceneId)
				strText = "Ng呓i 疸 h鱟 疬㧟 k� n錸g m緄: k� n錸g T鈔 th� Thi阯 S絥: 膎h 械n s� c"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_Name_9	then
			--判定玩家是不是已经学会了这个技能，会了就不让在学习了
			if  HaveSkill(sceneId, selfId, 249) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 249)
			BeginEvent(sceneId)
				strText = "Ng呓i 疸 h鱟 疬㧟 k� n錸g m緄: k� n錸g T鈔 th� Thi猽 L鈓: B鵱g Ch醳 C誱 B鐈"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
		--扣除任务物品
		DelItem( sceneId, selfId, x210209_g_ItemId, 1 )
	end
	Msg2Player(  sceneId, selfId,"#YHo鄋 t nhi甿 v�: k� n錸g h鱟 t",MSG2PLAYER_PARA )
end

--**********************************
--杀死怪物或玩家
--**********************************
function x210209_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--进入区域事件
--**********************************
function x210209_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x210209_OnItemChanged( sceneId, selfId, itemdataId )
end
