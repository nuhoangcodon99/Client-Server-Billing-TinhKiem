--���������
--MisDescBegin
--�ű���
x250037_g_ScriptId = 250037

--�����
x250037_g_MissionId = 1021

--����Ŀ��npc
x250037_g_TargetNpcName	="H� Lai L�c "

--�������
x250037_g_MissionKind = 3

--����ȼ�
x250037_g_MissionLevel = 1

--�Ƿ��Ǿ�Ӣ����
x250037_g_IfMissionElite = 0

--������ʱ
x250037_g_MissionLimitTime = 60 * 60 * 1000; --����

--���漸���Ƕ�̬��ʾ�����ݣ������������б��ж�̬��ʾ�������**********************

--�����Ƕ�̬**************************************************************

--�����ı�����
x250037_g_MissionName="B�i thi�n �a";
x250037_g_MissionInfo="M�i �n L�c D߽ng[177,94] H� Lai L�c s�p x�p b�i thi�n �a.";
x250037_g_MissionTarget="    � L�c D߽ng t�m H� Lai L�c #{_INFOAIM177,94,0, H� Lai L�c} s�p x�p b�i thi�n �a.";		--����Ŀ��
x250037_g_ContinueInfo1="C�c ng߽i t�i mu�n qu�, gi� l�nh �� qua, ta kh�ng c�n c�ch n�o kh�c";
x250037_g_ContinueInfo2="� ��y c�n l�p k� ho�ch, c�m �n";
x250037_g_MissionComplete="H�y � ch�ng ta b�t �u";

--������
x250037_g_MoneyBonus = 0

--MisDescEnd

x250037_g_eventId_begin = 0;	--��������������¼�
x250037_g_eventId_start = 1;	--�����ʼ����ص��¼�
x250037_g_eventId_close = 2;	--����Ȼ��ٿ�ʼ���¼�


--**********************************
--������ں���
--**********************************
function x250037_OnDefaultEvent(sceneId, selfId, targetId)	--����������ִ�д˽ű�
	local selectEventId	= GetNumText();
	
	--��������������¼�
	if x250037_g_eventId_begin == selectEventId then
		x250037_OnBegin(sceneId, selfId, targetId);
	--�����ʼ����ص��¼�
	elseif x250037_g_eventId_start == selectEventId then
		x250037_OnStart(sceneId, selfId, targetId);
	--����Ȼ��ٿ�ʼ���¼�
	elseif x250037_g_eventId_close == selectEventId then
		BeginUICommand(sceneId);
		EndUICommand(sceneId);
		DispatchUICommand(sceneId, selfId, 1000);
	end

end

--**********************************
--�о��¼�
--**********************************
function x250037_OnEnumerate(sceneId, selfId, targetId)
    --����ѽӴ�����
    if IsHaveMission(sceneId,selfId,x250037_g_MissionId) > 0 then
		AddNumText(sceneId, x250037_g_ScriptId, x250037_g_MissionName, 3, x250037_g_eventId_begin);
    end
end

--**********************************
--����������
--**********************************
function x250037_CheckAccept(sceneId, selfId)
	return 1;
end

--**********************************
--����
--**********************************
function x250037_OnAccept(sceneId, selfId, marryLevel)

	--������������б�
	AddMission(sceneId, selfId, x250037_g_MissionId, x250037_g_ScriptId, 0, 0, 0);
	misIndex = GetMissionIndexByID(sceneId, selfId, x250037_g_MissionId);			--�õ���������к�
	if misIndex and misIndex >= 0 then
		StartMissionTimer(sceneId,selfId, x250037_g_MissionId);
		SetMissionByIndex(sceneId,selfId,misIndex, 0, 1);						--�������кŰ���������ĵ�0λ��0 (����������)
		SetMissionByIndex(sceneId,selfId,misIndex, 7, x250037_g_MissionLimitTime);
		SetMissionByIndex(sceneId,selfId,misIndex, 2, marryLevel);
		
		Msg2Player(sceneId, selfId,"#YNh�n nhi�m v�:"..x250037_g_MissionName.."",MSG2PLAYER_PARA);	--���촰����ʾ
	end
end

--**********************************
--����
--**********************************
function x250037_OnAbandon(sceneId, selfId)
	--ɾ����������б��ж�Ӧ������
 	local checkMission = IsHaveMission(sceneId, selfId, x250037_g_MissionId);
	if checkMission and checkMission == 1 then
		DelMission(sceneId, selfId, x250037_g_MissionId);
	end
end

--**********************************
--����
--**********************************
function x250037_OnContinue(sceneId, selfId, targetId)
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x250037_CheckSubmit(sceneId, selfId)
	return 0;
end

--**********************************
--�ύ
--**********************************
function x250037_OnSubmit(sceneId, selfId, targetId,selectRadioId)
end

--**********************************
--ɱ����������
--**********************************
function x250037_OnKillObject(sceneId, selfId, objdataId ,objId)
end

--**********************************
--���������¼�
--**********************************
function x250037_OnEnterArea(sceneId, selfId, zoneId)
end

--**********************************
--���߸ı�
--**********************************
function x250037_OnItemChanged(sceneId, selfId, itemdataId)
end

--**********************************
--��ʱ�¼�
--**********************************
function x250037_OnTimer(sceneId,selfId)
	local misIndex = GetMissionIndexByID(sceneId,selfId,x250037_g_MissionId);
	if misIndex and misIndex >= 0 then
		local saveTime = GetMissionParam(sceneId, selfId, misIndex, 7);
		if saveTime and saveTime > 0 then
			saveTime = saveTime - 1000;
			if saveTime <= 0 then
				StopMissionTimer(sceneId, selfId, x250037_g_MissionId);
				SetMissionByIndex(sceneId, selfId, misIndex, 0, 2);
				saveTime = 0;
			end
			SetMissionByIndex(sceneId, selfId, misIndex, 7, saveTime);
		end
	end
end

--**********************************
--��������������¼�
--**********************************
function x250037_OnBegin(sceneId, selfId, targetId)
	local misIndex = GetMissionIndexByID(sceneId,selfId,x250037_g_MissionId);
	if misIndex and misIndex >= 0 then
		local stateCode = GetMissionParam(sceneId, selfId, misIndex, 0);
		if stateCode and stateCode == 2 then
			x250037_MessageBox(sceneId, selfId, targetId, x250037_g_ContinueInfo1);
			DelMission(sceneId, selfId, x250037_g_MissionId);
		else
			BeginEvent(sceneId);
				AddText(sceneId, "N�o, ��m r߾c ki�u hoa r�n r�ng �� k�t th�c r�i, gi� b�t �u b�i thi�n �a n�o");
				AddNumText(sceneId, x250037_g_ScriptId, "���c, gi� s� b�t �u", 8, x250037_g_eventId_start);
				AddNumText(sceneId, x250037_g_ScriptId, "Ch�ng ta h�y ch� m�t l�t", 8, x250037_g_eventId_close);
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end
	end
end

--**********************************
--�����ʼ����ص��¼�
--**********************************
function x250037_OnStart(sceneId, selfId, targetId)
	local marryLevel = 0;
	local misIndex = GetMissionIndexByID(sceneId,selfId,x250037_g_MissionId);
	if misIndex and misIndex >= 0 then
		local stateCode = GetMissionParam(sceneId, selfId, misIndex, 0);
		if stateCode and stateCode == 2 then
			x250037_MessageBox(sceneId, selfId, targetId, x250037_g_ContinueInfo1);
			DelMission(sceneId, selfId, x250037_g_MissionId);
			return 0;
		else
			marryLevel = GetMissionParam(sceneId, selfId, misIndex, 2);
		end
	else
		x250037_MessageBox(sceneId, selfId, targetId, "Ch�a t�m ���c nhi�m v� b�i thi�n �a");
		return 0;
	end
		
	local szMsg = "N�u mu�n b�i thi�n �a, m�i hai b�n nam n� t�p h�p th�nh 1 �i, l�i t�i t�m ta"
	if LuaFnHasTeam(sceneId, selfId) == 0 then
		x250037_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	
	szMsg = "Nh�m ch� c� th� do hai b�n phu th� l�p th�nh, trong nh�m kh�ng th� c� th�nh vi�n kh�c"
	if LuaFnGetTeamSize(sceneId, selfId) ~= 2 then
		x250037_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "Ch� c� 2 ng߶i t�i b�n c�nh ta m�i c� th� b�t �u b�i thi�n �a"
	local nearNum = GetNearTeamCount(sceneId, selfId);
	if nearNum ~= 2 then
		x250037_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "Kh�ng l� phu th�, kh�ng th� b�t �u b�i thi�n �a"
	local maleId = -1;
	local femaleId = -1;
	for nearIndex = 0, nearNum - 1 do
		local memId = GetNearTeamMember(sceneId, selfId, nearIndex);
		local sexType = LuaFnGetSex(sceneId, memId);
		if sexType == 1 then
			maleId = memId;
		else
			femaleId = memId;
		end
	end
	
	if maleId == -1 or femaleId == -1 then
		x250037_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	
	local isSpouses = LuaFnIsSpouses(sceneId, maleId, femaleId);
	if isSpouses and isSpouses > 0 then
	else
		x250037_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end


	DelMission(sceneId, selfId, x250037_g_MissionId);

	CallScriptFunction(401030, "Create", sceneId, maleId, femaleId, marryLevel);

end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x250037_MessageBox(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId);
		AddText(sceneId, msg);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end
