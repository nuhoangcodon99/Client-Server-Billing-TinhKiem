-- ������������
-- ����

--************************************************************************
--MisDescBegin

--hd add 16/7/2014
x050101_active_drop_longwen =1; --k�ch ho�t drop item long v�n li�n quan
x050101_rate_drop_longwen =40; -- ty le drop item long v�n li�n quan 40 -> 40%
x050101_drop_longwen_item = {
	
	30900016,--cao c�p h�p th�nh ph�
	20310180,-- T�ch V�n Th�y
	20310180,-- T�ch V�n Th�y
	20310180,-- T�ch V�n Th�y
	20310180,-- T�ch V�n Th�y
	20310180,-- T�ch V�n Th�y
	
	30008014,--x 2.5
	
	30505107,-- Ti�u L�t B�
	
	--yq bt 8
	

	30308121,
	30308122,
	30308123,
	30308124,
	30308125,
	30308126,
	30308127,
	30308128,
	30308129,
	
	
	20310182,--Xuy�t Long Th�ch_B�o
	38000184,--chu van tinh ngoc +5 khong co dinh
	
	20503062,--Ly H�a
	20503062,--Ly H�a
	20503062,--Ly H�a
	20503062,--Ly H�a
	20503062,--Ly H�a
	20503062,--Ly H�a
	20503062,--Ly H�a
	20503062,--Ly H�a
	20503062,--Ly H�a
	20503062,--Ly H�a
	20503062,--Ly H�a
	20503062,--Ly H�a
	20503062,--Ly H�a
	20503062,--Ly H�a
	20503062,--Ly H�a
	20503062,--Ly H�a
	
	20503061, --Trang b� Tinh th�ng ph�
	20503061, --Trang b� Tinh th�ng ph�
	20503061, --Trang b� Tinh th�ng ph�
}
--end hd add 16/7/2014
-- �ű���
x050101_g_ScriptId = 050101

-- �����
x050101_g_MissionId = 1261					-- 1260 - 1269

-- ��һ������� ID
-- g_MissionIdPre = 1260

-- ����Ŀ�� NPC
x050101_g_Name = "Hoa Ki�m �nh "

--�������
x050101_g_MissionKind = 8

--����ȼ�
x050101_g_MissionLevel = 10000

-- �����ı�����
x050101_g_MissionName = "Tr� h�i"
x050101_g_MissionInfo = "    "														-- ��������
x050101_g_MissionTarget = "    Hoa Ki�m �nh � T� Ch�u #{_INFOAIM251,108,1, Hoa Ki�m �nh} y�u c�u c�c h� gi�t ch�t 80 con D� H�ng v� H�ng H�ng V߽ng."						-- ����Ŀ��
x050101_g_ContinueInfo = "    C�c c�c h� �� chu�n b� r�i m�i �n Tr�c L�m ti�u di�t H�ng H�ng V߽ng!"					-- δ��������npc�Ի�
x050101_g_SubmitInfo = "    Nhi�m v� l�m th� n�o r�i?"										-- �ύʱ�Ĵ�
x050101_g_MissionComplete = "    C�c c�c h� �� gi�t ch�t H�ng B�o V߽ng r�i, th� theo �� tho� thu�n ta s� cho c�c c�c h� bi�t lai lich c�a l�nh b�i. C�c c�c h� mang b�c th� n�y giao cho Ti�n Ho�nh V�, huynh �y t� s� hi�u m�i vi�c. "	--�������npc˵�Ļ�

x050101_g_IsMissionOkFail = 0														-- 0 �ţ���ǰ�����Ƿ����(0δ��ɣ�1��ɣ�2ʧ��)
x050101_g_DemandKill = { { id = 4120, num = 1 }, { id = 4110, num = 80 } }			-- 1 ~ 2 �ţ�������Ϣ
x050101_g_Param_sceneid = 3															-- 3 �ţ���ǰ��������ĳ�����

-- ������

--MisDescEnd
--************************************************************************

x050101_g_DemandKillGroup = { 2, 1 }		-- 1 ~ 2 �Ź����Ӧ�� GroupID �ţ��� x050101_g_DemandKill һһ��Ӧ
x050101_g_BossGroup = 2						-- Boss Group ID
x050101_g_Token = 40004315					-- ���ƺ�
x050101_g_Mail = 40004316					-- ����

x050101_g_NumText_Main = 1					-- �������ѡ��
x050101_g_NumText_EnterCopyScene = 2		-- Ҫ����븱����ѡ��

x050101_g_CopySceneMap = "zhulin.nav"
x050101_g_CopySceneArea = "zhulin_area.ini"
x050101_g_CopySceneMonsterIni = "zhulin_monster_%d.ini"

x050101_g_CopySceneType = FUBEN_ZHULIN		-- �������ͣ�������ScriptGlobal.lua����
x050101_g_LimitMembers = 3					-- ���Խ���������С��������
x050101_g_LevelLimit = 30					-- ���Խ��븱������ͼ���
x050101_g_TickTime = 5						-- �ص��ű���ʱ��ʱ�䣨��λ����/�Σ�
x050101_g_LimitTotalHoldTime = 360			-- �������Դ���ʱ�䣨��λ��������,�����ʱ�䵽�ˣ������񽫻�ʧ��
x050101_g_CloseTick = 6						-- �����ر�ǰ����ʱ����λ��������
x050101_g_NoUserTime = 30					-- ������û���˺���Լ��������ʱ�䣨��λ���룩

x050101_g_Fuben_X = 97
x050101_g_Fuben_Z = 113
x050101_g_Back_X = 351--250
x050101_g_Back_Z = 203--107

x050101_g_Fuben_Relive_X = 97
x050101_g_Fuben_Relive_Z = 113

-- �㲥��Ϣ
x050101_g_BroadcastMsg = {
	x050101_g_Name .. ": #{_INFOUSR$N} #cff0000��i hi�p th�t l� m�nh, m�t quy�n �� ��nh b�p #G H�ng H�ng V߽ng#W #cff0000. �� c� #{_INFOUSR$N} #cff0000 ��i hi�p � ��y, t�n tr�m n�o d�m ngang ng��c?",
	x050101_g_Name .. ": #{_INFOUSR$N} #cff0000��i hi�p th�t l� kh�, qu�t s�ch r�ng tr�c #YT� Ch�u. #cff0000M�t tr�n gi�ng xu�ng �� �i, kh�ng c� #GH�ng H�ng#cff0000 n�o kh�ng d�p n�i",
	x050101_g_Name .. ": #{_INFOUSR$N} #cff0000��i hi�p th�t l� gh�, danh ti�ng ngh�a hi�p l�u danh ng�n �i. V� c�ng c�ng kh�ng ph�i n�i, ph�m l� #G H�ng H�ng #cff0000 �u v� �u h�t"
}

x050101_g_TakeTimes = 15											-- ÿ�������ȡ����
--**********************************
-- ������ں���
--**********************************
function x050101_OnDefaultEvent( sceneId, selfId, targetId )	-- ����������ִ�д˽ű�
	if GetName( sceneId, targetId ) ~= x050101_g_Name then		-- �жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
		return
	end

	local numText = GetNumText()

	if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) == 0 then
		if numText == x050101_g_NumText_Main then
			if x050101_CheckAccept( sceneId, selfId ) > 0 then
				--�����������ʱ��ʾ����Ϣ
				BeginEvent( sceneId )
					AddText( sceneId, x050101_g_MissionName )
					AddText( sceneId, "    Kh� l�m, Ta qu� th�c c� th� n�i cho ng߽i bi�t lai l�ch c�a t�m l�nh b�i n�y, nh�ng tr߾c ��, ng߽i ph�i gi�p ta m�t chuy�n" )
					AddText( sceneId, "    Trong r�ng tr�c ngo�i th�nh T� Ch�u c� 1��n g�u hoang, ch�ng v�n r�t ngoan, nh�ng t� khi c� 1 con g�u �� l�n l�m th� l�nh, ch�ng tr� n�n hung d�, g�n ��y li�n t�c t�n c�ng v�o th�n. Nh�ng tri�u ��nh kh�ng h� g�i qu�n l�nh t�i �i ph� l� �c t�ng n�y. Ь tr�nh cho l� �c t�ng kh�ng l�m h�i t�i d�n l�ng, ta mu�n nhanh ch�ng t�m c�ch di�t tr� con g�u �� ��ng ch�t kia" )
					AddText( sceneId, "    N�u ng߽i c� th� gi�p ta gi�t ���c con g�u ��, ta s� k� cho ng߽i ngay v� lai l�ch t�m l�nh b�i n�y" )
					AddText( sceneId, "#{M_MUBIAO}" )
					AddText( sceneId, x050101_g_MissionTarget )
				EndEvent( )
				DispatchMissionInfo( sceneId, selfId, targetId, x050101_g_ScriptId, x050101_g_MissionId )
			end
		end
	else
		if numText == x050101_g_NumText_Main then
			local bDone = x050101_CheckSubmit( sceneId, selfId )

			BeginEvent( sceneId )
				AddText( sceneId, x050101_g_MissionName )

				if bDone == 1 then
					AddText( sceneId, x050101_g_SubmitInfo )
				else
					AddText( sceneId, x050101_g_ContinueInfo )
					x050101_AskEnterCopyScene( sceneId, selfId, targetId )
					DispatchEventList( sceneId, selfId, targetId )
					return
				end
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x050101_g_ScriptId, x050101_g_MissionId, bDone )
		elseif numText == x050101_g_NumText_EnterCopyScene then
			x050101_AcceptEnterCopyScene( sceneId, selfId, targetId )
		end
	end
end

--**********************************
-- ����������������û�з��� 0���з��� 1
--**********************************
function x050101_CheckConflictMission( sceneId, selfId )
	local missionId = 0

	for missionId = 1260, x050101_g_MissionId - 1 do
		if IsHaveMission( sceneId, selfId, missionId ) > 0 then
			return 1
		end
	end

	for missionId = x050101_g_MissionId + 1, 1269 do
		if IsHaveMission( sceneId, selfId, missionId ) > 0 then
			return 1
		end
	end

	return 0
end

--**********************************
-- �о��¼�
--**********************************
function x050101_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050101_g_Name then		--�жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
		return
	end

	-- ����������������
	if x050101_CheckConflictMission( sceneId, selfId ) == 1 then
		return
	end

	AddNumText( sceneId, x050101_g_ScriptId, x050101_g_MissionName, 4, x050101_g_NumText_Main )
end

-- û��������δ�������ʾ��Ŀ������ʾ�ĺ����������ĳЩ��Ҳ�֪�����������񣩻��Ǹ�����ʾ��
--**********************************
-- ����������
--**********************************
function x050101_CheckAccept( sceneId, selfId )
	-- �Ѿ��ӹ��򲻷�������
	if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) > 0 then
		return 0
	end

	-- ����������������
	if x050101_CheckConflictMission( sceneId, selfId ) == 1 then
		return 0
	end

	-- �������Ƿ���ϸշ�������
	local iTime = GetMissionData( sceneId, selfId, MD_ROUNDMISSION2 )			-- ��һ�η��������ʱ��(��λ��һ����)
	--begin modified by zhangguoxin 090207
	--local CurTime = GetHourTime()												-- ��ǰʱ��(��λ��һ����)
	local CurTime = GetQuarterTime()												-- ��ǰʱ��(��λ��һ����)
	--end modified by zhangguoxin 090207

	if iTime+1  >= CurTime then
		x050101_NotifyFailTips( sceneId, selfId, "Sau khi t� b� nhi�m v� 30 ph�t, m�i c� th� nh�n l�n n�a." )
		return 0
	end

	-- ���û�У���Ҫ���඾�����ơ�
	if LuaFnGetAvailableItemCount( sceneId, selfId, x050101_g_Token ) < 1 then
		x050101_NotifyFailTips( sceneId, selfId, "    C�n ph�i #{_ITEM" .. x050101_g_Token .."}" )
		return 0
	end

	-- һ��ֻ���� x050101_g_TakeTimes ��
	local DayTimes, oldDate, nowDate, takenTimes

	DayTimes = GetMissionData( sceneId, selfId, MD_ROUNDMISSION2_TIMES )
	oldDate = mod( DayTimes, 100000 )
	takenTimes = floor( DayTimes/100000 )

	nowDate = GetDayTime()
	if nowDate ~= oldDate then
		takenTimes = 0
	end

	if takenTimes >= x050101_g_TakeTimes then
		x050101_NotifyFailTips( sceneId, selfId, "S� l�n nh�n nhi�m v� c�a c�c h� h�m nay �� v��t qu�" .. x050101_g_TakeTimes .. " l�n, xin ng�y mai quay l�i nh�n" )
		return 0
	else
		DayTimes = nowDate + takenTimes * 100000
		SetMissionData( sceneId, selfId, MD_ROUNDMISSION2_TIMES, DayTimes )
	end

	return 1
end

--**********************************
-- ������븱������
--**********************************
function x050101_AskEnterCopyScene( sceneId, selfId, targetId )
	AddNumText( sceneId, x050101_g_ScriptId, "Th�ng ti�n r�ng tr�c", 10, x050101_g_NumText_EnterCopyScene )
end

--**********************************
--����
--**********************************
function x050101_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) == 0 then					-- û������ſ���������
		if GetMissionCount( sceneId, selfId ) >= 20 then						-- �������������Ƿ�ﵽ����20��
			x050101_NotifyFailBox( sceneId, selfId, targetId, "    Nhi�m v� ghi ch�p �� �y, kh�ng th� nh�n th�m nhi�m v�" )
			return
		end

		if GetLevel( sceneId, selfId ) < x050101_g_LevelLimit then
			x050101_NotifyFailBox( sceneId, selfId, targetId, "    ��ng c�p c�a ng߽i qu� th�p, nhi�m v� n�y �i v�i ng߽i qu� nguy hi�m, h�y luy�n t�p tr߾c khi t�i" )
			return
		end

		-- ����������������
		if x050101_CheckConflictMission( sceneId, selfId ) == 1 then
			return
		end

		-- ���������Ͼ���һ�����ϵĵ��ߡ��඾�����ơ�,�����ڴ˽��������񡰳�����,�������ͬʱ����һ�����ơ��඾�����ơ���
		if LuaFnDelAvailableItem( sceneId, selfId, x050101_g_Token, 1 ) == 0 then
			-- ������ʾ����Ҫ���඾�����ơ�
			x050101_NotifyFailBox( sceneId, selfId, targetId, "    C�n ph�i #{_ITEM" .. x050101_g_Token .."}" )
			return
		end

		-- ������������б�
		AddMission( sceneId, selfId, x050101_g_MissionId, x050101_g_ScriptId, 1, 0, 0 )			-- kill��area��item
		if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) <= 0 then
			return
		end

		-- һ��ֻ���� x050101_g_TakeTimes ��
		local DayTimes

		DayTimes = GetMissionData( sceneId, selfId, MD_ROUNDMISSION2_TIMES )
		DayTimes = DayTimes + 100000
		SetMissionData( sceneId, selfId, MD_ROUNDMISSION2_TIMES, DayTimes )

--		SetMissionEvent( sceneId, selfId, x050101_g_MissionId, 4 ) -- ע�� OnLockedTarget �¼�

		local misIndex = GetMissionIndexByID( sceneId, selfId, x050101_g_MissionId )

		SetMissionByIndex( sceneId, selfId, misIndex, x050101_g_IsMissionOkFail, 0 )	-- ������������Ϊδ���
		SetMissionByIndex( sceneId, selfId, misIndex, x050101_g_Param_sceneid, -1 )		-- ��������Ϊ -1

		--��ʾ���ݸ�������Ѿ�����������
		BeginEvent( sceneId )
			AddText( sceneId, x050101_g_MissionName )
			AddText( sceneId, x050101_g_ContinueInfo )
			AddText( sceneId, "#rC�c h� �� nh�n " .. x050101_g_MissionName )

			x050101_AskEnterCopyScene( sceneId, selfId, targetId )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
-- ������븱������
--**********************************
function x050101_AcceptEnterCopyScene( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) > 0 then					-- ������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, selfId, x050101_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x050101_g_Param_sceneid )
		if copysceneid >= 0 then												-- ��������
			-- ���Լ����͵���������
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x050101_g_Fuben_X, x050101_g_Fuben_Z )
			else
				x050101_NotifyFailBox( sceneId, selfId, targetId, "    R�t ti�c, nhi�m v� c�a ng߽i �� th�t b�i" )
			end

			return
		end

		if LuaFnHasTeam( sceneId, selfId ) == 0 then
			x050101_NotifyFailBox( sceneId, selfId, targetId, "    M�t m�nh ng߽i th�c l�c m�ng, h�y g�i th�m m�y ng߶i t�i gi�p �i" )
			return
		end

		if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
			x050101_NotifyFailBox( sceneId, selfId, targetId, "    Ng߽i kh�ng ph�i l� �i tr߷ng, ch� c� �i tr߷ng m�i c� th� quy�t �nh nh�n u� th�c c�a ta hay kh�ng" )
			return
		end
		
		--bug27726��2007.11.15 by alan����ΪsceneMemberCount��һ��׼ȷ�����ø�����Ա������������ıȽ��ж�
		--��������ʾ���岻�ڸ����Ķ�Ա����
				
		local teamMemberCount = GetTeamMemberCount(sceneId, selfId);	
		local nearMemberCount = GetNearTeamCount(sceneId, selfId);		
		if not teamMemberCount or not nearMemberCount or teamMemberCount ~= nearMemberCount then
			x050101_NotifyFailBox( sceneId, selfId, targetId, "    Anh c�n c� nh�m vi�n � g�n ��y" )
			return
		end
		
		--bug27726 end

		-- ȡ����Ҹ����Ķ��������������Լ���
		--local teamMemberCount = GetTeamMemberCount(sceneId, selfId);
		--local sceneMemberCount = GetTeamSceneMemberCount(sceneId, selfId);
		--if not teamMemberCount or not sceneMemberCount or teamMemberCount ~= sceneMemberCount + 1 then
		--	x050101_NotifyFailBox( sceneId, selfId, targetId, "    �㻹�ж�Ա���ڸ�����" )
		--	return
		--end
		
		--local nearMemberCount = GetNearTeamCount(sceneId, selfId)
		--if nearMemberCount ~= sceneMemberCount + 1 then
		--	local strOutmsg = "���������г�Ա��";
		--	local checkNearCount = 0;
		--	for	i = 0, sceneMemberCount - 1 do
		--		local sceneMemId = LuaFnGetTeamSceneMember(sceneId, selfId, i);
		--		if sceneMemId and sceneMemId >= 0 then
		--			local findFlag = 0;
		--			for	j = 0, nearMemberCount - 1 do
		--				local nearMemId = GetNearTeamMember(sceneId, selfId, j);
		--				if nearMemId and nearMemId == sceneMemId then
		--					findFlag = 1;
		--					break;
		--				end
		--			end
					
		--			if findFlag == 0 then
		--				memName = GetName(sceneId, sceneMemId);
		--				if checkNearCount == 0 then
		--					strOutmsg = strOutmsg..memName;
		--				else
		--					strOutmsg = strOutmsg.."��"..memName;
		--				end
		--				checkNearCount = checkNearCount + 1;
		--			end
		--		end
		--	end
		--	if checkNearCount  > 0 then
		--		strOutmsg = strOutmsg.."�����ڸ������뼯�Ϻ������ҽ�����";
		--		x050101_NotifyFailBox( sceneId, selfId, targetId, strOutmsg)
		--	end
		--	return 
		--end
		
		if nearMemberCount < x050101_g_LimitMembers then
			x050101_NotifyFailBox( sceneId, selfId, targetId, "    Trong r�ng tr�c g�u d� r�t nhi�u, �t nh�t c�c ng߽i ph�i c� 3 ng߶i �ng h�nh, ta m�i y�n t�m � c�c ng߽i �i, trong nh�m c�n c� 3 nh�n v�t �t nh�t t� c�p 30 tr� l�n" )
			return
		end

		-- ���С�����Ƿ����������¼����, �����Ƿ��Ѿ��ӹ�������
		local member, mylevel, numerator, denominator = 0, 0, 0, 0
		local outNotAcceptMissionStr = " Ng߽i c� �i vi�n kh�ng nh�n nhi�m v� n�y";
		local notAcceptMissionCount = 0;
		local outDoingMissionStr = " Ng߽i c� �i vi�n �� l�m nhi�m v�";
		local doingMissionCount = 0;
		for	i = 0, nearMemberCount - 1 do
			member = GetNearTeamMember( sceneId, selfId, i )

			if IsHaveMission( sceneId, member, x050101_g_MissionId ) <= 0 then
				if notAcceptMissionCount == 0 then
					outNotAcceptMissionStr = outNotAcceptMissionStr..GetName(sceneId, member);
				else
					outNotAcceptMissionStr = outNotAcceptMissionStr..", "..GetName(sceneId, member);
				end
				notAcceptMissionCount = notAcceptMissionCount + 1;
			end

			if notAcceptMissionCount == 0 then
				misIndex = GetMissionIndexByID( sceneId, member, x050101_g_MissionId )
				if GetMissionParam( sceneId, member, misIndex, x050101_g_Param_sceneid ) >= 0 then
					if doingMissionCount == 0 then
						outDoingMissionStr = outDoingMissionStr..GetName(sceneId, member);
					else
						outDoingMissionStr = outDoingMissionStr..", "..GetName(sceneId, member);
					end
					doingMissionCount = doingMissionCount + 1;
				end
			end

			numerator = numerator + GetLevel( sceneId, member ) ^ 4
			denominator = denominator + GetLevel( sceneId, member ) ^ 3
		end
		
		if notAcceptMissionCount > 0 then
			outNotAcceptMissionStr = outNotAcceptMissionStr.." Ng߽i c� �i vi�n kh�ng nh�n nhi�m v� n�y";
			x050101_NotifyFailBox( sceneId, selfId, targetId, outNotAcceptMissionStr);
			return
		end
		
		if doingMissionCount > 0 then
			outDoingMissionStr = outDoingMissionStr.." Ng߽i c� �i vi�n �� l�m nhi�m v�";
			x050101_NotifyFailBox( sceneId, selfId, targetId, outDoingMissionStr);
			return
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
		LuaFnSetSceneLoad_Map( sceneId, x050101_g_CopySceneMap )						-- ��ͼ�Ǳ���ѡȡ�ģ����ұ�����Config/SceneInfo.ini�����ú�
		LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
		LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x050101_g_NoUserTime * 1000 )
		LuaFnSetCopySceneData_Timer( sceneId, x050101_g_TickTime * 1000 )
		LuaFnSetCopySceneData_Param( sceneId, 0, x050101_g_CopySceneType )				-- ���ø������ݣ����ｫ0����������������Ϊ999�����ڱ�ʾ������999(�����Զ���)
		LuaFnSetCopySceneData_Param( sceneId, 1, x050101_g_ScriptId )					-- ��1����������Ϊ���������¼��ű���
		LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							-- ���ö�ʱ�����ô���
		LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							-- ���ø�����ڳ�����, ��ʼ��
		LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							-- ���ø����رձ�־, 0���ţ�1�ر�
		LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							-- �����뿪����ʱ����
		LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	-- ��������
		LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							-- ɱ��Boss1������
		LuaFnSetCopySceneData_Param( sceneId, 8, 0 )							-- ɱ��Boss2������
		LuaFnSetCopySceneData_Param( sceneId, 9, 0 )							-- ɱ��Boss3������
		LuaFnSetCopySceneData_Param( sceneId, 10, 0 )							-- ɱ��Boss4������
		LuaFnSetCopySceneData_Param( sceneId, 11, 0 )							-- ɱ��Boss5������
		LuaFnSetCopySceneData_Param( sceneId, 12, 0 )							-- �Ƿ�ɱ��������
		LuaFnSetCopySceneData_Param( sceneId, 13, iniLevel / 10 )				-- �洢����ǵļ��𵵴�
		LuaFnSetCopySceneData_Param( sceneId, 14, 0 )							-- �������Ƿ��Ѿ���Ѫ

		LuaFnSetSceneLoad_Area( sceneId, x050101_g_CopySceneArea )

		local monsterINI = format( x050101_g_CopySceneMonsterIni, iniLevel )
		LuaFnSetSceneLoad_Monster( sceneId, monsterINI )

		LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) -- ����CopyScene_LevelGap �� scene.lua �и�ֵ

		local bRetSceneID = LuaFnCreateCopyScene( sceneId )						-- ��ʼ����ɺ���ô�����������
		if bRetSceneID > 0 then
			x050101_NotifyFailTips( sceneId, selfId, "D�ch chuy�n th�nh c�ng!" )
		else
			x050101_NotifyFailTips( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x050101_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )				-- ���ø�����ڳ�����
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then											-- �Ҳ��������
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then		-- �����޷�ִ���߼���״̬
		return
	end

	--ȡ����Ҹ����Ķ��������������Լ���
	local i, nearMemberCount, member
	local members = {}
	local validmembercount = 0

	nearMemberCount = GetNearTeamCount( sceneId, leaderObjId )
	for i = 0, nearMemberCount - 1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )
		if IsHaveMission( sceneId, member, x050101_g_MissionId ) > 0 then		-- ������
			validmembercount = validmembercount + 1
			members[validmembercount] = member
		end
	end

	if validmembercount < x050101_g_LimitMembers then
		x050101_NotifyFailTips( sceneId, leaderObjId, "    Trong r�ng tr�c g�u d� r�t nhi�u �t nh�t c�c ng߽i ph�i c� 3 ng߶i �ng h�nh, ta m�i y�n t�m � c�c ng߽i �i" )
		return
	end

	local misIndex
	for i = 1, validmembercount do
		misIndex = GetMissionIndexByID( sceneId, members[i], x050101_g_MissionId )

		if LuaFnIsCanDoScriptLogic( sceneId, members[i] ) == 1 then			-- ���ڿ���ִ���߼���״̬
			--������ĵ�1����������Ϊ�����ĳ�����
			SetMissionByIndex( sceneId, members[i], misIndex, x050101_g_Param_sceneid, destsceneId )
	--		SetMissionEvent( sceneId, members[i], x050101_g_MissionId, 0 )			-- ����ɱ���¼�
			NewWorld( sceneId, members[i], destsceneId, x050101_g_Fuben_X, x050101_g_Fuben_Z )
		end
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x050101_OnPlayerEnter( sceneId, selfId )
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x050101_g_Fuben_Relive_X, x050101_g_Fuben_Relive_Z )
end

--**********************************
--ɱ����������
--**********************************
function x050101_OnKillObject( sceneId, selfId, objdataId, objId )						-- ������˼�������š����objId�������λ�úš�����objId
	if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) == 0 then
		return
	end

	--�Ƿ��Ǹ���
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--�Ƿ�������Ҫ�ĸ���
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050101_g_CopySceneType then
		return
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														-- ��������Ѿ����óɹر�״̬����ɱ����Ч
		return
	end

	--ȡ��ɱ�������GroupID
	local GroupID = GetMonsterGroupID( sceneId, objId )
	if GroupID == x050101_g_BossGroup then
		LuaFnSetCopySceneData_Param( sceneId, 12, 1 )							-- �Ƿ�ɱ��������

		local monstercount = GetMonsterCount( sceneId )
		local bossId
		for i = 0, monstercount - 1 do
			bossId = GetMonsterObjID( sceneId, i )
			-- ���óɷ���������
			-- ���� AI ��Ϊ 1
			SetNPCAIType( sceneId, bossId, 1 )
			-- ��չ AI ��Ϊ 0
			SetAIScriptID( sceneId, bossId, 0 )
			-- Ȼ��ʼ����
			NpcToIdle( sceneId, bossId )
		end

		local BroadcastMsg = x050101_g_BroadcastMsg[ random( getn(x050101_g_BroadcastMsg) ) ]
		BroadcastMsg = gsub( BroadcastMsg, "%$N", GetName( sceneId, selfId ) )
		BroadMsgByChatPipe( sceneId, selfId, BroadcastMsg, 4 )
		
		--===================================================
		--hd add 16/7/2014: add drop list khi giet boss
		if x050101_active_drop_longwen==1 then
		
			local num = LuaFnGetCopyScene_HumanCount( sceneId )
			local mems = {}
			for i = 0, num - 1 do
				mems[i + 1] = LuaFnGetCopyScene_HumanObjId( sceneId, i )		
				if LuaFnIsObjValid( sceneId, mems[i + 1] ) == 1 then						
					if random(100) <= x050101_rate_drop_longwen then
						AddMonsterDropItem( sceneId, objId, mems[i + 1], x050101_drop_longwen_item[random(getn(x050101_drop_longwen_item))] )
					end					
				end
			end
		end
		--===================================================
		--end hd add 16/7/2014

	end

	local killedMonsterIndex, killedCount = 0, 0
	for i = 1, getn( x050101_g_DemandKillGroup ) do
		if GroupID == x050101_g_DemandKillGroup[i] then
			killedMonsterIndex = i
			killedCount = LuaFnGetCopySceneData_Param( sceneId, 7 + i - 1 ) + 1
			LuaFnSetCopySceneData_Param( sceneId, 7 + i - 1, killedCount )		-- ɱ��Bossi������
			break
		end
	end

	if killedMonsterIndex == 0 then													-- ɱ����һ������ع�
		return
	end

	local maxKilledCount = x050101_g_DemandKill[killedMonsterIndex].num

	--ȡ�õ�ǰ�����������
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local misIndex
	local strText = format( "�� gi�t %s: %d/%d", GetName( sceneId, objId ), killedCount, maxKilledCount )
	for i = 0, num - 1 do
		mems[i + 1] = LuaFnGetCopyScene_HumanObjId( sceneId, i )					-- ȡ�õ�ǰ�������˵�objId

		if LuaFnIsObjValid( sceneId, mems[i + 1] ) == 1 then						-- ���ڳ����Ĳ����˲���
			x050101_NotifyFailTips( sceneId, mems[i + 1], strText )
			Msg2Player( sceneId, mems[i + 1], strText, MSG2PLAYER_PARA )
			misIndex = GetMissionIndexByID( sceneId, mems[i + 1], x050101_g_MissionId )
			SetMissionByIndex( sceneId, mems[i + 1], misIndex, killedMonsterIndex, killedCount )	-- ˢ��ɱ������
			if Q123_ACTIVE == 1 then
				if random(100) <= DROP_RATE then
					AddMonsterDropItem( sceneId, objId, mems[i + 1], DROP_ITEM[random(getn(DROP_ITEM))] )
				end
			end
		end
	end

	local leaveFlag = 1
	for i = 1, getn( x050101_g_DemandKillGroup ) do
		if LuaFnGetCopySceneData_Param( sceneId, 7 + i - 1 ) < x050101_g_DemandKill[i].num then
			leaveFlag = 0
			break
		end
	end

	-- ɱ�����й����뿪����
	if leaveFlag == 1 then
		local misIndex
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		for i = 1, num do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then						-- ���ڳ����Ĳ����˲���
				x050101_NotifyFailTips( sceneId, mems[i], "M�c ti�u nhi�m v� �� ho�n th�nh, s�p r�i kh�i ph� b�n..." )
				misIndex = GetMissionIndexByID( sceneId, mems[i], x050101_g_MissionId )
				SetMissionByIndex( sceneId, mems[i], misIndex, x050101_g_IsMissionOkFail, 1 )	-- �������
			end
		end
	end
end

--**********************************
--������ڸ����������¼�
--**********************************
function x050101_OnHumanDie( sceneId, selfId, killerId )
	-- �κ�һ������������ᵼ�º���������ȫ��
--	if LuaFnGetCopySceneData_Param( sceneId, 12 ) == 1 then								-- �������˾Ͳ��ж���
--		return
--	end
--
--	local monstercount = GetMonsterCount( sceneId )
--	local monsterId, GroupID
--
--	for i = 0, monstercount - 1 do
--		monsterId = GetMonsterObjID( sceneId, i )
--		GroupID = GetMonsterGroupID( sceneId, monsterId )
--
--		if GroupID == x050101_g_BossGroup then
--			RestoreHp( sceneId, monsterId )
--			break
--		end
--	end
end

--**********************************
--�뿪����
--**********************************
function x050101_Exit( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- ȡ�ø�����ڳ�����
	NewWorld( sceneId, selfId, oldsceneId, x050101_g_Back_X, x050101_g_Back_Z )
end

--**********************************
--����
--**********************************
function x050101_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x050101_g_MissionName )
		AddText( sceneId, x050101_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x050101_g_ScriptId, x050101_g_MissionId )
end

--**********************************
--����
--**********************************
function x050101_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) == 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050101_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x050101_g_Param_sceneid )

	-- ���÷������������ʱ��
	--begin modified by zhangguoxin 090207
	--local CurTime = GetHourTime()											-- ��ǰʱ��
	local CurTime = GetQuarterTime()											-- ��ǰʱ��
	--begin modified by zhangguoxin 090207
	SetMissionData( sceneId, selfId, MD_ROUNDMISSION2, CurTime )

	--ɾ����������б��ж�Ӧ������
	DelMission( sceneId, selfId, x050101_g_MissionId )
	
	--�Ƿ�������Ҫ�ĸ���
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )

	if sceneId == copyscene and fubentype == x050101_g_CopySceneType then											-- ����ڸ�����ɾ��������ֱ�Ӵ��ͻ�
		x050101_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		-- ȡ�ø�����ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x050101_g_Back_X, x050101_g_Back_Z )
	end
end

--**********************************
--����������ʱ���¼�
--**********************************
function x050101_OnCopySceneTimer( sceneId, nowTime )
	--����ʱ�Ӷ�ȡ������
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						-- ȡ���Ѿ�ִ�еĶ�ʱ����
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							-- �����µĶ�ʱ�����ô���

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	local LevelGap = LuaFnGetCopySceneData_Param( sceneId, CopyScene_LevelGap )

	if leaveFlag == 1 then															-- ��Ҫ�뿪
		--�뿪����ʱ��Ķ�ȡ������
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x050101_g_CloseTick then										-- ����ʱ�䵽����Ҷ���ȥ��
			--����ǰ����������������˴��ͻ�ԭ������ʱ��ĳ���
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050101_Exit( sceneId, mems[i] )
				end
			end
		else
			--֪ͨ��ǰ����������������ˣ������رյ���ʱ��
			local strText = format( "C�c h� s� r�i kh�i n�i n�y trong v�ng %d gi�y n�a", ( x050101_g_CloseTick - leaveTickCount ) * x050101_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050101_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x050101_g_LimitTotalHoldTime then									-- ������ʱ�����Ƶ���
		--�˴����ø���������ʱ�����Ƶ��������ʱ�䵽����...
		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				x050101_NotifyFailTips( sceneId, mems[i], "Th�i gian nhi�m v� �� h�t, r�i c�nh..." )
				x050101_Exit( sceneId, mems[i] )
			end
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	else
		--��ʱ�������Ա�Ķ���ţ���������ϣ����߳�����
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- ȡ�ñ���Ķ����
		local oldsceneId

		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and oldteamid ~= GetTeamId( sceneId, mems[i] ) then
				x050101_NotifyFailTips( sceneId, mems[i], "Ng߽i kh�ng � trong ��ng �i, r�i c�nh..." )
				x050101_Exit( sceneId, mems[i] )
			end
		end

		-- ÿ������ʾ���ʣ��ʱ��
		if mod( x050101_g_TickTime * TickCount, 60 ) < x050101_g_TickTime and TickCount < x050101_g_LimitTotalHoldTime then
			local str = "C�n th�a " .. ( x050101_g_LimitTotalHoldTime - TickCount ) * x050101_g_TickTime / 60 .. " Ph�t..."
			for	i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050101_NotifyFailTips( sceneId, mems[i], str )
				end
			end
		end

		local monstercount = GetMonsterCount( sceneId )
		local bossId, GroupID, bossX, bossZ = -1
		local x, z = GetLastPatrolPoint( sceneId, 0 )
		for i = 0, monstercount - 1 do
			if LuaFnGetCopySceneData_Param( sceneId, 14 ) > 0 then
				break
			end

			bossId = GetMonsterObjID( sceneId, i )
			GroupID = GetMonsterGroupID( sceneId, bossId )

			if GroupID == x050101_g_BossGroup then												-- �ж� Boss �Ƿ��ӵ�ָ���ص�
				bossX, bossZ = GetWorldPos( sceneId, bossId )
				--	����ӵ�����
				if (x - bossX) * (x - bossX) + (z - bossZ) * (z - bossZ) < 25 then		-- ���յ㲻�� 5 ��
					-- ����Ӵܺ�ķ����Ǳ�Ҫ��
					NpcToIdle( sceneId, bossId )
					-- �ָ���Ѫ
					RestoreHp( sceneId, bossId )
					-- ���� AI ��Ϊ 0
					SetNPCAIType( sceneId, bossId, 0 )
					-- ��չ AI ��Ϊ 129
					SetAIScriptID( sceneId, bossId, 129 )
					-- ɾ��Ѳ��·��
					SetPatrolId( sceneId, bossId, -1 )
					LuaFnSetCopySceneData_Param( sceneId, 14, 1 )
				end

				break
			end
		end
	end
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x050101_CheckSubmit( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) <= 0 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050101_g_MissionId )				-- �õ���������к�
	if GetMissionParam( sceneId, selfId, misIndex, x050101_g_IsMissionOkFail ) ~= 1 then
		return 0
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < 1 then
		x050101_NotifyFailTips( sceneId, selfId, "Thi�u m�t � v�t ph�m nhi�m v�")
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x050101_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x050101_g_Name then		--�жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
		return
	end

	if x050101_CheckSubmit( sceneId, selfId ) == 1 then
		x050101_NotifyFailBox( sceneId, selfId, targetId, x050101_g_MissionComplete )
		TryRecieveItem( sceneId, selfId, x050101_g_Mail, 1 )
		DelMission( sceneId, selfId, x050101_g_MissionId )
		-- �����ͳ��
		LuaFnAuditQuest(sceneId, selfId, "����")
		local strText = x050101_g_MissionName .. " nhi�m v� �� ho�n th�nh"
		x050101_NotifyFailTips( sceneId, selfId, strText )
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )

		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		CallScriptFunction( SCENE_SCRIPT_ID, "PlaySoundEffect", sceneId, selfId, 66 )
	end
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x050101_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x050101_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
