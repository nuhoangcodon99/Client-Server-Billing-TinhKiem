--Th�ch L�m 
--MisDescBegin
--�ű���
x212103_g_ScriptId = 212103

--�����
x212103_g_MissionId = 602

--M�c ti�u nhi�m v�npc
x212103_g_Name	="Tr�nh Huy�n" 

--�������
x212103_g_MissionKind = 37

--��ng c�p nhi�m v� 
x212103_g_MissionLevel = 55

--��ng����ngTinhӢ����
x212103_g_IfMissionElite = 0

--******���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������******
--������ng���Ѿ����
x212103_g_IsMissionOkFail = 0		--����to� � ��0λ

--******������ng��̬*****

--�����ı�����
x212103_g_MissionName="V�ng �t tuy�t v�ng"
x212103_g_MissionInfo="#{Lua_Shilin_001}"
x212103_g_MissionTarget="Nghe c�u chuy�n Tr�nh Huy�n k� #{_INFOAIM182,163,26,Tr�nh Huy�n}."
x212103_g_ContinueInfo="....."
x212103_g_MissionComplete="Chuy�n c�a ta �� k� xong, ng߽i h�y suy ngh� �i"

x212103_g_MoneyBonus=21000
x212103_g_Exp = 6000

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212103_OnDefaultEvent( sceneId, selfId, targetId )
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x212103_g_MissionId) > 0 then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212103_g_MissionName)
			AddText(sceneId,x212103_g_ContinueInfo)
		EndEvent()
		bDone = x212103_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x212103_g_ScriptId,x212103_g_MissionId,bDone)
		--Th�a m�n�����������
	elseif x212103_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212103_g_MissionName)
			AddText(sceneId,x212103_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x212103_g_MissionTarget)
			AddMoneyBonus( sceneId, x212103_g_MoneyBonus )
		
		EndEvent()
		DispatchMissionInfo(sceneId,selfId,targetId,x212103_g_ScriptId,x212103_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x212103_OnEnumerate( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212103_g_MissionId) > 0 then
		return 
	end

	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x212103_g_MissionId) > 0 then
		AddNumText(sceneId, x212103_g_ScriptId, x212103_g_MissionName, 2, -1);
		--Th�a m�n�����������
	elseif x212103_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId, x212103_g_ScriptId, x212103_g_MissionName, 1, -1);
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x212103_CheckAccept( sceneId, selfId )
	-- ����������C�i n�y ����,��������
	if IsMissionHaveDone(sceneId,selfId,x212103_g_MissionId) > 0 then
		return 0
	end
	--C�n 1c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= x212103_g_MissionLevel then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x212103_OnAccept( sceneId, selfId )
	-- ����������C�i n�y ����,��������
	if IsMissionHaveDone(sceneId,selfId,x212103_g_MissionId) > 0 then
		return 
	end

	-- ������������б�
	local ret = AddMission( sceneId,selfId, x212103_g_MissionId, x212103_g_ScriptId, 1, 0, 0 )

	-- C�n ���������ng����ng�ܹ�Ti�p th���C�i n�y ����
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	-- ����Ѿ��ӵ���C�i n�y ����
	misIndex = GetMissionIndexByID(sceneId,selfId,x212103_g_MissionId)		-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)	--�������кŰ��������to� � ��0λ��0 (����������)
	
	-- ��Ϣ֪ͨ�ͻ���
	Msg2Player(  sceneId, selfId,"#YTi�p nh�n#W ".. x212103_g_MissionName, MSG2PLAYER_PARA )
	BeginEvent(sceneId)
		strText = "#YTi�p nh�n#W " .. x212103_g_MissionName
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--����
--**********************************
function x212103_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x212103_g_MissionId )
end

--**********************************
--����
--**********************************
function x212103_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x212103_g_MissionName)
		AddText(sceneId,x212103_g_MissionComplete)
		AddMoneyBonus( sceneId, x212103_g_MoneyBonus )
				
    EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212103_g_ScriptId,x212103_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212103_CheckSubmit( sceneId, selfId )
	local misIndex = GetMissionIndexByID(sceneId,selfId,x212103_g_MissionId)
	local bComplete = GetMissionParam(sceneId, selfId, misIndex, 0)	
	if bComplete > 0 then
		return 1
	else
		return 0
	end
end

--**********************************
--�ύ
--**********************************
function x212103_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	-- ��ȫ�Լ��
	-- 1����������ng����ng��C�i n�y ����
	if IsHaveMission(sceneId,selfId,x212103_g_MissionId) <= 0 then
		return
	end
	-- 2���������
	if x212103_CheckSubmit( sceneId, selfId )  <= 0  then
		return
	end

	--���������
	AddMoney(sceneId, selfId, x212103_g_MoneyBonus )
	AddExp(sceneId, selfId, x212103_g_Exp)
	DelMission( sceneId, selfId, x212103_g_MissionId )
	--���������Ѿ�����ɹ�
	MissionCom( sceneId,selfId, x212103_g_MissionId )
	
	-- ��Ϣ֪ͨ�ͻ���
	
	
end

--**********************************
--ɱ����������
--**********************************
function x212103_OnKillObject( sceneId, selfId, objdataId ,objId)

end

--**********************************
--���������¼�
--**********************************
function x212103_OnEnterArea( sceneId, selfId, zoneId )

end

--**********************************
--���߸ı�
--**********************************
function x212103_OnItemChanged( sceneId, selfId, itemdataId )

end
