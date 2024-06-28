-- ����ׯ֮ L�c D߽ng�������ͣ��ص㲿��Ŷ
-- �����������������21��Ȼ�����L�c D߽ng���¼�����

--MisDescBegin
--�ű���
x200022_g_ScriptId = 200022

--�����
x200022_g_MissionId = 22

--ǰ�������
x200022_g_PreMissionId = 47

--Ŀ��NPC
x200022_g_Name	="Ki�u Phong"
x200022_g_Name1 ="T� Kinh L�i"

--�������
x200022_g_MissionKind = 47

--����ȼ�
x200022_g_MissionLevel = 40

--�Ƿ��Ǿ�Ӣ����
x200022_g_IfMissionElite = 0

--������
x200022_g_MissionName="D� v�n ng߶i, ta v�n c� ti�n"
--��������
x200022_g_MissionInfo="#{Mis_juqing_0022}"
--����Ŀ��
x200022_g_MissionTarget="#{Mis_juqing_Tar_0022}"		
--�ύʱnpc�Ļ�
x200022_g_MissionComplete="  Ki�u Phong th�t l�...l� n�o huynh ta ch� v� m�t c� n߽ng, d�m qu�n c� t�nh m�ng m�nh? Kh�ng kh�o gi� ��y T� Hi�n Trang �� ��i lo�n m�t.."		

x200022_g_MoneyBonus=9000
x200022_g_exp=9600

x200022_g_RadioItemBonus={{id=10423008 ,num=1},{id=10423009,num=1},{id=10423010,num=1},{id=10423011,num=1}}

x200022_g_Custom	= {{id="D� v�n ng߶i, ta v�n c� ti�n",num=1}}

--MisDescEnd

-- ����Id
x200022_g_GroupId = 0

-- ����·��Id
x200022_g_PatrolPathIndex = 4

-- ������ʱ��Index
x200022_g_SceneTimerIndex = -1
x200022_g_Step = 0
x200022_g_StartTime = 0
x200022_g_PlayerNum = 0
x200022_g_PlayerId= {-1,-1,-1,-1,-1,-1}

function x200022_DisplayBonus(sceneId, missionIndex)
	
end

--**********************************
--������ں���
--**********************************
function x200022_OnDefaultEvent( sceneId, selfId, targetId, missionIndex )	--����������ִ�д˽ű�

	--��������ɹ��������
	if (IsMissionHaveDone(sceneId,selfId,x200022_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200022_g_MissionId) > 0)  then
		if GetName(sceneId, targetId) == x200022_g_Name1   then
			x200022_OnContinue( sceneId, selfId, targetId )
		end
	
	--���������������
	elseif x200022_CheckAccept(sceneId,selfId) > 0 then
		-- �ж����ڸ�����
		if GetName(sceneId, targetId) == x200022_g_Name   then
			--�����������ʱ��ʾ����Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x200022_g_MissionName)
				AddText(sceneId,x200022_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200022_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				for i, item in x200022_g_RadioItemBonus do
					AddRadioItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x200022_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200022_g_ScriptId,x200022_g_MissionId)
		end
	end

end

function x200022_OnMissionRefuse()
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x200022_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetName(sceneId, targetId) == x200022_g_Name   then
		if GetNumText() == 0    then
			BeginEvent(sceneId)
				AddText(sceneId,x200022_g_MissionName)
				AddText(sceneId,x200022_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200022_g_MissionTarget)
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200022_g_ScriptId,x200022_g_MissionId)
		end
	end
	
end

--**********************************
--�о��¼�
--**********************************
function x200022_OnEnumerate( sceneId, selfId, targetId )
	--��������ɹ��������
	if IsMissionHaveDone(sceneId,selfId,x200022_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200022_g_MissionId) > 0 then
		if GetName(sceneId, targetId) == x200022_g_Name1   then
			AddNumText(sceneId, x200022_g_ScriptId,x200022_g_MissionName,2,-1);
		end
	--���������������
	elseif x200022_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId, targetId) == x200022_g_Name    then
			AddNumText(sceneId,x200022_g_ScriptId,x200022_g_MissionName,1,-1);
		end
	end

end

--**********************************
-- 
--**********************************
function x200022_OnLockedTarget( sceneId, selfId, targetId, missionIndex )

end

--**********************************
--����������
--**********************************
function x200022_CheckAccept( sceneId, selfId )
	-- ������������ǣ�����ﵽ20�����ϣ����������ǰ������
	if GetLevel(sceneId, selfId) < 40   then
		return 0
	end
	
	if IsMissionHaveDone(sceneId, selfId, x200022_g_PreMissionId ) < 1   then
		return 0
	end
	
	return 1
end

--**********************************
--����
--**********************************
function x200022_OnAccept( sceneId, selfId, targetId )

	-- �������ǲ����Ѿ���ɹ��������
	if IsMissionHaveDone(sceneId, selfId, x200022_g_MissionId) > 0   then
		return
	end
	
	if x200022_CheckAccept(sceneId, selfId)  < 1   then
		return
	end

	if x200022_g_Step ~= 0  and x200022_g_Step ~= 2   then
		BeginEvent(sceneId)
			AddText(sceneId, "M�c ti�u �ang b�n, xin ��i m�t l�t!")
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
		return
	end
	
	-- ����Ļ�����Ҫ���������ļ�ʱ��������ʹ�������ʱ��
	if x200022_g_Step == 0   then
		local ret = AddMission( sceneId,selfId, x200022_g_MissionId, x200022_g_ScriptId, 0, 0, 0 )
		if ret <= 0 then
			Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
			return
		end
		
		-- ���������ʱ����Ӧ����һֱ������ռ�õģ����ԣ�ֻҪ���ֵ������-1���Ͳ�Ҫ������
		if x200022_g_SceneTimerIndex == -1  then
			x200022_g_SceneTimerIndex = SetTimer(sceneId, selfId, x200022_g_ScriptId, "OnSceneTimer", 1)
		end
		
		x200022_g_StartTime = LuaFnGetCurrentTime()
		x200022_g_Step = 1
		
		x200022_g_PlayerId[1] = selfId
		x200022_g_PlayerNum = 1
		
		Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: D� v�n ng߶i, ta v�n c� ti�n",MSG2PLAYER_PARA )
		
		LuaFnSetCopySceneData_Param(sceneId,20,x200022_g_Step)
		LuaFnSetCopySceneData_Param(sceneId,21,x200022_g_PlayerId[1])
		x200022_OnSceneTimer( sceneId, selfId )
	end
	
	if x200022_g_Step == 2   then
		-- �������Ҽӵ������б���ȥ
		if x200022_g_PlayerNum >= 6   then
			-- ���βμӻ��͵��������ˣ������٣���
			Msg2Player(  sceneId, selfId,"#YS� ng߶i tham gia l�n h� t�ng n�y �� �y, xin ch� l�n sau!" , MSG2PLAYER_PARA )
			return
		end
		
		local ret = AddMission( sceneId,selfId, x200022_g_MissionId, x200022_g_ScriptId, 0, 0, 0 )
		if ret <= 0 then
			Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
			return
		end
		x200022_g_Step=LuaFnSetCopySceneData_Param(sceneId,20,0)
		x200022_g_PlayerNum = x200022_g_PlayerNum + 1
		x200022_g_PlayerId[x200022_g_PlayerNum] = selfId
		Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: D� v�n ng߶i, ta v�n c� ti�n",MSG2PLAYER_PARA )
	end
	
end

--**********************************
--����Timer
--**********************************
function x200022_OnSceneTimer( sceneId, selfId )
	--PrintNum(x200g022_g_Step)

	x200022_g_Step=LuaFnGetCopySceneData_Param(sceneId,20)
	
	-- ���ֻҪKi�u Phong�Ͱ����е��κ�һ���˲��ڳ������ˣ���������е�ȫ�ֱ���
	local nNpcNum = GetMonsterCount(sceneId)
	local kk = 0
	local bHaveQiao = 0
	for kk = 0, nNpcNum-1 do
		local nNpcId = GetMonsterObjID(sceneId,kk)
		if GetName(sceneId, nNpcId)  == "Ki�u Phong"  then
			bHaveQiao = 1+bHaveQiao
		end
		
		if GetName(sceneId, nNpcId)  == "A Ch�u"  then
			bHaveQiao = 1+bHaveQiao
		end
	end
	
	if 	bHaveQiao ~= 2   then
		--StopTimer(sceneId, x200022_g_SceneTimerIndex)
		--x200022_g_SceneTimerIndex = -1
		x200022_g_Step = 0
		x200022_g_StartTime = 0
		x200022_g_PlayerId[1] = -1
		x200022_g_PlayerId[2] = -1
		x200022_g_PlayerId[3] = -1
		x200022_g_PlayerId[4] = -1
		x200022_g_PlayerId[5] = -1
		x200022_g_PlayerId[6] = -1
		x200022_g_PlayerNum = 0
		x200022_g_StartTime = 0
		LuaFnSetCopySceneData_Param(sceneId,20,x200022_g_Step)
		return
	end
	
	
	if x200022_g_Step == 1   then
		-- ��С�ӵ�������ҷ���һ���͵�����
		--local groupId = AllocateMonsterGroup(sceneId)
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local nQiaofenId = 0
		local bHaveMonster = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "Ki�u Phong"  then
				nQiaofenId = nMonsterId
				bHaveMonster = 1
			end
		end
		
		for i=1, x200022_g_PlayerNum  do	
			if x200022_g_PlayerId[i] ~= -1  then
				if LuaFnIsObjValid(sceneId, x200022_g_PlayerId[i])==1  and
					 LuaFnIsCanDoScriptLogic(sceneId, x200022_g_PlayerId[i]) == 1   then
					bHavePlayer = 1
					nSelfId = x200022_g_PlayerId[i]
					
					break
				end
			end
		end
--		PrintNum(nSelfId)
--		PrintNum(x200022_g_PlayerNum)
		local nTeamCount = GetNearTeamCount(sceneId, nSelfId)
		for i=0, nTeamCount-1 do
			local PlayerId = GetNearTeamMember(sceneId, nSelfId, i)
			if PlayerId ~= nSelfId    then
				CallScriptFunction((200022), "OnDefaultEvent", sceneId, PlayerId, nQiaofenId )
			end
		end
		
		-- �������������������
		--x200022_g_PlayerNum = 1
		--x200022_g_PlayerId[1]= nSelfId
		x200022_g_StartTime = LuaFnGetCurrentTime()
		LuaFnSetCopySceneData_Param(sceneId,21,x200022_g_StartTime)
		
		x200022_g_Step = 2

		CallScriptFunction((200060), "Paopao",sceneId, "Ki�u Phong", "L�c D߽ng", "#{juqing_start_007}")
		LuaFnSetCopySceneData_Param(sceneId,20,x200022_g_Step)
		
	elseif x200022_g_Step == 2   then
		-- �ȴ�5�룬���ʱ���ǵȴ�������һ�����������͵�ʱ��
		x200022_g_StartTime=LuaFnGetCopySceneData_Param(sceneId,21)
		if LuaFnGetCurrentTime() - x200022_g_StartTime > 5   then
			CallScriptFunction((200060), "Paopao",sceneId, "Ki�u Phong", "L�c D߽ng", "#{juqing_start_008}")
			x200022_g_Step = 3
			LuaFnSetCopySceneData_Param(sceneId,20,x200022_g_Step)
			return
		end
		
	elseif x200022_g_Step == 3   then
		CallScriptFunction((200060), "Paopao",sceneId, "Ki�u Phong", "L�c D߽ng", "#{juqing_start_009}")
		
		-- ����һ��Ѳ���飬��ʼ��
		--local groupId = AllocateMonsterGroup(sceneId)

		-- ԭ�����õ�������һ���µ�Ѳ���飬����ʹ��һ���̶���Ѳ���������
		-- �ڿ�ʼ���Ⱥ�廤��ǰ�������һ�������
		ReleaseMonsterGroup(sceneId, x200022_g_GroupId)
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local nHaveMonster = 0
		local nQiaofenId = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "A Ch�u"  then
				AddGroupMember(sceneId, x200022_g_GroupId, nMonsterId, 2, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
				nHaveMonster = nHaveMonster + 1
			end
			if GetName(sceneId, nMonsterId)  == "Ki�u Phong"  then
				AddGroupLeader(sceneId, x200022_g_GroupId, nMonsterId)
				nQiaofenId = nMonsterId
				nHaveMonster = nHaveMonster + 1
			end
		end
		SetIntervalDistOfGroupMember(sceneId, x200022_g_GroupId, 1)
		
		RefixPosOfGroupMember(sceneId,x200022_g_GroupId,nQiaofenId)
		--�õ�����Ѳ��·��
		SetPatrolId(sceneId, nQiaofenId, x200022_g_PatrolPathIndex)
		
		x200022_g_Step = 4
		LuaFnSetCopySceneData_Param(sceneId,20,x200022_g_Step)
		
	elseif x200022_g_Step == 4   then
	
		-- ��⻤�͵����������Ki�u Phong �ߵ���Ŀ���
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local bHaveMonster = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "Ki�u Phong"  then
				-- �ж�Ki�u Phong�ǲ����ߵ���
				local targetX, targetZ = GetWorldPos(sceneId, nMonsterId)
				local x, z = GetLastPatrolPoint(sceneId, x200022_g_PatrolPathIndex)
				local Pos_X,Pos_Y=GetWorldPos(sceneId,selfId)
				if floor(sqrt((targetX-Pos_X)*(targetX-Pos_X)+(targetZ-Pos_Y)*(targetZ-Pos_Y)))>=20 then
					BeginEvent(sceneId)
						AddText(sceneId, "H� t�ng Ki�u Phong th�t b�i, kho�ng c�ch qu� xa!")
					EndEvent()
					DispatchMissionTips(sceneId, selfId)
					LuaFnSetCopySceneData_Param(sceneId,20,0)
					for kk=0, nMonsterNum-1 do
						local nMonsterId1 = GetMonsterObjID(sceneId,kk)
						if GetName(sceneId, nMonsterId1)  == "Ki�u Phong" or  GetName(sceneId, nMonsterId1)  == "A Ch�u" then
							SetCharacterDieTime(sceneId,nMonsterId1,100)
						end
					end
					local misIndex = GetMissionIndexByID(sceneId, selfId, x200022_g_MissionId)--�õ�������20�������е����к�
					SetMissionByIndex(sceneId, selfId, misIndex, 0, 2)
					return
				end
				
				local distance = floor(sqrt((targetX-x)*(targetX-x)+(targetZ-z)*(targetZ-z)))
				
				if distance<=2   then
					x200022_g_Step = 5
					LuaFnSetCopySceneData_Param(sceneId,20,x200022_g_Step)
					-- ֪ͨ�����ˣ����ͳɹ�
					x200022_g_PlayerId[1]=selfId
					x200022_g_PlayerNum=1
					for i=1, x200022_g_PlayerNum   do
						if x200022_g_PlayerId[i]~=-1   then
							local misIndex = GetMissionIndexByID(sceneId, x200022_g_PlayerId[i], x200022_g_MissionId)--�õ�������20�������е����к�
							SetMissionByIndex(sceneId, x200022_g_PlayerId[i], misIndex, 0, 1)
							BeginEvent(sceneId)
								AddText(sceneId, "H� t�ng Ki�u Phong th�nh c�ng!")
							EndEvent()
							DispatchMissionTips(sceneId, x200022_g_PlayerId[i])
						end
					end
				end
			end
		end
		
	elseif x200022_g_Step == 5  then
		--��������
		CallScriptFunction((200060), "Paopao",sceneId, "T� Kinh L�i", "L�c D߽ng", "#{JQ_PaoPao_79}") 
		x200022_g_Step = 6
		LuaFnSetCopySceneData_Param(sceneId,20,x200022_g_Step)
		x200022_g_StartTime = LuaFnGetCurrentTime()
		LuaFnSetCopySceneData_Param(sceneId,21,x200022_g_StartTime)
		
		
	elseif x200022_g_Step == 6  then
		x200022_g_StartTime=LuaFnGetCopySceneData_Param(sceneId,21)
		if LuaFnGetCurrentTime()-x200022_g_StartTime > 3   then
			CallScriptFunction((200060), "Paopao",sceneId, "Ki�u Phong", "L�c D߽ng", "#{JQ_PaoPao_80}")
			x200022_g_Step = 7
			LuaFnSetCopySceneData_Param(sceneId,20,x200022_g_Step)
			x200022_g_StartTime = LuaFnGetCurrentTime()
		end
		
	elseif x200022_g_Step == 7  then
		x200022_g_StartTime=LuaFnGetCopySceneData_Param(sceneId,21)
		if LuaFnGetCurrentTime()-x200022_g_StartTime > 3   then
			CallScriptFunction((200060), "Paopao",sceneId, "T� Kinh L�i", "L�c D߽ng", "#{JQ_PaoPao_81}")
			x200022_g_Step = 8
			LuaFnSetCopySceneData_Param(sceneId,20,x200022_g_Step)
			x200022_g_StartTime = LuaFnGetCurrentTime()
		end
		
	elseif x200022_g_Step == 8  then
		x200022_g_StartTime=LuaFnGetCopySceneData_Param(sceneId,21)
		if LuaFnGetCurrentTime()-x200022_g_StartTime > 5   then
			x200022_g_Step = 0
			LuaFnSetCopySceneData_Param(sceneId,20,x200022_g_Step)
			x200022_g_StartTime = 0
			x200022_g_PlayerId[1] = -1
			x200022_g_PlayerId[2] = -1
			x200022_g_PlayerId[3] = -1
			x200022_g_PlayerId[4] = -1
			x200022_g_PlayerId[5] = -1
			x200022_g_PlayerId[6] = -1
			x200022_g_PlayerNum = 0
			x200022_g_StartTime = 0
			
			--ɾ��Ki�u Phong��A Ch�u
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				if GetName(sceneId, nMonsterId)  == "Ki�u Phong"  then
					--LuaFnDeleteMonster(sceneId, nMonsterId)
					SetCharacterDieTime(sceneId,nMonsterId,2000)
				end
				
				if GetName(sceneId, nMonsterId)  == "A Ch�u"  then
					--LuaFnDeleteMonster(sceneId, nMonsterId)
					SetCharacterDieTime(sceneId,nMonsterId,2000)
				end
			end
		end	
	end
	
end

--**********************************
--����
--**********************************
function x200022_OnAbandon( sceneId, selfId )
  --������npc˲�ƻ�ԭ��λ��
  DelMission(sceneId, selfId, x200022_g_MissionId)
  
end

--**********************************
--����
--**********************************
function x200022_OnContinue( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText(sceneId,x200022_g_Name)
		AddText(sceneId,x200022_g_MissionComplete)
		AddText(sceneId,"#{M_MUBIAO}#r")
		AddText(sceneId,x200022_g_MissionTarget)
		AddText(sceneId,"#{M_SHOUHUO}#r")
		AddMoneyBonus( sceneId, x200022_g_MoneyBonus )
		for i, item in x200022_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	
	DispatchMissionContinueInfo(sceneId, selfId, targetId, x200022_g_ScriptId, x200022_g_MissionId)

end

--**********************************
--����Ƿ�����ύ
--**********************************
function x200022_CheckSubmit( sceneId, selfId )
	local misIndex = GetMissionIndexByID(sceneId, selfId, x200022_g_MissionId)--�õ�������20�������е����к�
	local bComplete = GetMissionParam(sceneId, selfId, misIndex, 0)	
		BeginEvent(sceneId)
			strText = bComplete
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	if bComplete == 1 then
		return 1
	else
		return 0
	end
end

--**********************************
--�ύ
--**********************************
function x200022_OnSubmit( sceneId, selfId, targetId, selectRadioId, missionIndex )
	-- ����ǲ�������������������
	if x200022_CheckSubmit(sceneId, selfId) ~= 1 then 
		return
	end
	BeginAddItem(sceneId)
	for i, item in x200022_g_RadioItemBonus do
		if item.id == selectRadioId then
			AddItem( sceneId,item.id, item.num )
		end
	end
	ret = EndAddItem(sceneId,selfId)
	--���������
	if ret < 1 then
		--������û�мӳɹ�
		BeginEvent(sceneId)
			strText = "Nhi�m v� th�t b�i!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	AddItemListToHuman(sceneId,selfId)

	AddMoney(sceneId,selfId,x200022_g_MoneyBonus );
	LuaFnAddExp( sceneId, selfId,x200022_g_exp)
	
	DelMission( sceneId,selfId, x200022_g_MissionId )
	--���������Ѿ�����ɹ�
	MissionCom( sceneId,selfId, x200022_g_MissionId )
	Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: D� v�n ng߶i, ta v�n c� ti�n",MSG2PLAYER_PARA )

end

function x200022_OnHumanDie(sceneId, selfId)

end

--**********************************
--��ʱ�¼�
--**********************************
function x200022_OnTimer(sceneId,selfId)--,missionIndex)
	
end


