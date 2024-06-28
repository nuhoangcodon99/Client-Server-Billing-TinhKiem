-- ����ҹ��to� � ����ׯ

--200023
-- T�i C�i Bang����to� � ������,�������ׯ����

--************************************************************************
--MisDescBegin
--�ű���
x200023_g_ScriptId = 200023

--MisDescEnd
--************************************************************************

--��������
x200023_g_CopySceneName = "T� Hi�n Trang"

x200023_g_CopySceneType = FUBEN_JUQING	--��������,����T�i ScriptGlobal.lua����

x200023_g_CopySceneMap = "juxian.nav"
x200023_g_Exit = "juxian.ini"
x200023_g_LimitMembers = 1				--���Խ�����to� � ��С��������
x200023_g_TickTime = 5					--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x200023_g_LimitTotalHoldTime = 360		--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x200023_g_LimitTimeSuccess = 500		--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x200023_g_CloseTick = 3					--�����ر�ǰ����ʱ(��λ: ����)
x200023_g_NoUserTime = 300				--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x200023_g_DeadTrans = 0					--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x200023_g_Fuben_X = 61					--���븱��to� � λ��X
x200023_g_Fuben_Z = 110					--���븱��to� � λ��Z
x200023_g_Back_X = 66					--Դ����λ��X
x200023_g_Back_Z = 56					--Դ����λ��Z

--**********************************
--������ں���
--**********************************
function x200023_OnDefaultEvent( sceneId, selfId, targetId )
	-- �������to� � ���,������͵���ͬto� � ����
	x200023_MakeCopyScene(sceneId, selfId)
end

--**********************************
--�о��¼�
--**********************************
function x200023_OnEnumerate( sceneId, selfId, targetId )
	-- �������Ѿ������20����,�Ϳ��Խ���
	if IsMissionHaveDone(sceneId, selfId, 23) > 0   then
		return 0
	end

	-- 1,�Ѿ����22
	if IsMissionHaveDone( sceneId, selfId, 22 ) > 0 then
		AddNumText( sceneId, x200023_g_ScriptId, "Ъn T� Hi�n Trang (ng�y)", 10 ,-1  )
		return 0
	end
	
	-- 2,ӵ�������Ϊ23to� � ����,
	if IsHaveMission( sceneId, selfId, 23 ) > 0 then
		AddNumText( sceneId, x200023_g_ScriptId, "Ъn T� Hi�n Trang (ng�y)", 10 ,-1  )
		return 0
	end
end


--**********************************
--���Ti�p th�����
--**********************************
function x200023_CheckAccept( sceneId, selfId )
	
end

--**********************************
--ѯ�������ng��Ҫ���븱��
--**********************************
function x200023_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Ti�p th�
--**********************************
function x200023_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--���ͬ����븱��
--**********************************
function x200023_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--��������
--**********************************
function x200023_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "juxian.nav"); --��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200023_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200023_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200023_g_CopySceneType);--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200023_g_ScriptId);--��1����������Ϊ���������¼��ű���
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
	LuaFnSetSceneLoad_Area( sceneId, "juxian_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "juxian_monster.ini" )

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
function x200023_OnCopySceneReady( sceneId, destsceneId )

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
		NewWorld( sceneId, leaderObjId, destsceneId, x200023_g_Fuben_X, x200023_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200023_g_Fuben_X, x200023_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				--local misIndex = GetMissionIndexByID(sceneId,mems[i],x200023_g_MissionId)
				
				--������to� � ��2����������Ϊ����to� � ������
				--SetMissionByIndex(sceneId,mems[i],misIndex,x200023_g_Param_sceneid,destsceneId)
						
				NewWorld( sceneId, mems[i], destsceneId, x200023_g_Fuben_X, x200023_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x200023_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x200023_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--����
--**********************************
function x200023_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- �س�,ֻ��Th�nh ph� ���񸱱����Ե��ô˽ӿ�
--**********************************
function x200023_BackToCity( sceneId, selfId )
	
end

--**********************************
--����
--**********************************
function x200023_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200023_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x200023_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--ɱ����������
--**********************************
function x200023_OnKillObject( sceneId, selfId, objdataId, objId )
	
end

--**********************************
--���������¼�
--**********************************
function x200023_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200023_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--����������ʱ���¼�
--**********************************
function x200023_OnCopySceneTimer( sceneId, nowTime )


	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- û����to� � ����,ʲô������
	if nHumanNum < 1 then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId,0)
	
	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 10) --
	local nStartTime  = LuaFnGetCopySceneData_Param(sceneId, 11)	--ʱ��
	local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 12)	--ʱ��
	local nNowTime = LuaFnGetCurrentTime()
	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 13) --
	local nStep5 = LuaFnGetCopySceneData_Param(sceneId, 20)
	
	if nStep1 == 1  then
	
		if nStep2 == 1 then
			-- ���ÿ�ս
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				
				if GetName(sceneId, nMonsterId)  == "Ki�u Phong"  then
					SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
					SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
					SetNPCAIType(sceneId, nMonsterId, 5)
					
					--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0011}",0)
					CallScriptFunction((200060), "Duibai",sceneId, "Ki�u Phong", "T� Hi�n Trang", "#{JQ_DB_0011}" )
				end
			end
			
			LuaFnSetCopySceneData_Param(sceneId, 13, 2)
			LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
		
		elseif nStep2 == 2 then
			if nNowTime - nPreTime > 3 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 3)
				LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
			end

		elseif nStep2 == 3 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0012}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Ki�u Phong", "T� Hi�n Trang", "#{JQ_DB_0012}" )
			LuaFnSetCopySceneData_Param(sceneId, 13, 4)
			
			LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime-55)
			
		else
			-- �������ʾ���ж��ٲ���
			
			if nStep2 < 16 and nStep2 > 4 then
					
				if nNowTime - nPreTime >= 30 and nStep5 == 0  then
					local str = "Hi�p s� T� Hi�n Trang s� ph�t �ng " .. 16 - nStep2   .. " l�n t�n c�ng"
					x200023_TipToAllPlayerOnScene(sceneId, str)

					LuaFnSetCopySceneData_Param(sceneId, 20, 1)
				end
				if nNowTime - nPreTime >= 40 and nStep5 == 1  then
					local str = "Hi�p s� T� Hi�n Trang s� ph�t �ng " .. 16 - nStep2   .. " l�n t�n c�ng"
					x200023_TipToAllPlayerOnScene(sceneId, str)
					
					LuaFnSetCopySceneData_Param(sceneId, 20, 2)
				end
				if nNowTime - nPreTime >= 50 and nStep5 == 2  then
					local str = "Hi�p s� T� Hi�n Trang s� ph�t �ng " .. 16 - nStep2   .. " l�n t�n c�ng"
					x200023_TipToAllPlayerOnScene(sceneId, str)
					
					LuaFnSetCopySceneData_Param(sceneId, 20, 0)
				end
			end
			
			if nNowTime - nPreTime >= 60 and nStep2 < 16   then
				local nNpcId
				if nStep2 == 8 then
					nNpcId = LuaFnCreateMonster(sceneId, 416, 57, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "нn B�ch S�n")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
		
					nNpcId = LuaFnCreateMonster(sceneId, 416, 58, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "нn Trung S�n")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
		
					nNpcId = LuaFnCreateMonster(sceneId, 416, 59, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "нn Th�c S�n")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
		
					nNpcId = LuaFnCreateMonster(sceneId, 416, 60, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "нn L� S�n")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
		
					nNpcId = LuaFnCreateMonster(sceneId, 416, 61, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "нn Ti�u S�n")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
				
				elseif nStep2 == 11 then
					nNpcId = LuaFnCreateMonster(sceneId, 429, 58, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "Du C�u")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
					
					nNpcId = LuaFnCreateMonster(sceneId, 429, 60, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "Du K�")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
				
				elseif nStep2 == 15 then
					nNpcId = LuaFnCreateMonster(sceneId, 427, 58, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "Huy�n N�n ")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
					
					nNpcId = LuaFnCreateMonster(sceneId, 427, 60, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "Huy�n T�ch")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
					
				else
					for j=0, 9  do
						--415,417,418,425,426,428,431,432,433
						local nNpcModelList={415,417,418,425,426,428,431,432,433}
						local nNpcMode = random( getn(nNpcModelList) )
						local nNpc1 = LuaFnCreateMonster(sceneId, nNpcModelList[nNpcMode], 55+j, 31, 1, 0, -1)
						SetCharacterName(sceneId, nNpc1, "Hi�p s� giang h�")
						SetUnitReputationID(sceneId,selfId, nNpc1, 29)
						SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
						SetNPCAIType(sceneId, nNpc1, 16)
					end
				end
				
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
				LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
				
			end
			if nStep2 == 16 then
				--����c�i��������û��
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				local bOk =1
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)=="Huy�n N�n" or GetName(sceneId, nMonsterId)=="Huy�n T�ch"  then
						bOk = 0	
					end
				end
				
				if bOk == 1  then
					-- ɾ������to� � С��
					local nMonsterNum = GetMonsterCount(sceneId)
					local ii = 0
					local bHaveMonster = 0
					local bOk =1
					for ii=0, nMonsterNum-1 do
						local nMonsterId = GetMonsterObjID(sceneId,ii)
						if GetName(sceneId, nMonsterId)== "Du C�u" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
						if GetName(sceneId, nMonsterId)== "Du K�" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
						if GetName(sceneId, nMonsterId)== "нn B�ch S�n" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
						if GetName(sceneId, nMonsterId)== "нn Trung S�n" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
						if GetName(sceneId, nMonsterId)== "нn Th�c S�n" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
						if GetName(sceneId, nMonsterId)== "нn L� S�n" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
						if GetName(sceneId, nMonsterId)== "нn Ti�u S�n" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
						if GetName(sceneId, nMonsterId)== "Hi�p s� giang h�" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
					end
					
					LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
				end
			end	
					
			if nStep2 == 17 then
				-- �Ƿ忪ʼѲ��
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				local bOk =1
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)== "Ki�u Phong" then
						SetPatrolId(sceneId, nMonsterId, 0)
						LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
					end
				end	
			end
			
			if nStep2 == 18 then
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				local bOk =1
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)== "Ki�u Phong" then
						--���Ƿ���ng����ng�ߵ��� �i�m��
						--PrintStr("���� �i�m��")
						local targetX, targetZ = GetWorldPos(sceneId, nMonsterId)
						local x, z = GetLastPatrolPoint(sceneId, 0)
						local distance2 = floor(sqrt((targetX-x)*(targetX-x)+(targetZ-z)*(targetZ-z)))
						if distance2 <= 1 then
							--BroadMsgByChatPipe(sceneId,selfId,"A Ch�u: �Ҳ�����",0)
							CallScriptFunction((200060), "Duibai",sceneId, "A Ch�u", "T� Hi�n Trang", "Ta kh�ng xong r�i" )
							LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
							LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
						end
					end
				end	
			end
			
			if nStep2 == 19 then
				--BroadMsgByChatPipe(sceneId,selfId,"Ѧ��ҽ: �Ƿ�,����ô��.�����C�i n�y Ѿͷ��?",0)
				CallScriptFunction((200060), "Duibai",sceneId, "Ti�t M� Hoa", "T� Hi�n Trang", "Ki�u Phong, ng߽i sao th� r�i. C�n c�u con a �u n�y � ?" )
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
				LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
			end

			if nStep2 == 20 then	
				if nNowTime - nPreTime > 3  then
					LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
					LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
					
					--�Ƿ�ѣ��to� � ��Ч
					local nMonsterNum = GetMonsterCount(sceneId)
					local ii = 0
					local bHaveMonster = 0
					for ii=0, nMonsterNum-1 do
						local nMonsterId = GetMonsterObjID(sceneId,ii)
						if GetName(sceneId, nMonsterId)== "Ki�u Phong" then
							LuaFnSendSpecificImpactToUnit(sceneId,selfId,nMonsterId,nMonsterId,45,10)
						end
					end
				end
			end
			
			if nStep2 == 21 then
				--����10c�i����Χ���Ƿ�
				local nNpc1 = LuaFnCreateMonster(sceneId, 415, 61, 62, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi�p s� giang h�")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 59, 62, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi�p s� giang h�")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 58, 63, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi�p s� giang h�")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 58, 65, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi�p s� giang h�")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 58, 66, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi�p s� giang h�")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 59, 66, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi�p s� giang h�")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 60, 66, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi�p s� giang h�")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 61, 65, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi�p s� giang h�")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 61, 64, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi�p s� giang h�")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 61, 63, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi�p s� giang h�")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)

				LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
				LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
				
			end
			
			-- ��5 gi�y��
			if nStep2 == 22 then
				if nNowTime - nPreTime > 3  then
					LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
					LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
				end
			end
			
			if nStep2 == 23 then
				--BroadMsgByChatPipe(sceneId,selfId,"�Ƿ�:��ĳ�����˶�",0)
				CallScriptFunction((200060), "Duibai",sceneId, "Ki�u Phong", "T� Hi�n Trang", "Ti�u m� t� m�nh k�t li�u" )
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
				LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
			end
			
			-- ��������
			if nStep2 == 24 then
				local nNpc1 = LuaFnCreateMonster(sceneId, 24, 61, 67, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "H�c Y ��i h�n")
				
				-- ����m�t c�i��Ч
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,nNpc1,nNpc1,43,5)
				
				CallScriptFunction((200060), "Duibai",sceneId, "H�c Y ��i h�n", "T� Hi�n Trang", "а ng�c, �i theo ta" )
				
				--ɱ������to� � ��
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				local bOk =1
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)== "Hi�p s� giang h�" then
						LuaFnDeleteMonster(sceneId, nMonsterId)
					end
				end
				
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
				LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)

			end
			
			if nStep2 == 25 then
				if nNowTime - nPreTime > 3  then
					LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
					LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
					CallScriptFunction((200060), "Duibai",sceneId, "Ki�u Phong", "T� Hi�n Trang", "$N, Ta giao A Ch�u cho ng߽i �y! �i t�m Ti�t Th�n Y c�u m�nh c�a c� ta, �i mau!" )
				end
			end
			
			if nStep2 == 26 then
				if nNowTime - nPreTime > 3  then
					LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
					LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
				end
			end
			
			if nStep2 == 27 then
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				local bOk =1
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)== "H�c Y ��i h�n" then
						LuaFnDeleteMonster(sceneId, nMonsterId)
						LuaFnSendSpecificImpactToUnit(sceneId,selfId,nMonsterId,nMonsterId,44,5)
					end
					if GetName(sceneId, nMonsterId)== "Ki�u Phong" then
						LuaFnDeleteMonster(sceneId, nMonsterId)
						LuaFnSendSpecificImpactToUnit(sceneId,selfId,nMonsterId,nMonsterId,44,5)
					end
				end
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
				LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
				
				-- �����������
				LuaFnSetCopySceneData_Param(sceneId, 15, 1)
				
				--  ��t ���c��C�i n�y ����to� � ������to� � ������,��������ɱ�־����Ļ��ʾ
				--PrintNum(nHumanNum)
				for i=0, nHumanNum-1  do
					local nPlayerId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
					-- ��ʾ��Ҿ������
					BeginEvent(sceneId)
						AddText(sceneId, "�� b�o h� Ki�u Phong tho�t nguy: 1/1")
					EndEvent(sceneId)
					DispatchMissionTips(sceneId, nPlayerId)
										
					-- ����C�i n�y Player��ng����ng��C�i n�y ����
					if IsHaveMission(sceneId,nPlayerId,23) > 0 then
						local misIndex = GetMissionIndexByID(sceneId,nPlayerId,23)
						SetMissionByIndex( sceneId, nPlayerId, misIndex, 0, 1)
						SetMissionByIndex( sceneId, nPlayerId, misIndex, 1, 1)
					end
				end
			end
		end
	end
end

function x200023_TipToAllPlayerOnScene(sceneId, str)
	--  ��t ���c������ͷto� � ������
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- û����to� � ����,ʲô������
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		
		BeginEvent(sceneId)
				AddText(sceneId, str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
	
end
