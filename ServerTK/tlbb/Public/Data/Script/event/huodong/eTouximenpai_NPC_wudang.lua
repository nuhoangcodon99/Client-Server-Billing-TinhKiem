--��������
--����
--

--************************************************************************
--MisDescBegin
--�ű���
x808033_g_ScriptId	= 808033
--��������
x808033_g_CopySceneName	= "N�i V� �ang"
--�����
x808033_g_MissionId			= 1250
--��һ�������ID
x808033_g_MissionIdPre	= 0
--Ŀ��NPC
x808033_g_Name					= "��nh l�n m�n ph�i"
--�Ƿ��Ǿ�Ӣ����
x808033_g_IfMissionElite= 1
--����ȼ�
x808033_g_MissionLevel	= 10000
--�������
x808033_g_MissionKind		= 1
--�����ı�����
x808033_g_MissionName			= "��nh l�n m�n ph�i"
--��������
x808033_g_MissionInfo			= "  "
--����Ŀ��
x808033_g_MissionTarget		= "  Gi�t h�t qu�i v�t li�n c� th� ho�n t�t nhi�m v�"
--δ��������npc�Ի�
x808033_g_ContinueInfo		= "  "
--�������npc˵���Ļ�
x808033_g_MissionComplete	= "  "

--********���漸���Ƕ�̬��ʾ�����ݣ������������б��ж�̬��ʾ�������******
--ѭ�����������������������������Ļ��� MD_SHUILAO_HUAN
--�����Ƿ��Ѿ����
--**********************************�����Ƕ�̬****************************
--��ɫMission����˵��
x808033_g_Param_IsMissionOkFail	= 0						--0�ţ���ǰ�����Ƿ����(0δ��ɣ�1���)
x808033_g_Param_killmonstercount	= 1					--1�ţ�ɱ������С�ֵ�����
x808033_g_Param_killbosscount	= 2							--2�ţ�ɱ������boss�ֵ�����
x808033_g_Param_sceneid		= 3									--3�ţ���ǰ��������ĳ�����
x808033_g_Param_teamid		= 4									--4�ţ��Ӹ�������ʱ��Ķ����
x808033_g_Param_time			= 5									--5�ţ���ɸ�������ʱ��(��λ����)
																							--6�ţ����帱���¼��ű�ռ��
																							--7�ţ����帱���¼��ű�ռ��
--MisDescEnd
--************************************************************************

x808033_g_CopySceneType			= FUBEN_WUDANG1	--�������ͣ�������ScriptGlobal.lua����
x808033_g_LimitMembers			= 3		--���Խ���������С��������
x808033_g_TickTime					= 5		--�ص��ű���ʱ��ʱ�䣨��λ����/�Σ�
x808033_g_LimitTotalHoldTime= 360	--�������Դ���ʱ�䣨��λ��������,�����ʱ�䵽�ˣ������񽫻�ʧ��
x808033_g_LimitTimeSuccess	= 500	--����ʱ�����ƣ���λ���������������ʱ�䵽�ˣ��������
x808033_g_CloseTick					= 6		--�����ر�ǰ����ʱ����λ��������
x808033_g_NoUserTime				= 300	--������û���˺���Լ��������ʱ�䣨��λ���룩
x808033_g_Fuben_X						= 93	--���븱����λ��X
x808033_g_Fuben_Z						= 182	--���븱����λ��Z
x808033_g_Back_X						= 93	--Դ����λ��X
x808033_g_Back_Z						= 182	--Դ����λ��Z
x808033_g_Totalkillmonstercount	= 30	--��Ҫɱ��monster����
x808033_g_Totalkillbosscount	= 1	--��Ҫɱ��Boss����

--����������������
x808033_g_keySD					= {}
x808033_g_keySD["typ"]	= 0		--���ø�������
x808033_g_keySD["spt"]	= 1		--���ø��������¼��ű���
x808033_g_keySD["tim"]	= 2		--���ö�ʱ�����ô���
x808033_g_keySD["scn"]	= 3		--���ø�����ڳ�����, ��ʼ��
x808033_g_keySD["cls"]	= 4		--���ø����رձ�־, 0���ţ�1�ر�
x808033_g_keySD["dwn"]	= 5		--�����뿪����ʱ����
x808033_g_keySD["tem"]	= 6		--��������
x808033_g_keySD["x"]	= 7			--��������ڳ����е�xλ��
x808033_g_keySD["z"]	= 8			--��������ڳ����е�zλ��
x808033_g_keySD["killedmonsternum"]	= 9		--ɱ����޵�����
x808033_g_keySD["killedbossnum"]	= 10		--ɱ��Boss������
x808033_g_keySD["mp"]	= 11		--��¼��ǰ������ ����

--��ȡ�������͵ȼ�
x808033_g_minLevel			= 20
--��Ҫ����С����
x808033_g_typMonster		= 749	--ˮ��̽��
--����id
x808033_g_MenPaiID		= MP_WUDANG

x808033_g_NianNum = 5
x808033_g_NianPos = {
											{x=75  ,y=141},
											{x=62  ,y=103},
											{x=94  ,y=103},
											{x=98  ,y=63 },
											{x=59  ,y=63 },
										}
x808033_g_NianShou = {12200,12201,12202,12203,12204,12205,12206,12207,12208,12209,12210,12211}									
--**********************************
--������ں���
--**********************************
function x808033_OnDefaultEvent( sceneId, selfId, targetId )

	x808033_OnAccept( sceneId, selfId, targetId )


end

--**********************************
--�о��¼�
--**********************************
function x808033_OnEnumerate( sceneId, selfId, targetId )

	local	MenPaiID	=	GetMenPai(sceneId, selfId)
	if(MenPaiID ~= x808033_g_MenPaiID) then
		x808033_NotifyTip( sceneId, selfId, "Ta t�i V� �ang � h�i t�i, ng߽i kh�ng ph�i l� � t� c�a V� �ang, mau tr�nh mau ra" )
		return
	end

	local	lev	= GetLevel( sceneId, selfId )
	if lev < x808033_g_minLevel then
	  x808033_NotifyTip( sceneId, selfId, "��ng c�p c�a ng߽i qu� th�p, c� b�n kh�ng l�t v�o m�t ta. ��i sau khi ��t c�p 20, h�y t�i t�m ta" )
		return
	end

	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x808033_NotifyTip( sceneId, selfId, "Ng߽i mu�n t�i th� ta, nh�ng c� b�n ta kh�ng mu�n �ng th� v�i ng߽i" )
		return
	end
	--PrintNum(3)

	if GetTeamSize( sceneId, selfId ) < x808033_g_LimitMembers then
	  x808033_NotifyTip( sceneId, selfId, "Mu�n th� th�ch ta ch� �t c�ng ph�i t�i 3 ng߶i. C� t� ng߶i th� n�y, qu� coi th߶ng ta" )
	  return
	end
	--PrintNum(4)

	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
		x808033_NotifyTip( sceneId, selfId, "Mu�n th� th�ch ta? G�i nh�m tr߷ng c�a c�c ng߽i ra ��y" )
		return
	end
	--PrintNum(5)

	-- ȡ����Ҹ����Ķ��������������Լ���
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	if nearteammembercount ~= LuaFnGetTeamSize( sceneId, selfId ) then
		x808033_NotifyTip( sceneId, selfId, "Trong �i ng� c�a c�c h� c� th�nh vi�n kh�ng � ph� c�n, xin h�y t�p trung r�i �n t�m ta ��a v�o ho�t �ng." )
		return
	end

	local namenum = 0;
	local notifyString = "Trong �i ng� c�a c�c h� c� th�nh vi�n (";
	for i=0, nearteammembercount-1  do
		local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
		local	lev	= GetLevel( sceneId, nPlayerId )
		local	nam	= GetName( sceneId, nPlayerId )
		
		if(lev<x808033_g_minLevel) then
			notifyString = notifyString..nam.." ";
			namenum = 1;
		end
	end
	notifyString = notifyString..") ��ng c�p kh�ng ��.";		
	if(namenum>0) then
		x808033_NotifyTip( sceneId, selfId, notifyString )
		return
	end

	BeginEvent( sceneId )
		AddText( sceneId, "N�u c�c ng߽i �� kh�ng s� ch�t, ta c�ng kh�ng c�n thi�t ph�i l�u t�nh. L� o�t kia, � ta cho c�c ng߽i n�m m�i l�i h�i" )
		AddNumText( sceneId, x808033_g_ScriptId, "L� n�o ta l�i s� ng߽i.." ,10 ,0 )
  EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--����������
--**********************************
function x808033_CheckAccept( sceneId, selfId )
	local	MenPaiID	=	GetMenPai(sceneId, selfId)
	if(MenPaiID ~= x808033_g_MenPaiID) then
		x808033_NotifyTip( sceneId, selfId, "Ta t�i Nga My � h�i t�i, ng߽i kh�ng ph�i l� � t� c�a Nga My, mau tr�nh ra" )
		return 0;
	end

	local	lev	= GetLevel( sceneId, selfId )
	if lev < x808033_g_minLevel then
	  x808033_NotifyTip( sceneId, selfId, "��ng c�p c�a ng߽i qu� th�p, c� b�n kh�ng l�t v�o m�t ta. ��i sau khi ��t c�p 20, h�y t�i t�m ta" )
		return 0
	end

	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x808033_NotifyTip( sceneId, selfId, "Ng߽i mu�n t�i th� ta, nh�ng c� b�n ta kh�ng mu�n �ng th� v�i ng߽i" )
		return 0
	end
	--PrintNum(3)

	if GetTeamSize( sceneId, selfId ) < x808033_g_LimitMembers then
	  x808033_NotifyTip( sceneId, selfId, "Mu�n th� th�ch ta ch� �t c�ng ph�i t�i 3 ng߶i. C� t� ng߶i th� n�y, qu� coi th߶ng ta" )
	  return 0
	end
	--PrintNum(4)

	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
		x808033_NotifyTip( sceneId, selfId, "Mu�n th� th�ch ta? G�i nh�m tr߷ng c�a c�c ng߽i ra ��y" )
		return 0
	end
	--PrintNum(5)

	-- ȡ����Ҹ����Ķ��������������Լ���
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	if nearteammembercount ~= LuaFnGetTeamSize( sceneId, selfId ) then
		x808033_NotifyTip( sceneId, selfId, "Trong �i ng� c�a c�c h� c� th�nh vi�n kh�ng � ph� c�n, xin h�y t�p trung r�i �n t�m ta ��a v�o ho�t �ng." )
		return 0
	end
	
	local namenum = 0;
	local notifyString = "Trong �i ng� c�a c�c h� c� th�nh vi�n(";
	for i=0, nearteammembercount-1  do
		local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
		local	lev	= GetLevel( sceneId, nPlayerId )
		local	nam	= GetName( sceneId, nPlayerId )
		
		if(lev<x808033_g_minLevel) then
			notifyString = notifyString..nam.." ";
			namenum = 1;
		end
	end
	notifyString = notifyString..")��ng c�p kh�ng ��.";	
	if(namenum>0) then
		x808033_NotifyTip( sceneId, selfId, notifyString )
		return 0
	end
	return 1
end

--**********************************
--����
--**********************************
function x808033_OnAccept( sceneId, selfId, targetId )
	if x808033_CheckAccept( sceneId, selfId ) == 0 then
		return
	end
	local teamid = GetTeamId( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x808033_g_MissionId ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x808033_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x808033_g_Param_sceneid )
		local saveteamid = GetMissionParam( sceneId, selfId, misIndex, x808033_g_Param_teamid )
		--��������
		if copysceneid >= 0 and teamid == saveteamid then
			--���Լ����͵���������
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x808033_g_Fuben_X, x808033_g_Fuben_Z )
			else
				x808033_NotifyTip( sceneId, selfId, "Nhi�m v� th�t b�i, h�y b� �i v� nh�n l�i" )
				SetMissionByIndex( sceneId, selfId, misIndex, x808033_g_Param_IsMissionOkFail, 2 )
				DelMission(sceneId, selfId, x808033_g_MissionId);
			end
			return
		end
	end

	--������������б�
	--ȡ����Ҹ����Ķ��������������Լ���
	local numMem	= GetNearTeamCount( sceneId, selfId )
	local member
	local i
	local misIndex
	for i=0, numMem-1 do
		member = GetNearTeamMember( sceneId, selfId, i );
		if IsMissionFull(sceneId, member) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, "nhi�m v� �� �y.");
			EndEvent()
			DispatchMissionTips(sceneId, selfId);
			return
		end
	end
	for	i=0, numMem-1 do
		member = GetNearTeamMember( sceneId, selfId, i )

		if IsHaveMission( sceneId, member, x808033_g_MissionId ) > 0 then
			--ɾ����
			DelMission( sceneId, member, x808033_g_MissionId);
		end

		--��ÿ�������Ա��������
		AddMission( sceneId, member, x808033_g_MissionId, x808033_g_ScriptId, 1, 0, 0 )

		misIndex = GetMissionIndexByID( sceneId, member, x808033_g_MissionId )
		--������ĵ�0����������Ϊ0,��ʾδ��ɵ�����
		SetMissionByIndex( sceneId, member, misIndex, x808033_g_Param_IsMissionOkFail, 0 )
		--������ĵ�2����������Ϊ-1, ���ڱ��渱���ĳ�����
		SetMissionByIndex( sceneId, member, misIndex, x808033_g_Param_sceneid, -1 )
		--������ĵ�3�����ݶ����
		SetMissionByIndex( sceneId, member, misIndex, x808033_g_Param_teamid, teamid )
	end
	x808033_MakeCopyScene( sceneId, selfId, numMem )
	LuaFnDeleteMonster( sceneId, targetId)
end

--**********************************
--����
--**********************************
function x808033_OnAbandon( sceneId, selfId )
	--���ڳ����Ĳ����˲���
	if LuaFnIsObjValid( sceneId, selfId ) ~= 1 then
		return
	end

	--�����޷�ִ���߼���״̬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return
	end

	--�����ڸ�����ֱ��ɾ������
	local misIndex = GetMissionIndexByID( sceneId, selfId, x808033_g_MissionId )
	local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x808033_g_Param_sceneid )

	if(copysceneid ~= sceneId) then
		DelMission( sceneId, selfId, x808033_g_MissionId )
		return
	end

	local leaderguid = LuaFnGetCopySceneData_TeamLeader( sceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	--�Ҳ��������
	if leaderObjId == -1 then
		DelMission( sceneId, selfId, x808033_g_MissionId )
		return
	end

	--��ʱһ���ڸ����У����Ի����ڳ�����
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["scn"] )	--ȡ�ø�����ڳ�����
	if(selfId == leaderObjId) then
		--�ӳ�������ȫ����������
		LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["cls"], 1 )
		local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
		local mems = {}
		local i
		for	i=0, membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
		end
		--����ǰ����������������˴��ͻ�ԭ������ʱ��ĳ���
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				DelMission( sceneId, mems[i], x808033_g_MissionId )
				x = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["x"] )
				z = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["z"] )
				NewWorld( sceneId, mems[i], oldsceneId, x, z )
			end
		end
	else
	--�Լ����Ƕӳ�ֻ���Լ�������ֻ���Լ���������
		DelMission( sceneId, selfId, x808033_g_MissionId )
		x = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["x"] )
		z = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["z"] )
		NewWorld( sceneId, selfId, oldsceneId, x, z )
	end

end

--**********************************
--��������
--**********************************
function x808033_MakeCopyScene( sceneId, selfId, nearmembercount )

	local mems = {}
	local mylevel = 0
	local i

-- 	PrintStr("sdlf")

	local member, mylevel, numerator, denominator = 0, 0, 0, 0

	for	i = 0, nearmembercount - 1 do
		member = GetNearTeamMember( sceneId, selfId, i )
		numerator = numerator + GetLevel( sceneId, member ) ^ 4
		denominator = denominator + GetLevel( sceneId, member ) ^ 3
		mems[i] = member
	end

	if denominator <= 0 then
		mylevel = 0
	else
		mylevel = numerator / denominator
	end

	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	--��ͼ�Ǳ���ѡȡ�ģ����ұ�����Config/SceneInfo.ini�����ú�
	LuaFnSetSceneLoad_Map( sceneId, "wudang_1.nav" )
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x808033_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x808033_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["typ"], x808033_g_CopySceneType )
	LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["spt"], x808033_g_ScriptId )
	LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["tim"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["scn"], -1 )
	LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["cls"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["dwn"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["tem"], GetTeamId( sceneId, selfId ) )
	LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["killedmonsternum"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["killedbossnum"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["mp"], MP_WUDANG )

	local x,z = GetWorldPos( sceneId, selfId )

--	PrintStr("  "..x..z.." ")

	LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["x"], x808033_g_Back_X )
	LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["z"], x808033_g_Back_Z )

	LuaFnSetSceneLoad_Monster( sceneId, "wudang_1_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --����CopyScene_LevelGap �� scene.lua �и�ֵ
  LuaFnSetCopySceneData_Param(sceneId, 13, mylevel)
  
	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--��ʼ����ɺ���ô�����������
	if bRetSceneID > 0 then
		x808033_NotifyTip( sceneId, selfId, "D�ch chuy�n th�nh c�ng!" )
	else
		x808033_NotifyTip( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )

		--ɾ����������б��ж�Ӧ������
		for	i=0, nearmembercount-1 do
			DelMission( sceneId, mems[i], x808033_g_MissionId )
		end
	end

end

--**********************************
--����
--**********************************
function x808033_OnContinue( sceneId, selfId, targetId )

end

--**********************************
--����Ƿ�����ύ
--**********************************
function x808033_CheckSubmit( sceneId, selfId, selectRadioId )


end

--**********************************
--�ύ
--**********************************
function x808033_OnSubmit( sceneId, selfId, targetId, selectRadioId )

end

--**********************************
--ɱ����������
--**********************************
function x808033_OnKillObject( sceneId, selfId, objdataId, objId )

	--�Ƿ��Ǹ���
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--�Ƿ�������Ҫ�ĸ���
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x808033_g_CopySceneType then
		return
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	--��������Ѿ����óɹر�״̬����ɱ����Ч
	if leaveFlag == 1 then
		return
	end

	--ȡ�õ�ǰ�����������
	local num = LuaFnGetCopyScene_HumanCount( sceneId )

	--ȡ��ɱ�������GroupID,�����ж��Ƿ�������Ҫɱ����Boss
	local GroupID = GetMonsterGroupID( sceneId, objId )

	local killedmonsternumber = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["killedmonsternum"] )			--ɱ��monster������
	local killedbossnumber = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["killedbossnum"] )			--ɱ��boss������

	local MonsterName = GetName(sceneId, objId)
	local	isBoss

	if(MonsterName == "L�u La")then
		killedmonsternumber = killedmonsternumber + 1
		LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["killedmonsternum"], killedmonsternumber )					--����ɱ��monster������
		isBoss = 0
		if killedmonsternumber ==  x808033_g_Totalkillmonstercount then

			local	Selflev	= GetLevel( sceneId, selfId )
			local PlayerMaxLevel = GetHumanMaxLevelLimit()
			local monsterLevel=0
			if Selflev < 10 then
				monsterLevel = 0
			elseif Selflev < 110 then
				monsterLevel = floor( Selflev/10 ) + 3670 - 1
			elseif Selflev < PlayerMaxLevel then
				monsterLevel = floor( Selflev/10 ) + 33670 - 11
			else
				monsterLevel = 9
			end

			local tmpMonsterId = LuaFnCreateMonster( sceneId, monsterLevel, 87, 51, 14, 138, -1 )
			local tmpsMessage = format("Th�t ��ng gh�t, nh�n th�y ch�ng ta s�p ��nh b�t ng� th�nh c�ng, t� nhi�n l�i nh� th�, ��ng tr�ch ta kh�ng kh�ch kh�")
			MonsterTalk(sceneId, tmpMonsterId, x808033_g_CopySceneName, tmpsMessage)
			local szName = GetName(sceneId, tmpMonsterId)
			if szName == "�c B�"   then
				SetCharacterTitle(sceneId, tmpMonsterId, "Th� S�n H�u L�")
			end
		end
	elseif ( MonsterName == "�c B�" ) then
		killedbossnumber = killedbossnumber + 1
		LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["killedbossnum"], killedbossnumber )					--����ɱ��boss������
		isBoss = 1
	end




	-------------------------------------------------------------------------------
	local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
	local memId
	local teamLeaderName;
	local firstMemName;
	local firstMemId;

	teamLeaderName = ""
	for	i = 0, membercount - 1 do
		memId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
		if LuaFnIsObjValid( sceneId, memId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, memId ) == 1 then
			local teamLeaderFlag = LuaFnIsTeamLeader(sceneId, memId);
			if teamLeaderFlag and teamLeaderFlag == 1 then
				teamLeaderName = LuaFnGetName(sceneId, memId);
				break;
			end
		end
	end

	if isBoss==1 and teamLeaderName ~= "" then


		local message;
		local randMessage = random(3);

		if randMessage == 1 then
			message = format("#B#{_INFOUSR%s}#{TouXi_00}#G#{MP_wudang}#{TouXi_01}", teamLeaderName );
		elseif randMessage == 2 then
			message = format("#G#{MP_wudang}#{TouXi_02}#{_INFOUSR%s}#{TouXi_03}#B#{_INFOUSR%s}#{TouXi_04}", teamLeaderName, teamLeaderName );
		else
			message = format("#{TouXi_05}#G#{MP_wudang}#{TouXi_06}#{_INFOUSR%s}#{TouXi_07}", teamLeaderName );
		end

		BroadMsgByChatPipe(sceneId, selfId, message, 4);


	end
	-------------------------------------------------------------------------------



	local i
	local misIndex
	local humanObjId
	local	mppoint

	if (killedmonsternumber < x808033_g_Totalkillmonstercount ) or (killedbossnumber < x808033_g_Totalkillbosscount )then
		local strText = format( "�� gi�t ch�t b�n L�u la: %d/%d �� gi�t ch�t b�n �c B�: %d/%d" , killedmonsternumber, x808033_g_Totalkillmonstercount, killedbossnumber, x808033_g_Totalkillbosscount )
		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )				--ȡ�õ�ǰ�������˵�objId
			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, humanObjId ) == 1 then					--���ڳ����Ĳ����˲���
				x808033_NotifyTip( sceneId, humanObjId, strText )

				local	MenPaiID	=	GetMenPai(sceneId, humanObjId)
				--if(MenPaiID == x808033_g_MenPaiID) then
					if isBoss == 0 then
						mppoint = GetHumanMenpaiPoint(sceneId, humanObjId)
						mppoint = mppoint+1
						SetHumanMenpaiPoint(sceneId, humanObjId, mppoint)
					else
						mppoint = GetHumanMenpaiPoint(sceneId, humanObjId)
						mppoint = mppoint+5
						SetHumanMenpaiPoint(sceneId, humanObjId, mppoint)
					end
				--end
				if AB_ACTIVE == 1 then
					if random(100) <= DROP_RATE then
						AddMonsterDropItem( sceneId, objId, humanObjId, DROP_ITEM[random(getn(DROP_ITEM))] )
					end
				end
				misIndex = GetMissionIndexByID( sceneId, humanObjId, x808033_g_MissionId )					--ȡ��������������ֵ
				SetMissionByIndex( sceneId, humanObjId, misIndex, x808033_g_Param_killmonstercount, killedmonsternumber )	--������������
				SetMissionByIndex( sceneId, humanObjId, misIndex, x808033_g_Param_killbosscount, killedbossnumber )	--������������
			end
		end
	else

		--����������ɱ�־
		LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["cls"], 1 )

		--ȡ���Ѿ�ִ�еĶ�ʱ����
		local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )
		local strText = format( "�� gi�t ch�t b�n L�u la: %d/%d �� gi�t ch�t b�n �c B�: %d/%d", x808033_g_Totalkillmonstercount, x808033_g_Totalkillmonstercount, x808033_g_Totalkillbosscount, x808033_g_Totalkillbosscount)
		local strText2 = format( "Nhi�m v� ho�n th�nh, sau %d gi�y s� chuy�n t�i v� tr� v�o c�a", x808033_g_CloseTick * x808033_g_TickTime )

		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )									--ȡ�õ�ǰ�������˵�objId

			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, humanObjId ) == 1 then										--���ڳ����Ĳ����˲���
				misIndex = GetMissionIndexByID( sceneId, humanObjId, x808033_g_MissionId)					--ȡ��������������ֵ

				SetMissionByIndex( sceneId, humanObjId, misIndex, x808033_g_Param_killmonstercount, killedmonsternumber )	--������������
				SetMissionByIndex( sceneId, humanObjId, misIndex, x808033_g_Param_killbosscount, killedbossnumber )	--������������

				--������ĵ�1����������Ϊ1,��ʾ��ɵ�����
				SetMissionByIndex( sceneId, humanObjId, misIndex, x808033_g_Param_IsMissionOkFail, 1 )					--������������
				--��ɸ�������ʱ��
				SetMissionByIndex( sceneId, humanObjId, misIndex, x808033_g_Param_time, TickCount * x808033_g_TickTime )	--������������

				x808033_NotifyTip( sceneId, humanObjId, strText )
				x808033_NotifyTip( sceneId, humanObjId, strText2 )

				local	MenPaiID	=	GetMenPai(sceneId, humanObjId)
				if(MenPaiID == x808033_g_MenPaiID) then
					if isBoss == 0 then
						mppoint = GetHumanMenpaiPoint(sceneId, humanObjId)
						mppoint = mppoint+1
						SetHumanMenpaiPoint(sceneId, humanObjId, mppoint)
					else
						mppoint = GetHumanMenpaiPoint(sceneId, humanObjId)
						mppoint = mppoint+5
						SetHumanMenpaiPoint(sceneId, humanObjId, mppoint)
					end
				end
				if AB_ACTIVE == 1 then
					if random(100) <= DROP_RATE then
						AddMonsterDropItem( sceneId, objId, humanObjId, DROP_ITEM[random(getn(DROP_ITEM))] )
					end
				end
			end
		end
	end
end

--**********************************
--���������¼�
--**********************************
function x808033_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x808033_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--�����¼�
--**********************************
function x808033_OnCopySceneReady( sceneId, destsceneId )

	--���ø�����ڳ�����
	LuaFnSetCopySceneData_Param( destsceneId, x808033_g_keySD["scn"], sceneId )
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	--�Ҳ��������
	if leaderObjId == -1 then
		return
	end

	--�����޷�ִ���߼���״̬
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then
		return
	end

	--ȡ����Ҹ����Ķ��������������Լ���
	local numMem	= GetNearTeamCount( sceneId, leaderObjId )
	local member
	local misIndex

	misIndex = GetMissionIndexByID( sceneId, leaderObjId, x808033_g_MissionId )
	SetMissionByIndex( sceneId, leaderObjId, misIndex, x808033_g_Param_sceneid, destsceneId )
	NewWorld( sceneId, leaderObjId, destsceneId, x808033_g_Fuben_X, x808033_g_Fuben_Z )
	
	--�ͳ��
	LuaFnAuditQuest(sceneId, leaderObjId, x808033_g_MissionName.."-"..x808033_g_CopySceneName)

	for	i=0, numMem-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )

		if LuaFnIsCanDoScriptLogic( sceneId, member ) == 1 then			-- ���ڿ���ִ���߼���״̬
			if IsHaveMission( sceneId, member, x808033_g_MissionId ) > 0 then
				misIndex = GetMissionIndexByID( sceneId, member, x808033_g_MissionId )

				--������ĵ�2����������Ϊ�����ĳ�����
				SetMissionByIndex( sceneId, member, misIndex, x808033_g_Param_sceneid, destsceneId )

				NewWorld( sceneId, member, destsceneId, x808033_g_Fuben_X, x808033_g_Fuben_Z )
				
				--�ͳ��
				LuaFnAuditQuest(sceneId, member, x808033_g_MissionName.."-"..x808033_g_CopySceneName)
	
			else
				x808033_NotifyTip( sceneId, member, "C�c h� �� kh�ng nh�n nhi�m v� n�y t� tr߾c" )
			end
		end
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x808033_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x808033_g_MissionId ) == 0 then				--������븱��ǰɾ��������ֱ�Ӵ��ͻ�
		x808033_NotifyTip( sceneId, selfId, "C�c h� �� kh�ng nh�n nhi�m v� n�y t� tr߾c" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["scn"] )		--ȡ�ø�����ڳ�����
		x = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["x"] )
		z = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["z"] )
		NewWorld( sceneId, selfId, oldsceneId, x, z )
		return
	end


	--���������󸴻��λ��
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x808033_g_Fuben_X, x808033_g_Fuben_Z )

end

--**********************************
--������ڸ����������¼�
--**********************************
function x808033_OnHumanDie( sceneId, selfId, killerId )
--	x = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["x"] )
--	z = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["z"] )
--	NewWorld( sceneId, selfId, oldsceneId, x, z )
end

--**********************************
--����������ʱ���¼�
--**********************************
function x808033_OnCopySceneTimer( sceneId, nowTime )

	local once = LuaFnGetCopySceneData_Param( sceneId, 16 )

	if (once == 0) then
		LuaFnSetCopySceneData_Param(sceneId, 16, 1)
		local mylevel = LuaFnGetCopySceneData_Param( sceneId, 13 )
		
		local PlayerMaxLevel = GetHumanMaxLevelLimit()
		local iniLevel;
		if mylevel < 10 then
			iniLevel = 10;
		elseif mylevel < PlayerMaxLevel then
			iniLevel = floor(mylevel/10) * 10;
		else
			iniLevel = PlayerMaxLevel;
		end
	 
		local iNianShouIdx = iniLevel / 10
	
		for i=1,x808033_g_NianNum do
			local objId = LuaFnCreateMonster( sceneId, x808033_g_NianShou[iniLevel/10], x808033_g_NianPos[i].x, x808033_g_NianPos[i].y, 1, 272, -1 )
			SetLevel( sceneId, objId, mylevel )
			LuaFnSendSpecificImpactToUnit(sceneId, objId, objId, objId, 10472, 0); -- zchw
		end  
	end
	
	--����ʱ�Ӷ�ȡ������
	--ȡ���Ѿ�ִ�еĶ�ʱ����
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["tim"] )
	TickCount = TickCount + 1
	--�����µĶ�ʱ�����ô���
	LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["tim"], TickCount )

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["cls"] )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	if membercount==0 and leaveFlag~=1 then
		LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["cls"], 1 )
		return
	end



	for	i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--��Ҫ�뿪
	if leaveFlag == 1 then
		--�뿪����ʱ��Ķ�ȡ������
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["dwn"] )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["dwn"], leaveTickCount )

		if leaveTickCount == x808033_g_CloseTick then										--����ʱ�䵽����Ҷ���ȥ��
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["scn"] )	--ȡ�ø�����ڳ�����

			--����ǰ����������������˴��ͻ�ԭ������ʱ��ĳ���
			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					DelMission( sceneId, mems[i], x808033_g_MissionId )
					x = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["x"] )
					z = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["z"] )
					NewWorld( sceneId, mems[i], oldsceneId, x, z )
				end
			end

		--	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )

		elseif leaveTickCount < x808033_g_CloseTick then
			--֪ͨ��ǰ����������������ˣ������رյ���ʱ��
			local strText = format( "C�c h� s� r�i kh�i ��y sau %d gi�y!", (x808033_g_CloseTick-leaveTickCount) * x808033_g_TickTime )

			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x808033_NotifyTip( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x808033_g_LimitTimeSuccess then
		--�˴�������ʱ�����Ƶ�������ɴ���
		local misIndex
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then

			DelMission( sceneId, mems[i], x808033_g_MissionId )

				x808033_NotifyTip( sceneId, mems[i], "Th�i gian ho�n t�t nhi�m v� �� t�i, ho�n th�nh!" )

				--ȡ��������������ֵ
				misIndex = GetMissionIndexByID( sceneId, mems[i], x808033_g_MissionId )
				--������ĵ�1����������Ϊ1,��ʾ��ɵ�����
				--������������
				SetMissionByIndex( sceneId, mems[i], misIndex, x808033_g_Param_IsMissionOkFail, 1 )
				--��ɸ�������ʱ��
				SetMissionByIndex( sceneId, mems[i], misIndex, x808033_g_Param_time, TickCount * x808033_g_TickTime )	--������������
			end
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["cls"], 1 )
	elseif TickCount == x808033_g_LimitTotalHoldTime then						--������ʱ�����Ƶ���
		--�˴����ø���������ʱ�����Ƶ��������ʱ�䵽����...
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				DelMission( sceneId, mems[i], x808033_g_MissionId )				--����ʧ��,ɾ��֮
				x808033_NotifyTip( sceneId, mems[i], "Nhi�m v� th�t b�i, qu� gi�!" )
			end
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param( sceneId, x808033_g_keySD["cls"], 1 )
	else
		--��ʱ�������Ա�Ķ���ţ���������ϣ����߳�����
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["tem"] )		--ȡ�ñ���Ķ����
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["scn"] )	--ȡ�ø�����ڳ�����

		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and IsHaveMission( sceneId, mems[i], x808033_g_MissionId ) > 0 then
				if oldteamid ~= GetTeamId( sceneId, mems[i] ) then
					DelMission( sceneId, mems[i], x808033_g_MissionId )			--����ʧ��,ɾ��֮
					x808033_NotifyTip( sceneId, mems[i], "Nhi�m v� th�t b�i, ng߽i kh�ng � trong ��ng nh�m" )

					x = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["x"] )
					z = LuaFnGetCopySceneData_Param( sceneId, x808033_g_keySD["z"] )
					NewWorld( sceneId, mems[i], oldsceneId, x, z )
				end
			end
		end

	end
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x808033_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x808033_MsgBox( sceneId, selfId, targetId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--��Ŀ��ʾ
--**********************************
function x808033_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end