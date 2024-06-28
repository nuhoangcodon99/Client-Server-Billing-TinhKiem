--����Ѳ������
--MisDescBegin
--�ű���
x250036_g_ScriptId = 250036

--�����
x250036_g_MissionId = 1020

--����Ŀ��npc
x250036_g_TargetNpcName	="H� Lai L�c "

--�������
x250036_g_MissionKind = 3

--����ȼ�
x250036_g_MissionLevel = 1

--�Ƿ��Ǿ�Ӣ����
x250036_g_IfMissionElite = 0

--������ʱ
x250036_g_MissionLimitTime = 60 * 60 * 1000; --����

--���漸���Ƕ�̬��ʾ�����ݣ������������б��ж�̬��ʾ�������**********************

--�����Ƕ�̬**************************************************************

--�����ı�����
x250036_g_MissionName="R߾c ki�u hoa";
x250036_g_MissionInfo="M�i �n L�c D߽ng[177,94] H� Lai L�c s�p x�p tu�n du b�ng xe hoa.";
x250036_g_MissionTarget="M�i �n L�c D߽ng g�p H� Lai L�c #{_INFOAIM177,94,0, H� Lai L�c} s�p x�p tu�n du b�ng xe hoa.";		--����Ŀ��
x250036_g_ContinueInfo1="Th�t xin l�i, �� qu� th�i gian d� �nh c�a c�c h�, c�c h� ch� c� th� b� qua ... ...";
x250036_g_ContinueInfo2="� ��y c�n l�p k� ho�ch, c�m �n";
x250036_g_MissionComplete="H�y � ch�ng ta b�t �u";

--������
x250036_g_MoneyBonus = 0

--MisDescEnd

x250036_g_eventId_begin = 0;	--�������Ѳ��������¼�
x250036_g_eventId_start = 1;	--�����ʼѲ�ε��¼�
x250036_g_eventId_close = 2;	--����Ȼ��ٿ�ʼ���¼�

x250036_g_busDataIds = {3, 4, 5};	--������DataID
x250036_g_busPatrolPathId = 3;		--����·��ID


--**********************************
--������ں���
--**********************************
function x250036_OnDefaultEvent(sceneId, selfId, targetId)	--����������ִ�д˽ű�
	local selectEventId	= GetNumText();
	
	--�������Ѳ��������¼�
	if x250036_g_eventId_begin == selectEventId then
		x250036_OnBegin(sceneId, selfId, targetId);
	--�����ʼѲ�ε��¼�
	elseif x250036_g_eventId_start == selectEventId then
		x250036_OnStart(sceneId, selfId, targetId);
	--����Ȼ��ٿ�ʼ���¼�
	elseif x250036_g_eventId_close == selectEventId then
		BeginUICommand(sceneId);
		EndUICommand(sceneId);
		DispatchUICommand(sceneId, selfId, 1000);
	end

end

--**********************************
--�о��¼�
--**********************************
function x250036_OnEnumerate(sceneId, selfId, targetId)
    --����ѽӴ�����
    if IsHaveMission(sceneId,selfId,x250036_g_MissionId) > 0 then
		AddNumText(sceneId, x250036_g_ScriptId, x250036_g_MissionName, 6, x250036_g_eventId_begin);
    end
end

--**********************************
--����������
--**********************************
function x250036_CheckAccept(sceneId, selfId)
	return 1;
end

--**********************************
--����
--**********************************
function x250036_OnAccept(sceneId, selfId, marryLevel)

	--������������б�
	AddMission(sceneId, selfId, x250036_g_MissionId, x250036_g_ScriptId, 0, 0, 0);
	misIndex = GetMissionIndexByID(sceneId, selfId, x250036_g_MissionId);			--�õ���������к�
	if misIndex and misIndex >= 0 then
		StartMissionTimer(sceneId,selfId, x250036_g_MissionId);
		SetMissionByIndex(sceneId,selfId,misIndex, 0, 1);						--�������кŰ���������ĵ�0λ��0 (����������)
		SetMissionByIndex(sceneId,selfId,misIndex, 7, x250036_g_MissionLimitTime);
		SetMissionByIndex(sceneId,selfId,misIndex, 2, marryLevel);
		
		Msg2Player(sceneId, selfId,"#YNh�n nhi�m v�:"..x250036_g_MissionName.."",MSG2PLAYER_PARA);	--���촰����ʾ
	end
end

--**********************************
--����
--**********************************
function x250036_OnAbandon(sceneId, selfId)
	--ɾ����������б��ж�Ӧ������
 	local checkMission = IsHaveMission(sceneId, selfId, x250036_g_MissionId);
	if checkMission and checkMission == 1 then
	  DelMission(sceneId, selfId, x250036_g_MissionId);
	 end
end

--**********************************
--����
--**********************************
function x250036_OnContinue(sceneId, selfId, targetId)
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x250036_CheckSubmit(sceneId, selfId)
	return 0;
end

--**********************************
--�ύ
--**********************************
function x250036_OnSubmit(sceneId, selfId, targetId,selectRadioId)
end

--**********************************
--ɱ����������
--**********************************
function x250036_OnKillObject(sceneId, selfId, objdataId ,objId)
end

--**********************************
--���������¼�
--**********************************
function x250036_OnEnterArea(sceneId, selfId, zoneId)
end

--**********************************
--���߸ı�
--**********************************
function x250036_OnItemChanged(sceneId, selfId, itemdataId)
end

--**********************************
--��ʱ�¼�
--**********************************
function x250036_OnTimer(sceneId,selfId)
	local misIndex = GetMissionIndexByID(sceneId,selfId,x250036_g_MissionId);
	if misIndex and misIndex >= 0 then
		local saveTime = GetMissionParam(sceneId, selfId, misIndex, 7);
		if saveTime and saveTime > 0 then
			saveTime = saveTime - 1000;
			if saveTime <= 0 then
				StopMissionTimer(sceneId, selfId, x250036_g_MissionId);
				SetMissionByIndex(sceneId, selfId, misIndex, 0, 2);
				saveTime = 0;
			end
			SetMissionByIndex(sceneId, selfId, misIndex, 7, saveTime);
		end
	end
end

--**********************************
--�������Ѳ��������¼�
--**********************************
function x250036_OnBegin(sceneId, selfId, targetId)
	local misIndex = GetMissionIndexByID(sceneId,selfId,x250036_g_MissionId);
	if misIndex and misIndex >= 0 then
		local stateCode = GetMissionParam(sceneId, selfId, misIndex, 0);
		if stateCode and stateCode == 2 then
			x250036_MessageBox(sceneId, selfId, targetId, "C�c ng߽i �n mu�n qu�, phu ki�u do ta s�p x�p �� �i h�t r�i, kh�ng th� l�m ��m r߾c ���c");
			DelMission(sceneId, selfId, x250036_g_MissionId);
		else
			BeginEvent(sceneId);
				AddText(sceneId, "Ch�c m�ng c�c ng߽i, phu ki�u �� chu�n b� xong, h�y l�p t�c r߾c d�u");
				AddNumText(sceneId, x250036_g_ScriptId, "Gi� h�y b�t �u r߾c", 8, x250036_g_eventId_start);
				AddNumText(sceneId, x250036_g_ScriptId, "Ch� m�t l�t l�i b�t �u..", 8, x250036_g_eventId_close);
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end
	end
end

--**********************************
--�����ʼѲ�ε��¼�
--**********************************
function x250036_OnStart(sceneId, selfId, targetId)
	local marryLevel = 0;
	local misIndex = GetMissionIndexByID(sceneId,selfId,x250036_g_MissionId);
	if misIndex and misIndex >= 0 then
		local stateCode = GetMissionParam(sceneId, selfId, misIndex, 0);
		if stateCode and stateCode == 2 then
			x250036_MessageBox(sceneId, selfId, targetId, "C�c ng߽i �n mu�n qu�, phu ki�u do ta s�p x�p �� �i h�t r�i, kh�ng th� l�m ��m r߾c ���c");
			DelMission(sceneId, selfId, x250036_g_MissionId);
			return 0;
		else
			marryLevel = GetMissionParam(sceneId, selfId, misIndex, 2);
		end
	else
		x250036_MessageBox(sceneId, selfId, targetId, "Ch�a t�m ���c nhi�m v� r߾c ki�u hoa");
		return 0;
	end
		
	local szMsg = "N�u mu�n r߾c ki�u hoa, xin hai b�n nam n� l�p th�nh 1 nh�m, l�i t�i t�m ta"
	if LuaFnHasTeam(sceneId, selfId) == 0 then
		x250036_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	
	szMsg = "Nh�m ch� c� th� do hai b�n phu th� l�p th�nh, trong nh�m kh�ng th� c� th�nh vi�n kh�c"
	if LuaFnGetTeamSize(sceneId, selfId) ~= 2 then
		x250036_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "Ch� khi 2 ng߶i �u �n b�n ta m�i c� th� b�t �u r߾c ki�u hoa"
	local nearNum = GetNearTeamCount(sceneId, selfId);
	if nearNum ~= 2 then
		x250036_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "Kh�ng ph�i l� phu th�, kh�ng th� b�t �u r߾c ki�u hoa"
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
		x250036_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	
	local isSpouses = LuaFnIsSpouses(sceneId, maleId, femaleId);
	if isSpouses and isSpouses > 0 then
	else
		x250036_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	--zchw
	for nearIndex = 0, nearNum - 1 do
		local memId = GetNearTeamMember(sceneId, selfId, nearIndex);
		if LuaFnIsStalling(sceneId, memId) == 1 then
			x250036_MessageBox(sceneId, selfId, targetId, "#{CWHL_081208_1}")
			return 0;
		end
	end
	
	local busIndex = 1;
	if marryLevel and marryLevel > -1 and marryLevel < 3 then
		busIndex = marryLevel + 1;
	else
		busIndex = 1;
	end
	
	local busObjID = LuaFnCreateBusByPatrolPathId(sceneId, x250036_g_busDataIds[busIndex], x250036_g_busPatrolPathId, 0);
	if busObjID and busObjID ~= -1 then
		local succeeded, strText;
		succeeded = 0;
		local addPassergerRet = LuaFnBusAddPassengerList(sceneId, busObjID, targetId, 1, 2, maleId, femaleId);
		if addPassergerRet and addPassergerRet == OR_OK then
			local busStartRet = LuaFnBusStart(sceneId, busObjID);
			if busStartRet and busStartRet == 1 then
				BeginUICommand(sceneId);
				EndUICommand(sceneId);
				DispatchUICommand(sceneId, selfId, 1000);
				DelMission(sceneId, selfId, x250036_g_MissionId);
				CallScriptFunction(250037, "OnAccept", sceneId, selfId, marryLevel);
				succeeded = 1;
			else
				strText = "Kh�i �ng c� l�i, r߾c ki�u hoa th�t b�i, xin li�n h� v�i GM"
			end
		end
		
		if succeeded and succeeded == 1 then
		else
			LuaFnBusRemoveAllPassenger(sceneId, busObjID);
			LuaFnDeleteBus(sceneId, busObjID);
			if strText then
				x250036_MessageBox(sceneId, selfId, targetId, strText);
			end
		end
	end

end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x250036_MessageBox(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId);
		AddText(sceneId, msg);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

