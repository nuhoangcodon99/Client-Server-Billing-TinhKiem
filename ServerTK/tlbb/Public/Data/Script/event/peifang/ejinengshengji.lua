--�������ܵĽű�

--�ű���
x713500_g_ScriptId = 713500

x713500_g_AbilityName = {}
x713500_g_AbilityDescription = {}
x713500_g_StudyCost = {}

x713500_g_AbilityName[1] = " N�u n߾ng "
x713500_g_AbilityName[2] = "��ng y"
x713500_g_AbilityName[3] = "Gia c�ng"
x713500_g_AbilityName[8] = " Khai kho�ng "
x713500_g_AbilityName[9] = " H�i d��c "
x713500_g_AbilityName[10] = " C�u c� "
x713500_g_AbilityName[11] = " Tr�ng tr�t "
x713500_g_AbilityDescription[1] = "    Nh�ng th� l�m ra �u c� th� �n ���c"
x713500_g_AbilityDescription[2] = "��ng y kh�ng th� h�c trong 1 s�m 1 chi�u"
x713500_g_AbilityDescription[3] = "K� n�ng c�n c� khi ch� t�o trang b�, h�p th�nh B�o Th�ch"
x713500_g_AbilityDescription[8] = "Khai kho�ng tuy v�t v�, nh�ng l� m�t ngh� h�i ra ti�n"
x713500_g_AbilityDescription[9] = "Ta c� th� truy�n cho ng߶i b�n l�nh ph�n bi�t th�o d��c, kh�ng c�n m�t c�ng h�c ��ng Y, v�n c� th� h�i ra ti�n"
x713500_g_AbilityDescription[10] = "Ng߶i kh�ng ki�n nh�n kh�ng th� b�t ���c c� l�n"
x713500_g_AbilityDescription[11] = "L�m 1 ch� n�ng trang vui v�"


--����ʱ������ʹ��ͬ���Ļ��Ѷ��壬��ʽ������ʱ�������Ҫ���Բ��ö�ά���飬���磺
--x713500_g_StudyCost[1][1] = 200
x713500_g_StudyCost[1] = 0
x713500_g_StudyCost[2] = 0
x713500_g_StudyCost[3] = 0
x713500_g_StudyCost[8] = 0
x713500_g_StudyCost[9] = 0
x713500_g_StudyCost[10] = 0
x713500_g_StudyCost[11] = 100
--**********************************
--������ں���
--**********************************
function x713500_OnDefaultEvent( sceneId, selfId, targetId, AbilityID )
	--��Ҽ��ܵĵȼ�
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, AbilityID)
	--��Ҽӹ����ܵ�������
	ExpPoint = GetAbilityExp(sceneId, selfId, AbilityID)

	BeginEvent(sceneId)
		AddText(sceneId, "T�n k� n�ng: " .. x713500_g_AbilityName[AbilityID])
		AddText(sceneId, x713500_g_AbilityDescription[AbilityID])

		if AbilityLevel < 1 then
			AddText(sceneId, "H�c k� n�ng n�y c�n m�t hai l��ng b�c")
		else
			AddText(sceneId, "C�p k� n�ng hi�n c�: " .. AbilityLevel .. " c�p")
			AddText(sceneId, "Th�ng c�p k� n�ng n�y c�n m�t hai l��ng b�c")
		end
	EndEvent(sceneId)

	--�����Ȳ���
	if ExpPoint < (AbilityLevel + 1) * 10 then
		BeginEvent(sceneId)
			strText = format("е th�nh th�o c�a c�c h� kh�ng ��")
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif GetMoney(sceneId, selfId) < x713500_g_StudyCost[AbilityID] then
		BeginEvent(sceneId)
			strText = format("Ti�n c�a c�c h� kh�ng ��")
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	else
		DispatchMissionInfo( sceneId, selfId, targetId, x713500_g_ScriptId, AbilityID )
	end

   	return 1
end

--**********************************
--�о��¼�   2006-01-06 ����
--**********************************
function x713500_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713500_g_ScriptId,"T�i h� mu�n h�c k� n�ng",12,-1);
end

--**********************************
--����������
--**********************************
function x713500_CheckAccept( sceneId, selfId )
	return 1
end

--**********************************
--����
--**********************************
function x713500_OnAccept( sceneId, selfId, AbilityID )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, AbilityID )
	SetHumanAbilityLevel( sceneId, selfId, AbilityID, AbilityLevel + 1 )
end
