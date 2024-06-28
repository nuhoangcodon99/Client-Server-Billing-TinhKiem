-- ����׽�� 200045 

-- ����������񵽸�����ɱ��,Ȼ�������(ͬm�t c�iNPC),�о���

--************************************************************************
--MisDescBegin
--�ű���
x200045_g_ScriptId = 200045

--�����
x200045_g_MissionId = 37

--ǰ�������
x200045_g_PreMissionId = 36

--Ŀ��NPC
x200045_g_Name = "T� Tinh H�"

--��ng����ngTinhӢ����
x200045_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200045_g_MissionLevel = 60

--�������
x200045_g_MissionKind = 53

--�����ı�����
x200045_g_MissionName="��ng c�a b�t tr�m"
x200045_g_MissionInfo="#{Mis_juqing_0037}"
x200045_g_MissionTarget="#{Mis_juqing_Tar_0037}"	--M�c ti�u nhi�m v�
x200045_g_MissionContinue="  #{TM_20080313_08}"
x200045_g_MissionComplete="  #{TM_20080313_09}"	--Ho�n t�t nhi�m v�npc˵��to� � ��

x200045_g_MoneyBonus=45000
x200045_g_exp=100000

x200045_g_RadioItemBonus={{id=10414016 ,num=1},{id=10415012,num=1},{id=10422011,num=1},{id=10423015,num=1}}

x200045_g_Custom	= { {id="�� ��nh b�i �inh Xu�n Thu",num=1} }
x200045_g_IsMissionOkFail = 0

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200045_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200045_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200045_g_MissionId) > 0)  then
		-- �����ng����ngT�i ����,�ټ����ng����ng,�����ng�Ϳ���ֱHo�n t�t nhi�m v�,^_^
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --�������Ͳ���ng����
			-- �����T�n,��ȫ �i�m �i�m
			if GetName(sceneId, targetId) == x200045_g_Name  then
		    BeginEvent(sceneId)
				AddText(sceneId,x200045_g_MissionName)
				AddText(sceneId,x200045_g_MissionContinue)
				--AddMoneyBonus( sceneId, x200045_g_MoneyBonus )
		    EndEvent()
		    local bDone = x200045_CheckSubmit(sceneId, selfId)
				DispatchMissionDemandInfo(sceneId,selfId,targetId,x200045_g_ScriptId,x200045_g_MissionId,bDone)
			end
		end
	
	--Th�a m�n�����������
	elseif x200045_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200045_g_MissionName)
			AddText(sceneId,x200045_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200045_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200045_g_MoneyBonus )
			for i, item in x200045_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent()
		DispatchMissionInfo(sceneId,selfId,targetId,x200045_g_ScriptId,x200045_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x200045_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200045_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200045_g_MissionId) > 0 then
		--C�n T�i �����ſ���
		local sceneType = LuaFnGetSceneType(sceneId)
		if sceneType == 1 then --����������ng����
			AddNumText(sceneId, x200045_g_ScriptId,x200045_g_MissionName,2,-1);
		end
		
	--Th�a m�n�����������
	elseif x200045_CheckAccept(sceneId,selfId) > 0 then	
		local sceneType = LuaFnGetSceneType(sceneId)
		if sceneType ~= 1 then --����������ng����
			AddNumText(sceneId,x200045_g_ScriptId,x200045_g_MissionName,1,-1)
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200045_CheckAccept( sceneId, selfId )
	--�ж�����
	--1,ǰ���������
	if IsMissionHaveDone(sceneId,selfId,x200045_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200045_g_MissionId) > 0  then
		return 0
	end
	
	--2,��c�p�ﵽ60
	if GetLevel(sceneId, selfId) < 60   then
		return 0
	end

	return 1
end


--**********************************
--Ti�p th�
--**********************************
function x200045_OnAccept( sceneId, selfId, targetId )

	if x200045_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200045_g_MissionId, x200045_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#{TM_20080313_02}" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#{TM_20080313_10}",MSG2PLAYER_PARA )

	-- ��������to� � ��0λ��Ϊ0
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200045_g_MissionId)
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)
	
	-- ���������ϵto� � �¼�"�������ɱ��"
	SetMissionEvent(sceneId, selfId, x200045_g_MissionId, 0)

end

--**********************************
--����
--**********************************
function x200045_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200045_g_MissionId )
end

--**********************************
--����
--**********************************
function x200045_OnContinue( sceneId, selfId, targetId )
  BeginEvent(sceneId)
	AddText(sceneId,x200045_g_MissionName)
	AddText(sceneId,x200045_g_MissionComplete)
	AddMoneyBonus( sceneId, x200045_g_MoneyBonus )
	for i, item in x200045_g_RadioItemBonus do
		AddRadioItemBonus( sceneId, item.id, item.num )
	end
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x200045_g_ScriptId,x200045_g_MissionId)
end	

--**********************************
--�����ng������ύ
--**********************************
function x200045_CheckSubmit( sceneId, selfId, selectRadioId )
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200045_g_MissionId)
	
	if GetMissionParam(sceneId,selfId,misIndex,0) == 1    then
		return 1
	end
	return 0
end

--**********************************
--�ύ
--**********************************
function x200045_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- �����ύto� � �����ж�
	-- 1,��C�i n�y ����,
	if( IsHaveMission(sceneId,selfId,x200045_g_MissionId) > 0)  then
  	BeginAddItem(sceneId)
		for i, item in x200045_g_RadioItemBonus do
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

		AddMoney(sceneId,selfId,x200045_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200045_g_exp)

		DelMission( sceneId,selfId,  x200045_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200045_g_MissionId )
		Msg2Player(  sceneId, selfId,"#{TM_20080313_11}",MSG2PLAYER_PARA )

		Msg2Player( sceneId, selfId,"#{TM_20080313_12}",MSG2PLAYER_PARA )
		local selfGuid = LuaFnObjId2Guid(sceneId, selfId)
		LuaFnSendMailToGUID(sceneId, selfGuid, "#{TM_20080313_13}")

		-- ����޹�ɽ����,��10 �i�m���� �i�m
		local nPoint = GetHumanJuqingPoint(sceneId, selfId)
		SetHumanJuqingPoint(sceneId, selfId, nPoint+10)
		
		-- ֪ͨ���,����������ѭ��������
		-- ����T�i ����ȥAA��to� � [bb,cc]�ҵ�DD,Ti�p th�DDѭ������.
		local strText1 = "#{LOOTMISSION_MAIL_10}#r#{LOOTMISSION_MAIL_11}#r#{LOOTMISSION_MAIL_12}"
		LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText1)
		
		BeginEvent(sceneId)
			AddText(sceneId,"#{LOOTMISSION_INFO_05}");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200045_OnKillObject( sceneId, selfId, objdataId, objId )

--	if GetName(sceneId,objId) == "Thi�n S�n аng L�o"	  then
--		-- ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
--		local num = GetMonsterOwnerCount(sceneId,objId)
--		for j=0,num-1  do
--			-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
--			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
--			-- ��C�i n�y ����ng����ng��C�i n�y ����
--			if IsHaveMission(sceneId, humanObjId, x200045_g_MissionId) > 0 then
--				local misIndex = GetMissionIndexByID(sceneId,selfId,x200045_g_MissionId)
--				SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
--				BeginEvent(sceneId)
--				AddText(sceneId,"��սʤThi�n S�n аng L�o: 1/1")
--				EndEvent(sceneId)
--				DispatchMissionTips(sceneId,humanObjId)
--			end
--		end
--	end

end

--**********************************
--���������¼�
--**********************************
function x200045_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200045_OnItemChanged( sceneId, selfId, itemdataId )
	
end




