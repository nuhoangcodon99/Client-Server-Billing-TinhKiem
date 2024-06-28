--��������
--�����ڿ󳡵��ҵ�С��

--************************************************************************
--MisDescBegin

--�ű���
x600004_g_ScriptId = 600004

--�����
x600004_g_MissionId = 1105

--Ŀ��NPC
x600004_g_Name = "M� �ng H�ng "

--����ȼ�
x600004_g_MissionLevel = 10000

--�������
x600004_g_MissionKind = 50

--�Ƿ��Ǿ�Ӣ����
x600004_g_IfMissionElite = 0

--********���漸���Ƕ�̬��ʾ�����ݣ������������б��ж�̬��ʾ�������******
--��ɫMission����˵��
x600004_g_IsMissionOkFail			=0	--0 ������ɱ��
x600004_g_MissionParam_SubId		=1	--1 ������ű��Ŵ��λ��
x600004_g_MissionParam_KillNumber	=2	--2 ��Ҫ����Ĺ�������
x600004_g_Param_sceneid				=3	--3�ţ���ǰ��������ĳ�����
x600004_g_Param_teamid				=4	--4�ţ��Ӹ�������ʱ��Ķ����
x600004_g_Param_killcount			=5	--5�ţ�ɱ������ֵ�����
x600004_g_Param_time				=6	--6�ţ���ɸ�������ʱ��(��λ����)
--6�ţ�δ��
--7�ţ�δ��

--ѭ�����������������������������Ļ���
x600004_g_MissionRound = 38
--**********************************�����Ƕ�̬****************************

--�����ı�����
x600004_g_MissionName = "Nhi�m v� c�ng tr�nh"
x600004_g_MissionInfo = ""													--��������
x600004_g_MissionTarget = "    Di�t b� t�t c� tr�m c�p n�i lo�n. "						--����Ŀ��
x600004_g_ContinueInfo = "    Nhi�m v� c�a c�c h� v�n ch�a ho�n th�nh �?"						--δ��������npc�Ի�
x600004_g_SubmitInfo = "    S� t�nh ti�n tri�n nh� th� n�o r�i?"								--���δ�ύʱ��npc�Ի�
x600004_g_MissionComplete = "    L�m t�t l�m, r�t t�t r�t t�t. "						--�������npc˵���Ļ�

x600004_g_Parameter_Kill_CountRandom = { { id = 300473, numNeeded = 2, numKilled = 5 } }

-- ͨ�ó�������ű�
x600004_g_CityMissionScript = 600001
x600004_g_EngineeringScript = 600002

--������

--MisDescEnd
--************************************************************************

--��������
x600004_g_CopySceneName = "Kho�ng tr߶ng"

x600004_g_CopySceneType = FUBEN_MINE	--�������ͣ�������ScriptGlobal.lua����

x600004_g_CopySceneMap = "kuangchang.nav"
x600004_g_Exit = "kuangchang_area.ini"
x600004_g_LimitMembers = 1				--���Խ���������С��������
x600004_g_TickTime = 5					--�ص��ű���ʱ��ʱ�䣨��λ����/�Σ�
x600004_g_LimitTotalHoldTime = 360		--�������Դ���ʱ�䣨��λ��������,�����ʱ�䵽�ˣ������񽫻�ʧ��
x600004_g_LimitTimeSuccess = 500		--����ʱ�����ƣ���λ���������������ʱ�䵽�ˣ��������
x600004_g_CloseTick = 3					--�����ر�ǰ����ʱ����λ��������
x600004_g_NoUserTime = 300				--������û���˺���Լ��������ʱ�䣨��λ���룩
x600004_g_DeadTrans = 0					--����ת��ģʽ��0�������󻹿��Լ����ڸ�����1��������ǿ���Ƴ�����
x600004_g_Fuben_X = 17					--���븱����λ��X
x600004_g_Fuben_Z = 15					--���븱����λ��Z
x600004_g_Back_X = 66					--Դ����λ��X
x600004_g_Back_Z = 56					--Դ����λ��Z

--**********************************
--������ں���
--**********************************
function x600004_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600004_g_Name then		--�жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
		return
	end

	--����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) > 0 then
		local bDone = x600004_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600004_g_SubmitInfo
		else
			strText = x600004_g_ContinueInfo
		end

		if bDone == 0 then												--����δ���
			if GetNumText() == 1 then
				x600004_AcceptEnterCopyScene( sceneId, selfId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, x600004_g_MissionName )
					x600004_AskEnterCopyScene( sceneId, selfId )
				EndEvent( )
				DispatchEventList( sceneId, selfId, targetId )
			end
		elseif bDone == 1 then											--�����Ѿ����
			BeginEvent( sceneId )
				AddText( sceneId, x600004_g_MissionName )
				AddText( sceneId, strText )
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x600004_g_ScriptId, x600004_g_MissionId, bDone )
		end
	--���������������
	elseif x600004_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600004_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600004_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x600004_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600004_g_Name then		--�жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
		return
	end

   --����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) > 0 then
		AddNumText( sceneId, x600004_g_ScriptId, x600004_g_MissionName,3,-1 )
	end
end

--**********************************
--����������
--**********************************
function x600004_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600004_g_EngineeringScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--ѯ������Ƿ�Ҫ���븱��
--**********************************
function x600004_AskEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) <= 0 then	-- û������
		return
	end

	local missionInfo
	if random(2) == 1 then
		missionInfo = format( "    Trong h�m m� � th�nh ph�, c� m�t nh�m c߾p �ang �n n�i lo�n, c�n c�c h� �i �n �� �u�i ch�ng" )
	else
		missionInfo = format( "    C� m�t nh�m c߾p v� duy�n v� c� �n g�y r�i � h�m m�, tr�ng ch� v�o c�c h� c� �y" )
	end

	AddText( sceneId, missionInfo )
	AddText( sceneId, "#{M_MUBIAO}" )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600004_g_MissionId )
	local KillNumber = GetMissionParam( sceneId, selfId, misIndex, x600004_g_MissionParam_KillNumber )
	AddText( sceneId, "    Trong h�m m� gi�t ch�t  " .. KillNumber .. "  t�n c߾p n�i lo�n" )
	AddNumText( sceneId, x600004_g_ScriptId, "Ra v�o h�m m�", 10, 1 )
end

--**********************************
--����
--**********************************
function x600004_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) == 0 then					--û������ſ���������
		if GetLevel( sceneId, selfId ) < 20 then
			CallScriptFunction( x600004_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Kh�ng �� ��ng c�p" )
			return
		end

		--������������б�
		AddMission( sceneId, selfId, x600004_g_MissionId, x600004_g_ScriptId, 1, 0, 0 )	-- kill��area��item
		if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) <= 0 then
			return
		end

		CallScriptFunction( x600004_g_EngineeringScript, "OnAccept", sceneId, selfId, targetId, x600004_g_ScriptId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600004_g_MissionId )
		local KillNumber = 9 + random(11)
		SetMissionByIndex( sceneId, selfId, misIndex, x600004_g_MissionParam_KillNumber, KillNumber )

		--��ʾ���ݸ�������Ѿ�����������
		BeginEvent( sceneId )
			AddText( sceneId, x600004_g_MissionName )
			x600004_AskEnterCopyScene( sceneId, selfId )
			AddText( sceneId, "#rC�c h� �� nh�n " .. x600004_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--���ͬ����븱��
--**********************************
function x600004_AcceptEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) > 0 then					--������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600004_g_MissionId )
		--local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x600004_g_Param_sceneid )

		--if copysceneid >= 0 then												--��������
			--���Լ����͵���������
			--if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				--NewWorld( sceneId, selfId, copysceneid, x600004_g_Fuben_X, x600004_g_Fuben_Z )
				--return
			--end
		--end

		SetMissionByIndex( sceneId, selfId, misIndex, x600004_g_IsMissionOkFail, 0 )	--������ĵ�0����������Ϊ0,��ʾδ��ɵ�����
		SetMissionByIndex( sceneId, selfId, misIndex, x600004_g_Param_sceneid, -1 )		--������ĵ�3����������Ϊ-1, ���ڱ��渱���ĳ�����
		
		--add by xindefeng
		SetMissionByIndex( sceneId, selfId, misIndex, x600004_g_Param_killcount, 0 )	--������ĵ�2����������Ϊ-1, ���ڱ��渱���ĳ�����
		x600004_MakeCopyScene( sceneId, selfId )
	end
end

--**********************************
--��������
--**********************************
function x600004_MakeCopyScene( sceneId, selfId )
	local mylevel = GetLevel( sceneId, selfId )

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x600004_g_CopySceneMap )						--��ͼ�Ǳ���ѡȡ�ģ����ұ�����Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600004_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600004_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x600004_g_CopySceneType )				--���ø������ݣ����ｫ0����������������Ϊ999�����ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600004_g_ScriptId )					--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--���ø����رձ�־, 0���ţ�1�ر�
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							--ɱ��Boss������

	local PlayerMaxLevel = GetHumanMaxLevelLimit() --modi:lby20071127
	local iniLevel
	
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end
	
	LuaFnSetSceneLoad_Area( sceneId, x600004_g_Exit )
	LuaFnSetSceneLoad_Monster( sceneId, "kuangchang_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --����CopyScene_LevelGap �� scene.lua �и�ֵ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--��ʼ����ɺ���ô�����������
	if bRetSceneID > 0 then
		x600004_NotifyFailTips( sceneId, selfId, "D�ch chuy�n th�nh c�ng!" )
	else
		x600004_NotifyFailTips( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )
	end

end

--**********************************
--�����¼�
--**********************************
function x600004_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--���ø�����ڳ�����
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- �����޷�ִ���߼���״̬
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600004_g_MissionId ) > 0 then			--������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600004_g_MissionId )

		--������ĵ�2����������Ϊ�����ĳ�����
		SetMissionByIndex( sceneId, leaderObjId, misIndex, x600004_g_Param_sceneid, destsceneId )
		NewWorld( sceneId, leaderObjId, destsceneId, x600004_g_Fuben_X, x600004_g_Fuben_Z )
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x600004_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) == 0 then				--������븱��ǰɾ��������ֱ�Ӵ��ͻ�
		x600004_NotifyFailTips( sceneId, selfId, "C�c h� �� kh�ng nh�n nhi�m v� n�y t� tr߾c" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--ȡ�ø�����ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x600004_g_Back_X, x600004_g_Back_Z )
		return
	end

	local monstercount = GetMonsterCount( sceneId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600004_g_MissionId )
	local KillNumber = GetMissionParam( sceneId, selfId, misIndex, x600004_g_MissionParam_KillNumber )

	-- �ɵ�����Ĺ�
	if monstercount > KillNumber then
		local i
		for i = 0, monstercount - KillNumber - 1 do
			LuaFnDeleteMonster( sceneId, GetMonsterObjID( sceneId, i ) )
		end
	end
end

--**********************************
--������ڸ����������¼�
--**********************************
function x600004_OnHumanDie( sceneId, selfId, killerId )
	if x600004_g_DeadTrans == 1 then														--��������Ҫ��ǿ���߳�����
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				--ȡ�ø�����ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x600004_g_Back_X, x600004_g_Back_Z )
	end
end

--**********************************
--����
--**********************************
function x600004_OnAbandon( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600004_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x600004_g_Param_sceneid )

	--ɾ����������б��ж�Ӧ������
	CallScriptFunction( x600004_g_EngineeringScript, "OnAbandon", sceneId, selfId )

	if sceneId == copyscene then											--����ڸ�����ɾ��������ֱ�Ӵ��ͻ�
		x600004_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--ȡ�ø�����ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x600004_g_Back_X, x600004_g_Back_Z )
	end
end

--**********************************
-- �سǣ�ֻ�г������񸱱����Ե��ô˽ӿ�
--**********************************
function x600004_BackToCity( sceneId, selfId )
	--CallScriptFunction( x600004_g_CityMissionScript, "BackToCity", sceneId, selfId, x600004_g_MissionId, x600004_g_Back_X, x600004_g_Back_Z )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )					--ȡ�ý��븱��ʱ���ڳ�����
	CallScriptFunction( 400900, "TransferFunc", sceneId, selfId, oldsceneId, x600004_g_Back_X, x600004_g_Back_Z )
end

--**********************************
--����
--**********************************
function x600004_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600004_g_MissionName )
		AddText( sceneId, x600004_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600004_g_ScriptId, x600004_g_MissionId )
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x600004_CheckSubmit( sceneId, selfId, selectRadioId )
	--�ж������Ƿ��Ѿ����
	local ret = CallScriptFunction( x600004_g_EngineeringScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--�ύ
--**********************************
function x600004_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600004_g_Name then		--�жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
		return
	end

	if x600004_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600004_g_EngineeringScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x600004_OnKillObject( sceneId, selfId, objdataId, objId )
	if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) == 0 then
		return
	end

	--�Ƿ��Ǹ���
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--�Ƿ�������Ҫ�ĸ���
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x600004_g_CopySceneType then
		return
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--��������Ѿ����óɹر�״̬����ɱ����Ч
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600004_g_MissionId )
	local killedbossnumber = GetMissionParam( sceneId, selfId, misIndex, x600004_g_Param_killcount )	--ɱ��Boss������

	killedbossnumber = killedbossnumber + 1
	SetMissionByIndex( sceneId, selfId, misIndex, x600004_g_Param_killcount, killedbossnumber )	--����ɱ��Boss������

	local KillNumber = GetMissionParam( sceneId, selfId, misIndex, x600004_g_MissionParam_KillNumber )

	local strText = format( "�� gi�t ch�t ��m c߾p n�i lo�n: %d/%d", killedbossnumber, KillNumber )
	x600004_NotifyFailTips( sceneId, selfId, strText )

	if killedbossnumber >= KillNumber then
		--����������ɱ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		strText = format( "Ho�n t�t nhi�m v�, trong v�ng %d gi�y n�a s� ��a �n ch� ra v�o", x600004_g_CloseTick * x600004_g_TickTime )
		x600004_NotifyFailTips( sceneId, selfId, strText )

		--������ĵ�1����������Ϊ1,��ʾ��ɵ�����
		SetMissionByIndex( sceneId, selfId, misIndex, x600004_g_IsMissionOkFail, 1 )	--������������
	end
end

--**********************************
--���������¼�
--**********************************
function x600004_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x600004_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--����������ʱ���¼�
--**********************************
function x600004_OnCopySceneTimer( sceneId, nowTime )

	--����ʱ�Ӷ�ȡ������
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--ȡ���Ѿ�ִ�еĶ�ʱ����
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--�����µĶ�ʱ�����ô���

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	if leaveFlag == 1 then															--��Ҫ�뿪
		--�뿪����ʱ��Ķ�ȡ������
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x600004_g_CloseTick then										--����ʱ�䵽����Ҷ���ȥ��
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--ȡ�ø�����ڳ�����

			--����ǰ����������������˴��ͻ�ԭ������ʱ��ĳ���
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, x600004_g_Back_X, x600004_g_Back_Z )
				end
			end
		else
			--֪ͨ��ǰ����������������ˣ������رյ���ʱ��
			local strText = format( "C�c h� s� r�i kh�i n�i n�y trong v�ng %d gi�y n�a", ( x600004_g_CloseTick - leaveTickCount ) * x600004_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600004_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	end
end

function x600004_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
