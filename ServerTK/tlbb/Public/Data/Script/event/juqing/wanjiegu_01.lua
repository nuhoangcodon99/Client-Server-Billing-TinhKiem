--��������
--��ٹ�,ҹ��

-- T�i ������to� � �����½�����ٹ�,T�i ��ٹ������˴����o�n D�to� � ��Ϣ.
-- �ӳ����Դ��Լ�to� � С��ȥ���C�i n�y ����,ֻҪ�ӳ���C�i n�y ����Ϳ���,
-- еi vi�n ֻ�ܶ��Խ��븱��,�������C�i n�y ����

--************************************************************************
--MisDescBegin
--�ű���
x200001_g_ScriptId = 200001

--MisDescEnd
--************************************************************************

--��������
x200001_g_CopySceneName = "V�n Ki�p C�c"

x200001_g_CopySceneType = FUBEN_JUQING	--��������,����T�i ScriptGlobal.lua����

x200001_g_CopySceneMap = "wanjie_1.nav"
x200001_g_Exit = "wanjie_1.ini"
x200001_g_LimitMembers = 1				--���Խ�����to� � ��С��������
x200001_g_TickTime = 5					--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x200001_g_LimitTotalHoldTime = 360		--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x200001_g_LimitTimeSuccess = 500		--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x200001_g_CloseTick = 3					--�����ر�ǰ����ʱ(��λ: ����)
x200001_g_NoUserTime = 300				--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x200001_g_DeadTrans = 0					--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x200001_g_Fuben_X = 108					--���븱��to� � λ��X
x200001_g_Fuben_Z = 115					--���븱��to� � λ��Z
x200001_g_Back_X = 192					--Դ����λ��X
x200001_g_Back_Z = 110					--Դ����λ��Z

--**********************************
--������ں���
--**********************************
function x200001_OnDefaultEvent( sceneId, selfId, targetId )
	-- �������to� � ���,������͵���ͬto� � ����
	x200001_MakeCopyScene(sceneId, selfId)
end

--**********************************
--�о��¼�
--**********************************
function x200001_OnEnumerate( sceneId, selfId, targetId )
	-- 0,�������Ѿ���4����,�Ͳ���T�i ����C�i n�y ����
	if IsHaveMission( sceneId, selfId, 4 ) > 0 then
		return 0
	end
	if IsMissionHaveDone(sceneId, selfId, 4) > 0   then
		return 0
	end

	-- 1,ӵ�������Ϊ2to� � ����,
	if IsHaveMission( sceneId, selfId, 2 ) > 0 then
		AddNumText( sceneId, x200001_g_ScriptId, "H�y ��a ta t�i V�n Ki�p C�c (��m)", 10 ,-1  )
		return 0
	end

	-- 2,ֻҪ�����3����,���ܽ���
	if IsHaveMission( sceneId, selfId, 3 ) > 0 then
		AddNumText( sceneId, x200001_g_ScriptId, "H�y ��a ta t�i V�n Ki�p C�c (��m)", 10 ,-1  )
		return 0
	end
	
	-- 3,�����������2,û��3,Ҳ�ܽ���
	if IsMissionHaveDone(sceneId, selfId, 2) > 0   then
		if IsHaveMission( sceneId, selfId, 3 ) < 1 then
			AddNumText( sceneId, x200001_g_ScriptId, "H�y ��a ta t�i V�n Ki�p C�c (��m)", 10 ,-1  )
			return 0
		end
	end
	
	-- 4,�����������3,����ngû��4,Ҳ��ng���Խ���
	if IsMissionHaveDone(sceneId, selfId, 3) > 0   then
		if IsHaveMission( sceneId, selfId, 4 ) < 1 then
			AddNumText( sceneId, x200001_g_ScriptId, "H�y ��a ta t�i V�n Ki�p C�c (��m)", 10 ,-1  )
			return 0
		end
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x200001_CheckAccept( sceneId, selfId )
	
end

--**********************************
--ѯ�������ng��Ҫ���븱��
--**********************************
function x200001_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Ti�p th�
--**********************************
function x200001_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--���ͬ����븱��
--**********************************
function x200001_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--��������
--**********************************
function x200001_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "wanjie_1.nav"); --��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200001_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200001_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200001_g_CopySceneType);--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200001_g_ScriptId);--��1����������Ϊ���������¼��ű���
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
	LuaFnSetSceneLoad_Area( sceneId, "wanjie_1_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "wanjie_1_monster.ini" )

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
function x200001_OnCopySceneReady( sceneId, destsceneId )

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
		NewWorld( sceneId, leaderObjId, destsceneId, x200001_g_Fuben_X, x200001_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200001_g_Fuben_X, x200001_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				
				NewWorld( sceneId, mems[i], destsceneId, x200001_g_Fuben_X, x200001_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x200001_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x200001_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--����
--**********************************
function x200001_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- �س�,ֻ��Th�nh ph� ���񸱱����Ե��ô˽ӿ�
--**********************************
function x200001_BackToCity( sceneId, selfId )
	
end

--**********************************
--����
--**********************************
function x200001_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200001_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x200001_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--ɱ����������
--**********************************
function x200001_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--���������¼�
--**********************************
function x200001_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200001_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--����������ʱ���¼�
--**********************************
function x200001_OnCopySceneTimer( sceneId, nowTime )
--PrintNum(111)
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- û����to� � ����,ʲô������
	if nHumanNum < 1 then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId,0)
	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 8) --����˵��
	local nTime  = LuaFnGetCopySceneData_Param(sceneId, 9)	--ʱ��
	-- paopao 
	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 10) --����˵����
	
	-- ΢Ц֮�� ������ɺ� 
	if nStep1==1 then

		if nStep2==0    	then
			CallScriptFunction((200060), "Paopao",sceneId, "Chung Linh", "V�n Ki�p C�c", "#{JQ_PaoPao_66}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==1  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			end

		elseif nStep2==2    	then
			CallScriptFunction((200060), "Paopao",sceneId, "Chung Linh", "V�n Ki�p C�c", "#{JQ_PaoPao_67}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		end
	end

	local nJuqingStep = LuaFnGetCopySceneData_Param(sceneId, 11)
	local targetId = LuaFnGetCopySceneData_Param(sceneId, 12)
	if nJuqingStep == 1  then
		LuaFnSetCopySceneData_Param(sceneId, 11, 2)
		for i=0, 	nHumanNum-1  do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			
			-- ���ý�����to� � ���
			CallScriptFunction((200003), "OnDefaultEvent",sceneId, nHumanId, targetId )
		end
		LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		-- T�i �������m�t ЩNPCto� � paopao,ʹ �i�m���鿴��ȥ�����ν�m�t Щ
		CallScriptFunction((200060), "Paopao",sceneId, "Chung Linh", "V�n Ki�p C�c", "#{juqing_start_001}")
		LuaFnSetCopySceneData_Param(sceneId, 11, 3)
		
		--elseif nJuqingStep == 2  then

	elseif nJuqingStep == 3  then
		
		-- T�i �������m�t ЩNPCto� � paopao,ʹ �i�m���鿴��ȥ�����ν�m�t Щ
		CallScriptFunction((200060), "Paopao",sceneId, "Chung Linh", "V�n Ki�p C�c", "#{juqing_start_002}")
		LuaFnSetCopySceneData_Param(sceneId, 11, 4)

	elseif nJuqingStep == 4  then
		
		-- T�i �������m�t ЩNPCto� � paopao,ʹ �i�m���鿴��ȥ�����ν�m�t Щ
		CallScriptFunction((200060), "Paopao",sceneId, "Chung Linh", "V�n Ki�p C�c", "#{juqing_start_003}")
		LuaFnSetCopySceneData_Param(sceneId, 11, 5)
		
	elseif nJuqingStep == 5  then
		-- ����Npc����,��Ӫ
		SetUnitReputationID(sceneId, selfId, targetId, 0)
		SetMonsterFightWithNpcFlag(sceneId, targetId, 1)

		SetPatrolId(sceneId, targetId, 0)
		LuaFnSetCopySceneData_Param(sceneId, 11, 6)
		
	elseif nJuqingStep == 6  then  --��⻤�Ͷ�����ng����ng����
		local targetX, targetZ = GetWorldPos(sceneId, targetId)
		local patrolPathIndex = 0
		local x, z = GetLastPatrolPoint(sceneId, patrolPathIndex)
		local distance2 = floor(sqrt((targetX-x)*(targetX-x)+(targetZ-z)*(targetZ-z)))
		if distance2 <= 1 then
			LuaFnSetCopySceneData_Param(sceneId, 11, 7)
			
			-- ֪ͨ������to� � ������,�������
			for i=0, 	nHumanNum-1  do
				local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			  BeginEvent(sceneId)
			  	AddText(sceneId, "Nhi�m v� ho�n th�nh: \"Vi Ti�u Chi L�\"")
			  EndEvent()
			  DispatchMissionTips(sceneId, nHumanId)
			  
			  -- ����C�i n�y ����to� � �˼�����ɱ�־
			  if IsHaveMission(sceneId, nHumanId, 3) > 0 then
					local misIndex = GetMissionIndexByID(sceneId,nHumanId,3)
					SetMissionByIndex( sceneId, nHumanId, misIndex, 0, 1)
					SetMissionByIndex( sceneId, nHumanId, misIndex, 1, 1)
			  end
			end
			LuaFnSetCopySceneData_Param(sceneId, 8, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		end
	end
end

