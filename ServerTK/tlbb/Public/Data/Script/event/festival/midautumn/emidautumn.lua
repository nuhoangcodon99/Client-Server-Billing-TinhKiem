-- ��������

--************************************************************************
--MisDescBegin

-- �ű���
x050009_g_ScriptId = 050009

-- �����
x050009_g_MissionId = 395					-- 395 - 399

--��һ�������ID
x050009_g_MissionIdNext = 396

-- ����Ŀ��npc
x050009_g_Name = "�����A"

--�������
x050009_g_MissionKind = 3

--����ȼ�
x050009_g_MissionLevel = 10000

-- �����ı�����
x050009_g_MissionName = "�����΄�"
x050009_g_MissionInfo = "    �� �������ԣ�����һ��һƷ�õĸ�����������ѹ�" ..
				"֮�H�����e�M���Ҵ��Σ��˿��ѱ����ďV��܊�Ĵ�܊���i��" ..
				"�ػͣ�������������"								-- ��������

x050009_g_MissionTarget = "    �F����ȥ�ػͣ�252��144�����ďV��܊���Y�f�����֓�һƷ�ø��ֵ��M����"	-- ����Ŀ��

x050009_g_ContinueInfo = "    "				-- δ��������npc�Ի�
x050009_g_MissionComplete = ""				-- �������npc˵�Ļ�

-- ������

--MisDescEnd
--************************************************************************

x050009_g_NumText_Mission = 1				-- ��������
x050009_g_NumText_Intro = 2					-- �������
x050009_g_NumText_ViewMoon = 3				-- ȥ����������

--**********************************
--�ж��Ƿ�����ʱ��
--**********************************
function x050009_IsMidAutumnPeriod( sceneId, selfId )
	--begin modified by zhangguoxin 090207
	--local CurTime = GetHourTime()						--��ǰʱ��
	--CurTime = CurTime-36500 --�������ÿ�궼Ҫά��
	local CurTime = GetQuarterTime();
	
	--local today = floor( CurTime/100 )						--��ǰʱ��(��)
	local today = mod(floor( CurTime/100 ), 1000)		--��ǰʱ��(��)
	local CurQuarterTime = mod( CurTime, 100 )			--��ǰʱ��(��)
	--end modified by zhangguoxin 090207

	local firstDay = 257								-- 2008��9 �� 14 ��,��������
	local lastDay = 283									-- 2008��10 �� 9 ��,��������

	if today == firstDay and CurQuarterTime < 48 then
		return 0
	end

	if today == lastDay and CurQuarterTime > 47 then
		return 0
	end

	if today < firstDay or today > lastDay then
		return 0
	end

	return 1
end

--**********************************
--�ж�������Ʒ�Ƿ���Ч
--**********************************
function x050009_IsItemValid( sceneId, itemSN )--����Ʒ�Ľű��������±����������±�����ɳ���±��ȵȵ��õ�����Ѿ�û��ʹ��
	local today = GetDayTime()							--��ǰʱ��(��)
	local lastDay = 6303								-- 10 �� 31 ��

	-- 10 �� 31 ���Ժ�ʧЧ
	if today > lastDay then
		return 0
	end

	return 1
end

--**********************************
--�о��¼�
--**********************************
function x050009_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050009_g_Name then		--�жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
		return
	end

	if x050009_IsMidAutumnPeriod( sceneId, selfId ) == 0 then
		return
	end

	if IsHaveMission( sceneId, selfId, x050009_g_MissionId ) <= 0 then
		AddNumText( sceneId, x050009_g_ScriptId, "�����΄�", -1, x050009_g_NumText_Mission )
	else
		AddNumText( sceneId, x050009_g_ScriptId, "ȥ�������p��", -1, x050009_g_NumText_ViewMoon )
	end

	AddNumText( sceneId, x050009_g_ScriptId, "�΄ս�B", -1, x050009_g_NumText_Intro )
end

--**********************************
--������ں���
--**********************************
function x050009_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	if GetNumText() == x050009_g_NumText_Mission then
		x050009_AssignMission( sceneId, selfId, targetId )
	elseif GetNumText() == x050009_g_NumText_Intro then
		x050009_MissionIntro( sceneId, selfId, targetId )
	elseif GetNumText() == x050009_g_NumText_ViewMoon then
		x050009_ViewMoon( sceneId, selfId, targetId )
	else
		return
	end
end

--**********************************
--��������
--**********************************
function x050009_AssignMission( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x050009_g_MissionName )
		AddText( sceneId, x050009_g_MissionInfo )
	EndEvent( )
	DispatchMissionInfo( sceneId, selfId, targetId, x050009_g_ScriptId, x050009_g_MissionId )
end

--**********************************
--�������
--**********************************
function x050009_MissionIntro( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "    ���K�ݣ�193��148�������A�����΄ա����ҵ�" ..
						"�ػͣ�252��144�����ďV��܊�M�븱�����Y��������" ..
						"BOSS�@������e�֣�����@��һƷ�����ƣ��ɽ��o��" ..
						"�ďV�Ў��ʫ@����ϡ��Ʒ������ȥ������������Ƶ�" ..
						"������Y�÷e�֓Qȡʳ�ģ����|�I�ۡ����|���ϡ��Ϻ����ǣ���" )
		AddText( sceneId, "���΄հl���˿ɂ��͵������p�£��ҵ�ҹ������280" ..
						"��184�����K�Y������ʳ�ēQȡһö����S�C��ͬ��" ..
						"��ζ�������W��������W�����ɳ�W������A" ..
						"�W��������Ѫ���ͬ�r�a�M��ͬ�r���Ӳ�ͬ��BUFF��" ..
						"����б��r�ڞ��ֹ��10��31�գ���ͬ�rÿ�Qһö���" )
		AddText( sceneId, "�õ������Ľ�򞪄���ҹ��������ُ�I������Y" ..
						"��������Y����Ч�ڞ��ֹ��10��31�ա�" )
	EndEvent( )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ȥ����������
--**********************************
function x050009_ViewMoon( sceneId, selfId, targetId )
	local scene, x, z = 121, 272, 181
	NewWorld( sceneId, selfId, scene, x, z )
end

--**********************************
--����������
--**********************************
function x050009_CheckAccept( sceneId, selfId )
	if x050009_IsMidAutumnPeriod( sceneId, selfId ) > 0 then
		return 1
	end

	return 0
end

--**********************************
--����
--**********************************
function x050009_OnAccept( sceneId, selfId, targetId )
	--����Ƿ������Ѿ��ﵽ20��,�������,���ܽ�
	if GetMissionCount( sceneId, selfId ) == 20 then
		x050009_NotifyFailTips( sceneId, selfId, "�o�����ܸ����΄�" )
		return
	end

	if IsHaveMission( sceneId, selfId, x050009_g_MissionId ) <= 0 then
		AddMission( sceneId, selfId, x050009_g_MissionId, x050009_g_ScriptId, 0, 0, 0 )		-- kill��area��item
		if IsHaveMission( sceneId, selfId, x050009_g_MissionId ) <= 0 then
			return
		end
	end

	x050009_NotifyFailBox( sceneId, selfId, targetId, x050009_g_MissionTarget )
end

--**********************************
--��������
--**********************************
function x050009_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050009_g_MissionId ) == 0 then
		return
	end

	if IsHaveMission( sceneId, selfId, x050009_g_MissionIdNext ) > 0 then
		x050009_NotifyFailTips( sceneId, selfId, "Ո�ȷŗ�����һƷ���΄գ�" )
		return
	end

	DelMission( sceneId, selfId, x050009_g_MissionId )
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x050009_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--��Ŀ��Ϣ��ʾ
--**********************************
function x050009_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
