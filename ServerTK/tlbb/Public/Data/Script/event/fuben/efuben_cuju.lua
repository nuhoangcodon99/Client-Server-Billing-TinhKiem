-- 402040 
-- ��ϸ���

--************************************************************************
--MisDescBegin
--�ű���
x402040_g_ScriptId = 402040

x402040_TIME_2000_01_03_ = 946828868
--MisDescEnd
--************************************************************************

--��������
x402040_g_CopySceneName = "M�u �an Uy�n"

x402040_g_CopySceneType = FUBEN_CUJU	--�������ͣ�������ScriptGlobal.lua����

x402040_g_CopySceneMap = "cuju.nav"
x402040_g_Exit = "cuju.ini"
x402040_g_LimitMembers = 3				--���Խ���������С��������
x402040_g_TickTime = 1						--�ص��ű���ʱ��ʱ�䣨��λ����/�Σ�
x402040_g_LimitTotalHoldTime = 360--�������Դ���ʱ�䣨��λ��������,�����ʱ�䵽�ˣ������񽫻�ʧ��
x402040_g_LimitTimeSuccess = 500	--����ʱ�����ƣ���λ���������������ʱ�䵽�ˣ��������
x402040_g_CloseTick = 3						--�����ر�ǰ����ʱ����λ��������
x402040_g_NoUserTime = 300				--������û���˺���Լ��������ʱ�䣨��λ���룩
x402040_g_DeadTrans = 0						--����ת��ģʽ��0�������󻹿��Լ����ڸ�����1��������ǿ���Ƴ�����
x402040_g_Fuben_X = 38						--���븱����λ��X
x402040_g_Fuben_Z = 32						--���븱����λ��Z
x402040_g_Back_X = 203							--Դ����λ��X
x402040_g_Back_Z = 56							--Դ����λ��Z
x402040_g_Back_SceneId = 0				--Դ����Id

x402040_g_BossPoint={x=61, z=57}

x402040_g_MonsterPoint=
{
	{x=41,z=32},{x=46,z=32},{x=51,z=32},{x=56,z=32},{x=61,z=32},{x=66,z=32},
	{x=71,z=32},{x=76,z=32},{x=81,z=32},{x=86,z=32},{x=86,z=37},{x=86,z=42},
	{x=86,z=47},{x=86,z=52},{x=86,z=57},{x=86,z=62},{x=86,z=67},{x=86,z=72},
	{x=86,z=77},{x=86,z=82},{x=86,z=87},{x=86,z=92},{x=86,z=97},{x=86,z=102},
	{x=81,z=102},{x=76,z=102},{x=71,z=102},{x=66,z=102},{x=61,z=102},{x=56,z=102},
	{x=51,z=102},{x=46,z=102},{x=41,z=102},{x=41,z=97},{x=41,z=92},{x=41,z=87},
	{x=41,z=82},{x=41,z=77},{x=41,z=72},{x=41,z=67},{x=41,z=62},{x=41,z=57},
	{x=41,z=52},{x=41,z=47},{x=41,z=42},{x=41,z=37},{x=46,z=37},{x=51,z=37},
	{x=56,z=37},{x=61,z=37},{x=66,z=37},{x=71,z=37},{x=76,z=37},{x=81,z=37},
	{x=81,z=42},{x=81,z=47},{x=81,z=52},{x=81,z=57},{x=81,z=62},{x=81,z=67},
	{x=81,z=72},{x=81,z=77},{x=81,z=82},{x=81,z=87},{x=81,z=92},{x=81,z=97},
	{x=76,z=97},{x=71,z=97},{x=66,z=97},{x=61,z=97},{x=56,z=97},{x=51,z=97},
	{x=46,z=97},{x=46,z=92},{x=46,z=87},{x=46,z=82},{x=46,z=77},{x=46,z=72},
	{x=46,z=67},{x=46,z=62},{x=46,z=57},{x=46,z=52},{x=46,z=47},{x=46,z=42},
	{x=51,z=42},{x=56,z=42},{x=61,z=42},{x=66,z=42},{x=71,z=42},{x=76,z=42},
	{x=76,z=47},{x=76,z=52},{x=76,z=57},{x=76,z=62},{x=76,z=67},{x=76,z=72},
	{x=76,z=77},{x=76,z=82},{x=76,z=87},{x=76,z=92},{x=71,z=92},{x=66,z=92},
	{x=61,z=92},{x=56,z=92},{x=51,z=92},{x=51,z=87},{x=51,z=82},{x=51,z=77},
	{x=51,z=72},{x=51,z=67},{x=51,z=62},{x=51,z=57},{x=51,z=52},{x=51,z=47},
	{x=56,z=47},{x=61,z=47},{x=66,z=47},{x=71,z=47},{x=71,z=52},{x=71,z=57},
	{x=71,z=62},{x=71,z=67},{x=71,z=72},{x=71,z=77},{x=71,z=82},{x=71,z=87},
	{x=66,z=87},{x=61,z=87},{x=56,z=87},{x=56,z=82},{x=56,z=77},{x=56,z=72},
	{x=56,z=67},{x=56,z=62},{x=56,z=57},{x=56,z=52},{x=61,z=52},{x=66,z=52},
	{x=66,z=57},{x=66,z=62},{x=66,z=67},{x=66,z=72},{x=66,z=77},{x=66,z=82},
	{x=61,z=82},{x=61,z=77},{x=61,z=72},{x=61,z=67},{x=61,z=62},
}

x402040_g_NianShouPoint = 
{
	{x=40,z=100},{x=40,z=92},{x=40,z=84},{x=40,z=76},{x=40,z=68},
	{x=40,z=60},{x=40,z=52}, {x=64,z=30},{x=50,z=30},{x=78,z=30},
	{x=90,z=100},{x=90,z=92},{x=90,z=84},{x=90,z=76},{x=90,z=68},
	{x=90,z=60},{x=90,z=52},{x=60,z=103},{x=50,z=103},{x=78,z=103},
	
}

-- ���򣬲�����������		
-- ˫˫��
x402040_g_SmallMonsterId_1={3680,3681,3682,3683,3684,3685,3686,3687,3688,3689,33680,33681,33682,33683,33684,33685,33686,33687,33688,33689}
-- ԧ���
x402040_g_SmallMonsterId_2={3690,3691,3692,3693,3694,3695,3696,3697,3698,3699,33690,33691,33692,33693,33694,33695,33696,33697,33698,33699}
-- ����Ʈ
x402040_g_SmallMonsterId_3={3700,3701,3702,3703,3704,3705,3706,3707,3708,3709,33700,33701,33702,33703,33704,33705,33706,33707,33708,33709}

-- ������������ ������
x402040_g_MiddleMonsterId={3710,3711,3712,3713,3714,3715,3716,3717,3718,3719,33710,33711,33712,33713,33714,33715,33716,33717,33718,33719}

-- BOSS�� ������ �����ʮ���ã�
x402040_g_BossMonsterId={3720,3721,3722,3723,3724,3725,3726,3727,3728,3729,33720,33721,33722,33723,33724,33725,33726,33727,33728,33729}

--����
x402040_g_NianShouID  = {12200,12201,12202,12203,12204,12205,12206,12207,12208,12209,12210,12211}
--�Ƿ񴴽��Ĵ���
x402040_paramonce  = 14

-- ��¼ɱ�������ĸ�������
x402040_g_KillNum = 20

-- ������
x402040_g_BigFootBall = {9160,9170,9180,9190,39160,39170,39180,39190}

--**********************************
--������ں���
--**********************************
function x402040_OnDefaultEvent( sceneId, selfId, targetId )
	if GetNumText() == 1  then
		BeginEvent(sceneId)
		--	AddText(sceneId,"#B������ϴ���");
			AddText(sceneId,"#{CUDS_20071010}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- 1�����ʱ�� ��ÿ�µ�һ������������19��00~����23��00������4��Сʱ��
	
	-- a���ǲ���������
	local nWeek = GetTodayWeek()
	if nWeek~=0  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BHo�nh t�o m�u �an uy�n");
			AddText(sceneId,"  L�c D߽ng Ho�nh T�o M�u �an Uy�n chu�n b� t� ch�c cu�c thi t�c c�u trong tu�n �u ti�n v� tu�n th� ba c�a m�i th�ng l�c 19h �n 23h.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
		return
	end
	-- xiehong �������껪֮�ݺ��ĺ��������4��12�ţ�4��19�ţ�4��26�ţ�5��3�ţ�5��10��
	--local curDate = GetTime2Day()
	
	--if curDate == 20090412
	--or curDate == 20090419
	--or curDate == 20090426
	--or curDate == 20090503
	--or curDate == 20090510 
	--or curDate == 20090621 then
		--local temp = 1
	--else
	-- b���ǲ���һ���µĵ�һ��������
	--local nToday = LuaFnGetDayOfThisMonth()
	--if nToday > 7 then -- zchw
		--BeginEvent(sceneId)
			--AddText(sceneId,"#BHo�nh t�o m�u �an uy�n");
			--AddText(sceneId,"  L�c D߽ng Ho�nh T�o M�u �an Uy�n chu�n b� t� ch�c cu�c thi t�c c�u trong tu�n �u ti�n v� tu�n th� ba c�a m�i th�ng l�c 19h �n 23h");
		--EndEvent(sceneId)
		--DispatchEventList(sceneId,selfId,targetId)
		
		--return
	--end
	--end
		
	-- c��ʱ���� 19:00 ~ 23:00
	--begin modified by zhangguoxin 090207
	--local nHour = GetHourTime()
	--local temp = floor(nHour/100)*100
	--if nHour - temp < 76  or nHour - temp > 92   then
	--local nQuarter = mod(GetQuarterTime(),100);
	--if nQuarter < 76 or nQuarter > 92 then
	--end modified by zhangguoxin 090207
		--BeginEvent(sceneId)
		--	AddText(sceneId,"#BHo�nh t�o m�u �an uy�n");
		--	AddText(sceneId,"   L�c D߽ng Ho�nh T�o M�u �an Uy�n chu�n b� t� ch�c cu�c thi t�c c�u trong tu�n �u ti�n v� tu�n th� ba c�a m�i th�ng l�c 19h �n 23h");
		--EndEvent(sceneId)
		--DispatchEventList(sceneId,selfId,targetId)
		
		--return
	--end
	
	-- 2���������ǲ��������
	if LuaFnHasTeam(sceneId,selfId) ~= 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BHo�nh t�o m�u �an uy�n");
			AddText(sceneId,"  C�n t� �i m�i c� th� tham gia t�c c�u!");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 2���������ǲ��������
	if GetTeamSize(sceneId,selfId) < x402040_g_LimitMembers  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BHo�nh t�o m�u �an uy�n");
			AddText(sceneId,"  C�n t� �i 3 ng߶i tr� l�n m�i c� th� tham gia t�c c�u");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- 3���������ǲ��Ƕӳ�
	if GetTeamLeader(sceneId,selfId) ~= selfId    then
		BeginEvent(sceneId)
			AddText(sceneId,"#BHo�nh t�o m�u �an uy�n");
			AddText(sceneId,"  C�c h� kh�ng ph�i �i tr߷ng, h�y g�i �i tr߷ng �n g�p ta !");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
		
	end
	
	-- 5������ǲ����˶���λ��
	if GetTeamSize(sceneId,selfId) ~= GetNearTeamCount(sceneId,selfId)  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BHo�nh t�o m�u �an uy�n");
			AddText(sceneId,"  еi h�u kh�ng � g�n ��y !");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- ��ø������������
	local nearteammembercount = GetNearTeamCount(sceneId, selfId)
	
	-- 6�������Ҷ�Ա��ͷ��û��ɱ�����ص�
	for	i=0, nearteammembercount-1    do
		local memId = GetNearTeamMember(sceneId, selfId, i)
		local pk_value = LuaFnGetHumanPKValue( sceneId, memId )
		if pk_value and pk_value > 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"#BHo�nh t�o m�u �an uy�n");
				AddText(sceneId,"  Trong nh�m c�a c�c h� c� ng߶i mang s�t kh� qu� cao, kh�ng th� tham gia t�c c�u !");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			
			return
		end
	end

	-- 7����ҵȼ����ܵ���30��
	for	i=0, nearteammembercount-1    do
		local memId = GetNearTeamMember(sceneId, selfId, i)
		local level = GetLevel( sceneId, memId )
		if level < 30   then
			BeginEvent(sceneId)
				AddText(sceneId,"#BHo�nh t�o m�u �an uy�n");
				AddText(sceneId,"  Nh�m c� ng߶i kh�ng �� 30 c�p, kh�ng th� tham gia t�c c�u !");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	end
	
	-- 8������ǲ��������Ѿ��μӹ���ϻ
	for	i=0, nearteammembercount-1    do
		local memId = GetNearTeamMember(sceneId, selfId, i)
		local time = GetMissionData(sceneId, memId, MD_CUJU_PRE_TIME)
		local nCurTime = LuaFnGetCurrentTime()
		-- ���ϴβμӵ�ʱ���ǲ��Ǻ�������12��Сʱ���ϵ�CD
		if nCurTime-time < 60*60*12   then
			BeginEvent(sceneId)
				AddText(sceneId,"#BHo�nh t�o m�u �an uy�n");
				AddText(sceneId,"  Trong nh�m c� ng߶i �� tham gia t�c c�u r�i, kh�ng th� tham gia ti�p t�c ���c !");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	end
	
	-- 9��ÿ����Ա����Ҫǰ6���ķ��ﵽ30��
	for	i=0, nearteammembercount-1    do
		local memId = GetNearTeamMember(sceneId, selfId, i)
		if x402040_CheckAllXinfaLevel(sceneId, memId, 30) == 0  then
			BeginEvent(sceneId)
				AddText(sceneId,"#BHo�nh t�o m�u �an uy�n");
				AddText(sceneId,"  еi ng� c�a c�c h� c� t�m ph�p ch�a �� �n 30, kh�ng th� tham gia t�c c�u !");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	end
	
	-- 10����������������
	local str = "Ta ch�nh th�c c�ng b� " .. GetName(sceneId,selfId) .. " v� nh�m c�a ng߽i, c� th� ti�n v�o tham gia t�c c�u ���c r�i #r" .. GetName(sceneId,selfId) .. "#W Ch�c may m�n !"
	BeginEvent(sceneId)
		AddText(sceneId,"#BHo�nh t�o m�u �an uy�n")
		AddText(sceneId, str)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	x402040_MakeCopyScene(sceneId, selfId)
end

--**********************************
--�о��¼�
--**********************************
function x402040_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x402040_g_ScriptId, "Gi�i thi�u T�c C�u",11 ,1  )
	AddNumText( sceneId, x402040_g_ScriptId, "Ho�nh t�o m�u �an uy�n",10 ,-1  )
	-- a���ǲ���������
	local nWeek = GetTodayWeek()
	if nWeek~=0  then
		return
	end
	
	-- xiehong �������껪֮�ݺ��ĺ��������4��12�ţ�4��19�ţ�4��26�ţ�5��3�ţ�5��10��
	--local curDate = GetTime2Day()
	
	--if curDate == 20090412
	--or curDate == 20090419
	--or curDate == 20090426
	--or curDate == 20090503
	--or curDate == 20090510 
	--or curDate == 20090621 then
	--	local temp = 1
	--else
	-- b���ǲ���һ���µĵ�һ��������
	--local nToday = LuaFnGetDayOfThisMonth()
	--if nToday > 7 then -- zchw
	--	return
	--end
	--end
	
	-- c��ʱ���� 19:00 ~ 23:00
	--local nHour = GetHourTime()
	--local temp = floor(nHour/100)*100
	--if nHour - temp < 76  or nHour - temp > 92   then
	--	return
	--end
	AddNumText( sceneId, x402040_g_ScriptId, "Ho�nh t�o m�u �an uy�n",10 ,-1  )
end

--**********************************
--����������
--**********************************
function x402040_CheckAccept( sceneId, selfId )
	
end

--**********************************
--ѯ������Ƿ�Ҫ���븱��
--**********************************
function x402040_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--����
--**********************************
function x402040_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--���ͬ����븱��
--**********************************
function x402040_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--��������
--**********************************
function x402040_MakeCopyScene( sceneId, selfId )
	
	-- ʹ�ö�Ա�ĵȼ����������ĵȼ�
	local param0 = 4;
	local param1 = 3;

	--���ս��
	local mylevel = 0;

	--��ʱ����
	local memId;
	local tempMemlevel = 0;
	local level0 = 0;
	local level1 = 0;
	local i;
	
	local nearmembercount = GetNearTeamCount(sceneId,selfId)
	for	i = 0, nearmembercount - 1 do
		memId = GetNearTeamMember(sceneId, selfId, i);
		tempMemlevel = GetLevel(sceneId, memId);
		level0 = level0 + (tempMemlevel ^ param0);
		level1 = level1 + (tempMemlevel ^ param1);
	end
	
	if level1 == 0 then
		mylevel = 0
	else
		mylevel = level0/level1;
	end
	
	if nearmembercount == -1  then  --û�ж���
		mylevel = GetLevel(sceneId, selfId)
	end
	
	local x
	local z
	x,z = LuaFnGetWorldPos(sceneId,selfId)
	
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "x402040_g_CopySceneMap"); --��ͼ�Ǳ���ѡȡ�ģ����ұ�����Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x402040_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x402040_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x402040_g_CopySceneType);--���ø������ݣ����ｫ0����������������Ϊ999�����ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x402040_g_ScriptId);--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);		--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param(sceneId, 3, sceneId)	--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param(sceneId, 4, x);				--���ø�������ڳ���λ��x
	LuaFnSetCopySceneData_Param(sceneId, 5, z);				--���ø�������ڳ���λ��Z
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --��������
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;	--ɱ��Boss������
	
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel;
	if mylevel < 10 then
		iniLevel = 1;
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor(mylevel/10);
	else
		iniLevel = PlayerMaxLevel/10;
	end

	-- ʹ�ø�������8��9��10�����������
	LuaFnSetCopySceneData_Param(sceneId, 8, x402040_g_SmallMonsterId_1[iniLevel]) --С��ID
	LuaFnSetCopySceneData_Param(sceneId, 9, x402040_g_SmallMonsterId_2[iniLevel]) --С��ID
	LuaFnSetCopySceneData_Param(sceneId,10, x402040_g_SmallMonsterId_3[iniLevel]) --С��ID

	LuaFnSetCopySceneData_Param(sceneId,11, x402040_g_MiddleMonsterId[iniLevel])--��ӢID
	LuaFnSetCopySceneData_Param(sceneId,12, x402040_g_BossMonsterId[iniLevel]) 	--BossID
	
	-- ʹ�õ�11λ����¼����ʵ�ʵĵȼ�
	LuaFnSetCopySceneData_Param(sceneId,13, mylevel)
	LuaFnSetCopySceneData_Param(sceneId,21, iniLevel-1)
	
	--���ó����еĸ���Npc������
	LuaFnSetSceneLoad_Area( sceneId, "cuju_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "cuju_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --��ʼ����ɺ���ô�����������
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D�ch chuy�n th�nh c�ng !");
		else
			AddText(sceneId,"S� l��ng b�n sao v��t qu� gi�i h�n, vui l�ng th� l�i sau !");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--�����¼�
--**********************************
function x402040_OnCopySceneReady( sceneId, destsceneId )

	--���븱���Ĺ���
	-- 1���������ļ�û����ӣ��ʹ����������Լ����븱��
	-- 2, �������ж��飬������Ҳ��Ƕӳ����ʹ����Լ����븱��
	-- 3���������ж��飬�����������Ƕӳ����ʹ����Լ��͸�������һ���ȥ

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --���ø�����ڳ�����
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- �����޷�ִ���߼���״̬
		return
	end

	-- �������ǲ����ж���
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- û�ж���
		NewWorld( sceneId, leaderObjId, destsceneId, x402040_g_Fuben_X, x402040_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x402040_g_Fuben_X, x402040_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x402040_g_Fuben_X, x402040_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x402040_OnPlayerEnter( sceneId, selfId )
	
	-- 2,��¼ʱ��
	local nPreTime = GetMissionData(sceneId,selfId, MD_CUJU_PRE_TIME)
	local nCurTime = LuaFnGetCurrentTime()

	SetMissionData(sceneId, selfId, MD_CUJU_PRE_TIME, nCurTime)
	
	-- 3,���������¼�
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%50", -1, "0", sceneId, x402040_g_Fuben_X, x402040_g_Fuben_Z )
	
end

--**********************************
--������ڸ����������¼�
--**********************************
function x402040_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--����
--**********************************
function x402040_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- �سǣ�ֻ�г������񸱱����Ե��ô˽ӿ�
--**********************************
function x402040_BackToCity( sceneId, selfId )
	
end

--**********************************
--����
--**********************************
function x402040_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--����Ƿ�����ύ
--**********************************
function x402040_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x402040_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--ɱ����������
--**********************************
function x402040_OnKillObject( sceneId, selfId, objdataId, objId )
	
end

--**********************************
--���������¼�
--**********************************
function x402040_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x402040_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--����������ʱ���¼�
--**********************************
function x402040_OnCopySceneTimer( sceneId, nowTime )
--	local once = LuaFnGetCopySceneData_Param( sceneId, x402040_paramonce )
--
--	if (once == 0) then
--	
--		LuaFnSetCopySceneData_Param(sceneId, x402040_paramonce, 1)
--		--��������
--		local mylevel = LuaFnGetCopySceneData_Param( sceneId, 13 )
--	
--		local PlayerMaxLevel = GetHumanMaxLevelLimit()
--		local iniLevel;
--		if mylevel < 10 then
--			iniLevel = 10;
--		elseif mylevel < PlayerMaxLevel then
--			iniLevel = floor(mylevel/10) * 10;
--		else
--			iniLevel = PlayerMaxLevel;
--		end
--	
--		local iNianShouIdx = iniLevel / 10
--	
--		for i=1, 20 do
--			local objId = LuaFnCreateMonster( sceneId, x402040_g_NianShouID[iNianShouIdx], x402040_g_NianShouPoint[i].x, x402040_g_NianShouPoint[i].z, 1, 272, -1)
--			SetLevel( sceneId, objId, mylevel )
--			LuaFnSendSpecificImpactToUnit(sceneId, objId, objId, objId, 10472, 0); -- zchw
--		end  
--	end

		local nKillNum = LuaFnGetCopySceneData_Param(sceneId, 20)
		
		--PrintNum(nKillNum)

	-- ��ʱ����ҪҪ����ʱ��������ˢ��
	local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 15)
	local nCurTime = LuaFnGetCurrentTime()
	local nStep = LuaFnGetCopySceneData_Param(sceneId, 16)

	local SmallMonsterId_1	= LuaFnGetCopySceneData_Param(sceneId, 8)
	local SmallMonsterId_2	= LuaFnGetCopySceneData_Param(sceneId, 9)
	local SmallMonsterId_3	= LuaFnGetCopySceneData_Param(sceneId,10)
	local MiddleMonsterId	= LuaFnGetCopySceneData_Param(sceneId,11)
	local BossMonsterId		= LuaFnGetCopySceneData_Param(sceneId,12)
	
	local nMonsterLevel = LuaFnGetCopySceneData_Param(sceneId,13)
	
	local nPreBossSpeakTime = LuaFnGetCopySceneData_Param(sceneId,20)
	
	local arrayex = 0;           --��չ100�����ϣ�����ƫ����
	local levelex = 0;           --��չ100�����ϣ��������ǵȼ�ƫ����
	if(nMonsterLevel >= 110) then
	   arrayex = 4
	   levelex = 10
	end

	-- ��һ��ִ�м�ʱ��	
	if nPreTime == 0 then
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		x402040_TipAllHuman( sceneId, "Ho�nh t�o m�u �an uy�n s� b�t �u sau 60 gi�y" )
		return
	end
	
	-- ÿ���10����ʾ��ң�����ϱ�������AA�����ʽ��ʼ��
	if nStep==0 and nCurTime-nPreTime>=10  then
		x402040_TipAllHuman( sceneId, "Ho�nh t�o m�u �an uy�n s� b�t �u sau 50 gi�y" )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		return
	end
	if nStep==1 and nCurTime-nPreTime>=10  then
		x402040_TipAllHuman( sceneId, "Ho�nh t�o m�u �an uy�n s� b�t �u sau 40 gi�y" )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		return
	end
	if nStep==2 and nCurTime-nPreTime>=10  then
		x402040_TipAllHuman( sceneId, "Ho�nh t�o m�u �an uy�n s� b�t �u sau 30 gi�y" )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		return
	end
	if nStep==3 and nCurTime-nPreTime>=10  then
		x402040_TipAllHuman( sceneId, "Ho�nh t�o m�u �an uy�n s� b�t �u sau 20 gi�y" )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		return
	end
	if nStep==4 and nCurTime-nPreTime>=10  then
		x402040_TipAllHuman( sceneId, "Ho�nh t�o m�u �an uy�n s� b�t �u sau 10 gi�y" )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime+5)
		return
	end
	
	local nMonsterNum = GetMonsterCount(sceneId)
	local bHaveMonster = 0
	for ii=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		if GetName(sceneId, nMonsterId)== "Song Song Y�n" or 
			 GetName(sceneId, nMonsterId)== "Uy�n ��ng Qu�i" or 
			 GetName(sceneId, nMonsterId)== "V�n Ngo�i Phi�u" 		 then
			if nowTime - GetObjCreateTime(sceneId, nMonsterId) > 60000  then
				-- �������ֵĵ�ǰѪ���ǲ��Ǵ������Ѫ����1%��
				if GetHp(sceneId,nMonsterId) > 0  then
					-- ɾ������֣������λ�ô���һ���µĹ�
					local PosX, PosZ = LuaFnGetWorldPos(sceneId, nMonsterId);
					PosX = floor(PosX);
					PosZ = floor(PosZ);
					
					LuaFnDeleteMonster(sceneId, nMonsterId)
					local nMiddleMonster = LuaFnCreateMonster(sceneId, MiddleMonsterId, PosX, PosZ, 3, 0, 402045);
					
					SetLevel(sceneId, nMiddleMonster, nMonsterLevel)
					SetNPCAIType(sceneId, nMiddleMonster, 0)
					SetCharacterName(sceneId, nMiddleMonster, "M�n Thi�n Tinh")
				end
			end	
		end
		
		if GetName(sceneId, nMonsterId)== "Song Song Y�n Y�n" or 
			 GetName(sceneId, nMonsterId)== "Uy�n ��ng Qu�i Qu�i" or 
			 GetName(sceneId, nMonsterId)== "V�n Ngo�i Phi�u Phi�u" 		 then
			if nowTime - GetObjCreateTime(sceneId, nMonsterId) > 60000  then
				-- �������ֵĵ�ǰѪ���ǲ��Ǵ������Ѫ����1%��
				if GetHp(sceneId,nMonsterId) > 0  then
					-- ɾ������֣������λ�ô���һ���µĹ�
					local PosX, PosZ = LuaFnGetWorldPos(sceneId, nMonsterId);
					PosX = floor(PosX);
					PosZ = floor(PosZ);
					
					LuaFnDeleteMonster(sceneId, nMonsterId)
					local nIniLevel = LuaFnGetCopySceneData_Param(sceneId, 21)
					local nBigBallId =x402040_g_BigFootBall[4 + arrayex]+nIniLevel-levelex
					local nMiddleMonster = LuaFnCreateMonster(sceneId, nBigBallId, PosX, PosZ, 3, 0, 402045);
					
					SetLevel(sceneId, nMiddleMonster, nMonsterLevel)
					SetNPCAIType(sceneId, nMiddleMonster, 0)
					SetCharacterName(sceneId, nMiddleMonster, "M�n Thi�n Tinh")
				end
			end	
		end
	end

	if nStep>=5 and nStep<154 and nCurTime-nPreBossSpeakTime>=60 then
		LuaFnSetCopySceneData_Param(sceneId,20,nCurTime)
		
		local nRand = random(6)
		local str = ""
		if nRand == 1  then
			str = "#{_BOSS4}#cff99cc: Ta l� cao th� t�c c�u, c�c ng߶i ch� thu�c h�ng c�i b�p m� d�m so t�i v�i ta #3"
		elseif nRand == 2  then
			str = "#{_BOSS4}#cff99cc: chuy�n qua ��y, �� b�n kia, c� l�n c� l�n !"
		elseif nRand == 3  then
			str = "#{_BOSS4}#cff99cc: M�n thi�n tinh l�p c�ng, song song y�n y�n, uy�n ߽ng qu�i, v�n ngo�i phi�u nh�t kh�c linh h�n ph� th� !"
		elseif nRand == 4  then
			str = "#{_BOSS4}#cff99cc: Ta T�n M� M� s� cho c�c ng߽i bi�t th� n�o l� l� � !"
		elseif nRand == 5  then
			str = "#{_BOSS4}#cff99cc: A, ta kh�ng xong r�i, song song y�n y�n c�c ng߽i ch�y tr߾c �i !"
		else
			str = "#{_BOSS4}#cff99cc: C�c ng߶i �� t�c c�u ki�u g� v�y? kh�ng bi�t ch�o h�i �?"
		end
		
		-- �ڳ�����Χ�ں���
		CallScriptFunction((200060), "Duibai",sceneId, "", "M�u �an Uy�n", str)
	end
	
	-- ��ˢ��20��50��120������֮ǰ����Ҫ��һЩС���
	if nStep==24 or nStep==54 or nStep==124  then
		local nStep_1 = LuaFnGetCopySceneData_Param(sceneId, 25)
		local nStep_1_T = LuaFnGetCopySceneData_Param(sceneId, 26)
		if nStep_1 == 0  then
			LuaFnSetCopySceneData_Param(sceneId, 25, nStep_1+1)
			LuaFnSetCopySceneData_Param(sceneId, 26, nCurTime)
			
			local str = ""
			if nStep==24 then
				str = "#{_BOSS4}#cff99cc: ��ng v�i m�ng ! Ta s� s�m cho c�c ng߽i bi�t s�c m�nh c�a ta !"
			elseif nStep==24 then
				str = "#{_BOSS4}#cff99cc: H�y xem ai s� l� ng߶i c߶i cu�i c�ng !"
			else
				str = "#{_BOSS4}#cff99cc: C�c h� �� ho�n th�nh, ta mu�n ��nh nhau v�i t� �i kh�c th�i !"
			end
			CallScriptFunction((200060), "Duibai",sceneId, "", "M�u �an Uy�n", str)
			x402040_TipAllHuman( sceneId, "T�n M� M� y�u c�u �i ng߶i, tr� ch�i s� ti�p t�c sau 30 gi�y" )
			
		elseif nStep_1 == 1  then
			if nCurTime-nStep_1_T >= 10 then
				x402040_TipAllHuman( sceneId, "T�n M� M� y�u c�u �i ng߶i, tr� ch�i s� ti�p t�c sau 20 gi�y" )
				
				LuaFnSetCopySceneData_Param(sceneId, 25, nStep_1+1)
				LuaFnSetCopySceneData_Param(sceneId, 26, nCurTime)
			end
			
		elseif nStep_1 == 2  then
			if nCurTime-nStep_1_T >= 10 then
				x402040_TipAllHuman( sceneId, "T�n M� M� y�u c�u �i ng߶i, tr� ch�i s� ti�p t�c sau 10 gi�y" )
				
				LuaFnSetCopySceneData_Param(sceneId, 25, nStep_1+1)
				LuaFnSetCopySceneData_Param(sceneId, 26, nCurTime)
			end
			
		elseif nStep_1 == 3  then
			if nCurTime-nStep_1_T >= 10 then
				x402040_TipAllHuman( sceneId, "Cu�c �u b�t �u" )
				
				LuaFnSetCopySceneData_Param(sceneId, 25, nStep_1+1)
				LuaFnSetCopySceneData_Param(sceneId, 26, nCurTime)
				
				-- ˢһ��������
				local nIniLevel = LuaFnGetCopySceneData_Param(sceneId, 21)
				
				local nBigFootballId = 0
				local ran = random(3)
				local szName = ""
				if ran == 1  then
					nBigFootballId  = x402040_g_BigFootBall[1 + arrayex]+nIniLevel-levelex
					szName = "Song Song Y�n Y�n"
				elseif ran == 2  then
					nBigFootballId  = x402040_g_BigFootBall[2 + arrayex]+nIniLevel-levelex
					szName = "Uy�n ��ng Qu�i Qu�i"
				else
					nBigFootballId  = x402040_g_BigFootBall[3 + arrayex]+nIniLevel-levelex
					szName = "V�n Ngo�i Phi�u Phi�u"
				end
				
				local Point = x402040_g_MonsterPoint[nStep-4]
				local nNpc1 = LuaFnCreateMonster(sceneId, nBigFootballId, 
																					Point.x+random(2), 
																					Point.z, 
																					3, 0, 402045)
				SetLevel(sceneId, nNpc1, nMonsterLevel)
				SetCharacterName(sceneId, nNpc1, szName)
			end
			
		elseif nStep_1 == 4  then
			LuaFnSetCopySceneData_Param(sceneId, 25, 0)
			LuaFnSetCopySceneData_Param(sceneId, 26, nCurTime)
			
			LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
			LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		end
		
	end

	-- �ְ��ռ򵥵�ÿ10��ˢһ�ι�
	if 	(nStep>=5   and nStep<24  and nCurTime-nPreTime >= 15) or
			(nStep>=25  and nStep<54  and nCurTime-nPreTime >= 12) or
			(nStep>=55  and nStep<124 and nCurTime-nPreTime >= 10) or
			(nStep>=125 and nStep<154	and nCurTime-nPreTime >= 5)   then
		
		-- �������ɵ�
		if nStep == 5  then
			x402040_TipAllHuman( sceneId, "T�c c�u ch�nh th�c b�t �u" )
		end
		
		local Point = x402040_g_MonsterPoint[nStep-4]
	
		-- ����ID
		local nMonsterId = 0 
		local ran = random(3)
		if ran == 1  then
			nMonsterId = SmallMonsterId_1
		elseif ran == 2  then
			nMonsterId = SmallMonsterId_2
		else
			nMonsterId = SmallMonsterId_3
		end
		
		local nNpc1 = LuaFnCreateMonster(sceneId, nMonsterId, Point.x+random(2), Point.z, 3, 0, 402045)
		SetLevel(sceneId, nNpc1, nMonsterLevel)
		--SetNPCAIType(sceneId, nNpc1, 0)
		
		if ran == 1  then
			SetCharacterName(sceneId, nNpc1, "Song Song Y�n")
		elseif ran == 2  then
			SetCharacterName(sceneId, nNpc1, "Uy�n ��ng Qu�i")
		else
			SetCharacterName(sceneId, nNpc1, "V�n Ngo�i Phi�u")
		end
		
		nStep = nStep+1
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep)
	end
		
	if nStep==154 then
		-- ����ǲ������е�С�ֶ����⣬������⣬10���̶��ص�ˢBOSS
		local nMonsterNum = GetMonsterCount(sceneId)
		local bHaveMonster = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)== "Song Song Y�n" then
				bHaveMonster = 1
				break
			end
			if GetName(sceneId, nMonsterId)== "Uy�n ��ng Qu�i" then
				bHaveMonster = 1
				break
			end
			if GetName(sceneId, nMonsterId)== "V�n Ngo�i Phi�u" then
				bHaveMonster = 1
				break
			end
			if GetName(sceneId, nMonsterId)== "M�n Thi�n Tinh" then
				bHaveMonster = 1
				break
			end
		end

		if bHaveMonster == 0   then
			nStep = nStep+1
			LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
			LuaFnSetCopySceneData_Param(sceneId, 16, nStep)
		end
	end
	
	if 	nStep==155 then
		x402040_TipAllHuman( sceneId, "T�n M� M� s� xu�t hi�n sau 10 gi�y" )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		return
		
	end
	
	if 	nStep==156 and nCurTime-nPreTime>=10  then
		nStep = nStep+1
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep)
		local nNpc1 = LuaFnCreateMonster(sceneId, BossMonsterId, x402040_g_BossPoint.x, x402040_g_BossPoint.z, 19, 216, 402040)
		SetLevel(sceneId, nNpc1, nMonsterLevel)
		SetNPCAIType(sceneId, nNpc1, 0)
		SetCharacterName(sceneId, nNpc1, "T�n M� M�")
		SetCharacterTitle(sceneId, nNpc1, "T�u C�c Th�p Tam Mu�i")
		
		x402040_TipAllHuman( sceneId, "T�n M� M� xu�t hi�n" )
	end
	
end

--**********************************
--����ķ��ǲ���������
--**********************************
function x402040_OnDie(sceneId, objId, killerId)
	--ɱ��������ǳ������ȡ�����˵�ID....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
	end
		--������˶����ȡ�ӳ���ID....
	local nLeaderId = GetTeamLeader(sceneId, playerID)
	if nLeaderId < 1   then
		nLeaderId = playerID
	end
	
	local str = ""
	str = format("#cff99ccK�t th�c cu�c thi t�c c�u ho�nh t�o m�u �an uy�n #{_INFOUSR%s}#cff99cc d�n �u �i ng� thi th� c�ng nh�m #{_BOSS4}#cff99cc v� �� chi�n th�ng v�i t� s� 12-0. Qu� th�t l�i h�i !", GetName(sceneId,nLeaderId))
	BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)
	
end

--**********************************
--����ķ��ǲ���������
--**********************************
function x402040_CheckAllXinfaLevel(sceneId, selfId, level)
	local nMenpai = GetMenPai(sceneId, selfId)
	if nMenpai<0 or nMenpai>8   then
		return 0
	end
	
	for i=1, 6 do
		local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, nMenpai*6 + i)
		if nXinfaLevel < level    then
			return 0
		end
	end
	return 1
end

--**********************************
--��ʾ���и��������
--**********************************
function x402040_TipAllHuman( sceneId, Str )
	-- ��ó�����ͷ��������
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- û���˵ĳ�����ʲô������
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end

