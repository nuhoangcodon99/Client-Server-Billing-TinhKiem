--��������
--��Ԯ���ɴ���

--************************************************************************
--MisDescBegin

--�ű���
x600026_g_ScriptId = 600026

--�����
x600026_g_MissionId = 1110

--Ŀ��NPC
x600026_g_Name = "��ng Ph� Dung "

--����ȼ�
x600026_g_MissionLevel = 10000

--�������
x600026_g_MissionKind = 50

--�Ƿ��Ǿ�Ӣ����
x600026_g_IfMissionElite = 0

--********���漸���Ƕ�̬��ʾ�����ݣ������������б��ж�̬��ʾ�������******
--��ɫMission����˵��

x600026_g_IsMissionOkFail			=0	--0 ������ɱ��
x600026_g_MissionParam_SubId		=1	--1 ������ű��Ŵ��λ��
x600026_g_Param_sceneid				=2	--2 ��ǰ��������ĳ�����
x600026_g_MissionParam_Phase		=3	--3 �׶κ� �˺��������ֵ�ǰ����UI��������Ϣ
x600026_g_MissionParam_MasterId		=4	--4 �������ŵ�NPCId��
x600026_g_MissionParam_MenpaiIndex	=5	--5 ĳ���ɵ��������ֱ����ڲ����ַ����б���ĳ���ɵ�����[�ͻ���]�Լ�������������ص���Ϣ[��������]

--ѭ�����������������������������Ļ���
x600026_g_MissionRound = 55
--**********************************�����Ƕ�̬****************************

--�����ı�����
x600026_g_MissionName = "Nhi�m v� khu�ch tr߽ng"
x600026_g_MissionInfo = ""													--��������
x600026_g_MissionTarget = "%f"												--����Ŀ��
x600026_g_ContinueInfo = "    Nhi�m v� c�a c�c h� v�n ch�a ho�n th�nh �?"						--δ��������npc�Ի�
x600026_g_SubmitInfo = "    S� t�nh ti�n tri�n nh� th� n�o r�i?"								--���δ�ύʱ��npc�Ի�
x600026_g_MissionComplete = "    R�t t�t, L�n h�nh �ng giang h� n�y ai ai c�ng bi�t, kh�ng h� danh bang ta ��i ��c ��i ngh�a. "	--�������npc˵���Ļ�

x600026_g_StrForePart = 3

--���������ַ�����ʽ��������
x600026_g_FormatList = {
	"",
	"    T�m %1n � c�u vi�n cho ��i n�n c�a m�n ph�i n�y",
	"    H� t�ng %2s � t� ra kh�i khu c�m �a",
}

x600026_g_StrList = {
	[0] = "Thi�u L�m",
	[1] = "Minh Gi�o",
	[2] = "C�i Bang",
	[3] = "V� �ang",
	[4] = "Nga My",
	[5] = "Thi�n Long T� ",
	[6] = "Tinh T�c",
	[7] = "Thi�n S�n",
	[8] = "Ti�u Dao",
}

x600026_g_MenpaiInfo = {
	[0] = { Name = "Thi�u L�m",		NpcId = 1700008,	CopySceneName = "Th�p L�m",		Type = FUBEN_TALIN1,		    Map = "tongrenxiang_2.nav",		Exit = "tongrenxiang_2_area.ini",	Monster = "tongrenxiang_2_monster_%d.ini", 	EntrancePos = { x = 28, z = 52 },	BackPos = { x = 38, z = 97 }, },
	[1] = { Name = "Minh Gi�o",		NpcId = 1700009,	CopySceneName = "Quang Minh �ng",	Type = FUBEN_GUANGMINGDONG1,	Map = "guangmingdong_2.nav",	Exit = "guangmingdong_2_area.ini",	Monster = "guangmingdong_2_monster_%d.ini", EntrancePos = { x = 19, z = 42 },	BackPos = { x = 97, z = 55 }, },
	[2] = { Name = "C�i Bang",		NpcId = 1700010,	CopySceneName = "H�m r��u",		Type = FUBEN_JIUJIAO1,			Map = "jiujiao_2.nav",			Exit = "jiujiao_2_area.ini",		Monster = "jiujiao_2_monster_%d.ini", 		EntrancePos = { x = 45, z = 47 },	BackPos = { x = 91, z = 99 }, },
	[3] = { Name = "V� �ang",		NpcId = 1700011,	CopySceneName = "Linh T�nh Phong",	Type = FUBEN_LINGXINGFENG1,		Map = "lingxingfeng_2.nav",		Exit = "lingxingfeng_2_area.ini",	Monster = "lingxingfeng_2_monster_%d.ini", 	EntrancePos = { x = 42, z = 46 },	BackPos = { x = 77, z = 86 }, },
	[4] = { Name = "Nga My",		NpcId = 1700012,	CopySceneName = "��o Hoa Tr�n",	Type = FUBEN_TAOHUAZHEN1,		Map = "taohuazhen_2.nav",		Exit = "taohuazhen_2_area.ini",		Monster = "taohuazhen_2_monster_%d.ini", 	EntrancePos = { x = 26, z = 46 },	BackPos = { x = 96, z = 73 }, },
	[5] = { Name = "Thi�n Long T� ",	NpcId = 1700013,	CopySceneName = "Ch�n th�p",		Type = FUBEN_TADI1,				Map = "tadi_2.nav",				Exit = "tadi_2_area.ini",			Monster = "tadi_2_monster_%d.ini", 			EntrancePos = { x = 45, z = 48 },	BackPos = { x = 96, z = 67 }, },
	[6] = { Name = "Tinh T�c",		NpcId = 1700014,	CopySceneName = "Ng� Th�n еng",	Type = FUBEN_WUSHENDONG1,		Map = "wushendong_2.nav",		Exit = "wushendong_2_area.ini",		Monster = "wushendong_2_monster_%d.ini", 	EntrancePos = { x = 14, z = 40 },	BackPos = { x = 142, z = 56 }, },
	[7] = { Name = "Thi�n S�n",		NpcId = 1700015,	CopySceneName = "Chi�t Mai Phong",	Type = FUBEN_ZHEMEIFENG1,		Map = "zhemeifeng_2.nav",		Exit = "zhemeifeng_2_area.ini",		Monster = "zhemeifeng_2_monster_%d.ini", 	EntrancePos = { x = 29, z = 49 },	BackPos = { x = 90, z = 45 }, },
	[8] = { Name = "Ti�u Dao",		NpcId = 1700016,	CopySceneName = "C�c �a",		Type = FUBEN_GUDI1,				Map = "gudi_2.nav",				Exit = "gudi_2_area.ini",			Monster = "gudi_2_monster_%d.ini", 			EntrancePos = { x = 42, z = 47 },	BackPos = { x = 124, z = 145 }, },
}

-- ͨ�ó�������ű�
x600026_g_CityMissionScript = 600001
x600026_g_ExpandScript = 600023

--������

--MisDescEnd
--************************************************************************


x600026_g_TickTime = 5					--�ص��ű���ʱ��ʱ�䣨��λ����/�Σ�
x600026_g_CloseTick = 3					--�����ر�ǰ����ʱ����λ��������
x600026_g_NoUserTime = 120				--������û���˺���Լ��������ʱ�䣨��λ���룩

x600026_g_ProtegeGroup = 2				-- �����͵� NPC Group
x600026_g_PatrolId = 0					-- NPC Ѳ��·��

--**********************************
--������ں���
--**********************************
function x600026_OnDefaultEvent( sceneId, selfId, targetId )
--	if GetName( sceneId, targetId ) ~= x600026_g_Name then		--�жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
--		return
--	end

	--����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) > 0 then
		local bDone = x600026_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600026_g_SubmitInfo
		else
			strText = x600026_g_ContinueInfo
		end

		local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )

		if bDone == 0 and GetMissionParam( sceneId, selfId, misIndex, x600026_g_IsMissionOkFail ) ~= 2 then		--����δ���
			if GetNumText() == 1 then	-- �����ǵ����������
				x600026_AcceptEnterCopyScene( sceneId, selfId )
				return

--				BeginEvent( sceneId )
--					AddText( sceneId, x600026_g_MissionName )
--					AskEnterCopyScene( sceneId, selfId )
--				EndEvent( )
--				DispatchEventList( sceneId, selfId, targetId )
			end

			if GetNumText() == 2 then	-- �����ǵ������Ԯ����
				x600026_StartPatrol( sceneId, selfId, targetId )
				return
			end
		end

		BeginEvent( sceneId )
			AddText( sceneId, x600026_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600026_g_ScriptId, x600026_g_MissionId, bDone )

	--���������������
	elseif x600026_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600026_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600026_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x600026_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600026_g_Name then		--�жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
		return
	end

   --����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) > 0 then
		AddNumText( sceneId, x600026_g_ScriptId, x600026_g_MissionName,3,-1 )
	end
end

--**********************************
--����������
--**********************************
function x600026_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600026_g_ExpandScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--����
--**********************************
function x600026_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) == 0 then					--û������ſ���������
		if GetLevel( sceneId, selfId ) < 40 then
			CallScriptFunction( x600026_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Kh�ng �� ��ng c�p" )
			return
		end

		--������������б�
		AddMission( sceneId, selfId, x600026_g_MissionId, x600026_g_ScriptId, 0, 0, 0 )	-- kill��area��item
		if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) <= 0 then
			return
		end

		SetMissionEvent( sceneId, selfId, x600026_g_MissionId, 4 ) -- ע�� x600026_OnLockedTarget �¼�
		CallScriptFunction( x600026_g_ExpandScript, "OnAccept", sceneId, selfId, targetId, x600026_g_ScriptId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )

		-- ���һ������
		local MenpaiIndex = random( 0, getn(x600026_g_MenpaiInfo) )
		local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
		if not MenpaiInfo then
			x600026_NotifyFailTips( sceneId, selfId, "Sai s�t nghi�m tr�ng!" )
			return
		end

		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_MissionParam_Phase, 1 )
		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_MissionParam_MasterId, MenpaiInfo.NpcId )
		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_MissionParam_MenpaiIndex, MenpaiIndex )

		local _, strNpcName, strNpcSceneDesc, nPosX, nPosZ = GetNpcInfoByNpcId(sceneId, MenpaiInfo.NpcId )

		--��ʾ���ݸ�������Ѿ�����������
		BeginEvent( sceneId )
			AddText( sceneId, x600026_g_MissionName )
			local missionInfo = format( "    %s g�p n�n, ra l�nh cho c�c h� c�p t�c t�m %s %s (%d, %d) � c�u vi�n, nh�m d߽ng uy danh cho b�n bang",
				MenpaiInfo.Name, strNpcSceneDesc, strNpcName, nPosX, nPosZ )

			AddText( sceneId, missionInfo )
			AddText( sceneId, "#rC�c h� �� nh�n " .. x600026_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--������һ������
--**********************************
function x600026_OnLockedTarget( sceneId, selfId, objId )
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) < 1 then
		return		-- û�и�����
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )
	local MenpaiIndex = GetMissionParam( sceneId, selfId, misIndex, x600026_g_MissionParam_MenpaiIndex )
	local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
	if not MenpaiInfo then
		x600026_NotifyFailTips( sceneId, selfId, "Sai s�t nghi�m tr�ng!" )
		return
	end

	local _, strNpcName = GetNpcInfoByNpcId( sceneId, MenpaiInfo.NpcId )

	if GetName( sceneId, objId ) == strNpcName then							-- ����
		local missionInfo = format( "    M�t ��m ng߶i kh�ng r� th�n ph�n x�m ph�m v�o v�ng c�m �a, v�y h�m � t� c�a m�n ph�i ch�ng ta, � ngh� c�u vi�n m�n ph�i ch�ng ta" )

		TAddText( sceneId, missionInfo )
		TAddNumText( sceneId, x600026_g_ScriptId, "V�o v�ng c�m �a", 10, 1, x600026_g_ScriptId )
		return
	end

	--�Ƿ��Ǹ���
	--local sceneType = LuaFnGetSceneType( sceneId )
	--if sceneType ~= 1 then
		--return
	--end

	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype == MenpaiInfo.Type then
		local GroupID = GetMonsterGroupID( sceneId, objId )
		-- ��ΪѲ�� NPC �������Ժ󲻻��ٴ���Ӧ����¼����������ﲻ�����⴦��
		if GroupID == x600026_g_ProtegeGroup then
			local PlayerGender = GetSex( sceneId, selfId )
			local rank

			if PlayerGender == 0 then
				rank = "N� hi�p"
			else
				rank = " c�c h�"
			end

			local missionInfo = format( "    �a t� %s c�u vi�n t߽ng tr�, ��i ngh�a c�a qu� bang �n ch�t c�ng kh�ng qu�n", rank )

			TAddText( sceneId, missionInfo )
			TAddNumText( sceneId, x600026_g_ScriptId, "H�y theo t�i h� ph� v�y", 10, 2, x600026_g_ScriptId )
			return
		end
	end
end

--**********************************
--���ͬ����븱��
--**********************************
function x600026_AcceptEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) > 0 then					--������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )

		-- ���ﲻ����Ҵ�����һ����������Ϊ���������У����һ���뿪����
		-- �����͵� NPC ����������Ҳ�����ߵ��յ㣬Ҳ���ܸ����Ѿ�����Ϊ�رձ��
		-- �����ܵ������������ý��룬����һ��ͬ����븱����һ�ɽ����¸���

		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_IsMissionOkFail, 0 )	--������ĵ�0����������Ϊ0,��ʾδ��ɵ�����
		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_Param_sceneid, -1 )		--������ĵ�2����������Ϊ-1, ���ڱ��渱���ĳ�����
		x600026_MakeCopyScene( sceneId, selfId )
	end
end

--**********************************
--��ʼ���뻤�͹���
--**********************************
function x600026_StartPatrol( sceneId, selfId, targetId )
	local flag = LuaFnGetCopySceneData_Param( sceneId, 8 )
	if flag == 1 then															-- �Ѿ���ʼ����
		return
	end

	local GroupID = GetMonsterGroupID( sceneId, targetId )
	if GroupID == x600026_g_ProtegeGroup then
		--���������������ʱ����
		StartMissionTimer( sceneId, selfId, x600026_g_MissionId )
		SetMissionEvent( sceneId, selfId, x600026_g_MissionId, 5 )
		SetPatrolId( sceneId, targetId, x600026_g_PatrolId )							-- ����Ѳ��·��
		LuaFnSetCopySceneData_Param( sceneId, 8, 1 )							--��ʾ�Ѿ���ʼ����
		SetUnitReputationID( sceneId, selfId, targetId, GetUnitReputationID( sceneId, selfId, selfId ) )
		SetMonsterFightWithNpcFlag( sceneId, targetId, 1 )				-- ���������͹���ս���ı��
		-- GetMonsterFightWithNpcFlag
	end
end

--**********************************
--��������
--**********************************
function x600026_MakeCopyScene( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )
	local MenpaiIndex = GetMissionParam( sceneId, selfId, misIndex, x600026_g_MissionParam_MenpaiIndex )
	local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
	if not MenpaiInfo then
		x600026_NotifyFailTips( sceneId, selfId, "Sai s�t nghi�m tr�ng!" )
		return
	end

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, MenpaiInfo.Map )						--��ͼ�Ǳ���ѡȡ�ģ����ұ�����Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600026_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600026_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, MenpaiInfo.Type )				--���ø������ݣ����ｫ0����������������Ϊ999�����ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600026_g_ScriptId )					--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--���ø����رձ�־, 0���ţ�1�ر�
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param( sceneId, 6, 0 )							--����������ߵĴ���
	LuaFnSetCopySceneData_Param( sceneId, 7, MenpaiIndex )					--��ʾ���ǵڼ�������
	LuaFnSetCopySceneData_Param( sceneId, 8, 0 )							--��ʾ�Ƿ��Ѿ���ʼ����
	
	local PlayerMaxLevel = GetHumanMaxLevelLimit() --modi:lby20071127

	local mylevel = GetLevel( sceneId, selfId )
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Area( sceneId, MenpaiInfo.Exit )
	LuaFnSetSceneLoad_Monster( sceneId, format( MenpaiInfo.Monster, iniLevel ) )

	LuaFnSetCopySceneData_Param( sceneId, CopyScene_LevelGap, mylevel - iniLevel ) --����CopyScene_LevelGap �� scene.lua �и�ֵ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--��ʼ����ɺ���ô�����������
	if bRetSceneID > 0 then
		x600026_NotifyFailTips( sceneId, selfId, "D�ch chuy�n th�nh c�ng!" )
	else
		x600026_NotifyFailTips( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )
	end

end

--**********************************
--�����¼�
--**********************************
function x600026_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--���ø�����ڳ�����
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- �����޷�ִ���߼���״̬
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600026_g_MissionId ) > 0 then			--������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600026_g_MissionId )
		local MenpaiIndex = GetMissionParam( sceneId, leaderObjId, misIndex, x600026_g_MissionParam_MenpaiIndex )
		local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
		if not MenpaiInfo then
			x600026_NotifyFailTips( sceneId, leaderObjId, "Sai s�t nghi�m tr�ng!" )
			return
		end

		--������ĵ�2����������Ϊ�����ĳ�����
		SetMissionByIndex( sceneId, leaderObjId, misIndex, x600026_g_Param_sceneid, destsceneId )
		NewWorld( sceneId, leaderObjId, destsceneId, MenpaiInfo.EntrancePos.x, MenpaiInfo.EntrancePos.z )
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x600026_OnPlayerEnter( sceneId, selfId )
	local MenpaiIndex = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
	if not MenpaiInfo then
		x600026_NotifyFailTips( sceneId, selfId, "Sai s�t nghi�m tr�ng!" )
		return
	end

	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) == 0 then				-- ������븱��ǰɾ��������ֱ�Ӵ��ͻ�
		x600026_NotifyFailTips( sceneId, selfId, "C�c h� �� kh�ng nh�n nhi�m v� n�y t� tr߾c" )
		x600026_BackToCity( sceneId, selfId )
		return
	end
end

--**********************************
--������ڸ����������¼�
--**********************************
function x600026_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--����
--**********************************
function x600026_OnAbandon( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x600026_g_Param_sceneid )

	--ɾ����������б��ж�Ӧ������
	CallScriptFunction( x600026_g_ExpandScript, "OnAbandon", sceneId, selfId )

	if sceneId == copyscene then											--����ڸ�����ɾ��������ֱ�Ӵ��ͻ�
		x600026_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i!" )
		x600026_BackToCity( sceneId, selfId )
	end
end

--**********************************
-- �سǣ�ֻ�г������񸱱����Ե��ô˽ӿ�
--**********************************
function x600026_BackToCity( sceneId, selfId )
	local MenpaiIndex = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
	if not MenpaiInfo then
		x600026_NotifyFailTips( sceneId, selfId, "Sai s�t nghi�m tr�ng!" )
		return
	end

	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )					--ȡ�ø�����ڳ�����
	NewWorld( sceneId, selfId, oldsceneId, MenpaiInfo.BackPos.x, MenpaiInfo.BackPos.z )
end

--**********************************
--����
--**********************************
function x600026_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600026_g_MissionName )
		AddText( sceneId, x600026_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600026_g_ScriptId, x600026_g_MissionId )
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x600026_CheckSubmit( sceneId, selfId, selectRadioId )
	--�ж������Ƿ��Ѿ����
	local ret = CallScriptFunction( x600026_g_ExpandScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--�ύ
--**********************************
function x600026_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600026_g_Name then		--�жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
		return
	end

	if x600026_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600026_g_ExpandScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x600026_OnKillObject( sceneId, selfId, objdataId, objId )
end

--**********************************
--���������¼�
--**********************************
function x600026_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x600026_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--����������ʱ���¼�
--**********************************
function x600026_OnCopySceneTimer( sceneId, nowTime )

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

		if leaveTickCount >= x600026_g_CloseTick then										--����ʱ�䵽����Ҷ���ȥ��
			--����ǰ����������������˴��ͻ�ԭ������ʱ��ĳ���
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600026_BackToCity( sceneId, mems[i] )
				end
			end
		else
			--֪ͨ��ǰ����������������ˣ������رյ���ʱ��
			local strText = format( "C�c h� s� r�i kh�i n�i n�y trong v�ng %d gi�y n�a", ( x600026_g_CloseTick - leaveTickCount ) * x600026_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600026_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	end
end

--**********************************
--��ʱ�¼�
--**********************************
function x600026_OnTimer( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) < 1 then
		return		-- û�и�����
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )

	local MenpaiIndex = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
	if not MenpaiInfo then
		x600026_NotifyFailTips( sceneId, selfId, "Sai s�t nghi�m tr�ng!" )
		return
	end

	--�Ƿ��Ǹ���
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		ResetMissionEvent( sceneId, selfId, x600026_g_MissionId, 5 )			-- �����ߴ�����
		return
	end

	--�Ƿ�������Ҫ�ĸ���
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype == MenpaiInfo.Type then
		local monstercount = GetMonsterCount( sceneId )
		local i, monsterId, GroupID

		for i = 0, monstercount - 1 do
			monsterId = GetMonsterObjID( sceneId, i )
			GroupID = GetMonsterGroupID( sceneId, monsterId )
			-- ��ΪѲ�� NPC �������Ժ󲻻��ٴ���Ӧ����¼����������ﲻ�����⴦��
			if GroupID == x600026_g_ProtegeGroup then
				local x, z = GetLastPatrolPoint( sceneId, 0 )
				local npcX, npcZ = GetWorldPos( sceneId, monsterId )

				if (x - npcX) * (x - npcX) + (z - npcZ) * (z - npcZ) < 4 then	-- ���յ㲻�� 2 ��
					SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_IsMissionOkFail, 1 )
					ResetMissionEvent( sceneId, selfId, x600026_g_MissionId, 5 )		-- �����ߴ�����
					ResetMissionEvent( sceneId, selfId, x600026_g_MissionId, 4 )		-- �����õ��
					LuaFnDeleteMonster( sceneId, monsterId )
					LuaFnSetCopySceneData_Param( sceneId, 4, 1 )				-- �����رձ��
					x600026_NotifyFailTips( sceneId, selfId, "Nhi�m v� ho�n th�nh, h�y quay v� th�nh ph�c m�nh" )
				end

				return
			end
		end

		-- �����͵� NPC ����
		x600026_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i!" )
		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_IsMissionOkFail, 2 )	-- ����ʧ��
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	end

	-- �뿪�˸������߱����͵� NPC ������ֹͣ�߼�ʱ��
	ResetMissionEvent( sceneId, selfId, x600026_g_MissionId, 5 )						-- �����ߴ�����
end

function x600026_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
