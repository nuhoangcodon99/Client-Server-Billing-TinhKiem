-- ��ս˫��   T�i ������ɱ��,��ȡ����

--************************************************************************
--MisDescBegin
--�ű���
x200012_g_ScriptId = 200012

--��������
x200012_g_CopySceneName="Y�n T� �"

--�����
x200012_g_MissionId = 11

--ǰ�������
x200012_g_PreMissionId = 10

--Ŀ��NPC
x200012_g_Name = "V߽ng Ng� Y�n"

--��ng����ngTinhӢ����
x200012_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200012_g_MissionLevel = 30

--�������
x200012_g_MissionKind = 48

--�����ı�����
x200012_g_MissionName="еc chi�n song h�ng"
x200012_g_MissionInfo="#{Mis_juqing_0011}"
x200012_g_MissionTarget="#{Mis_juqing_Tar_0011}"	--M�c ti�u nhi�m v�
x200012_g_MissionComplete="  T�t qu� r�i, nh�ng ng߶i b�t l߽ng nh�t �nh s� khi�p s� m� b� ch�y, ch�ng ta an to�n r�i. "	--Ho�n t�t nhi�m v�npc˵��to� � ��
x200012_g_MissionContinue="  Ng߽i �� ��nh b�i ���c T� M� L�m v� ��o B�ch �߽ng, �� ���c L�i C�ng Oanh v� Ng� H� �o�n M�n �ao ch�a?"

x200012_g_MoneyBonus=8100
x200012_g_exp=9600

x200012_g_RadioItemBonus={{id=10415001 ,num=1},{id=10415002,num=1},{id=10415003,num=1}}

x200012_g_DemandItem={{id=40001002,num=1},{id=40001003,num=1}}		--�ӱ����м���

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200012_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200012_g_MissionId) > 0 then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200012_g_MissionName)
			AddText(sceneId,x200012_g_MissionContinue)
			AddMoneyBonus( sceneId, x200012_g_MoneyBonus )
		EndEvent( )
		bDone = x200012_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200012_g_ScriptId,x200012_g_MissionId,bDone)
    --Th�a m�n�����������
  elseif x200012_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200012_g_MissionName)
			AddText(sceneId,x200012_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200012_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200012_g_MoneyBonus )
			for i, item in x200012_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200012_g_ScriptId,x200012_g_MissionId)
  end

end

--**********************************
--�о��¼�
--**********************************
function x200012_OnEnumerate( sceneId, selfId, targetId )

  --��������ɹ�C�i n�y ����
  if IsMissionHaveDone(sceneId,selfId,x200012_g_MissionId) > 0 then
		return
	end
    --����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200012_g_MissionId) > 0 then
		AddNumText(sceneId,x200012_g_ScriptId,x200012_g_MissionName,2,-1);
		--Th�a m�n�����������
	elseif x200012_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200012_g_ScriptId,x200012_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200012_CheckAccept( sceneId, selfId )
	--C�n 4c�p���ܽ�
	if GetLevel( sceneId, selfId ) < 30 then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200012_g_PreMissionId) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x200012_OnAccept( sceneId, selfId )
	--������������б�
	local ret = AddMission( sceneId,selfId, x200012_g_MissionId, x200012_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x200012_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--�������кŰ��������to� � ��0λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--�������кŰ��������to� � ��1λ��0
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: еc chi�n song h�ng",MSG2PLAYER_PARA )
	--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x200012_g_SignPost.x, x200012_g_SignPost.z, x200012_g_SignPost.tip )
	
	--�������,�����to� � ������Ϊ����Cu�c chi�n 
	-- C�n ��������to� � ��,�ı�����to� � ��Ӫ
	local nMonsterNum = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		
		if GetName(sceneId, nMonsterId)  == "T� M� L�m"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
		elseif GetName(sceneId, nMonsterId)  == "Di�u B� �߽ng"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
		end
	end
	
	SetMissionEvent(sceneId, selfId, x200012_g_MissionId, 0)
	SetMissionEvent(sceneId, selfId, x200012_g_MissionId, 2)

end

--**********************************
--����
--**********************************
function x200012_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200012_g_MissionId )
	--CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200012_g_SignPost.tip )
	DelItem( sceneId, selfId, 40001002, 1 )	
	DelItem( sceneId, selfId, 40001003, 1 )	
end

--**********************************
--����
--**********************************
function x200012_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200012_g_MissionName)
		AddText(sceneId,x200012_g_MissionComplete)
		AddMoneyBonus( sceneId, x200012_g_MoneyBonus )
		for i, item in x200012_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200012_g_ScriptId,x200012_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200012_CheckSubmit( sceneId, selfId )
	-- �����������ng����ng������c�i��Ʒ
	if  1 > GetItemCount( sceneId, selfId, 40001002 )    then
		return 0
	end
	if  1 > GetItemCount( sceneId, selfId, 40001003 )    then
		return 0
	end
	
	return 1
end

--**********************************
--�ύ
--**********************************
function x200012_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x200012_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then

  	BeginAddItem(sceneId)
		for i, item in x200012_g_RadioItemBonus do
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
		--ɾ������
		DelItem( sceneId, selfId, 40001002, 1 )
		DelItem( sceneId, selfId, 40001003, 1 )
		AddItemListToHuman(sceneId,selfId)

		--���������
		AddMoney(sceneId,selfId, x200012_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200012_g_exp)

		DelMission( sceneId, selfId, x200012_g_MissionId )
		MissionCom( sceneId, selfId, x200012_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�#W: еc chi�n song h�ng",MSG2PLAYER_PARA )
		-- ���ú�������
		CallScriptFunction((200013), "OnDefaultEvent",sceneId, selfId, targetId )
	end
	
end

--**********************************
--ɱ����������
--**********************************
function x200012_OnKillObject( sceneId, selfId, objdataId ,objId)

	-- ���ɱ�ˡ�T� M� L�m�����ߡ�Di�u B� �߽ng�������������ͷ�Ӷ�Ӧto� � ����
	if GetName(sceneId,objId) == "T� M� L�m"	  then
		local num = GetMonsterOwnerCount(sceneId,objId)--ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		for j=0,num-1 do
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)--ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			if IsHaveMission(sceneId,humanObjId,x200012_g_MissionId) > 0 then	--���C�i n�y ��ӵ������	
				AddMonsterDropItem(sceneId,objId,humanObjId,40001002)    --��C�i n�y ���������(���߻����T�i ʬ�����)
				
				-- ����,Ȼ��Npc��ʧ
				--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0004}",0)
				CallScriptFunction((200060), "Duibai",sceneId, "Ю t� ph�i Thanh Th�nh", "Y�n T� �", "#{JQ_DB_0004}" )

				-- ��ʧ Ю t� ph�i Thanh Th�nh	
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)  == "Ю t� ph�i Thanh Th�nh"  then
						-- ɾ�� Ю t� ph�i Thanh Th�nh
						LuaFnDeleteMonster(sceneId, nMonsterId)
					end
				end				
			end
		end
	end

	if GetName(sceneId,objId) == "Di�u B� �߽ng"	  then
		local num = GetMonsterOwnerCount(sceneId,objId)--ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		for j=0,num-1 do
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)--ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			if IsHaveMission(sceneId,humanObjId,x200012_g_MissionId) > 0 then	--���C�i n�y ��ӵ������	
				AddMonsterDropItem(sceneId,objId,humanObjId,40001003)    --��C�i n�y ���������(���߻����T�i ʬ�����)
				-- ����,Ȼ��Npc��ʧ
				--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0003}",0)
				CallScriptFunction((200060), "Duibai",sceneId, "Ю t� T�n Gia Tr�i", "Y�n T� �", "#{JQ_DB_0003}" )
				
				-- ��ʧ Ю t� T�n Gia Tr�i	
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)  == "Ю t� T�n Gia Tr�i"  then
						-- ɾ�� Ю t� T�n Gia Tr�i
						LuaFnDeleteMonster(sceneId, nMonsterId)
					end
				end				
			end
		end
	end
end

--**********************************
--���������¼�
--**********************************
function x200012_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200012_OnItemChanged( sceneId, selfId, itemdataId )

	if itemdataId == 40001002    then
	 	BeginEvent(sceneId)
			AddText(sceneId, "�� ��t ���c L�i C�ng Oanh: 1/1")
	  EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
	
	if itemdataId == 40001003    then
	 	BeginEvent(sceneId)
			AddText(sceneId, "�� ��t ���c Ng� H� �o�n M�n �ao: 1/1")
	  EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
end



