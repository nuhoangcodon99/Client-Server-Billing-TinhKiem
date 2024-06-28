-- ָ �i�mȺ��Ϸ   �������ս,^_^,Tinh�ʲ���Ŷ 

--************************************************************************
--MisDescBegin
--�ű���
x200015_g_ScriptId = 200015

--��������
x200015_g_CopySceneName="Y�n T� �"

--�����
x200015_g_MissionId = 14

--�����
x200015_g_PreMissionId = 13

--Ŀ��NPC
x200015_g_Name = "V߽ng Ng� Y�n"

--��ng����ngTinhӢ����
x200015_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200015_g_MissionLevel = 30

--�������
x200015_g_MissionKind = 48

--�����ı�����
x200015_g_MissionName="Ch� �i�m Qu�n H�o"
x200015_g_MissionInfo="#{Mis_juqing_0014}"
x200015_g_MissionTarget="#{Mis_juqing_Tar_0014}"	--M�c ti�u nhi�m v�
x200015_g_MissionComplete="  $N, �n c�u m�ng c�a c�c h�, t�i h� nh�t �nh s� b�o ��p. Nh�ng m�, t�i h� thi�n gi� th�n tr�ng k�ch �c... kh�ng bi�t l�m sao � c� c� h�i b�o ��p..."	--Ho�n t�t nhi�m v�npc˵��to� � ��
x200015_g_MissionContinue="  Ng߽i �� gi�p �o�n c�ng t� ��nh lui c�c v� s� T�y H� sao?"

x200015_g_MoneyBonus=21600
x200015_g_exp=22000

x200015_g_RadioItemBonus={{id=10423005,num=1},{id=10423006,num=1},{id=10423007,num=1}}

x200015_g_Custom	= { {id="Ch� �i�m Qu�n H�o",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200015_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200015_g_MissionId) > 0 then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200015_g_MissionName)
			AddText(sceneId,x200015_g_MissionContinue)
			--AddMoneyBonus( sceneId, x200015_g_MoneyBonus )
		EndEvent( )
		bDone = x200015_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200015_g_ScriptId,x200015_g_MissionId,bDone)
    --Th�a m�n�����������
  elseif x200015_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200015_g_MissionName)
			AddText(sceneId,x200015_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200015_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200015_g_MoneyBonus )
			for i, item in x200015_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200015_g_ScriptId,x200015_g_MissionId)
  end

end

--**********************************
--�о��¼�
--**********************************
function x200015_OnEnumerate( sceneId, selfId, targetId )

  --��������ɹ�C�i n�y ����
  if IsMissionHaveDone(sceneId,selfId,x200015_g_MissionId) > 0 then
		return
	end
    --����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200015_g_MissionId) > 0 then
		AddNumText(sceneId,x200015_g_ScriptId,x200015_g_MissionName,2,-1);
		--Th�a m�n�����������
	elseif x200015_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200015_g_ScriptId,x200015_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200015_CheckAccept( sceneId, selfId )
	-- ���C�n �����ǰ������
  if IsMissionHaveDone(sceneId,selfId,x200015_g_PreMissionId) < 1 then
		return 0
	end
	
	if LuaFnGetCopySceneData_Param(sceneId, 25) == 1  then
		return 0
	end	
	
	--C�n 4c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= 30 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x200015_OnAccept( sceneId, selfId )
	--������������б�
	local ret = AddMission( sceneId,selfId, x200015_g_MissionId, x200015_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200015_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--�������кŰ��������to� � ��0λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--�������кŰ��������to� � ��1λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,2,0)						--�������кŰ��������to� � ��1λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,3,0)						--�������кŰ��������to� � ��1λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,4,0)						--�������кŰ��������to� � ��1λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,5,0)						--�������кŰ��������to� � ��1λ��0
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Ch� �i�m Qu�n H�o",MSG2PLAYER_PARA )

	SetMissionEvent(sceneId, selfId, x200015_g_MissionId, 0)
	
	LuaFnSetCopySceneData_Param(sceneId, 10, 1)
	LuaFnSetCopySceneData_Param(sceneId, 11, LuaFnGetCurrentTime())
	LuaFnSetCopySceneData_Param(sceneId, 12, LuaFnGetCurrentTime())

	-- �i�m��m�t ����ʼ,�Ͳ�������m�t ����
	
	LuaFnSetCopySceneData_Param(sceneId, 25, 1)
end

--**********************************
--��ʱ�¼�
--**********************************
function x200015_OnTimer(sceneId,selfId)

end

--**********************************
--����
--**********************************
function x200015_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200015_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200015_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200015_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x200015_g_MissionName)
		AddText(sceneId,x200015_g_MissionComplete)
		AddMoneyBonus( sceneId, x200015_g_MoneyBonus )
		for i, item in x200015_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x200015_g_ScriptId,x200015_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200015_CheckSubmit( sceneId, selfId )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200015_g_MissionId)

	local Kill1 = GetMissionParam(sceneId,selfId,misIndex,0)
	local Kill2 = GetMissionParam(sceneId,selfId,misIndex,1)
	local Kill3 = GetMissionParam(sceneId,selfId,misIndex,2)
	local Kill4 = GetMissionParam(sceneId,selfId,misIndex,3)
	local Kill5 = GetMissionParam(sceneId,selfId,misIndex,4)

	if Kill1~=1 			then
		return 0
	elseif Kill2~=1 	then
		return 0
	elseif Kill3~=1   then
		return 0
	elseif Kill4~=1   then
		return 0
	elseif Kill5~=1   then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200015_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x200015_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then

  	BeginAddItem(sceneId)
		for i, item in x200015_g_RadioItemBonus do
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

		--���������
		AddMoney(sceneId,selfId, x200015_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200015_g_exp)

		DelMission( sceneId, selfId, x200015_g_MissionId )
		MissionCom( sceneId, selfId, x200015_g_MissionId )
		Msg2Player( sceneId, selfId, "#YHo�n t�t nhi�m v�#W: Ch� �i�m Qu�n H�o", MSG2PLAYER_PARA )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200015_OnKillObject( sceneId, selfId, objdataId ,objId)

	local misIndex = -1
	local szMonsterName = GetName(sceneId,objId)
	if szMonsterName == "Ho�ng H� T�"	  then
		-- ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x200015_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,selfId,x200015_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,1,1)
				BeginEvent(sceneId)
				AddText(sceneId,"�� gi�t ch�t Ho�ng H� T�: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end


	elseif szMonsterName == "Kh�i B�o Kh�ch"	  then
		-- ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x200015_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,selfId,x200015_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,2,1)
				BeginEvent(sceneId)
				AddText(sceneId,"�� gi�t ch�t Kh�i B�o Kh�ch: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end

	elseif szMonsterName == "Ю t� H� Tr�o m�n"	  then
		-- ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x200015_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,selfId,x200015_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,3,1)
				BeginEvent(sceneId)
				AddText(sceneId,"�� gi�t ch�t Ю t� H� Tr�o m�n: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end

	elseif szMonsterName == "C� nhi�m v� s�"	  then
		-- ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x200015_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,selfId,x200015_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,4,1)
				BeginEvent(sceneId)
				AddText(sceneId,"�� gi�t ch�t C� nhi�m v� s�: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end

	elseif szMonsterName == "Su�t Gi�c Cao Th�"	  then
		-- ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x200015_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,selfId,x200015_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,5,1)
				BeginEvent(sceneId)
				AddText(sceneId,"�� gi�t ch�t Su�t Gi�c Cao Th�: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end
		
	else
		return
		
	end
	
	-- ������C�n ɱto� � �˶�ɱ�˺�,��c�i��ɱ�־
	local Kill1 = GetMissionParam(sceneId,selfId,misIndex,5)
	local Kill2 = GetMissionParam(sceneId,selfId,misIndex,1)
	local Kill3 = GetMissionParam(sceneId,selfId,misIndex,2)
	local Kill4 = GetMissionParam(sceneId,selfId,misIndex,3)
	local Kill5 = GetMissionParam(sceneId,selfId,misIndex,4)
	
	if Kill1==1 and Kill2==1 and Kill3==1 and Kill4==1 and Kill5==1 then
		--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0010}",0)
		CallScriptFunction((200060), "Duibai",sceneId, "V� S� T�y h�", "Y�n T� �", "#{JQ_DB_0010}" )
		
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)
		
	end
	
end

--**********************************
--���������¼�
--**********************************
function x200015_OnEnterArea( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200015_OnItemChanged( sceneId, selfId, itemdataId )
	
end







