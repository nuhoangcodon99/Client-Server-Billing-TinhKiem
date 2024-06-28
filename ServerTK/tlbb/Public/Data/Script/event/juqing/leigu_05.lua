-- ӵ�� 37 �����,���Խ������to� � ����

-- �޹�ɽ  200044

-- 	T�i ������to� � ָ����ǰ���޹�ɽ

--************************************************************************
--MisDescBegin
--�ű���
x200044_g_ScriptId = 200044

--�����
x200044_g_MissionId = 37

--MisDescEnd
--************************************************************************

--��������
x200044_g_CopySceneName = "L�i C� S�n"

x200044_g_CopySceneType = FUBEN_JUQING	--��������,����T�i ScriptGlobal.lua����

x200044_g_CopySceneMap = "leigu.nav"
x200044_g_Exit = "leigu.ini"
x200044_g_LimitMembers = 1				--���Խ�����to� � ��С��������
x200044_g_TickTime = 5					--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x200044_g_LimitTotalHoldTime = 360		--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x200044_g_LimitTimeSuccess = 500		--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x200044_g_CloseTick = 3					--�����ر�ǰ����ʱ(��λ: ����)
x200044_g_NoUserTime = 300				--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x200044_g_DeadTrans = 0					--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x200044_g_Fuben_X = 56					--���븱��to� � λ��X
x200044_g_Fuben_Z = 104					--���븱��to� � λ��Z
x200044_g_Back_X = 66					--Դ����λ��X
x200044_g_Back_Z = 56					--Դ����λ��Z

--**********************************
--������ں���
--**********************************
function x200044_OnDefaultEvent( sceneId, selfId, targetId )
	-- �������to� � ���,������͵���ͬto� � ����
	x200044_MakeCopyScene(sceneId, selfId)
end

--**********************************
--�о��¼�
--**********************************
function x200044_OnEnumerate( sceneId, selfId, targetId )

	-- 1,ӵ�������Ϊ37to� � ����,
	if IsHaveMission( sceneId, selfId, 37 ) > 0 then
		AddNumText( sceneId, x200044_g_ScriptId, "H�y ��a ta t�i L�i C� S�n (ng�y)", 10 ,-1  )
		return 0
	end

end
--**********************************
--���Ti�p th�����
--**********************************
function x200044_CheckAccept( sceneId, selfId )
	
end

--**********************************
--ѯ�������ng��Ҫ���븱��
--**********************************
function x200044_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Ti�p th�
--**********************************
function x200044_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--���ͬ����븱��
--**********************************
function x200044_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--��������
--**********************************
function x200044_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "leigu.nav"); --��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200044_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200044_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200044_g_CopySceneType);--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200044_g_ScriptId);--��1����������Ϊ���������¼��ű���
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
	LuaFnSetSceneLoad_Area( sceneId, "leigu_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "leigu_monster.ini" )

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
function x200044_OnCopySceneReady( sceneId, destsceneId )

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
		NewWorld( sceneId, leaderObjId, destsceneId, x200044_g_Fuben_X, x200044_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200044_g_Fuben_X, x200044_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				--misIndex = GetMissionIndexByID(sceneId,mems[i],x200044_g_MissionId)
				
				--������to� � ��2����������Ϊ����to� � ������
				--SetMissionByIndex(sceneId,mems[i],misIndex,x200044_g_Param_sceneid,destsceneId)
						
				NewWorld( sceneId, mems[i], destsceneId, x200044_g_Fuben_X, x200044_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x200044_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x200044_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--����
--**********************************
function x200044_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- �س�,ֻ��Th�nh ph� ���񸱱����Ե��ô˽ӿ�
--**********************************
function x200044_BackToCity( sceneId, selfId )
	
end

--**********************************
--����
--**********************************
function x200044_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200044_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x200044_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--ɱ����������
--**********************************
function x200044_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--���������¼�
--**********************************
function x200044_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200044_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--����������ʱ���¼�
--**********************************
function x200044_OnCopySceneTimer( sceneId, nowTime )
--PrintNum(2)
	if LuaFnGetCopySceneData_Param(sceneId, 10) == 0  then

		local nMonsterNum = GetMonsterCount(sceneId)
		local ii = 0
		local bHaveMonster = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			
			if GetName(sceneId, nMonsterId)  == "�inh Xu�n Thu "  then
				bHaveMonster = 1
			end
		end
		
		if bHaveMonster == 0  then
			--  ��t ���c�������,Ȼ��C�i n�y �����ng����ng��C�i n�y ����,�о͸���C�i n�y λ������Ϊ1
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
			
			local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
			if nHumanNum == 0  then
				return
			end
			for i=0, 	nHumanNum-1  do
				local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				
				--��C�i n�y �����ng����ng��C�i n�y ����
				if IsHaveMission( sceneId, nHumanId, 37 ) > 0 then
					local misIndex = GetMissionIndexByID(sceneId, nHumanId, x200044_g_MissionId)
					SetMissionByIndex(sceneId, nHumanId, misIndex, 0, 1)
					SetMissionByIndex(sceneId, nHumanId, misIndex, 1, 1)
					BeginEvent(sceneId)
					AddText(sceneId,"�� chi�n th�ng �inh Xu�n Thu: 1/1")
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,nHumanId)
					
				end
			end
		end
	end
	
end


