-- �޹�ɽ  200040

-- 	T�i ������to� � ָ����ǰ���޹�ɽ

--************************************************************************
--MisDescBegin
--�ű���
x200040_g_ScriptId = 200040

--MisDescEnd
--************************************************************************

--��������
x200040_g_CopySceneName = "L�i C� S�n"

x200040_g_CopySceneType = FUBEN_JUQING	--��������,����T�i ScriptGlobal.lua����

x200040_g_CopySceneMap = "leigu_1.nav"
x200040_g_Exit = "leigu_1.ini"
x200040_g_LimitMembers = 1					--���Խ�����to� � ��С��������
x200040_g_TickTime = 5							--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x200040_g_LimitTotalHoldTime = 360	--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x200040_g_LimitTimeSuccess = 500		--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x200040_g_CloseTick = 3							--�����ر�ǰ����ʱ(��λ: ����)
x200040_g_NoUserTime = 300					--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x200040_g_DeadTrans = 0							--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x200040_g_Fuben_X = 56							--���븱��to� � λ��X
x200040_g_Fuben_Z = 104							--���븱��to� � λ��Z
x200040_g_Back_X = 66								--Դ����λ��X
x200040_g_Back_Z = 56								--Դ����λ��Z

--**********************************
--������ں���
--**********************************
function x200040_OnDefaultEvent( sceneId, selfId, targetId )
	-- �������to� � ���,������͵���ͬto� � ����
	x200040_MakeCopyScene(sceneId, selfId)
end

--**********************************
--�о��¼�
--**********************************
function x200040_OnEnumerate( sceneId, selfId, targetId )
	-- 0,�������Ѿ���4����,�Ͳ���T�i ����C�i n�y ����
	if IsHaveMission( sceneId, selfId, 36 ) > 0 then
		return 0
	end
	if IsMissionHaveDone(sceneId, selfId, 36) > 0   then
		return 0
	end

	-- 1,ӵ�������Ϊ34to� � ����,
	if IsHaveMission( sceneId, selfId, 34 ) > 0 then
		AddNumText( sceneId, x200040_g_ScriptId, "H�y ��a ta t�i L�i C� S�n (��m)", 10 ,-1  )
		return 0
	end

	-- 2,ֻҪ�����35����,���ܽ���
	if IsHaveMission( sceneId, selfId, 35 ) > 0 then
		AddNumText( sceneId, x200040_g_ScriptId, "H�y ��a ta t�i L�i C� S�n (��m)", 10 ,-1  )
		return 0
	end
	
	-- 3,�����������34,û��35,Ҳ�ܽ���
	if IsMissionHaveDone(sceneId, selfId, 34) > 0   then
		if IsHaveMission( sceneId, selfId, 35 ) < 1 then
			AddNumText( sceneId, x200040_g_ScriptId, "H�y ��a ta t�i L�i C� S�n (��m)", 10 ,-1  )
			return 0
		end
		if IsHaveMission( sceneId, selfId, 36 ) < 1 then
			AddNumText( sceneId, x200040_g_ScriptId, "H�y ��a ta t�i L�i C� S�n (��m)", 10 ,-1  )
			return 0
		end
	end
	
end

--**********************************
--���Ti�p th�����
--**********************************
function x200040_CheckAccept( sceneId, selfId )
	
end

--**********************************
--ѯ�������ng��Ҫ���븱��
--**********************************
function x200040_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Ti�p th�
--**********************************
function x200040_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--���ͬ����븱��
--**********************************
function x200040_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--��������
--**********************************
function x200040_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "leigu_1.nav"); --��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200040_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200040_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200040_g_CopySceneType);--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200040_g_ScriptId);--��1����������Ϊ���������¼��ű���
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
	LuaFnSetSceneLoad_Area( sceneId, "leigu_1_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "leigu_1_monster.ini" )

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
function x200040_OnCopySceneReady( sceneId, destsceneId )

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
		NewWorld( sceneId, leaderObjId, destsceneId, x200040_g_Fuben_X, x200040_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200040_g_Fuben_X, x200040_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				--misIndex = GetMissionIndexByID(sceneId,mems[i],x200040_g_MissionId)
				
				--������to� � ��2����������Ϊ����to� � ������
				--SetMissionByIndex(sceneId,mems[i],misIndex,x200040_g_Param_sceneid,destsceneId)
						
				NewWorld( sceneId, mems[i], destsceneId, x200040_g_Fuben_X, x200040_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x200040_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x200040_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--����
--**********************************
function x200040_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- �س�,ֻ��Th�nh ph� ���񸱱����Ե��ô˽ӿ�
--**********************************
function x200040_BackToCity( sceneId, selfId )
	
end

--**********************************
--����
--**********************************
function x200040_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200040_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x200040_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--ɱ����������
--**********************************
function x200040_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--���������¼�
--**********************************
function x200040_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200040_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--����������ʱ���¼�
--**********************************
function x200040_OnCopySceneTimer( sceneId, nowTime )
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- û����to� � ����,ʲô������
	if nHumanNum < 1 then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId, 0)

	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 8) ;--����˵��
	local nTime  = LuaFnGetCopySceneData_Param(sceneId, 9);--ʱ��
	local nStartTime = LuaFnGetCopySceneData_Param(sceneId, 11)
	-- paopao 
	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 10) ;--����˵����
	
	nowTime = LuaFnGetCurrentTime()
	
	-- ��ɱ�������to� � �����,H� Tr�c���Լ�to� � ·,��֮ǰ�ж԰�
	if nStep1==3 then
		local nMonsterNum = GetMonsterCount(sceneId)
		local ii = 0
		local bHaveMonster = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			-- H� Tr�cC�n ��AI
			if GetName(sceneId, nMonsterId)  == "H� Tr�c"  then
				SetPatrolId(sceneId, nMonsterId, 1)
				
				LuaFnSetCopySceneData_Param(sceneId, 8, 4)
			end
		end
	end	
	
	if nStep1==2 then
		if nStep2 == 1  then
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				
				-- H� Tr�cC�n ��AI
				if GetName(sceneId, nMonsterId)  == "H� Tr�c"  then
					SetUnitReputationID(sceneId,selfId, nMonsterId, 0)
					SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
					SetNPCAIType(sceneId, nMonsterId, 7) -- ����������,��������ƶ�,���Թ���,���ỹ��
					
					SetPatrolId(sceneId, nMonsterId, 0)
				end
			end
			
			LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		end
		if nStep2 == 2  then
			if nowTime - nStartTime < 120  then
				if nowTime - nTime > 10  then
					local nNpcId = LuaFnCreateMonster(sceneId, 408, 76, 32, 1, 0, -1)
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 0)
					SetCharacterName(sceneId, nNpcId, "C߽ng Thi")

					LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
				end
			
			else
				-- ʱ�䵽,���С��,��H� Tr�c��ng����ng������
				local bOk = 0
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)  == "H� Tr�c"  then
						bOk = 1
					end
					if GetName(sceneId, nMonsterId)  == "C߽ng Thi"  then
						-- ɾ������to� � ��ʬ
						LuaFnDeleteMonster(sceneId, nMonsterId)
					end
				end
				
				if bOk == 1 then
					LuaFnSetCopySceneData_Param(sceneId, 15, 1)
					-- ֪ͨ���,���������
					for i=0, 	nHumanNum-1  do
						local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
						
						--��C�i n�y �����ng����ng��C�i n�y ����
						if IsHaveMission( sceneId, nHumanId, 35 ) > 0 then
							local misIndex = GetMissionIndexByID(sceneId, nHumanId, 35)
							SetMissionByIndex(sceneId, nHumanId, misIndex, 0, 1)
							SetMissionByIndex(sceneId, nHumanId, misIndex, 1, 1)
							BeginEvent(sceneId)
							AddText(sceneId,"�� b�o h� H� Tr�c: 1/1")
							EndEvent(sceneId)
							DispatchMissionTips(sceneId,nHumanId)
						end
					end
				end
				LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			end
		end
				
	end
	
	
	-- ��m�t ��to� � �԰� ��ʱ������� Ho�n t�t nhi�m v�to� � ʱ�򴥷�
	if nStep1==1 then
		if nStep2==0 then
			-- Ti�u Phong paopao
			CallScriptFunction((200060), "Paopao",sceneId, "T� Tinh H�", "L�i C� S�n", "#{JQ_PaoPao_91}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==1 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			end
			
		elseif nStep2==2 	then
			CallScriptFunction((200060), "Paopao",sceneId, "Huy�n N�n", "L�i C� S�n", "#{JQ_PaoPao_92}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==3 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 4)
			end
		elseif nStep2==4 	then
			CallScriptFunction((200060), "Paopao",sceneId, "�o�n Di�n Kh�nh", "L�i C� S�n", "#{JQ_PaoPao_93}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 5)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==5 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 6)
			end
		elseif nStep2==6 	then
			CallScriptFunction((200060), "Paopao",sceneId, "Huy�n N�n", "L�i C� S�n", "#{JQ_PaoPao_94}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 7)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==7 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 8)
			end
		elseif nStep2==8 	then
			CallScriptFunction((200060), "Paopao",sceneId, "�o�n Di�n Kh�nh", "L�i C� S�n", "#{JQ_PaoPao_95}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 9)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==9 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 10)
			end
		elseif nStep2==10 then
			CallScriptFunction((200060), "Paopao",sceneId, "�inh Xu�n Thu", "L�i C� S�n", "#{JQ_PaoPao_96}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 11)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==11 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 12)
			end
		elseif nStep2==12 then
			CallScriptFunction((200060), "Paopao",sceneId, "�o�n Di�n Kh�nh", "L�i C� S�n", "#{JQ_PaoPao_97}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 13)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==13 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 14)
			end
		elseif nStep2==14 then
			CallScriptFunction((200060), "Paopao",sceneId, "�o�n Di�n Kh�nh", "L�i C� S�n", "#{JQ_PaoPao_98}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 15)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==15 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 16)
			end
		elseif nStep2==16 then
			CallScriptFunction((200060), "Paopao",sceneId, "H� Tr�c", "L�i C� S�n", "#{JQ_PaoPao_99}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 17)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==17 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 18)
			end
		elseif nStep2==18 then
			CallScriptFunction((200060), "Paopao",sceneId, "T� Tinh H�", "L�i C� S�n", "#{JQ_PaoPao_100}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 19)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==19 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 20)
			end
		elseif nStep2==20 then
			CallScriptFunction((200060), "Paopao",sceneId, "T� Tinh H�", "L�i C� S�n", "#{JQ_PaoPao_101}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 21)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		end
	end
	
end


