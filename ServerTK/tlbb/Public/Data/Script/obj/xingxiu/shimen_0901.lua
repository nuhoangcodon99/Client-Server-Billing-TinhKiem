--��������
--ľ��

--************************************************************************
--MisDescBegin

--�ű���
x227901_g_ScriptId = 227901

--��������
x227901_g_CopySceneName="Ng� Th�n еng"

--�����
x227901_g_MissionId = 1096

--Ŀ��NPC
x227901_g_Name = ""

--�Ƿ��Ǿ�Ӣ����
x227901_g_IfMissionElite = 1

--�������
x227901_g_MissionKind = 27

--����ȼ�
x227901_g_MissionLevel = 10000

--********���漸���Ƕ�̬��ʾ�����ݣ������������б��ж�̬��ʾ�������******
--ѭ�����������������������������Ļ��� MD_MURENXIANG_HUAN
--g_MissionRound =
--**********************************�����Ƕ�̬****************************

--�����ı�����
x227901_g_MissionName="Ng� Th�n еng"
x227901_g_MissionInfo="Gi�t h�t to�n b� qu�i v�t, 1 con c�ng kh�ng tha!"  --��������
x227901_g_MissionTarget="Gi�t h�t to�n b� qu�i v�t. "	--����Ŀ��
x227901_g_ContinueInfo="C�c h� ph�i ti�p t�c c� g�ng nh�!"	--δ��������npc�Ի�
x227901_g_MissionComplete="C�m �n. "	--�������npc˵���Ļ�
x227901_g_Parameter_Kill_CountRandom = { { id = 1700079, numNeeded = 6, numKilled = 4 } }

--������

--MisDescEnd
--************************************************************************

--��ɫMission����˵��
x227901_g_Param_huan		=0	--0�ţ��Ѿ���ɵĻ������ڽ�������ʱ��ֵ
x227901_g_Param_ok			=1	--1�ţ���ǰ�����Ƿ����(0δ��ɣ�1���)
x227901_g_Param_sceneid		=2	--2�ţ���ǰ��������ĳ�����
x227901_g_Param_teamid		=3	--3�ţ��Ӹ�������ʱ��Ķ����
x227901_g_Param_killcount	=4	--4�ţ�ɱ������ֵ�����
x227901_g_Param_time		=5	--5�ţ���ɸ�������ʱ��(��λ����)
--6�ţ�δ��
--7�ţ�δ��

x227901_g_CopySceneType=FUBEN_WUSHENDONG	--�������ͣ�������ScriptGlobal.lua����
x227901_g_LimitMembers=1			--���Խ���������С��������
x227901_g_TickTime=5				--�ص��ű���ʱ��ʱ�䣨��λ����/�Σ�
x227901_g_LimitTotalHoldTime=360	--�������Դ���ʱ�䣨��λ��������,�����ʱ�䵽�ˣ������񽫻�ʧ��
x227901_g_LimitTimeSuccess=500		--����ʱ�����ƣ���λ���������������ʱ�䵽�ˣ��������
x227901_g_CloseTick=6				--�����ر�ǰ����ʱ����λ��������
x227901_g_NoUserTime=300			--������û���˺���Լ��������ʱ�䣨��λ���룩
x227901_g_DeadTrans=0				--����ת��ģʽ��0�������󻹿��Լ����ڸ�����1��������ǿ���Ƴ�����
x227901_g_Fuben_X=14				--���븱����λ��X
x227901_g_Fuben_Z=40				--���븱����λ��Z
x227901_g_Back_X=126				--Դ����λ��X
x227901_g_Back_Z=77					--Դ����λ��Z
x227901_g_TotalNeedKill=10			--��Ҫɱ����������

--**********************************
--������ں���
--**********************************
function x227901_OnDefaultEvent( sceneId, selfId, targetId )
	if( IsHaveMission(sceneId,selfId,x227901_g_MissionId) > 0)  then	--�������Ѿ������������
		misIndex = GetMissionIndexByID(sceneId,selfId,x227901_g_MissionId)
		bDone = x227901_CheckSubmit( sceneId, selfId )
		if bDone==0 then						--����δ���
			BeginEvent(sceneId)
				AddText(sceneId,"Nhi�m v� th�t b�i, xin v�t b� � nh�n nhi�m v� m�i");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif bDone==1 then					--�����Ѿ����
			BeginEvent(sceneId)
				AddText(sceneId,x227901_g_MissionName)
				AddText(sceneId,x227901_g_MissionComplete)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x227901_g_ScriptId,x227901_g_MissionId,bDone)
		end
  elseif x227901_CheckAccept(sceneId,selfId) > 0 then		--û���������������������
		--�����������ʱ��ʾ����Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x227901_g_MissionName)
			AddText(sceneId,x227901_g_MissionInfo)
			AddText(sceneId,"M�c ti�u nhi�m v�: ")
			AddText(sceneId,x227901_g_MissionTarget)
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x227901_g_ScriptId,x227901_g_MissionId)
				
  end
end

--**********************************
--�о��¼�
--**********************************
function x227901_OnEnumerate( sceneId, selfId, targetId )
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x227901_g_MissionId) > 0 then
		AddNumText(sceneId, x227901_g_ScriptId,x227901_g_MissionName);
	--���������������
  else
		local ret = CallScriptFunction(229000, "IsFubenMission",sceneId, selfId, targetId)
			if ret > 0 then
				AddNumText(sceneId,x227901_g_ScriptId,x227901_g_MissionName);
			end
  end
end

--**********************************
--����������
--**********************************
function x227901_CheckAccept( sceneId, selfId )
	if GetMissionCount( sceneId, selfId) >= 20 then	--�����������������Ƿ�ﵽ����20��
		BeginEvent(sceneId)
			AddText(sceneId,"Nhi�m v� ghi ch�p c�a c�c h� �� �y");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	elseif IsHaveMission(sceneId,selfId,x227901_g_MissionId)>0 then
		--�����Ƿ��Ѿ��ӹ��������������һ������
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� nh�n ���c nhi�m v� n�y");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end

	return	1
end

--**********************************
--����
--**********************************
function x227901_OnAccept( sceneId, selfId, targetId )

	if( IsHaveMission(sceneId,selfId,x227901_g_MissionId) > 0)  then	--�Ѿ��������
		misIndex = GetMissionIndexByID(sceneId,selfId,x227901_g_MissionId)
		copysceneid = GetMissionParam( sceneId, selfId, misIndex, x227901_g_Param_sceneid)
		saveteamid = GetMissionParam( sceneId, selfId, misIndex, x227901_g_Param_teamid)
		if copysceneid > 0 then --��������
			BeginEvent(sceneId)
				AddText(sceneId,"Nhi�m v� th�t b�i, xin v�t b� � nh�n nhi�m v� m�i");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end

	else
		--������������б�
		if x227901_CheckAccept(sceneId,selfId) <= 0 then	--�жϽ�������
			return 0
		end

		AddMission( sceneId, selfId, x227901_g_MissionId, x227901_g_ScriptId, 1, 0, 0 )

		misIndex = GetMissionIndexByID( sceneId, selfId, x227901_g_MissionId )

		--������ĵ�1����������Ϊ0,��ʾδ��ɵ�����
		SetMissionByIndex(sceneId, selfId,misIndex,x227901_g_Param_ok,0)

		--������ĵ�2����������Ϊ-1, ���ڱ��渱���ĳ�����
		SetMissionByIndex(sceneId, selfId,misIndex,x227901_g_Param_sceneid,-1)

		SetMissionByIndex(sceneId, selfId,misIndex,6,10)
		
		x227901_MakeCopyScene( sceneId, selfId) ;
	end
	CallScriptFunction(229000, "SetFubenMissionSucc", sceneId, selfId, targetId)
end

--**********************************
--����
--**********************************
function x227901_OnAbandon( sceneId, selfId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x227901_g_MissionId)
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x227901_g_Param_sceneid)

	--ɾ����������б��ж�Ӧ������
    DelMission( sceneId, selfId, x227901_g_MissionId )

	if sceneId==copyscene then --����ڸ�����ɾ��������ֱ�Ӵ��ͻ�
		--BeginEvent(sceneId)
		--	AddText(sceneId,"����ʧ�ܣ�");
		--EndEvent(sceneId)
		--DispatchMissionTips(sceneId,selfId)

		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ�ø�����ڳ�����

		NewWorld( sceneId, selfId, oldsceneId, x227901_g_Back_X, x227901_g_Back_Z )
	end
end

--**********************************
--��������
--**********************************
function x227901_MakeCopyScene( sceneId, selfId, nearmembercount )

	mylevel = GetLevel(sceneId, selfId)

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "wushendong.nav"); --��ͼ�Ǳ���ѡȡ�ģ����ұ�����Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x227901_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x227901_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x227901_g_CopySceneType);--���ø������ݣ����ｫ0����������������Ϊ999�����ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x227901_g_ScriptId);--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--���ø����رձ�־, 0���ţ�1�ر�
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --��������
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--ɱ��Boss������

	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < 100 then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = 90
	end

	LuaFnSetSceneLoad_Monster( sceneId, "wushendong_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --����CopyScene_LevelGap �� scene.lua �и�ֵ

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
--����
--**********************************
function x227901_OnContinue( sceneId, selfId, targetId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x227901_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x227901_g_Param_sceneid)>=1	then
		DispatchMissionContinueInfo(sceneId, selfId, targetId, x227901_g_ScriptId, x227901_g_MissionId)
	end

end

--**********************************
--����Ƿ�����ύ
--**********************************
function x227901_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x227901_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

--�ж������Ƿ��Ѿ����
	misIndex = GetMissionIndexByID(sceneId,selfId,x227901_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x227901_g_Param_ok)>=1 then
		return	1
	else
		return	0
	end
end

--**********************************
--�ύ
--**********************************
function x227901_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x227901_CheckSubmit( sceneId, selfId, selectRadioId )>0 then		--�Ѿ����������
		--���������Ѿ�����ɹ�
		DelMission( sceneId,selfId,  x227901_g_MissionId )

		CallScriptFunction(229000, "SetFubenMissionSucc", sceneId, selfId, targetId)		
		
		BeginEvent(sceneId)
			strText = "��nh th�ng Ng� Th�n еng, nhi�m v� ho�n th�nh!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--ɱ����������
--**********************************
function x227901_OnKillObject( sceneId, selfId, objdataId ,objId )

	--�Ƿ��Ǹ���
	sceneType = LuaFnGetSceneType(sceneId) ;
	if sceneType~=1 then
		return
	end
	--�Ƿ�������Ҫ�ĸ���
	fubentype = LuaFnGetCopySceneData_Param(sceneId,0)
	if fubentype~=x227901_g_CopySceneType then
		return
	end
	--�����رձ�־
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;
	if 	leaveFlag==1 then --��������Ѿ����óɹر�״̬����ɱ����Ч
		return
	end

	--ȡ�õ�ǰ�����������
	num = LuaFnGetCopyScene_HumanCount(sceneId)

	killednumber = LuaFnGetCopySceneData_Param(sceneId, 7) ;--ɱ���ֵ�����
	killednumber = killednumber+1
	LuaFnSetCopySceneData_Param(sceneId, 7, killednumber) ;--����ɱ���ֵ�����

	if killednumber<x227901_g_TotalNeedKill then

		BeginEvent(sceneId)
			strText = format("�� gi�t ch�t qu�i v�t: %d/%d ", killednumber, x227901_g_TotalNeedKill )
			AddText(sceneId,strText);
		EndEvent(sceneId)

		for i=0,num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)--ȡ�õ�ǰ�������˵�objId
			DispatchMissionTips(sceneId,humanObjId)

			misIndex = GetMissionIndexByID(sceneId,humanObjId,x227901_g_MissionId) --ȡ��������������ֵ
			local killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x227901_g_Param_killcount) --ȡ���Ѿ�ɱ�˵Ĺ�����
			killedcount = killedcount +1 ;
			SetMissionByIndex(sceneId,humanObjId,misIndex,x227901_g_Param_killcount,killedcount) --������������
		end
	elseif killednumber>=x227901_g_TotalNeedKill then
		--����������ɱ�־
		LuaFnSetCopySceneData_Param(sceneId, 4, 1)

		--ȡ���Ѿ�ִ�еĶ�ʱ����
		TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;

		for i=0,num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)	--ȡ�õ�ǰ�������˵�objId
			misIndex = GetMissionIndexByID(sceneId,humanObjId,x227901_g_MissionId)--ȡ��������������ֵ

			local killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x227901_g_Param_killcount) --ȡ���Ѿ�ɱ�˵Ĺ�����
			killedcount = killedcount +1 ;
			SetMissionByIndex(sceneId,humanObjId,misIndex,x227901_g_Param_killcount,killedcount) --������������

			--������ĵ�1����������Ϊ1,��ʾ��ɵ�����
			SetMissionByIndex(sceneId,humanObjId,misIndex,x227901_g_Param_ok,1)--������������
			--��ɸ�������ʱ��
			SetMissionByIndex(sceneId,humanObjId,misIndex,x227901_g_Param_time,TickCount*x227901_g_TickTime)--������������

			BeginEvent(sceneId)
				AddText(sceneId,"Nhi�m v� ho�n th�nh, c�c h� ���c chuy�n t�i v� tr� v�o c�a");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,humanObjId)
			
			DelMission( sceneId, humanObjId, x227901_g_MissionId )
			--local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ�ø�����ڳ�����
			--NewWorld( sceneId, humanObjId, oldsceneId, x227901_g_Back_X, x227901_g_Back_Z )
			
		end
	end
end

--**********************************
--���������¼�
--**********************************
function x227901_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x227901_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--�����¼�
--**********************************
function x227901_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--���ø�����ڳ�����
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);

	misIndex = GetMissionIndexByID(sceneId,leaderObjId,x227901_g_MissionId)

	--������ĵ�2����������Ϊ�����ĳ�����
	SetMissionByIndex(sceneId,leaderObjId,misIndex,x227901_g_Param_sceneid,destsceneId)

	NewWorld( sceneId, leaderObjId, destsceneId, x227901_g_Fuben_X, x227901_g_Fuben_Z) ;

end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x227901_OnPlayerEnter( sceneId, selfId )
	--���������󸴻��λ��
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x227901_g_Fuben_X, x227901_g_Fuben_Z );
end

--**********************************
--������ڸ����������¼�
--**********************************
function x227901_OnHumanDie( sceneId, selfId, killerId )
	if x227901_g_DeadTrans==1 then --��������Ҫ��ǿ���߳�����

		misIndex = GetMissionIndexByID(sceneId,selfId,x227901_g_MissionId)--ȡ��������������ֵ

		--������ĵ�1����������Ϊ1,��ʾ��ɵ�����
		SetMissionByIndex(sceneId,selfId,misIndex,x227901_g_Param_ok,1)--������������
		--����ʱ�Ӷ�ȡ������
		local TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--ȡ���Ѿ�ִ�еĶ�ʱ����

		--��ɸ�������ʱ��
		SetMissionByIndex(sceneId,selfId,misIndex,x227901_g_Param_time,TickCount*x227901_g_TickTime)--������������

		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ�ø�����ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x227901_g_Back_X, x227901_g_Back_Z )
	end
end

--**********************************
--����������ʱ���¼�
--**********************************
function x227901_OnCopySceneTimer( sceneId, nowTime )

	--����ʱ�Ӷ�ȡ������
	TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--ȡ���Ѿ�ִ�еĶ�ʱ����
	TickCount = TickCount+1 ;
	LuaFnSetCopySceneData_Param(sceneId, 2, TickCount);--�����µĶ�ʱ�����ô���

	--�����رձ�־
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;

	if leaveFlag == 1 then --��Ҫ�뿪

		--�뿪����ʱ��Ķ�ȡ������
		leaveTickCount = LuaFnGetCopySceneData_Param(sceneId, 5) ;
		leaveTickCount = leaveTickCount+1 ;
		LuaFnSetCopySceneData_Param(sceneId, 5, leaveTickCount) ;

		if leaveTickCount == x227901_g_CloseTick then --����ʱ�䵽����Ҷ���ȥ��

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ�ø�����ڳ�����

			--����ǰ����������������˴��ͻ�ԭ������ʱ��ĳ���
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				NewWorld( sceneId, mems[i], oldsceneId, x227901_g_Back_X, x227901_g_Back_Z )
			end

		elseif leaveTickCount<x227901_g_CloseTick then

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ�ø�����ڳ�����

			--֪ͨ��ǰ����������������ˣ������رյ���ʱ��
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
	  			BeginEvent(sceneId)
	  				strText = format("C�c h� s� r�i kh�i ��y sau %d gi�y!", (x227901_g_CloseTick-leaveTickCount)*x227901_g_TickTime )
	  				AddText(sceneId,strText);
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,mems[i])
			end
		end
	elseif TickCount == x227901_g_LimitTimeSuccess then
		--�˴�������ʱ�����Ƶ�������ɴ���
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)

  			BeginEvent(sceneId)
  				AddText(sceneId,"Th�i gian ho�n t�t nhi�m v� �� t�i, ho�n th�nh!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])

			misIndex = GetMissionIndexByID(sceneId,mems[i],x227901_g_MissionId)--ȡ��������������ֵ
			--������ĵ�1����������Ϊ1,��ʾ��ɵ�����
			SetMissionByIndex(sceneId,mems[i],misIndex,x227901_g_Param_ok,1)--������������
			--��ɸ�������ʱ��
			SetMissionByIndex(sceneId,mems[i],misIndex,x227901_g_Param_time,TickCount*x227901_g_TickTime)--������������
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	elseif TickCount == x227901_g_LimitTotalHoldTime then --������ʱ�����Ƶ���
		--�˴����ø���������ʱ�����Ƶ��������ʱ�䵽����...
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			DelMission( sceneId, mems[i], x227901_g_MissionId );--����ʧ��,ɾ��֮

  			BeginEvent(sceneId)
  				AddText(sceneId,"Nhi�m v� th�t b�i, qu� gi�!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	end
end


