-- �������鼮
--MisDescBegin
-- �ű���
x600015_g_ScriptId = 600015

--�����
x600015_g_MissionId = 1107

--����Ŀ��npc
x600015_g_Name = "H�i H�a "

--�������
x600015_g_MissionKind = 50

--����ȼ�
x600015_g_MissionLevel = 10000

--�Ƿ��Ǿ�Ӣ����
x600015_g_IfMissionElite = 0

--���漸���Ƕ�̬��ʾ�����ݣ������������б��ж�̬��ʾ�������**********************
x600015_g_IsMissionOkFail = 0							-- ������ɱ��

--�����Ƕ�̬**************************************************************

--���������һλ�����洢����õ��Ľű���

--�����ı�����
x600015_g_MissionName = "Nhi�m v� k� thu�t"
x600015_g_MissionInfo = "    H�m nay ta mu�n c� %s, t�m l�i ��y gi�p ta!"			--��������
x600015_g_MissionTarget = "    �em %i ��a cho %n"							--����Ŀ��
x600015_g_ContinueInfo = "    Nhi�m v� c�a c�c h� v�n ch�a ho�n th�nh �?"					--δ��������npc�Ի�
x600015_g_SubmitInfo = "    S� t�nh ti�n tri�n nh� th� n�o r�i?"							--���δ�ύʱ��npc�Ի�
x600015_g_MissionComplete = "    L�m t�t l�m, r�t t�t r�t t�t. "					--�������npc˵���Ļ�

x600015_g_StrForePart = 5
x600015_g_ItemOffset = 20												-- Suppose to 20, ����ڼ�����Ʒ�е�ƫ����
x600015_g_NPCOffset = 16												-- Suppose to 16, ����ڼ��� NPC ��ƫ����
x600015_g_NPCOffsetEx	= 249 										--����ڼ��� NPC ��ƫ�������� modi:lby20071126
x600015_g_MissionRound = 42

-- ͨ�ó�������ű�
x600015_g_CityMissionScript = 600001
x600015_g_SciTechScript = 600012

--������

--MisDescEnd

x600015_g_Pronoun = {}
x600015_g_Pronoun[0] = "mu�i �y "
x600015_g_Pronoun[1] = "huynh �y "

--**********************************
--������ں���
--**********************************
function x600015_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	if GetName( sceneId, targetId ) ~= x600015_g_Name then		--�жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
		return
	end

	--����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600015_g_MissionId ) > 0 then
		--���������������Ϣ
		local bDone = x600015_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600015_g_SubmitInfo
		else
			strText = x600015_g_ContinueInfo
		end

		--���������������Ϣ
		BeginEvent( sceneId )
			AddText( sceneId, x600015_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600015_g_ScriptId, x600015_g_MissionId, bDone )
	--���������������
	elseif x600015_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600015_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600015_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x600015_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600015_g_Name then		--�жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
		return
	end

   --����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600015_g_MissionId ) > 0 then
		AddNumText( sceneId, x600015_g_ScriptId, x600015_g_MissionName,3,-1 )
	end
end

--**********************************
--����������
--**********************************
function x600015_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600015_g_SciTechScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--������ҵȼ��õ���ӦMissionItem_HashTable.txt�еĵ�Ԫ����
--**********************************
function x600015_GetMissionItemIndex( sceneId, selfId )
	return x600015_g_ItemOffset
end

--**********************************
--������ҵȼ��õ���ӦMissionNPC_HashTable.txt�е�ѡ����Ϣ
--**********************************
function x600015_GetMissionNPCKey( sceneId, selfId )
	local nPlayerLevel = GetLevel( sceneId, selfId )
	local nPos

	if nPlayerLevel < 55 then									-- 40 ~ 54
		nPos = 0
	elseif nPlayerLevel < 70 then							-- 55 ~ 69
		nPos = 1
	elseif nPlayerLevel < 85 then							-- 70 ~ 84
		nPos = 2
	--else																		-- 85 ~ 100
	--	nPos = 3
	--end

	--return nPos + x600015_g_NPCOffset
	
	elseif	nPlayerLevel < 100 then					-- 85 ~ 99 Level
		nPos = 3
	elseif nPlayerLevel < 115 then					-- 100 ~ 114 Level	modi:lby20071126
		nPos = 0
	else 																		-- >=114 Level
		nPos = 1
		
	end
	
	if nPlayerLevel < 100 then
		return nPos + x600015_g_NPCOffset
	else
		return nPos + x600015_g_NPCOffsetEx
	end
	
end

--**********************************
--����
--**********************************
function x600015_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600015_g_Name then		--�жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
		return
	end

	if GetLevel( sceneId, selfId ) < 40 then
		CallScriptFunction( x600015_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Kh�ng �� ��ng c�p" )
		return
	end

	local nitemId, strItemName, _ = GetOneMissionItem( x600015_GetMissionItemIndex( sceneId, selfId ) )
	local pos = LuaFnTryRecieveItem( sceneId, selfId, nitemId, QUALITY_MUST_BE_CHANGE )
	if pos == -1 then
		CallScriptFunction( x600015_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Ch� tr�ng trong t�i x�ch kh�ng ��" )
		return
	end

	--������������б�
	AddMission( sceneId, selfId, x600015_g_MissionId, x600015_g_ScriptId, 0, 0, 0 )	-- kill��area��item
	if IsHaveMission( sceneId, selfId, x600015_g_MissionId ) <= 0 then
		return
	end

	SetMissionEvent( sceneId, selfId, x600015_g_MissionId, 4 ) -- ע�� x600015_OnLockedTarget �¼�

	CallScriptFunction( x600015_g_SciTechScript, "OnAccept", sceneId, selfId, targetId, x600015_g_ScriptId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600015_g_MissionId )
	local nNpcId, strNpcName, strNpcScene, _, nPosX, nPosZ, _, nGender = GetOneMissionNpc( x600015_GetMissionNPCKey( sceneId, selfId ) )

	SetMissionByIndex( sceneId, selfId, misIndex, x600015_g_StrForePart, nitemId )
	SetMissionByIndex( sceneId, selfId, misIndex, x600015_g_StrForePart + 1, nNpcId )

	--��ʾ���ݸ�������Ѿ�����������
	BeginEvent( sceneId )
		local missionInfo
		local rand = random(2)

		if rand == 1 then
			missionInfo = format( "    B� #Y%s#W n�y m�y h�m tr߾c m��n %s %s (%d, %d), c�c h� mang tr� %s gi�p ta",
				strItemName, strNpcScene, strNpcName, nPosX, nPosZ, x600015_g_Pronoun[nGender] )
		else
			missionInfo = format( "    %s %s (%d, %d) �t l�m � ch� b�n th�nh, #Y%s#W, nh� c�c h� gi�p chuy�n �i h� ta.",
				strNpcScene, strNpcName, nPosX, nPosZ, strItemName )
		end

		AddText( sceneId, missionInfo )
		AddText( sceneId, "    C�c h� �� nh�n nhi�m v�: " .. x600015_g_MissionName )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--����
--**********************************
function x600015_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧ������
	CallScriptFunction( x600015_g_SciTechScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--����
--**********************************
function x600015_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600015_g_MissionName )
		AddText( sceneId, x600015_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600015_g_ScriptId, x600015_g_MissionId )
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x600015_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600015_g_SciTechScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--�ύ
--**********************************
function x600015_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600015_g_Name then		--�жϸ�npc�Ƿ��Ƕ�Ӧ�����npc
		return
	end

	if x600015_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600015_g_SciTechScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x600015_OnKillObject( sceneId, selfId, objdataId, objId )	--������˼�������š����objId�������λ�úš�����objId
end

--**********************************
--���������¼�
--**********************************
function x600015_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x600015_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--������һ������
--**********************************
function x600015_OnLockedTarget( sceneId, selfId, objId )
	if IsHaveMission( sceneId, selfId, x600015_g_MissionId ) < 1 then
		return		-- û�и�����
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600015_g_MissionId )		--�õ�������20�������е����к�
	if GetMissionParam( sceneId, selfId, misIndex, x600015_g_IsMissionOkFail ) > 0 then
		return		-- �����������
	end

	local nNpcId
	local strNpcName
	local PosX
	local PosZ

	nNpcId = GetMissionParam( sceneId, selfId, misIndex, x600015_g_StrForePart + 1 )
	_, strNpcName, _, PosX, PosZ = GetNpcInfoByNpcId(sceneId, nNpcId )

	-- ��ʱ���Ƚ�λ��
	if GetName( sceneId, objId ) == strNpcName then
		local nItemId
		nItemId = GetMissionParam( sceneId, selfId, misIndex, x600015_g_StrForePart )

		if DelItem( sceneId, selfId, nItemId, 1 ) == 1 then
			-- ���������Ѿ����
			SetMissionByIndex( sceneId, selfId, misIndex, x600015_g_IsMissionOkFail, 1 )
			-- ��������� x600015_OnLockedTarget �¼��б���������������ٹ��Ĵ����¼�
			ResetMissionEvent( sceneId, selfId, x600015_g_MissionId, 4 )
			TAddText( sceneId, "       Qu� bang ��ng l� r�t gi� ch� t�n, xin chuy�n l�i h�i th�m c�a ta t�i ng�i C�u T�" )
		end
	end
end
