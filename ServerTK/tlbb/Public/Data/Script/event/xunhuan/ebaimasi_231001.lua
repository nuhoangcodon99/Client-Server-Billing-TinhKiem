--��������
--�������

--************************************************************************
--MisDescBegin

--�ű���
x231001_g_ScriptId = 231001

--��������
x231001_g_CopySceneName="Tr�n Long k� cu�c"

--�����
x231001_g_MissionId = 4013

--��һ�������ID
x231001_g_MissionIdPre = 4011

--Ŀ��NPC
x231001_g_Name = "V߽ng T�ch T�n "

--�Ƿ��Ǿ�Ӣ����
x231001_g_IfMissionElite = 1

--����ȼ�
x231001_g_MissionLevel = 10000

--�������
x231001_g_MissionKind = 1

--�����ı�����
x231001_g_MissionName="Tr�n Long k� cu�c"
x231001_g_MissionInfo="Gi�t h�t 108 qu�n c� tr�n b�n c�, gi�i tho�t V߽ng T�ch T�n ra kh�i s� kh�ng ch� c�a Tr�n Long K� Cu�c"  --��������
x231001_g_MissionTarget="Gi�t ch�t 108 qu�n c�"	--����Ŀ��
x231001_g_ContinueInfo="C�c h� �� gi�t ch�t h�t 108 qu�n c� ch�a ?"	--δ��������npc�Ի�
x231001_g_MissionComplete="C�m �n, cu�i c�ng ta �� ���c gi�i tho�t kh�i v�n c� n�y r�i"	--�������npc˵���Ļ�

--������
x231001_g_MoneyBonus=5000

--********���漸���Ƕ�̬��ʾ�����ݣ������������б��ж�̬��ʾ�������******
--ѭ�����������������������������Ļ��� MD_LINGLONG_HUAN
--�����Ƿ��Ѿ����
--MissionRound =
--**********************************�����Ƕ�̬****************************
--��ɫMission����˵��
x231001_g_IsMissionOkFail	= 0	--0�ţ���ǰ�����Ƿ����(0δ��ɣ�1���)
x231001_g_MissionRound		= 5	--Define MD_BAIMASI_HUAN from ScriptGlobal.lua
--x231001_g_DemandKill		= { {id=700,num=108} }
x231001_g_Custom					= { {id="�� gi�t: #r#r K� T�",num=108} }
x231001_g_Param_killcount	=	1	--1�ţ�ɱ������ֵ�����
x231001_g_Param_sceneid		= 2	--2�ţ���ǰ��������ĳ�����
x231001_g_Param_teamid		= 3	--3�ţ��Ӹ�������ʱ��Ķ����
x231001_g_Param_time			= 4	--4�ţ���ɸ�������ʱ��(��λ����)
--6�ţ����帱���¼��ű�ռ��
--7�ţ����帱���¼��ű�ռ��
--MisDescEnd
--************************************************************************

x231001_g_CopySceneType=FUBEN_ZHENGLONG	--�������ͣ�������ScriptGlobal.lua����
x231001_g_LimitMembers=1			--���Խ���������С��������
x231001_g_TickTime=5				--�ص��ű���ʱ��ʱ�䣨��λ����/�Σ�
x231001_g_LimitTotalHoldTime=360	--�������Դ���ʱ�䣨��λ��������,�����ʱ�䵽�ˣ������񽫻�ʧ��
x231001_g_LimitTimeSuccess=500		--����ʱ�����ƣ���λ���������������ʱ�䵽�ˣ��������
x231001_g_CloseTick=6				--�����ر�ǰ����ʱ����λ��������
x231001_g_NoUserTime=300			--������û���˺���Լ��������ʱ�䣨��λ���룩
x231001_g_Fuben_X=40				--���븱����λ��X
x231001_g_Fuben_Z=45				--���븱����λ��Z
x231001_g_Relive_X=68				--���������λ��X
x231001_g_Relive_Z=90				--���������λ��Z
x231001_g_Back_X=268				--Դ����λ��X
x231001_g_Back_Z=87					--Դ����λ��Z
x231001_g_TotalNeedKill=108		--��Ҫɱ����������

x231001_g_StartTick=36 --��ʼ���ֵ�ʱ��
x231001_g_A_B=7000	--�ɲ��ɹ���״̬��ɿɹ���״̬��ʱ��(��λ������)
x231001_g_B_C=15000	--�ɿɹ���״̬������ι����ʱ��(��λ������)
x231001_g_MoTypeCount=9 --����������
x231001_g_Black_A={701,701,701,701,701,701,701,701,701}
x231001_g_Black_B={1780,1781,1782,1783,1784,1785,1786,1787,1788}
x231001_g_Black_C={1800,1801,1802,1803,1804,1805,1806,1807,1808}
x231001_g_White_A={700,700,700,700,700,700,700,700,700}
x231001_g_White_B={1770,1771,1772,1773,1774,1775,1776,1777,1778}
x231001_g_White_C={1790,1791,1792,1793,1794,1795,1796,1797,1798}
x231001_g_LastBoss={1850,1851,1852,1853,1854,1855,1856,1857,1858}
x231001_g_mListCount=1 --��������ѡ�����������
x231001_g_mListSize=100 --ÿ������ӵ�еĲ���
--��������
x231001_g_mList = {}
x231001_g_mList[1]= {288,72,301,60,111,70,167,318,316,280,262,296,319,315,337,317,309,173,43,45,40,59,41,61,24,62,230,44,58,77,39,128,129,147,148,92,93,74,91,73,336,335,279,297,261,312,105,90,103,67,65,83,102,123,104,101,140,120,64,63,161,144,184,287,306,249,250,269,270,268,212,307,289,305,325,324,326,229,210,248,192,174,87,47,108,109,145,259,343,285,182,172,157,137,76,96,112,126,146,180}
x231001_g_mList[2]= {288,72,301,60,111,70,167,318,316,280,262,296,319,315,337,317,309,173,43,45,40,59,41,61,24,62,230,44,58,77,39,128,129,147,148,92,93,74,91,73,336,335,279,297,261,312,105,90,103,67,65,83,102,123,104,101,140,120,64,63,161,144,184,287,306,249,250,269,270,268,212,307,289,305,325,324,326,229,210,248,192,174,87,47,108,109,145,259,343,285,182,172,157,137,76,96,112,126,146,180}
x231001_g_mList[3]= {288,72,301,60,111,70,167,318,316,280,262,296,319,315,337,317,309,173,43,45,40,59,41,61,24,62,230,44,58,77,39,128,129,147,148,92,93,74,91,73,336,335,279,297,261,312,105,90,103,67,65,83,102,123,104,101,140,120,64,63,161,144,184,287,306,249,250,269,270,268,212,307,289,305,325,324,326,229,210,248,192,174,87,47,108,109,145,259,343,285,182,172,157,137,76,96,112,126,146,180}
x231001_g_mList[4]= {288,72,301,60,111,70,167,318,316,280,262,296,319,315,337,317,309,173,43,45,40,59,41,61,24,62,230,44,58,77,39,128,129,147,148,92,93,74,91,73,336,335,279,297,261,312,105,90,103,67,65,83,102,123,104,101,140,120,64,63,161,144,184,287,306,249,250,269,270,268,212,307,289,305,325,324,326,229,210,248,192,174,87,47,108,109,145,259,343,285,182,172,157,137,76,96,112,126,146,180}
x231001_g_mList[5]= {288,72,301,60,111,70,167,318,316,280,262,296,319,315,337,317,309,173,43,45,40,59,41,61,24,62,230,44,58,77,39,128,129,147,148,92,93,74,91,73,336,335,279,297,261,312,105,90,103,67,65,83,102,123,104,101,140,120,64,63,161,144,184,287,306,249,250,269,270,268,212,307,289,305,325,324,326,229,210,248,192,174,87,47,108,109,145,259,343,285,182,172,157,137,76,96,112,126,146,180}

--**********************************
--������ں���
--**********************************
function x231001_OnDefaultEvent( sceneId, selfId, targetId )

	if GetName( sceneId, targetId ) ~= x231001_g_Name then						--�жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
		return
	end

	if IsHaveMission( sceneId, selfId, x231001_g_MissionId ) > 0 then			--�������Ѿ������������
		local misIndex = GetMissionIndexByID( sceneId, selfId, x231001_g_MissionId )
		local bDone = x231001_CheckSubmit( sceneId, selfId )
		if bDone == 0 then												--����δ���
			BeginEvent( sceneId )
				AddText( sceneId, x231001_g_MissionName )
				AddText( sceneId, "Chu�n b� xong ch�a?" )
			EndEvent( )
			DispatchMissionInfo( sceneId, selfId, targetId, x231001_g_ScriptId, x231001_g_MissionId )
		elseif bDone == 1 then											--�����Ѿ����
			BeginEvent( sceneId )
				AddText( sceneId, x231001_g_MissionName )
				AddText( sceneId, x231001_g_ContinueInfo )
				AddMoneyBonus( sceneId, x231001_g_MoneyBonus )
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x231001_g_ScriptId, x231001_g_MissionId, bDone )
		end
--elseif x231001_CheckAccept( sceneId, selfId ) > 0 then						--û���������������������
	else
		--�����������ʱ��ʾ����Ϣ
		BeginEvent( sceneId )
			AddText( sceneId, x231001_g_MissionName )
			AddText( sceneId, x231001_g_MissionInfo )
			AddText( sceneId, "M�c ti�u nhi�m v�: " )
			AddText( sceneId, x231001_g_MissionTarget )
			AddText( sceneId, " " )
			AddMoneyBonus( sceneId, x231001_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo( sceneId, selfId, targetId, x231001_g_ScriptId, x231001_g_MissionId )
	end
end

--**********************************
--�о��¼�
--**********************************
function x231001_OnEnumerate( sceneId, selfId, targetId )
	--����ѽӴ�����������������������
--if IsHaveMission( sceneId, selfId, x231001_g_MissionId ) > 0 or x231001_CheckAccept( sceneId, selfId ) > 0 then
	if IsHaveMission( sceneId, selfId, x231001_g_MissionIdPre ) == 0 then
		x231001_MsgBox( sceneId, selfId, targetId, "  ��i s� Tr� Thanh c�a B�ch M� T� �ang ��i ng߽i!" )
		return
	else
		local	misIndex	= GetMissionIndexByID( sceneId, selfId, x231001_g_MissionIdPre )
		if GetMissionParam( sceneId, selfId, misIndex, x231001_g_IsMissionOkFail ) == 1 then
			x231001_MsgBox( sceneId, selfId, targetId, "  Ng߽i c� th� quay v� B�ch M� T� t�m ��i s� Tr� Thanh l�nh t�ng th߷ng!" )
			return
		end
	end

	AddNumText( sceneId, x231001_g_ScriptId, x231001_g_MissionName,4,-1 )
end

--**********************************
--����������
--**********************************
function x231001_CheckAccept( sceneId, selfId )
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x231001_NotifyFailTips( sceneId, selfId, "C�c h� ph�i gia nh�p v�o m�t �i ng�" )
		return 0
	end

	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
		x231001_NotifyFailTips( sceneId, selfId, "Ng߶i kh�ng ph�i l� nh�m tr߷ng" )
		return 0
	end

	--ȡ����Ҹ����Ķ��������������Լ���
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	if nearteammembercount ~= LuaFnGetTeamSize( sceneId, selfId ) then
		x231001_NotifyFailTips( sceneId, selfId, "Ng߽i c� nh�m vi�n kh�ng � g�n ��y" )
		return 0
	end

	if nearteammembercount < x231001_g_LimitMembers then
		x231001_NotifyFailTips( sceneId, selfId, "S� ng߶i trong �i ng� c�a c�c h� kh�ng ��" )
		return 0
	end


	--���С�����Ƿ����������¼����, �����Ƿ��Ѿ��ӹ�������
	local member
	local i
	local misIndex

	for	i=0, nearteammembercount-1 do
		member = GetNearTeamMember( sceneId, selfId, i )

		if IsHaveMission( sceneId, member, x231001_g_MissionIdPre ) <= 0 then
			x231001_NotifyFailTips( sceneId, selfId, "Trong nh�m c� ng߶i ch�a nh�n nhi�m v� B�ch M� T�" )
			return 0
		end

		misIndex = GetMissionIndexByID( sceneId, member, x231001_g_MissionIdPre )
		if GetMissionParam( sceneId, member, misIndex, 7 ) ~= 1 then
			x231001_NotifyFailTips( sceneId, selfId, "Trong nh�m c� ng߶i �� nhi�m v� B�ch M� T�" )
			return 0
		end

		if GetMissionParam( sceneId, member, misIndex, x231001_g_IsMissionOkFail ) == 1 then
			x231001_NotifyFailTips( sceneId, selfId, "Trong nh�m c� ng߶i �� Ho�n t�t nhi�m v� n�y" )
			return 0
		end

		if GetMissionCount( sceneId, member ) >= 20 then						--�����������������Ƿ�ﵽ����20��
			x231001_NotifyFailTips( sceneId, selfId, "Ghi ch�p nhi�m v� c�a ng߶i trong �i ng� �� �y" )
			return 0
		end

		if IsHaveMission( sceneId, member, x231001_g_MissionId ) > 0 then
			--�����Ƿ��Ѿ��ӹ��������������һ������
			x231001_NotifyFailTips( sceneId, selfId, "Trong �i �� c� ng߶i nh�n nhi�m v� n�y" )
			return 0
		end
	end

	return 1
end

--**********************************
--����
--**********************************
function x231001_OnAccept( sceneId, selfId )

	local teamid = GetTeamId( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x231001_g_MissionId ) > 0 then					--�Ѿ��������
		local misIndex = GetMissionIndexByID( sceneId, selfId, x231001_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x231001_g_Param_sceneid )
		local saveteamid = GetMissionParam( sceneId, selfId, misIndex, x231001_g_Param_teamid )

		if copysceneid >= 0 and teamid == saveteamid then						--��������
			--���Լ����͵���������
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x231001_g_Fuben_X, x231001_g_Fuben_Z )
			else
				x231001_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i, h�y b� �i v� nh�n l�i" )
				SetMissionByIndex( sceneId, selfId, misIndex, x231001_g_IsMissionOkFail, 2 )
			end

			return
		end
	end

	--������������б�
	if x231001_CheckAccept( sceneId, selfId ) == 0 then									--�жϽ�������
		return
	end

	--ȡ����Ҹ����Ķ��������������Լ���
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	local member
	local i
	local misIndex
	for	i=0, nearteammembercount-1 do
		member = GetNearTeamMember( sceneId, selfId, i )
		--��ÿ�������Ա��������
		AddMission( sceneId, member, x231001_g_MissionId, x231001_g_ScriptId, 1, 0, 0 )

		misIndex = GetMissionIndexByID( sceneId, member, x231001_g_MissionId )

		SetMissionByIndex( sceneId, member, misIndex, x231001_g_IsMissionOkFail, 0 )	--������ĵ�0����������Ϊ0,��ʾδ��ɵ�����
		SetMissionByIndex( sceneId, member, misIndex, x231001_g_Param_sceneid, -1 )		--������ĵ�2����������Ϊ-1, ���ڱ��渱���ĳ�����
		SetMissionByIndex( sceneId, member, misIndex, x231001_g_Param_teamid, teamid )	--������ĵ�3�����ݶ����
	end

	x231001_MakeCopyScene( sceneId, selfId, nearteammembercount )
end

--**********************************
--����
--**********************************
function x231001_OnAbandon( sceneId, selfId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x231001_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x231001_g_Param_sceneid )

	--ɾ����������б��ж�Ӧ������
	DelMission( sceneId, selfId, x231001_g_MissionId )

	if sceneId == copyscene then										--����ڸ�����ɾ��������ֱ�Ӵ��ͻ�
		x231001_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )	--ȡ�ø�����ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x231001_g_Back_X, x231001_g_Back_Z )
	end
end

--**********************************
--��������
--**********************************
function x231001_MakeCopyScene( sceneId, selfId, nearmembercount )

	local mems = {}
	local mylevel = 0
	local i

	for	i=0, nearmembercount-1 do
		mems[i] = GetNearTeamMember( sceneId, selfId, i )
		mylevel = mylevel + GetLevel( sceneId, mems[i] )
	end

	mylevel = mylevel/nearmembercount

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, "zhenlong.nav" )						--��ͼ�Ǳ���ѡȡ�ģ����ұ�����Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x231001_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x231001_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x231001_g_CopySceneType )				--���ø������ݣ����ｫ0����������������Ϊ999�����ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param( sceneId, 1, x231001_g_ScriptId )					--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--���ø����رձ�־, 0���ţ�1�ر�
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	--��������
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							--ɱ��Boss������
	LuaFnSetCopySceneData_Param( sceneId, 8, random(1, x231001_g_mListCount) )		--ѡ�õ�����
	LuaFnSetCopySceneData_Param( sceneId, 9, 0 )							--�Ѿ����˵Ĳ���

  local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetCopySceneData_Param( sceneId, 10, iniLevel / 10 )				--��¼�������Ĺ�����

	LuaFnSetSceneLoad_Monster( sceneId, "zhenlong_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --����CopyScene_LevelGap �� scene.lua �и�ֵ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--��ʼ����ɺ���ô�����������
	if bRetSceneID > 0 then
		x231001_NotifyFailTips( sceneId, selfId, "D�ch chuy�n th�nh c�ng!" )
	else
		x231001_NotifyFailTips( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )

		--ɾ����������б��ж�Ӧ������
		for	i=0, nearmembercount-1 do
			DelMission( sceneId, mems[i], x231001_g_MissionId )
		end
	end
end

--**********************************
--����
--**********************************
function x231001_OnContinue( sceneId, selfId, targetId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x231001_g_MissionId )
	if GetMissionParam( sceneId, selfId, misIndex, x231001_g_Param_sceneid ) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "Xin ch�c m�ng, ng߽i s� ��t ���c #{_MONEY"..x231001_g_MoneyBonus.."} t�ng th߷ng c�a!" )
		EndEvent( sceneId )
		DispatchMissionContinueInfo( sceneId, selfId, targetId, x231001_g_ScriptId, x231001_g_MissionId )
	end
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x231001_CheckSubmit( sceneId, selfId, selectRadioId )
	--�ж������Ƿ��Ѿ����
	local misIndex = GetMissionIndexByID( sceneId, selfId, x231001_g_MissionId )
	local	ret	= GetMissionParam( sceneId, selfId, misIndex, x231001_g_IsMissionOkFail )
	if ret == 1 then
		return 1
	else
		return 0
	end
end

--**********************************
--�ύ
--**********************************
function x231001_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if GetName( sceneId, targetId ) ~= x231001_g_Name then								--�жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
		return
	end

	if x231001_CheckSubmit( sceneId, selfId, selectRadioId ) > 0 then					--�Ѿ����������
		--local iHuan = GetMissionData( sceneId, selfId, 10 )					--ȡ���ܹ������Ļ���
		--���������
		local money = x231001_g_MoneyBonus
		AddMoney( sceneId, selfId, money )
		BeginEvent( sceneId )
			AddText( sceneId, x231001_g_MissionComplete )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		--���������Ѿ�����ɹ�
		DelMission( sceneId, selfId, x231001_g_MissionId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x231001_g_MissionIdPre )	--�õ���������к�
		SetMissionByIndex( sceneId, selfId, misIndex, x231001_g_IsMissionOkFail, 1 )	--�������кŰ���������ĵ�1λ��1 (����������)
	end
end

--**********************************
--ɱ����������
--**********************************
function x231001_OnKillObject( sceneId, selfId, objdataId ,objId )

	--�Ƿ��Ǹ���
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--�Ƿ�������Ҫ�ĸ���
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x231001_g_CopySceneType then
		return
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--��������Ѿ����óɹر�״̬����ɱ����Ч
		return
	end

	--ȡ�õ�ǰ�����������
	local num = LuaFnGetCopyScene_HumanCount( sceneId )

	local killednumber = LuaFnGetCopySceneData_Param( sceneId, 7 )				--ɱ���ֵ�����
	killednumber = killednumber + 1
	LuaFnSetCopySceneData_Param( sceneId, 7, killednumber )						--����ɱ��Boss������

	local i
	local misIndex
	local humanObjId
	--local killedcount

	if killednumber < x231001_g_TotalNeedKill then

		local strText = format( "�� gi�t K� T�: %d/%d", killednumber, x231001_g_TotalNeedKill )

		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )				--ȡ�õ�ǰ�������˵�objId

			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 then					--���ڳ����Ĳ����˲���
				x231001_NotifyFailTips( sceneId, humanObjId, strText )

				misIndex = GetMissionIndexByID( sceneId, humanObjId, x231001_g_MissionId )					--ȡ��������������ֵ
				--killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x231001_g_Param_killcount )	--ȡ���Ѿ�ɱ�˵Ĺ�����
				--killedcount = killedcount + 1
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231001_g_Param_killcount, killednumber )	--������������
			end
		end
	elseif killednumber >= x231001_g_TotalNeedKill then
		--����������ɱ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		--ȡ���Ѿ�ִ�еĶ�ʱ����
		local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )
		local strText = format( "�� gi�t K� T�: %d/%d", x231001_g_TotalNeedKill, x231001_g_TotalNeedKill )
		local strText2 = format( "Nhi�m v� ho�n th�nh, sau %d gi�y s� chuy�n t�i v� tr� v�o c�a", x231001_g_CloseTick * x231001_g_TickTime )

		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )									--ȡ�õ�ǰ�������˵�objId

			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 then										--���ڳ����Ĳ����˲���
				misIndex = GetMissionIndexByID( sceneId, humanObjId, x231001_g_MissionId)					--ȡ��������������ֵ

				--killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x231001_g_Param_killcount )	--ȡ���Ѿ�ɱ�˵Ĺ�����
				--killedcount = killedcount + 1
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231001_g_Param_killcount, x231001_g_TotalNeedKill )	--������������

				--������ĵ�1����������Ϊ1,��ʾ��ɵ�����
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231001_g_IsMissionOkFail, 1 )					--������������
				--��ɸ�������ʱ��
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231001_g_Param_time, TickCount * x231001_g_TickTime )	--������������

				x231001_NotifyFailTips( sceneId, humanObjId, strText )
				x231001_NotifyFailTips( sceneId, humanObjId, strText2 )
			end
		end
	end
end

--**********************************
--���������¼�
--**********************************
function x231001_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x231001_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--�����¼�
--**********************************
function x231001_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )							--���ø�����ڳ�����
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then											-- �Ҳ��������
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then		-- �����޷�ִ���߼���״̬
		return
	end

	--ȡ����Ҹ����Ķ��������������Լ���
	local nearteammembercount = GetNearTeamCount( sceneId, leaderObjId )

	if nearteammembercount < x231001_g_LimitMembers then
		x231001_NotifyFailTips( sceneId, leaderObjId, "S� ng߶i trong �i ng� c�a c�c h� kh�ng ��" )
		return
	end

	local member
	local misIndex
	for	i=0, nearteammembercount-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )

		if LuaFnIsCanDoScriptLogic( sceneId, member ) == 1 then			-- ���ڿ���ִ���߼���״̬
			if IsHaveMission( sceneId, member, x231001_g_MissionId ) > 0 then
				misIndex = GetMissionIndexByID( sceneId, member, x231001_g_MissionId )

				--������ĵ�2����������Ϊ�����ĳ�����
				SetMissionByIndex( sceneId, member, misIndex, x231001_g_Param_sceneid, destsceneId )

				NewWorld( sceneId, member, destsceneId, x231001_g_Fuben_X, x231001_g_Fuben_Z )
			else
				x231001_NotifyFailTips( sceneId, member, "C�c h� �� kh�ng nh�n nhi�m v� n�y t� tr߾c" )
			end
		end
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x231001_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x231001_g_MissionId ) == 0 then				--������븱��ǰɾ��������ֱ�Ӵ��ͻ�
		x231001_NotifyFailTips( sceneId, selfId, "C�c h� �� kh�ng nh�n nhi�m v� n�y t� tr߾c" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--ȡ�ø�����ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x231001_g_Back_X, x231001_g_Back_Z )
		return
	end

	--���������󸴻��λ��
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x231001_g_Relive_X, x231001_g_Relive_Z )
end

--**********************************
--������ڸ����������¼�
--**********************************
function x231001_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--����������ʱ���¼�
--**********************************
function x231001_OnCopySceneTimer( sceneId, nowTime )

	--����ʱ�Ӷ�ȡ������
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--ȡ���Ѿ�ִ�еĶ�ʱ����
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--�����µĶ�ʱ�����ô���

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for	i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	if leaveFlag == 1 then															--��Ҫ�뿪
		--�뿪����ʱ��Ķ�ȡ������
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount == x231001_g_CloseTick then										--����ʱ�䵽����Ҷ���ȥ��
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--ȡ�ø�����ڳ�����

			--����ǰ����������������˴��ͻ�ԭ������ʱ��ĳ���
			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, x231001_g_Back_X, x231001_g_Back_Z )
				end
			end
		elseif leaveTickCount < x231001_g_CloseTick then
			--֪ͨ��ǰ����������������ˣ������رյ���ʱ��
			local strText = format( "C�c h� s� r�i kh�i ��y sau %d gi�y!", (x231001_g_CloseTick-leaveTickCount) * x231001_g_TickTime )

			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x231001_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x231001_g_LimitTimeSuccess then
		--�˴�������ʱ�����Ƶ�������ɴ���
		local misIndex
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				x231001_NotifyFailTips( sceneId, mems[i], "Th�i gian ho�n t�t nhi�m v� �� t�i, ho�n th�nh!" )

				misIndex = GetMissionIndexByID( sceneId, mems[i], x231001_g_MissionId )		--ȡ��������������ֵ
				--������ĵ�1����������Ϊ1,��ʾ��ɵ�����
				SetMissionByIndex( sceneId, mems[i], misIndex, x231001_g_IsMissionOkFail, 1 )		--������������
				--��ɸ�������ʱ��
				SetMissionByIndex( sceneId, mems[i], misIndex, x231001_g_Param_time, TickCount * x231001_g_TickTime )	--������������
			end
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	elseif TickCount == x231001_g_LimitTotalHoldTime then									--������ʱ�����Ƶ���
		--�˴����ø���������ʱ�����Ƶ��������ʱ�䵽����...
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				DelMission( sceneId, mems[i], x231001_g_MissionId )							--����ʧ��,ɾ��֮
				x231001_NotifyFailTips( sceneId, mems[i], "Nhi�m v� th�t b�i, qu� gi�!" )
			end
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	else
		--��ʱ�������Ա�Ķ���ţ���������ϣ����߳�����
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )					--ȡ�ñ���Ķ����
		local oldsceneId

		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and IsHaveMission( sceneId, mems[i], x231001_g_MissionId ) > 0 then
				if oldteamid ~= GetTeamId( sceneId, mems[i] ) then
					DelMission( sceneId, mems[i], x231001_g_MissionId )						--����ʧ��,ɾ��֮
					x231001_NotifyFailTips( sceneId, mems[i], "Nhi�m v� th�t b�i, ng߽i kh�ng � trong ��ng nh�m" )

					oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--ȡ�ø�����ڳ�����
					NewWorld( sceneId, mems[i], oldsceneId, x231001_g_Back_X, x231001_g_Back_Z )
				end
			end
		end

		--��������߼�
		if TickCount >= x231001_g_StartTick and membercount > 0 then						--ʱ�䵽����ʼ����
			local mgroup = LuaFnGetCopySceneData_Param( sceneId, 10 )				--��¼�������Ĺ�����
			if mgroup > x231001_g_MoTypeCount then
				--print( "Error! " )
				mgroup = 1
			end

			--�仯����
			local monsterobjid = -1
			local monstercount = GetMonsterCount( sceneId )
			local monstertype
			local newMonsterType = -1
			local newAIType = -1
			local mcreatetime
			local PosX
			local PosZ
			local LevelGap = LuaFnGetCopySceneData_Param( sceneId, CopyScene_LevelGap )
			for i=0, monstercount-1 do
				monsterobjid = GetMonsterObjID( sceneId, i )
				if LuaFnIsCharacterLiving( sceneId, monsterobjid ) > 0 then			--��Ĺ���
					monstertype = GetMonsterDataID( sceneId, monsterobjid )			--��������
					mcreatetime = GetObjCreateTime( sceneId, monsterobjid )			--���ﴴ��ʱ��
					PosX, PosZ = LuaFnGetWorldPos( sceneId, monsterobjid )
					PosX = floor( PosX )
					PosZ = floor( PosZ )

					if monstertype == x231001_g_Black_A[mgroup] then
						if nowTime >= mcreatetime + x231001_g_A_B then						--��Ҫ��������B״̬��
							newMonsterType = x231001_g_Black_B[mgroup]
							newAIType = 7
						end
					elseif monstertype == x231001_g_Black_B[mgroup] then
						if nowTime >= mcreatetime + x231001_g_A_B + x231001_g_B_C then				--��Ҫ��������C״̬��
							newMonsterType = x231001_g_Black_C[mgroup]
							newAIType = 5
						end
					elseif monstertype == x231001_g_White_A[mgroup] then
						if nowTime >= mcreatetime + x231001_g_A_B then						--��Ҫ��������B״̬��
							newMonsterType = x231001_g_White_B[mgroup]
							newAIType = 7
						end
					elseif monstertype == x231001_g_White_B[mgroup] then
						if nowTime >= mcreatetime + x231001_g_A_B + x231001_g_B_C then				--��Ҫ��������C״̬��
							newMonsterType = x231001_g_White_C[mgroup]
							newAIType = 5
						end
					end

					if newMonsterType ~= -1 and monstertype ~= x231001_g_LastBoss[mgroup] then
						LuaFnDeleteMonster( sceneId, monsterobjid )
						monsterobjid = LuaFnCreateMonster( sceneId, newMonsterType, PosX, PosZ, newAIType, 0, -1 )
						SetLevel( sceneId, monsterobjid, GetLevel( sceneId, monsterobjid ) + LevelGap )
					end
				end
			end

			if TickCount == x231001_g_StartTick then
				for	i=0, membercount-1 do
					x231001_NotifyFailTips( sceneId, mems[i], "Cu�c chi�n b�t �u!" )
				end
			end

			local QiPu = LuaFnGetCopySceneData_Param( sceneId, 8 )					--ȡ������
			local PressStep = LuaFnGetCopySceneData_Param( sceneId, 9 )				--ȡ���Ѿ����˵Ĳ���
			if PressStep < x231001_g_mListSize then
				PressStep = PressStep + 1
				local QiPuValue = 0

				if QiPu >= 1 and QiPu <= getn(x231001_g_mList) then
					QiPuValue = x231001_g_mList[QiPu][PressStep]
				else
					QiPuValue = x231001_g_mList[getn(x231001_g_mList)][PressStep]
				end

				--�����������ɹ���
				PosX, PosZ = x231001_IndexToPos( QiPuValue )
				MonsterType = mod( PressStep, 2 )

				newAIType = 3
				if PressStep == x231001_g_mListSize then									--���һ��ˢ���������
					newMonsterType = x231001_g_LastBoss[mgroup]
					newAIType = 0
				else
					if MonsterType == 0 then
						newMonsterType = x231001_g_Black_A[mgroup]
					else
						newMonsterType = x231001_g_White_A[mgroup]
					end
				end

				monsterobjid = LuaFnCreateMonster( sceneId, newMonsterType, PosX, PosZ, newAIType, -1, -1 )
				SetLevel( sceneId, monsterobjid, GetLevel( sceneId, monsterobjid ) + LevelGap )
				--print( QiPu, PressStep, QiPuValue, MonsterType, monsterobjid )

				LuaFnSetCopySceneData_Param( sceneId, 9, PressStep )				--�����µĶ�ʱ�����ô���
			end
		end
	end
end

function x231001_IndexToPos( index )
	xP = floor( index/19 )
	zP = mod( index, 19 )
	return xP*3 + 36 + 1, zP*3 + 36 + 1
end

function x231001_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent(sceneId)
		AddText(sceneId, Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x231001_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
