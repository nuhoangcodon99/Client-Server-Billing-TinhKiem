
-- ��T�i ���������ɱ������

--************************************************************************
--MisDescBegin
--�ű���
x200008_g_ScriptId = 200008

--��������
x200008_g_CopySceneName="V�n Ki�p C�c"

--�����
x200008_g_MissionId = 8
--�����
x200008_g_PreMissionId = 7

--Ŀ��NPC
x200008_g_Name = "�o�n Ch�nh Minh"

--��ng����ngTinhӢ����
x200008_g_IfMissionElite = 1

--�������
x200008_g_MissionKind = 51

--��ng c�p nhi�m v� 
x200008_g_MissionLevel = 20

--�����ı�����
x200008_g_MissionName="H� khi�u long ng�m"
x200008_g_MissionInfo="#{Mis_juqing_0008}"
x200008_g_MissionTarget="#{Mis_juqing_Tar_0008}"
x200008_g_MissionComplete="  T�t qu�, �a t� �n gi�p ��, t� nay ��i L� Qu�c coi ng߽i nh� qu� kh�ch, d�ng l� ti�t cao nh�t tr�ng ��i ng߽i!"
x200008_g_MissionContinue="  Ng߽i �� c�u ���c D� Nhi ch�a?"

x200008_g_MoneyBonus=21600
x200008_g_exp=24000

x200008_g_RadioItemBonus={{id=10423001 ,num=1},{id=10423002,num=1},{id=10423003,num=1},{id=10423004,num=1}}

x200008_g_Custom	= { {id="�� c�u tho�t �o�n D�",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200008_OnDefaultEvent( sceneId, selfId, targetId )
	
	if GetNumText() == 888   then
		-- ������������ng����ng��Կ��
		if  GetItemCount( sceneId, selfId, 40001001 ) > 0   then
			-- C�n �����o�n D���� 439
			local nMonsterNum = GetMonsterCount(sceneId)
	
			local ii = 0
			local bHaveMonster = 0
			local bHave=0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
			
				if GetName(sceneId, nMonsterId)  == "�o�n D�"  then
					bHave = 1
				end
			end
			
			if bHave == 0  then
				local nNpcId = LuaFnCreateMonster(sceneId, 439, 51, 90, 3, 0, 118020)
				SetCharacterName(sceneId, nNpcId, "�o�n D�")
			end
			
			-- ����������ɱ�־,ɾ��Կ��,
			local misIndex = GetMissionIndexByID(sceneId,selfId,x200008_g_MissionId)
			SetMissionByIndex(sceneId,selfId,misIndex,0,1)
			DelItem( sceneId, selfId, 40001001, 1 )
			
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)

		end
		return
	end
	
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200008_g_MissionId) > 0 then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200008_g_MissionName)
			AddText(sceneId,x200008_g_MissionContinue)
			--AddMoneyBonus( sceneId, x200008_g_MoneyBonus )
		EndEvent( )
		bDone = x200008_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200008_g_ScriptId,x200008_g_MissionId,bDone)
    --Th�a m�n�����������
  elseif x200008_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200008_g_MissionName)
			AddText(sceneId,x200008_g_MissionInfo)
			AddText(sceneId, "#{M_MUBIAO}#r")
			AddText(sceneId,x200008_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200008_g_MoneyBonus )
			for i, item in x200008_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200008_g_ScriptId,x200008_g_MissionId)
  end

end

--**********************************
--�о��¼�
--**********************************
function x200008_OnEnumerate( sceneId, selfId, targetId )
	if GetName(sceneId, targetId) == "Th�ch Nh�n"   then
		-- ������������ng����ng��Կ��,
		if  GetItemCount( sceneId, selfId, 40001001 ) > 0   then
			AddNumText(sceneId,x200008_g_ScriptId,"M� c�a th�ch m�n",6,888);
		end
		return
	end
	
  --��������ɹ�C�i n�y ����
  if IsMissionHaveDone(sceneId,selfId,x200008_g_MissionId) > 0 then
		return
	end
    --����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200008_g_MissionId) > 0 then
		AddNumText(sceneId,x200008_g_ScriptId,x200008_g_MissionName,2,-1);
		--Th�a m�n�����������
	elseif x200008_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200008_g_ScriptId,x200008_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200008_CheckAccept( sceneId, selfId )
	--C�n 4c�p���ܽ�
	if GetLevel( sceneId, selfId ) < 20 then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200008_g_PreMissionId) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x200008_OnAccept( sceneId, selfId )
	--������������б�
	local ret = AddMission( sceneId,selfId, x200008_g_MissionId, x200008_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200008_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--�������кŰ��������to� � ��0λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--�������кŰ��������to� � ��1λ��0
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: H� khi�u long ng�m",MSG2PLAYER_PARA )
	
	-- �������,�����to� � ������Ϊ����Cu�c chi�n 
	-- C�n ��������to� � ��,�ı�����to� � ��Ӫ
	local nMonsterNum = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		
		if GetName(sceneId, nMonsterId)  == "�o�n Di�n Kh�nh"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
			SetNPCAIType(sceneId, nMonsterId, 1)
		end
	end
	
	-- ���������ϵto� � �¼�
	SetMissionEvent(sceneId, selfId, x200008_g_MissionId, 0)
	SetMissionEvent(sceneId, selfId, x200008_g_MissionId, 2)

end

--**********************************
--����
--**********************************
function x200008_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200008_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200008_g_SignPost.tip )
	DelItem( sceneId, selfId, 40001001, 1 )
end

--**********************************
--����
--**********************************
function x200008_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200008_g_MissionName)
		AddText(sceneId,x200008_g_MissionComplete)
		AddMoneyBonus( sceneId, x200008_g_MoneyBonus )
		for i, item in x200008_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200008_g_ScriptId,x200008_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200008_CheckSubmit( sceneId, selfId )

	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200008_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200008_g_MissionId)
	
	local Kill1 = GetMissionParam(sceneId,selfId,misIndex,0)

	if Kill1~=1 			then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200008_OnSubmit( sceneId, selfId, targetId,selectRadioId )

	if x200008_CheckSubmit(sceneId, selfId) ~= 1   then
		return
	end

	BeginAddItem(sceneId)
	for i, item in x200008_g_RadioItemBonus do
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

	AddMoney(sceneId,selfId,x200008_g_MoneyBonus );
	LuaFnAddExp( sceneId, selfId,x200008_g_exp)

	DelMission( sceneId, selfId, x200008_g_MissionId )
	MissionCom( sceneId, selfId, x200008_g_MissionId )
	Msg2Player( sceneId, selfId,"#YHo�n t�t nhi�m v�#W: H� khi�u long ng�m",MSG2PLAYER_PARA )
	
	Msg2Player( sceneId, selfId,"C�c h� �� ho�n th�nh xong m�t lo�t nhi�m v� #GV�n Ki�p C�c #W",MSG2PLAYER_PARA )
	local selfGuid = LuaFnObjId2Guid(sceneId, selfId)
	LuaFnSendMailToGUID(sceneId, selfGuid, "C�c h� �� ho�n th�nh xong m�t lo�t nhi�m v� #GV�n Ki�p C�c #W. Sau khi ��t ���c c�p 30, h�y t�i th�nh ��i L� t�m Tri�u Thi�n S�, M� nhi�m v� #GY�n T� � #W")
	
	-- �����ٹȾ���,��10 �i�m���� �i�m
	local nPoint = GetHumanJuqingPoint(sceneId, selfId)
	SetHumanJuqingPoint(sceneId, selfId, nPoint+10)
	
	-- ֪ͨ���,����������ѭ��������
	local nPoint = GetHumanJuqingPoint(sceneId, selfId)
	SetHumanJuqingPoint(sceneId, selfId, nPoint+10)

	-- ֪ͨ���,����������ѭ��������
	-- ����T�i ����ȥAA��to� � [bb,cc]�ҵ�DD,Ti�p th�DDѭ������.
	local strText1 = "C�c h� b�y gi� c� th� �i to� � [232,227]th�nh ��i L� t�m M�c Uy�n Thanh, ti�p nh�n M�c Uy�n Thanh."
	LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText1)
	
	BeginEvent(sceneId)
		AddText(sceneId,strText1);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--ɱ����������
--**********************************
function x200008_OnKillObject( sceneId, selfId, objdataId ,objId)

	if GetName(sceneId,objId) == "�o�n Di�n Kh�nh"	  then
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x200008_g_MissionId) > 0 then
				BeginEvent(sceneId)
				AddText(sceneId,"�� gi�t ch�t �o�n Di�n Kh�nh: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
				AddMonsterDropItem(sceneId,objId,humanObjId,40001001)    --��C�i n�y ���������(���߻����T�i ʬ�����)
			end
		end
	end	
end

--**********************************
--���������¼�
--**********************************
function x200008_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200008_OnItemChanged( sceneId, selfId, itemdataId )
	if itemdataId == 40001001    then
	 	BeginEvent(sceneId)
			AddText(sceneId, "�� ��t ���c ch�a kh�a Th�ch �: 1/1")
	  EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end
