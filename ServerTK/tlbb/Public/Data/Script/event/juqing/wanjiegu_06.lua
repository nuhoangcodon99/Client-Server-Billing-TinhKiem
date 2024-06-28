
-- ��T�i ���������ɱ������

--************************************************************************
--MisDescBegin
--�ű���
x200006_g_ScriptId = 200006

--��������
x200006_g_CopySceneName="V�n Ki�p C�c"

--�����
x200006_g_MissionId = 6

--ǰ������
x200006_g_PreMissionId = 5

--Ŀ��NPC
x200006_g_Name = "�o�n Ch�nh Thu�n"

--��ng����ngTinhӢ����
x200006_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200006_g_MissionLevel = 20

--�������
x200006_g_MissionKind = 51

--�����ı�����
x200006_g_MissionName="��i chi�n V�n Ki�p C�c"
x200006_g_MissionInfo="#{Mis_juqing_0006}"
x200006_g_MissionTarget="#{Mis_juqing_Tar_0006}"	--M�c ti�u nhi�m v�
x200006_g_MissionComplete="  L�m t�t l�m, �o�n Di�n Kh�nh kh�ng c� 3 ng߶i n�y t߽ng tr�, kh� c� th� t�i V�n Ki�m C�c g�y s� n�a. "	--Ho�n t�t nhi�m v�npc˵��to� � ��
x200006_g_MissionContinue="  Ng߽i �� ��nh b�i Di�p Nh� N߽ng, Nh�c L�o Tam v� V�n Trung H�c ch�a? "

x200006_g_MoneyBonus=10800
x200006_g_exp=18000

x200006_g_RadioItemBonus={{id=10422001 ,num=1},{id=10422002,num=1},{id=10422003,num=1}}

x200006_g_Custom	= { {id="�� chi�n th�ng Di�p Nh� N߽ng",num=1},{id="�� chi�n th�ng Nh�c L�o Tam",num=1},{id="�� chi�n th�ng V�n Trung H�c",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200006_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200006_g_MissionId) > 0 then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200006_g_MissionName)
			AddText(sceneId,x200006_g_MissionContinue)
			--AddMoneyBonus( sceneId, x200006_g_MoneyBonus )
		EndEvent( )
		bDone = x200006_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200006_g_ScriptId,x200006_g_MissionId,bDone)
    --Th�a m�n�����������
  elseif x200006_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200006_g_MissionName)
			AddText(sceneId,x200006_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200006_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200006_g_MoneyBonus )
			for i, item in x200006_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200006_g_ScriptId,x200006_g_MissionId)
  end

end

--**********************************
--�о��¼�
--**********************************
function x200006_OnEnumerate( sceneId, selfId, targetId )

  --��������ɹ�C�i n�y ����
  if IsMissionHaveDone(sceneId,selfId,x200006_g_MissionId) > 0 then
		return
	end
    --����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200006_g_MissionId) > 0 then
		AddNumText(sceneId,x200006_g_ScriptId,x200006_g_MissionName,2,-1);
		--Th�a m�n�����������
	elseif x200006_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200006_g_ScriptId,x200006_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200006_CheckAccept( sceneId, selfId )
	
	--C�n 4c�p���ܽ�
	if GetLevel( sceneId, selfId ) < 20 then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200006_g_PreMissionId) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x200006_OnAccept( sceneId, selfId )
	--������������б�
	local ret = AddMission( sceneId,selfId, x200006_g_MissionId, x200006_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200006_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--�������кŰ��������to� � ��0λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--�������кŰ��������to� � ��1λ��0
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: ��i chi�n V�n Ki�p C�c",MSG2PLAYER_PARA )
	--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x200006_g_SignPost.x, x200006_g_SignPost.z, x200006_g_SignPost.tip )
	
	--�������,�����to� � ������Ϊ����Cu�c chi�n 
	-- C�n ��������to� � ��,�ı�����to� � ��Ӫ
	local nMonsterNum = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		
		if GetName(sceneId, nMonsterId)  == "Di�p Nh� N߽ng"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
		elseif GetName(sceneId, nMonsterId)  == "Nh�c L�o Tam"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
		elseif GetName(sceneId, nMonsterId)  == "V�n Trung H�c"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
		end
	end

	SetMissionEvent(sceneId, selfId, x200006_g_MissionId, 0)

end

--**********************************
--����
--**********************************
function x200006_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200006_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200006_g_SignPost.tip )
end


--**********************************
--����
--**********************************
function x200006_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200006_g_MissionName)
		AddText(sceneId,x200006_g_MissionComplete)
		AddMoneyBonus( sceneId, x200006_g_MoneyBonus )
		for i, item in x200006_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200006_g_ScriptId,x200006_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200006_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200006_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x200006_g_MissionId)
	
	local Kill1 = GetMissionParam(sceneId,selfId,misIndex,0)
	local Kill2 = GetMissionParam(sceneId,selfId,misIndex,1)
	local Kill3 = GetMissionParam(sceneId,selfId,misIndex,2)

	if Kill1~=1 			then
		return 0
	elseif Kill2~=1 	then
		return 0
	elseif Kill3~=1   then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200006_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x200006_CheckSubmit( sceneId, selfId ) == 1   then
  	BeginAddItem(sceneId)
		for i, item in x200006_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		--���������
		if ret < 1 then
			--������û�мӳɹ�
			BeginEvent(sceneId)
				strText = "Kh�ng th� Ho�n t�t nhi�m v�"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		AddItemListToHuman(sceneId,selfId)

		AddMoney(sceneId,selfId,x200006_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200006_g_exp)

		DelMission( sceneId, selfId, x200006_g_MissionId )
		MissionCom( sceneId, selfId, x200006_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�#W: ��i chi�n V�n Ki�p C�c",MSG2PLAYER_PARA )
		
		-- ���ú�������
		CallScriptFunction((200007), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200006_OnKillObject( sceneId, selfId, objdataId ,objId)

	local misIndex = -1
	if GetName(sceneId,objId) == "Di�p Nh� N߽ng"	  then
		-- ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x200006_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,humanObjId,x200006_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
				BeginEvent(sceneId)
				AddText(sceneId,"�� gi�t ch�t Di�p Nh� N߽ng: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end
	end
	if GetName(sceneId,objId) == "Nh�c L�o Tam"	  then
		-- ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x200006_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,humanObjId,x200006_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,1,1)
				BeginEvent(sceneId)
				AddText(sceneId,"�� gi�t ch�t Nh�c L�o Tam: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end
	end
	if GetName(sceneId,objId) == "V�n Trung H�c"	  then
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x200006_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,humanObjId,x200006_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,2,1)
				BeginEvent(sceneId)
				AddText(sceneId,"�� gi�t ch�t V�n Trung H�c: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end
	end
	
end

--**********************************
--���������¼�
--**********************************
function x200006_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200006_OnItemChanged( sceneId, selfId, itemdataId )
end
