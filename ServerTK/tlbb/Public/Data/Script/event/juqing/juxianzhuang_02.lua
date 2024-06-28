-- 200021
-- ��������

-- ��T�i ���������ɱ������

--************************************************************************
--MisDescBegin
--�ű���
x200021_g_ScriptId = 200021

--��������
x200021_g_CopySceneName="T� Hi�n Trang"

--�����
x200021_g_MissionId = 21

--ǰ������
x200021_g_PreMissionId = 20

--Ŀ��NPC
x200021_g_Name = "Ti�u Phong"

--��ng����ngTinhӢ����
x200021_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200021_g_MissionLevel = 40

--�������
x200021_g_MissionKind = 47

--�����ı�����
x200021_g_MissionName="��nh thi�n l�p �a"
x200021_g_MissionInfo="#{Mis_juqing_0021}"
x200021_g_MissionTarget="#{Mis_juqing_Tar_0021}"	--M�c ti�u nhi�m v�
x200021_g_MissionComplete="  $N, s� gi�p �� c�a c�c h�, Ti�u m� ta c�m k�ch v� c�ng. V�o bu�i s�ng ng�y mai, ch�ng ta s� g�p l�i t�i ��ng m�n c�a th�nh L�c D߽ng!"	--Ho�n t�t nhi�m v�npc˵��to� � ��
x200021_g_MissionContinue="  B�n �� ��nh b�i B�o Thi�n Linh, K� L�c, H߾ng V�ng H�i ba ng߶i h� ch�a? "

x200021_g_MoneyBonus=8100
x200021_g_exp=9600

x200021_g_RadioItemBonus={{id=10422004 ,num=1},{id=10422005,num=1},{id=10422006,num=1}}

x200021_g_Custom	= { {id="�� ��nh b�i B�o Thi�n Linh",num=1},{id="�� ��nh b�i K� L�c",num=1},{id="�� ��nh b�i H߾ng V�ng H�i",num=1}, }
x200021_g_IsMissionOkFail = 0

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200021_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200021_g_MissionId) > 0 then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200021_g_MissionName)
			AddText(sceneId,x200021_g_MissionContinue)
			--AddMoneyBonus( sceneId, x200021_g_MoneyBonus )
		EndEvent( )
		bDone = x200021_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200021_g_ScriptId,x200021_g_MissionId,bDone)
    --Th�a m�n�����������
  elseif x200021_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200021_g_MissionName)
			AddText(sceneId,x200021_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200021_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
				for i, item in x200021_g_RadioItemBonus do
					AddRadioItemBonus( sceneId, item.id, item.num )
				end
			AddMoneyBonus( sceneId, x200021_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200021_g_ScriptId,x200021_g_MissionId)
  end

end

--**********************************
--�о��¼�
--**********************************
function x200021_OnEnumerate( sceneId, selfId, targetId )

  --��������ɹ�C�i n�y ����
  if IsMissionHaveDone(sceneId,selfId,x200021_g_MissionId) > 0 then
		return
	end
    --����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200021_g_MissionId) > 0 then
		AddNumText(sceneId,x200021_g_ScriptId,x200021_g_MissionName,2,-1);
		--Th�a m�n�����������
	elseif x200021_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200021_g_ScriptId,x200021_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200021_CheckAccept( sceneId, selfId )
	
	--C�n 4c�p���ܽ�
	if GetLevel( sceneId, selfId ) < 20 then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200021_g_PreMissionId) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x200021_OnAccept( sceneId, selfId )
	--������������б�
	local ret = AddMission( sceneId,selfId, x200021_g_MissionId, x200021_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200021_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--�������кŰ��������to� � ��0λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--�������кŰ��������to� � ��1λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,2,0)						--�������кŰ��������to� � ��1λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,3,0)						--�������кŰ��������to� � ��1λ��0
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: ��nh thi�n l�p �a",MSG2PLAYER_PARA )
	--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x200021_g_SignPost.x, x200021_g_SignPost.z, x200021_g_SignPost.tip )
	
	--�������,�����to� � ������Ϊ����Cu�c chi�n 
	-- C�n ��������to� � ��,�ı�����to� � ��Ӫ
	local nMonsterNum = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		
		if GetName(sceneId, nMonsterId)  == "B�o Thi�n Linh"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
			SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
		elseif GetName(sceneId, nMonsterId)  == "K� L�c"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
			SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
		elseif GetName(sceneId, nMonsterId)  == "H�a V�ng H�i"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
			SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
		end
	end

	SetMissionEvent(sceneId, selfId, x200021_g_MissionId, 0)

end

--**********************************
--����
--**********************************
function x200021_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200021_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200021_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200021_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
  BeginEvent(sceneId)
	AddText(sceneId,x200021_g_MissionName)
	AddText(sceneId,x200021_g_MissionComplete)
	for i, item in x200021_g_RadioItemBonus do
		AddRadioItemBonus( sceneId, item.id, item.num )
	end
	AddMoneyBonus( sceneId, x200021_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x200021_g_ScriptId,x200021_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200021_CheckSubmit( sceneId, selfId )

	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200021_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200021_g_MissionId)
	
	local Kill1 = GetMissionParam(sceneId,selfId,misIndex,1)
	local Kill2 = GetMissionParam(sceneId,selfId,misIndex,2)
	local Kill3 = GetMissionParam(sceneId,selfId,misIndex,3)

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
function x200021_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x200021_CheckSubmit(sceneId, selfId) == 1  then

  	BeginAddItem(sceneId)
		for i, item in x200021_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		--���������
		if ret < 1 then
			--������û�мӳɹ�
			BeginEvent(sceneId)
				strText = "Nhi�m v� th�t b�i!"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		AddItemListToHuman(sceneId,selfId)

		AddMoney(sceneId,selfId,x200021_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200021_g_exp)

		DelMission( sceneId, selfId, x200021_g_MissionId )
		MissionCom( sceneId, selfId, x200021_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: ��nh thi�n l�p �a",MSG2PLAYER_PARA )

		-- ���ú�������
		CallScriptFunction((200026), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x200021_OnKillObject( sceneId, selfId, objdataId ,objId)

	if GetName(sceneId,objId) == "B�o Thi�n Linh"	  then
		-- ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x200021_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,selfId,x200021_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,1,1)
				BeginEvent(sceneId)
				AddText(sceneId,"�� gi�t ch�t B�o Thi�n Linh 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
				
				local Kill1 = GetMissionParam(sceneId,selfId,misIndex,1)
				local Kill2 = GetMissionParam(sceneId,selfId,misIndex,2)
				local Kill3 = GetMissionParam(sceneId,selfId,misIndex,3)
				
				if Kill1==1 and Kill2==1 and Kill3==1  then
					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
				end
			end
		end
	end
	if GetName(sceneId,objId) == "K� L�c"	  then
		-- ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x200021_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,selfId,x200021_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,2,1)
				BeginEvent(sceneId)
				AddText(sceneId,"�� gi�t ch�t K� L�c 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)

				local Kill1 = GetMissionParam(sceneId,selfId,misIndex,1)
				local Kill2 = GetMissionParam(sceneId,selfId,misIndex,2)
				local Kill3 = GetMissionParam(sceneId,selfId,misIndex,3)
				
				if Kill1==1 and Kill2==1 and Kill3==1  then
					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
				end
			end
		end
	end
	if GetName(sceneId,objId) == "H�a V�ng H�i"	  then
		-- ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x200021_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,selfId,x200021_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,3,1)
				BeginEvent(sceneId)
				AddText(sceneId,"�� gi�t ch�t H�a V�ng H�i 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)

				local Kill1 = GetMissionParam(sceneId,selfId,misIndex,1)
				local Kill2 = GetMissionParam(sceneId,selfId,misIndex,2)
				local Kill3 = GetMissionParam(sceneId,selfId,misIndex,3)
				
				if Kill1==1 and Kill2==1 and Kill3==1  then
					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
				end
			end
		end
	end
	
end

--**********************************
--���������¼�
--**********************************
function x200021_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200021_OnItemChanged( sceneId, selfId, itemdataId )
end


