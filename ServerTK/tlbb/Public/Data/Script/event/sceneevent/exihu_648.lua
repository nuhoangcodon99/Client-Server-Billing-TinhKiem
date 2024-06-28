--ɱ��,T�i ������to� � ͬʱ,����Ҫɱto� � ��
--�շ�to� � ����

--MisDescBegin
--�ű���
x212100_g_ScriptId = 212100

--�����
x212100_g_MissionId = 648

--Ŀ��NPC
x212100_g_Name	="T� Phi"

--�������
x212100_g_MissionKind = 41

--��ng c�p nhi�m v� 
x212100_g_MissionLevel = 25

--��ng����ngTinhӢ����
x212100_g_IfMissionElite = 0

--������
x212100_g_MissionName="Th� gi�i hoa c�"
--��������
x212100_g_MissionInfo="#{Mis_K_Xihu_1000042}"
--M�c ti�u nhi�m v�
x212100_g_MissionTarget="#{MIS_TAR_ADD_010}"		
--δHo�n t�t nhi�m v�to� � npc�Ի�
x212100_g_ContinueInfo="  Ng߽i �� gi�t ch�t #RM�ch H�u Nh�n#W r�i?"
--�ύʱnpcto� � ��
x212100_g_MissionComplete="  �a t� ng߽i, 1 th� gi�i m�i nh� ph�ng ph�t tr߾c m�t ta"		

x212100_g_MoneyBonus=1800
x212100_g_exp=18000
--x212100_g_ItemBonus={{id=10111008,num=1}}


x212100_g_Custom	= { {id="�� gi�t ch�t M�ch H�u Nh�n",num=1} }
x212100_g_IsMissionOkFail = 0

x212100_g_RadioItemBonus={{id=10412063 ,num=1},{id=10413065,num=1},{id=10402065,num=1}}

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212100_OnDefaultEvent( sceneId, selfId, targetId )

  --��������ɹ�C�i n�y ����
  if (IsMissionHaveDone(sceneId,selfId,x212100_g_MissionId) > 0 ) then
    return

	elseif( IsHaveMission(sceneId,selfId,x212100_g_MissionId) > 0)  then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId, x212100_g_MissionName)
			AddText(sceneId, x212100_g_ContinueInfo)
		EndEvent( )
		local bDone = x212100_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x212100_g_ScriptId,x212100_g_MissionId,bDone)
				
	--Th�a m�n�����������
  elseif x212100_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212100_g_MissionName)
			AddText(sceneId,x212100_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x212100_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}")
			AddMoneyBonus( sceneId, x212100_g_MoneyBonus )
			for i, item in x212100_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x212100_g_ScriptId,x212100_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x212100_OnEnumerate( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212100_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x212100_g_MissionId) > 0 then
		AddNumText(sceneId, x212100_g_ScriptId, x212100_g_MissionName, 2, -1);
	--Th�a m�n�����������
	elseif x212100_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId, x212100_g_ScriptId, x212100_g_MissionName, 1, -1);
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x212100_CheckAccept( sceneId, selfId )

	--Ҫ�����to� � ǰ������
	if IsMissionHaveDone(sceneId,selfId,645) <= 0 then		--���Ż���
		return 0
	elseif IsMissionHaveDone(sceneId,selfId,646) <= 0 then	--�׵�����
		return 0
	elseif IsMissionHaveDone(sceneId,selfId,647) <= 0 then--����ׯ
		return 0
	end
	
	--C�n 1c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= x212100_g_MissionLevel then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x212100_OnAccept( sceneId, selfId )
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212100_g_MissionId) > 0 then
		return 
	end
	
	-- 1,��⵱ǰ��ng����ng�Ѿ�T�i �������� ������ ��,�����,��ʾ�����T�i ���ܽ�C�i n�y ����
	local nMonsterNum = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=1, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		
		if GetName(sceneId, nMonsterId)  == "M�ch H�u Nh�n"  then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i hi�n kh�ng th� nh�n nhi�m v� n�y");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			return
		end
	end
		
	-- ������������б�
	local ret = AddMission( sceneId,selfId, x212100_g_MissionId, x212100_g_ScriptId, 1, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	
	--���������������to� � ������ź�����λ��
	local misIndex = GetMissionIndexByID(sceneId, selfId, x212100_g_MissionId)-- �i�m������T�i 20c�i������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--�������кŰ��������to� � ��m�t λ��0	��m�t λ��ng���/th�t b�i���

	Msg2Player(  sceneId, selfId,"#YTi�p nh�n#W" .. x212100_g_MissionName, MSG2PLAYER_PARA )
	BeginEvent(sceneId)
		strText = "#YTi�p nh�n#W " .. x212100_g_MissionName
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
	-- ����C�i n�y �ֳ���,ͬʱ����
	local nMonsterId = LuaFnCreateMonster(sceneId, 509, 161, 262, 5, 0, -1)
	LuaFnSendSpecificImpactToUnit(sceneId,nMonsterId,nMonsterId,nMonsterId,44,3)
	CallScriptFunction((200060), "Duibai",sceneId, "M�ch H�u Nh�n", "T�y H�", "T� Phi, � s�u b�, ng߽i c�n m� t߷ng l�m lung lay v� tr� th�ng tr� c�a th�y ta sao? T� Phi, ng�y n�y n�m sau ch�nh l� ng�y gi� c�a ng߽i." )
	
	SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
	SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)

	--����C�i n�y ��to� � ��ʧʱ��
	SetCharacterDieTime(sceneId, nMonsterId, 600000)

end

--**********************************
--������ʱ��
--**********************************
function x212100_OnSceneTimer( sceneId, selfId )

end

--**********************************
--����
--**********************************
function x212100_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x212100_g_MissionId )
end

--**********************************
--����
--**********************************
function x212100_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x212100_g_MissionName)
		AddText(sceneId,x212100_g_MissionComplete)
		AddMoneyBonus( sceneId, x212100_g_MoneyBonus )
		for i, item in x212100_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212100_g_ScriptId,x212100_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212100_CheckSubmit( sceneId, selfId )

	--local missionId = GetMissionIdByIndex(x212100_g_ScriptId)
	local missionId = x212100_g_MissionId
	local misIndex = GetMissionIndexByID(sceneId,selfId,missionId)

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
function x212100_OnSubmit( sceneId, selfId, targetId, selectRadioId )
		-- ��ȫ�Լ��
		-- 1����������ng����ng��C�i n�y ����
		if IsHaveMission(sceneId,selfId,x212100_g_MissionId) <= 0 then
			return
		end
		
		-- 2��Ho�n t�t nhi�m v�to� � ������
		if x212100_CheckSubmit(sceneId, selfId) <= 0    then
			return
		end
		
		BeginAddItem(sceneId)
		for i, item in x212100_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		local ret = EndAddItem(sceneId,selfId)
		
		if ret > 0 then
			AddItemListToHuman(sceneId,selfId)
			-- ��Ǯ��Kinh nghi�m
			AddMoney(sceneId,selfId,x212100_g_MoneyBonus )
			LuaFnAddExp( sceneId, selfId, x212100_g_exp)
			
			DelMission( sceneId,selfId, x212100_g_MissionId )
			--���������Ѿ�����ɹ�
			MissionCom( sceneId,selfId, x212100_g_MissionId )
			
		else
			--������û�мӳɹ�
			BeginEvent(sceneId)
				AddText(sceneId, "Nhi�m v� th�t b�i!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
		
end

--**********************************
--ɱ����������
--**********************************
function x212100_OnKillObject( sceneId, selfId, objdataId ,objId )

	--local missionId = TGetMissionIdByIndex(x212100_g_ScriptId)
	local missionId = x212100_g_MissionId
	local misIndex = GetMissionIndexByID(sceneId,selfId,missionId)
	local monsterName = GetMonsterNamebyDataId(objdataId)
	
	if monsterName == "M�ch H�u Nh�n"   then
		
		CallScriptFunction((200060), "Duibai",sceneId, "T� Phi ", "T�y H�", "H�i c�c anh em thu� qu�, h�m nay, ch�nh h�m nay, ch�ng ta �� t� do, ch�ng ta kh�ng c�n l� n� l� n�a." )

		--ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			--ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, missionId) > 0 then
				-- ���ж���ng����ng�Ѿ�Th�a m�n����ɱ�־
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,missionId)

				if GetMissionParam(sceneId, humanObjId, misIndex, 0) <=0  then
		     	BeginEvent(sceneId)
						local strText = format("�� gi�t ch�t M�ch H�u Nh�n: 1/1" )
						AddText(sceneId, strText)
				  EndEvent(sceneId)
			  	DispatchMissionTips(sceneId,humanObjId)
					-- �����������
					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
					SetMissionByIndex(sceneId,humanObjId,misIndex,1,1)
				end
			end
		end
	end
end

--**********************************
--���������¼�
--**********************************
function x212100_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212100_OnItemChanged( sceneId, selfId, itemdataId )
end







