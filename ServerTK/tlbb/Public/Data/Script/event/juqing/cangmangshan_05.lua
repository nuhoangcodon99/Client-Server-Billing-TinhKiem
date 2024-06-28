--200034
--T�i Nh�n Nam Ү��Ī��to� � ������,�������to� � ��ãɽ

--************************************************************************
--MisDescBegin
--�ű���
x200034_g_ScriptId = 200034

--MisDescEnd
--************************************************************************

--��������
x200034_g_CopySceneName = "Th߽ng Mang S�n"

x200034_g_CopySceneType = FUBEN_JUQING	--��������,����T�i ScriptGlobal.lua����

x200034_g_CopySceneMap = "cangmang.nav"
x200034_g_Exit = "cangmang.ini"
x200034_g_LimitMembers = 1				--���Խ�����to� � ��С��������
x200034_g_TickTime = 5					--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x200034_g_LimitTotalHoldTime = 360		--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x200034_g_LimitTimeSuccess = 500		--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x200034_g_CloseTick = 3					--�����ر�ǰ����ʱ(��λ: ����)
x200034_g_NoUserTime = 300				--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x200034_g_DeadTrans = 0					--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x200034_g_Fuben_X = 102					--���븱��to� � λ��X
x200034_g_Fuben_Z = 19					--���븱��to� � λ��Z
x200034_g_Back_X = 66					--Դ����λ��X
x200034_g_Back_Z = 56					--Դ����λ��Z

--**********************************
--������ں���
--**********************************
function x200034_OnDefaultEvent( sceneId, selfId, targetId )
	-- �������to� � ���,������͵���ͬto� � ����
	x200034_MakeCopyScene(sceneId, selfId)
end

--**********************************
--�о��¼�
--**********************************
function x200034_OnEnumerate( sceneId, selfId, targetId )
	
	--����ܹ�����ҹ��to� � ����to� � ǰ������
--	-- 0,�������Ѿ���32����,�Ͳ���T�i ����C�i n�y ����
	if IsMissionHaveDone(sceneId, selfId, 32) > 0   then
		return 0
	end

	-- 1,ӵ�������Ϊ29to� � ����,
	if IsHaveMission( sceneId, selfId, 29 ) > 0 then
		AddNumText( sceneId, x200034_g_ScriptId, "Ъn Th߽ng Mang S�n (ng�y)", 10 ,-1  )
		return 0
	end

	-- 2,ֻҪ�����30����,���ܽ���
	if IsHaveMission( sceneId, selfId, 30 ) > 0 then
		AddNumText( sceneId, x200034_g_ScriptId, "Ъn Th߽ng Mang S�n (ng�y)", 10 ,-1  )
		return 0
	end
	-- 3,ֻҪ�����31����,���ܽ���
	if IsHaveMission( sceneId, selfId, 31 ) > 0 then
		AddNumText( sceneId, x200034_g_ScriptId, "Ъn Th߽ng Mang S�n (ng�y)", 10 ,-1  )
		return 0
	end
	
	-- 3,�����������29,û��30,Ҳ�ܽ���
	if IsMissionHaveDone(sceneId, selfId, 29) > 0   then
		if IsMissionHaveDone(sceneId, selfId, 30) < 1   then
			if IsHaveMission( sceneId, selfId, 30 ) < 1 then
				AddNumText( sceneId, x200034_g_ScriptId, "Ъn Th߽ng Mang S�n (ng�y)", 10 ,-1  )
				return 0
			end
		end
	end

	-- 3,�����������29,û��30,Ҳ�ܽ���
	if IsMissionHaveDone(sceneId, selfId, 29) > 0   then
		if IsMissionHaveDone(sceneId, selfId, 31) < 1   then
			if IsHaveMission( sceneId, selfId, 31 ) < 1 then
				AddNumText( sceneId, x200034_g_ScriptId, "Ъn Th߽ng Mang S�n (ng�y)", 10 ,-1  )
				return 0
			end
		end
	end
	
	-- 3,�����������29,û��30,Ҳ�ܽ���
	if IsMissionHaveDone(sceneId, selfId, 29) > 0   then
		if IsMissionHaveDone(sceneId, selfId, 32) < 1   then
			if IsHaveMission( sceneId, selfId, 32 ) < 1 then
				AddNumText( sceneId, x200034_g_ScriptId, "Ъn Th߽ng Mang S�n (ng�y)", 10 ,-1  )
				return 0
			end
		end
	end
	
	-- ��32,���Խ���
	if IsHaveMission( sceneId, selfId, 32 ) > 0 then
		AddNumText( sceneId, x200034_g_ScriptId, "Ъn Th߽ng Mang S�n (ng�y)", 10 ,-1  )
		return 0
	end
	
end

--**********************************
--���Ti�p th�����
--**********************************
function x200034_CheckAccept( sceneId, selfId )
	
end

--**********************************
--ѯ�������ng��Ҫ���븱��
--**********************************
function x200034_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Ti�p th�
--**********************************
function x200034_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--���ͬ����븱��
--**********************************
function x200034_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--��������
--**********************************
function x200034_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "cangmang.nav"); --��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200034_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200034_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200034_g_CopySceneType);--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200034_g_ScriptId);--��1����������Ϊ���������¼��ű���
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
	LuaFnSetSceneLoad_Area( sceneId, "cangmang_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "cangmang_monster.ini" )

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
function x200034_OnCopySceneReady( sceneId, destsceneId )

	--���븱��to� � ����
	-- 1,���C�i n�y �ļ�û�����,�ʹ���C�i n�y �ļ��Լ����븱��
	-- 2, �������ж���,����ng��Ҳ���ng�ӳ�,�ʹ����Լ����븱��
	-- 3,�������ж���,����C�i n�y �����ng�ӳ�,�ʹ����Լ��͸�������m�t ���ȥ
	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --���ø�����ڳ�����
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- �����޷�ִ���߼�to� � ״̬
		return
	end
	
	-- ��������ng����ng�ж���
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- û�ж���
		NewWorld( sceneId, leaderObjId, destsceneId, x200034_g_Fuben_X, x200034_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200034_g_Fuben_X, x200034_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x200034_g_Fuben_X, x200034_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x200034_OnPlayerEnter( sceneId, selfId )
	-- ��ҽ��볡����,C�n ���³�����to� � ��������
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x200034_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--����
--**********************************
function x200034_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- �س�,ֻ��Th�nh ph� ���񸱱����Ե��ô˽ӿ�
--**********************************
function x200034_BackToCity( sceneId, selfId )
	
end

--**********************************
--����
--**********************************
function x200034_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200034_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x200034_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--ɱ����������
--**********************************
function x200034_OnKillObject( sceneId, selfId, objdataId, objId )
	
end

--**********************************
--���������¼�
--**********************************
function x200034_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200034_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--����������ʱ���¼�
--**********************************
function x200034_OnCopySceneTimer( sceneId, nowTime )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- û����to� � ����,ʲô������
	if nHumanNum < 1    then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId, 0)
	
	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 8) ;--����˵��
	local nTime  = LuaFnGetCopySceneData_Param(sceneId, 9);--ʱ��
	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 10) ;--����˵����

	-- paopao 
	local nStep3 = LuaFnGetCopySceneData_Param(sceneId, 11) ;--����˵����
	
	-- �԰�
	local nStep4 = LuaFnGetCopySceneData_Param(sceneId, 12) ;--����˵����
	local nStep5 = LuaFnGetCopySceneData_Param(sceneId, 13) ;--����˵����
	local nStep6 = LuaFnGetCopySceneData_Param(sceneId, 14) ;--����˵����
	local nStep7 = LuaFnGetCopySceneData_Param(sceneId, 15) ;--����˵����

	--
	local nStep8 = LuaFnGetCopySceneData_Param(sceneId, 20) ;--����˵����
	
	-- ��m�t �ξ���,��������,����·������
	if nStep1 == 1  then
		
		-- T�i 75,115 ���� ���� 406 ���Ѳ��·��
		-- �ȿ���������ng����ng�Ѿ��г�����
		local nMonsterNum = GetMonsterCount(sceneId)
		local nMonster = {}
		local ii = 0
		local bHaveMonster = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)  == "Gia Lu�t Ni�t L� C�"  then
				bHaveMonster = 1
			end
		end
		
		if bHaveMonster ~= 1  then
			local nNpcId = LuaFnCreateMonster(sceneId, 406, 75, 115, 1, 0, -1)
			SetCharacterName(sceneId, nNpcId, "Gia Lu�t Ni�t L� C�")
			SetCharacterTitle(sceneId, nNpcId, "S� V߽ng")
			SetPatrolId(sceneId, nNpcId, 0)
			
			SetUnitReputationID(sceneId, selfId, nNpcId, 18)
			SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
		end
		
		CallScriptFunction((200060), "Duibai",sceneId, "Gia Lu�t Ni�t L� C�", "Th߽ng Mang S�n ", "#{JQ_DB_0015}" )
		CallScriptFunction((200060), "Duibai",sceneId, "Gia Lu�t Ni�t L� C�", "Th߽ng Mang S�n ", "#{JQ_DB_0016}" )
		
		LuaFnSetCopySceneData_Param(sceneId, 8, 2)
	end
	
	if nStep1 == 3  then
		-- ��ⳡ������ng����ng�г���,���û��,C�n ��m�t c�i������ɾ���
		local nMonsterNum = GetMonsterCount(sceneId)
		local nMonster = {}
		local ii = 0
		local bHaveMonster1 = 0
		local bHaveMonster2 = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)  == "Gia Lu�t Ni�t L� C�"  then
				bHaveMonster1 = 1
			end
			if GetName(sceneId, nMonsterId)  == "Gia Lu�t Tr�ng Nguy�n"  then
				bHaveMonster2 = 1
			end
		end
		
		if bHaveMonster1 ~= 1  then
			local nNpcId = LuaFnCreateMonster(sceneId, 406, 77, 44, 1, 0, -1)
			SetCharacterName(sceneId, nNpcId, "Gia Lu�t Ni�t L� C�")
			SetCharacterTitle(sceneId, nNpcId, "S� V߽ng")
			SetUnitReputationID(sceneId, selfId, nNpcId, 18)
			SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
		end

		if bHaveMonster2 ~= 1  then
			local nNpcId1 = LuaFnCreateMonster(sceneId, 422, 45, 105, 1, 0, -1)
			SetCharacterName(sceneId, nNpcId1, "Gia Lu�t Tr�ng Nguy�n")
			SetCharacterTitle(sceneId, nNpcId1, "Ho�ng Th�i Th�c")
		end
		
		LuaFnSetCopySceneData_Param(sceneId, 8, 4)
	end
	
	-- ��ҽ����m�t c�i����,C�n �ó�����,Ti�u Phong׷
	if nStep1 == 5  then
		local nMonsterNum = GetMonsterCount(sceneId)
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)  == "Gia Lu�t Ni�t L� C�"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 18)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)

				-- ����T�i �ı���Ӫ���Թ�����,����2��·��������,
				SetPatrolId(sceneId, nMonsterId, 2)
			end
			
			if GetName(sceneId, nMonsterId)  == "Ti�u Phong"  then
				-- ͬʱTi�u Phong����3��·����,
				SetPatrolId(sceneId, nMonsterId, 1)
				-- ��Ti�u Phong������ӪΪ0
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetNPCAIType(sceneId, nMonsterId, 0)
			end
		end
		
		LuaFnSetCopySceneData_Param(sceneId, 8, 6)
	end
	
	if nStep1 == 6  then
		if nStep8 == 0  then
			CallScriptFunction((200060), "Duibai",sceneId, "Ti�u Phong", "Th߽ng Mang S�n ", "#{juqing_start_010}" )
			LuaFnSetCopySceneData_Param(sceneId, 20, 1)
			
		elseif nStep8 == 1  then
			CallScriptFunction((200060), "Duibai",sceneId, "Ti�u Phong", "Th߽ng Mang S�n ", "#{juqing_start_011}" )
			LuaFnSetCopySceneData_Param(sceneId, 20, 2)
			
		elseif nStep8 == 2  then
			CallScriptFunction((200060), "Duibai",sceneId, "Ti�u Phong", "Th߽ng Mang S�n ", "#{juqing_start_012}" )
			LuaFnSetCopySceneData_Param(sceneId, 20, 3)
			
		end
		
		-- ��������ng����ng��ɱ��,���ɱ��,������to� � �˼�����
		local nMonsterNum = GetMonsterCount(sceneId)
		local bHaveChuwang = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)  == "Gia Lu�t Ni�t L� C�"  then
				bHaveChuwang = 1
				break
			end
		end
		
		if bHaveChuwang == 0    then
			for i=0, 	nHumanNum-1  do
				local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			  
			  -- ����C�i n�y ����to� � �˼�����ɱ�־
			  if IsHaveMission(sceneId, nHumanId, 31) > 0 then
			  	
					local misIndex = GetMissionIndexByID(sceneId,nHumanId,31)
			  	if GetMissionParam(sceneId,nHumanId, misIndex, 1) < 1  then
			  
						SetMissionByIndex( sceneId, nHumanId, misIndex, 1, 1)
					  BeginEvent(sceneId)
					  	AddText(sceneId, "�� gi�t ch�t S� V߽ng: 1/1")
					  EndEvent()
					  DispatchMissionTips(sceneId, nHumanId)
						--SetMissionByIndex( sceneId, nHumanId, misIndex, 1, 1)
					end
			  end
			end
			LuaFnSetCopySceneData_Param(sceneId, 8, 7)
		end
	end		
	
	if nStep1 == 7  then
		-- �����ng����ng���˽������¼�����
		local left=39
		local right=52
		local top=101
		local bottom=111
		for i=0, 	nHumanNum-1  do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			local nHumanX, nHumanZ = GetWorldPos(sceneId, nHumanId)
			if nHumanX >= left and nHumanX <= right  and  nHumanZ >= top and nHumanZ <= bottom    then
				LuaFnSetCopySceneData_Param(sceneId, 8, 8)
				
				break
			end
		end
		
	end

	-- ��ҽ���ڶ�c�i����,Ti�u Phong����,
	if nStep1 == 8  then
		local nMonsterNum = GetMonsterCount(sceneId)
		local bHave = 0
		local ii = 0
		local bHaveMonster = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			
			if GetName(sceneId, nMonsterId)  == "Ti�u Phong"  then
				-- ɾ��Ti�u Phong
				LuaFnDeleteMonster(sceneId, nMonsterId)
				--T�i ��to� � λ�ô���ģ��
				local nNpcId = LuaFnCreateMonster(sceneId, 423, 50,106, 0, 0, 120007)
				SetUnitReputationID(sceneId, selfId, nNpcId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 0)
				SetCharacterName(sceneId, nNpcId, "Ti�u Phong")
				SetNPCAIType(sceneId, nNpcId, 7)
			end
			
			if GetName(sceneId, nMonsterId)  == "Gia Lu�t Tr�ng Nguy�n"  then
				-- Ү����Ԫ
				LuaFnDeleteMonster(sceneId, nMonsterId)
			end
			
			if GetName(sceneId, nMonsterId)  == "Gia Lu�t Ni�t L� C�"  then
				-- Ү����Ԫ
				LuaFnDeleteMonster(sceneId, nMonsterId)
			end
			
			-- ����to� � ʿ����T�i ��ɲ���Cu�c chi�n 
			if GetName(sceneId, nMonsterId)  == "Th� v� T�y s�n kh�u"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
			end
			if GetName(sceneId, nMonsterId)  == "S� V߽ng tinh anh v� s�"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
			end
			if GetName(sceneId, nMonsterId)  == "Th� v� ��ng s�n kh�u"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
			end
			if GetName(sceneId, nMonsterId)  == "Th� v� Ho�ng th�i th�c"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
			end
			
			for i=0, 	nHumanNum-1  do
				local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			  
			  -- ����C�i n�y ����to� � �˼�����ɱ�־
			  if IsHaveMission(sceneId, nHumanId, 31) > 0 then
					local misIndex = GetMissionIndexByID(sceneId,nHumanId,31)
					if GetMissionParam(sceneId,nHumanId, misIndex, 2) < 1  then
						BeginEvent(sceneId)
				  		AddText(sceneId, "�� v�o ng�n kh� ri�ng c�a Ho�ng Th�i Th�c: 1/1")
				 		EndEvent()
				 	  DispatchMissionTips(sceneId, nHumanId)
						SetMissionByIndex( sceneId, nHumanId, misIndex, 2, 1)
						SetMissionByIndex( sceneId, nHumanId, misIndex, 0, 1)
					end
			  end
			  
			end
			--SetMissionByIndex(sceneId,selfId,misIndex,0,1)
			
			-- ���麰��
			--LuaFnSetCopySceneData_Param(sceneId, 8, 4)
			--LuaFnSetCopySceneData_Param(sceneId, 13, 0)
			--LuaFnSetCopySceneData_Param(sceneId, 20, selfId)
		end

		LuaFnSetCopySceneData_Param(sceneId, 8, 9)
	end
	
	-- �������� ����to� � ����
	if nStep1 == 10  then
		local nMonsterNum = GetMonsterCount(sceneId)
		if nStep2 == 1  then
			--PrintNum(10)
			-- ֪ͨ��to� � ��ҽ�C�i n�y ����
			for i=0, 	nHumanNum-1  do
				local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				-- ���ý�����to� � ���
				
				--  ��t ���cTi�u Phongto� � Id
				local targetId=0
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)  == "Ti�u Phong"  then
						targetId = nMonsterId
					end
				end
				
				CallScriptFunction((200038), "OnDefaultEvent",sceneId, nHumanId, targetId )
			end
			
			LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			CallScriptFunction((200060), "Duibai",sceneId, "Ti�u Phong", "Th߽ng Mang S�n ", "#{juqing_start_013}" )
		
		elseif nStep2 == 2  then
			CallScriptFunction((200060), "Duibai",sceneId, "Ti�u Phong", "Th߽ng Mang S�n ", "#{juqing_start_014}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			
		elseif nStep2 == 3  then
			CallScriptFunction((200060), "Duibai",sceneId, "Ti�u Phong", "Th߽ng Mang S�n ", "#{juqing_start_015}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 4)
			
		elseif nStep2 == 4  then
			-- b�t �u�á�Ti�u Phong����
			local nMonsterNum = GetMonsterCount(sceneId)
			local nqiaofengId = -1
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				if GetName(sceneId, nMonsterId)  == "Ti�u Phong"  then
					nqiaofengId = nMonsterId
				end
			end
			
			if nqiaofengId ~= -1  then
				SetPatrolId(sceneId, nqiaofengId, 3)
			end
			LuaFnSetCopySceneData_Param(sceneId, 10, 5)
			
		elseif nStep2 == 5  then
			-- ���Ti�u Phong��ng����ng����
			--LuaFnSetCopySceneData_Param(sceneId, 10, 6)
			local nMonsterNum = GetMonsterCount(sceneId)
			local nqiaofengId = -1
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				if GetName(sceneId, nMonsterId)  == "Ti�u Phong"  then
					nqiaofengId = nMonsterId
				end
			end
			
			if nqiaofengId ~= -1  then
				local targetX, targetZ = GetWorldPos(sceneId, nqiaofengId)
				local x, z = GetLastPatrolPoint(sceneId, 3)
				local distance3 = floor(sqrt((targetX-x)*(targetX-x)+(targetZ-z)*(targetZ-z)))
				if distance3 <= 1 then
					-- ֪ͨÿc�i��,�������
					LuaFnSetCopySceneData_Param(sceneId, 10, 6)
					-- ����ģ��
					LuaFnDeleteMonster(sceneId, nqiaofengId)
					-- ����m�t c�i��to� � Ti�u Phongto� � ģ��
					local nNpcId = LuaFnCreateMonster(sceneId, 424, 75,26, 0, 0, 120008)
					SetUnitReputationID(sceneId, selfId, nNpcId, 0)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 0)
					SetCharacterName(sceneId, nNpcId, "Ti�u Phong")
					SetNPCAIType(sceneId, nNpcId, 7)
					
					for i=0, 	nHumanNum-1  do
						local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
					  					  
					  -- ����C�i n�y ����to� � �˼�����ɱ�־
					  if IsHaveMission(sceneId, nHumanId, 32) > 0 then
							local misIndex = GetMissionIndexByID(sceneId,nHumanId,32)
							if GetMissionParam(sceneId,nHumanId, misIndex, 1) < 1  then
								BeginEvent(sceneId)
						  		AddText(sceneId, "Ho�n t�t t�nh ti�t \"L�c Qu�n T� D�ch\"")
						  	EndEvent()
						  	DispatchMissionTips(sceneId, nHumanId)
								SetMissionByIndex( sceneId, nHumanId, misIndex, 0, 1)
								SetMissionByIndex( sceneId, nHumanId, misIndex, 1, 1)
							end
					  end
					end
				
				end
			end
		end
		
	end
	
	
	if  1==1 then
		return
	end

	-- ��ҽ���ָ�������,����to� � ����
	if nStep1 == 5  then
		if nStep2==1  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0017}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Ti�u Phong", "Th߽ng Mang S�n ", "#{JQ_DB_0017}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==2  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			end
		
		elseif nStep2==3  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0018}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Ti�u Phong", "Th߽ng Mang S�n ", "#{JQ_DB_0017}" )
			CallScriptFunction((200060), "Duibai",sceneId, "Gia Lu�t Tr�ng Nguy�n", "Th߽ng Mang S�n ", "#{JQ_DB_0018}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 4)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		end
	end
	
	-- �ڶ��ζ԰� �������� ���͵��� �i�mto� � ʱ�򴥷�
	if nStep1==2 then
		if nStep3==0 then
			CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu�t Tr�ng Nguy�n", "Th߽ng Mang S�n ", "#{JQ_PaoPao_86}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		elseif nStep3==1 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 2)
			end
			
		elseif nStep3==2 then
			CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu�t H�ng C�", "Th߽ng Mang S�n ", "#{JQ_PaoPao_87}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		elseif nStep3==3 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 4)
			end
			
		elseif nStep3==4 then
			CallScriptFunction((200060), "Paopao",sceneId, "Ti�u Phong", "Th߽ng Mang S�n ", "#{JQ_PaoPao_88}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 5)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep3==5 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 6)
			end
		
		elseif nStep3==6 then
			CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu�t H�ng C�", "Th߽ng Mang S�n ", "#{JQ_PaoPao_89}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 7)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		elseif nStep3==7 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 8)
			end
			
		elseif nStep3==8 then
			CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu�t H�ng C�", "Th߽ng Mang S�n ", "#{JQ_PaoPao_90}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 9)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		end
	end
	
	-- �԰� ������� Ho�n t�t nhi�m v�to� � ʱ�򴥷�
	if nStep1==3 then
		if nStep4==0  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0015}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Gia Lu�t Ni�t L� C�", "Th߽ng Mang S�n ", "#{JQ_DB_0015}" )
			LuaFnSetCopySceneData_Param(sceneId, 12, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		elseif nStep4==1  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 12, 2)
			end
		
		elseif nStep4==2  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0016}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Gia Lu�t Ni�t L� C�", "Th߽ng Mang S�n ", "#{JQ_DB_0016}" )
			LuaFnSetCopySceneData_Param(sceneId, 12, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		end
	end

	-- �԰� ��굴�����  ��ҽ����̫������󴥷�
	if nStep1==4 then
		if nStep5==0  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0017}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Ti�u Phong", "Th߽ng Mang S�n ", "#{JQ_DB_0017}" )
			LuaFnSetCopySceneData_Param(sceneId, 13, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep5==1  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 13, 2)
			end
		
		elseif nStep5==2  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0018}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Ti�u Phong", "Th߽ng Mang S�n ", "#{JQ_DB_0017}" )
			CallScriptFunction((200060), "Duibai",sceneId, "Gia Lu�t Tr�ng Nguy�n", "Th߽ng Mang S�n ", "#{JQ_DB_0018}" )
			LuaFnSetCopySceneData_Param(sceneId, 13, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		end
	end
	
	-- �԰� �������� Ti�p th�����to� � ʱ�򴥷�
	if nStep1==5 then
		if nStep6==0 or nStep6==6 or nStep6==12  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0019}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Trung Qu�n", "Th߽ng Mang S�n ", "#{JQ_DB_0019}" )
			LuaFnSetCopySceneData_Param(sceneId, 14, nStep6+1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		elseif nStep6==1 or nStep6==7 or nStep6==13  then
			if nowTime - nTime > 5  then
				LuaFnSetCopySceneData_Param(sceneId, 14, nStep6+1)
			end

		elseif nStep6==2 or nStep6==8 or nStep6==14  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0020}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Trung Qu�n", "Th߽ng Mang S�n ", "#{JQ_DB_0020}" )
			LuaFnSetCopySceneData_Param(sceneId, 14, nStep6+1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		elseif nStep6==3 or nStep6==9 or nStep6==15  then
			if nowTime - nTime > 5  then
				LuaFnSetCopySceneData_Param(sceneId, 14, nStep6+1)
			end

		elseif nStep6==4 or nStep6==10 or nStep6==16  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0021}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Trung Qu�n", "Th߽ng Mang S�n ", "#{JQ_DB_0021}" )
			LuaFnSetCopySceneData_Param(sceneId, 14, nStep6+1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep6==5 or nStep6==11 or nStep6==17  then
			if nowTime - nTime > 5  then
				LuaFnSetCopySceneData_Param(sceneId, 14, nStep6+1)
			end

		end		
	end
	
	-- �԰� �������� Ho�n t�t nhi�m v�to� � ʱ�򴥷�
	if nStep1==6 then
		if nStep7==0 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0022}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Ch�ng Li�u binh", "Th߽ng Mang S�n ", "#{JQ_DB_0022}" )
			LuaFnSetCopySceneData_Param(sceneId, 14, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		elseif nStep7==1 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 14, 0)
			end
		end
	end
	

end

