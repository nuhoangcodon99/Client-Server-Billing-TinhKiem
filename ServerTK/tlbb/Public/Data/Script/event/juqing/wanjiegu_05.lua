-- 

--��������
--��ٹ�,����

-- T�i ������to� � �����½��������ٹ�,T�i ��ٹ������˴����o�n D�to� � ��Ϣ.
-- �ӳ����Դ��Լ�to� � С��ȥ���C�i n�y ����,ֻҪ�ӳ���C�i n�y ����Ϳ���,
-- еi vi�n ֻ�ܶ��Խ��븱��,�������C�i n�y ����

--************************************************************************
--MisDescBegin
--�ű���
x200005_g_ScriptId = 200005

-- Ⱥ�廤��to� � ����Id
x200005_g_Groupid = 0

--MisDescEnd
--************************************************************************

--��������
x200005_g_CopySceneName = "V�n Ki�p C�c"

x200005_g_CopySceneType = FUBEN_JUQING	--��������,����T�i ScriptGlobal.lua����

x200005_g_CopySceneMap = "wanjie.nav"
x200005_g_Exit = "wanjie.ini"
x200005_g_LimitMembers = 1				--���Խ�����to� � ��С��������
x200005_g_TickTime = 5					--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x200005_g_LimitTotalHoldTime = 360		--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x200005_g_LimitTimeSuccess = 500		--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x200005_g_CloseTick = 3					--�����ر�ǰ����ʱ(��λ: ����)
x200005_g_NoUserTime = 300				--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x200005_g_DeadTrans = 0					--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x200005_g_Fuben_X = 108					--���븱��to� � λ��X
x200005_g_Fuben_Z = 115					--���븱��to� � λ��Z
x200005_g_Back_X = 192					--Դ����λ��X
x200005_g_Back_Z = 110					--Դ����λ��Z

--**********************************
--������ں���
--**********************************
function x200005_OnDefaultEvent( sceneId, selfId, targetId )
	
	-- �������to� � ���,������͵�����
	-- ����Ͳ�T�i �����,
	x200005_MakeCopyScene(sceneId, selfId)
	
end

--**********************************
--�о��¼�
--**********************************
function x200005_OnEnumerate( sceneId, selfId, targetId )
	
	-- ���8�����,�Ͳ����ٽ����ж���,�����ܽ�ȥ
	if IsMissionHaveDone(sceneId, selfId, 8) > 0   then
		return 0
	end
	
	-- ���T�i ʲô����¿��Խ��븱��,
	-- 1,������5���Խ�ȥ
	if IsHaveMission( sceneId, selfId, 5 ) > 0 then
		AddNumText( sceneId, x200005_g_ScriptId, "H�y ��a ta t�i V�n Ki�p C�c (ng�y)", 10 ,-1  )
		return 0
	end
	
	-- 2,������6���Խ�ȥ
	if IsHaveMission( sceneId, selfId, 6 ) > 0 then
		AddNumText( sceneId, x200005_g_ScriptId, "H�y ��a ta t�i V�n Ki�p C�c (ng�y)", 10 ,-1  )
		return 0
	end
	
	-- 3,������7���Խ�ȥ
	if IsHaveMission( sceneId, selfId, 7 ) > 0 then
		AddNumText( sceneId, x200005_g_ScriptId, "H�y ��a ta t�i V�n Ki�p C�c (ng�y)", 10 ,-1  )
		return 0
	end
	
	-- 4,������8���Խ�ȥ
	if IsHaveMission( sceneId, selfId, 8 ) > 0 then
		AddNumText( sceneId, x200005_g_ScriptId, "H�y ��a ta t�i V�n Ki�p C�c (ng�y)", 10 ,-1  )
		return 0
	end
	
	-- 5,ֻҪ���������5,û��6,7,8����,�����Խ�ȥ
	if IsMissionHaveDone(sceneId, selfId, 5) > 0   then
		if IsHaveMission(sceneId, selfId, 6) < 1   then
			AddNumText( sceneId, x200005_g_ScriptId, "H�y ��a ta t�i V�n Ki�p C�c (ng�y)", 10 ,-1  )
			return 0
		end
		if IsHaveMission(sceneId, selfId, 7) < 1   then
			AddNumText( sceneId, x200005_g_ScriptId, "H�y ��a ta t�i V�n Ki�p C�c (ng�y)", 10 ,-1  )
			return 0
		end
		if IsHaveMission(sceneId, selfId, 8) < 1   then
			AddNumText( sceneId, x200005_g_ScriptId, "H�y ��a ta t�i V�n Ki�p C�c (ng�y)", 10 ,-1  )
			return 0
		end
	end
	
end

--**********************************
--���Ti�p th�����
--**********************************
function x200005_CheckAccept( sceneId, selfId )
	
end

--**********************************
--ѯ�������ng��Ҫ���븱��
--**********************************
function x200005_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Ti�p th�
--**********************************
function x200005_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--���ͬ����븱��
--**********************************
function x200005_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--��������
--**********************************
function x200005_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "wanjie.nav"); --��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200005_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200005_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200005_g_CopySceneType);--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200005_g_ScriptId);--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--���ø����رձ�־, 0����,1�ر�
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --��������
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--ɱ��Bossto� � ����

	-- �����õ�to� � �������
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	--���ó�����to� � ����Npc������
	LuaFnSetSceneLoad_Area( sceneId, "wanjie_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "wanjie_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --��ʼ����ɺ���ô�����������
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D�ch chuy�n th�nh c�ng!");
		else
			AddText(sceneId,"S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--�����¼�
--**********************************
function x200005_OnCopySceneReady( sceneId, destsceneId )

	--���븱��to� � ����
	-- 1,���C�i n�y �ļ�û�����,�ʹ���C�i n�y �ļ��Լ����븱��
	-- 2, �������ж���,����ng��Ҳ���ng�ӳ�,�ʹ����Լ����븱��
	-- 3,�������ж���,����C�i n�y �����ng�ӳ�,�ʹ����Լ��͸�������m�t ���ȥ

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--���ø�����ڳ�����
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;	
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- �����޷�ִ���߼�to� � ״̬
		return
	end
	
	-- ��������ng����ng�ж���
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- û�ж���
		NewWorld( sceneId, leaderObjId, destsceneId, x200005_g_Fuben_X, x200005_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200005_g_Fuben_X, x200005_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				
				NewWorld( sceneId, mems[i], destsceneId, x200005_g_Fuben_X, x200005_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x200005_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x200005_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--����
--**********************************
function x200005_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- �س�,ֻ��Th�nh ph� ���񸱱����Ե��ô˽ӿ�
--**********************************
function x200005_BackToCity( sceneId, selfId )
	
end

--**********************************
--����
--**********************************
function x200005_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200005_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x200005_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--ɱ����������
--**********************************
function x200005_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--���������¼�
--**********************************
function x200005_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200005_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--����������ʱ���¼�
--**********************************
function x200005_OnCopySceneTimer( sceneId, nowTime )
	-- ����1,Ⱥ�廤��,
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- û����to� � ����,ʲô������
	if nHumanNum < 1 then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId,0)

	local nJuqingStep = LuaFnGetCopySceneData_Param(sceneId, 11)
	local targetId = LuaFnGetCopySceneData_Param(sceneId, 12)
	
	if nJuqingStep == 1  then
		LuaFnSetCopySceneData_Param(sceneId, 11, 2)
		for i=0, 	nHumanNum-1  do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			
			-- ���ý�����to� � ���
			CallScriptFunction((200007), "OnDefaultEvent",sceneId, nHumanId, targetId )
		end
		LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		CallScriptFunction((200060), "Duibai",sceneId, "�o�n Ch�nh Thu�n", "V�n Ki�p C�c", "#{juqing_start_004}" )
		
	elseif nJuqingStep == 2  then
		-- �o�n Ch�nh Thu�nto� � ����
		CallScriptFunction((200060), "Duibai",sceneId, "�o�n Ch�nh Thu�n", "V�n Ki�p C�c", "#{juqing_start_005}" )
		LuaFnSetCopySceneData_Param(sceneId, 11, 3)

	elseif nJuqingStep == 3  then
	
		CallScriptFunction((200060), "Duibai",sceneId, "�o�n Ch�nh Thu�n", "V�n Ki�p C�c", "#{juqing_start_006}" )
	
		-- ����T�i ����������C�i n�y ��������
		ReleaseMonsterGroup(sceneId, x200005_g_Groupid)
		
		--local groupId = AllocateMonsterGroup(sceneId)
		local nFanyi
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local bHaveMonster = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "Ph�m Hoa"  then
				AddGroupLeader(sceneId, x200005_g_Groupid, nMonsterId) --leader
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				nFanyi = nMonsterId
			end
			if GetName(sceneId, nMonsterId)  == "Cao Th�ng Th�i"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 2, 1)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)

			end
			if GetName(sceneId, nMonsterId)  == "�ao B�ch Ph�ng"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 1, 2)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
			end
			if GetName(sceneId, nMonsterId)  == "Ch� V�n L�"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 0, 2)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
			end
			if GetName(sceneId, nMonsterId)  == "�o�n Ch�nh Thu�n"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 1, 0)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
			end
			if GetName(sceneId, nMonsterId)  == "Th�i B�ch Tuy�n"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 2, 0)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
			end
			if GetName(sceneId, nMonsterId)  == "Qu� Ng�n Chi"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 2, 2)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
			end
			if GetName(sceneId, nMonsterId)  == "C� Яc Th�nh"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 3, 0)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
			end
			if GetName(sceneId, nMonsterId)  == "Ph� T� Quy"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 3, 2)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
			end
		end
		
		SetIntervalDistOfGroupMember(sceneId, x200005_g_Groupid, 1)
	
		-- �i�m������Ѳ��·��
		SetPatrolId(sceneId, nFanyi, 0)
		RefixPosOfGroupMember(sceneId,x200005_g_Groupid,targetId)
		LuaFnSetCopySceneData_Param(sceneId, 11, 4)
		
	elseif nJuqingStep == 4  then
		-- �ж�NPC��ng����ng�Ѿ�������
		local targetX, targetZ = GetWorldPos(sceneId, targetId)
		local patrolPathIndex = 0
		local x, z = GetLastPatrolPoint(sceneId, patrolPathIndex)
		local distance2 = floor(sqrt((targetX-x)*(targetX-x)+(targetZ-z)*(targetZ-z)))
		if distance2 <= 5 then
			LuaFnSetCopySceneData_Param(sceneId, 11, 5)
			
			-- ֪ͨ������to� � ������,�������
			for i=0, 	nHumanNum-1  do
				local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			  BeginEvent(sceneId)
			  	AddText(sceneId, "Ho�n th�nh t�nh ti�t \"��i ti�n qu�n\"")
			  EndEvent()
			  DispatchMissionTips(sceneId, nHumanId)
			  
			  -- ����C�i n�y ����to� � �˼�����ɱ�־
			  if IsHaveMission(sceneId, nHumanId, 7) > 0 then
					local misIndex = GetMissionIndexByID(sceneId,nHumanId,7)
					SetMissionByIndex( sceneId, nHumanId, misIndex, 0, 1)
					SetMissionByIndex( sceneId, nHumanId, misIndex, 1, 1)
			  end
			end
			
			-- ���������ܶԻ�
			local nMonsterNum = GetMonsterCount(sceneId)
			local jj = 0
			for jj=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,jj)
				if GetName(sceneId, nMonsterId)  == "Ph�m Hoa"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "Cao Th�ng Th�i"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "�ao B�ch Ph�ng"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "Ch� V�n L�"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "�o�n Ch�nh Thu�n"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "Th�i B�ch Tuy�n"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "Qu� Ng�n Chi"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "C� Яc Th�nh"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "Ph� T� Quy"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
			end
			CallScriptFunction((200060), "Duibai",sceneId, "�o�n Ch�nh Thu�n ", "V�n Ki�p C�c", "Ho�ng huynh, ch�ng ta t�i c�u D� Nhi ��y!" )
		end
		
	elseif nJuqingStep == 5  then
		--PrintNum(4)
	end
end

