--ɱ��,T�i ������to� � ͬʱ,����Ҫɱto� � ��
--����to� � ����

--MisDescBegin
--�ű���
x212102_g_ScriptId = 212102

--�����
x212102_g_MissionId = 536

--Ŀ��NPC
x212102_g_Name	="L� B�nh"

--�������
x212102_g_MissionKind = 30

--��ng c�p nhi�m v� 
x212102_g_MissionLevel = 48

--��ng����ngTinhӢ����
x212102_g_IfMissionElite = 0

--������
x212102_g_MissionName="Th� th�ch l�ng th�nh"
--��������
x212102_g_MissionInfo="#{Lua_yanbei_0001}"
--M�c ti�u nhi�m v�
x212102_g_MissionTarget="  L� B�nh � Nh�n B�c #{_INFOAIM271,49,19, L� B�nh} y�u c�u c�c h� chi�n th�ng Ti�u B�n. C�n th�n �y, ch� c�n L� B�nh ra l�nh m�t c�u, #RTi�u B�n#W s� xu�t hi�n ngay."	
--δHo�n t�t nhi�m v�to� � npc�Ի�
x212102_g_ContinueInfo="  Ng߽i �� ��nh b�i Ti�u B�n ch�a?"
--�ύʱnpcto� � ��
x212102_g_MissionComplete="  Th�n th� gi�i th� n�y qu� hi�m g�p. Xem ra ��ng nh� l�i �n. C�c h� ch�nh l� anh h�ng c�a Nh�n B�c"		

x212102_g_MoneyBonus=4750
x212102_g_exp=19800

--x212102_g_ItemBonus={{id=30102003, num=2}}

x212102_g_szMonsterName = "Ti�u B�n"

x212102_g_Custom	= { {id="�� gi�t ch�t Ti�u B�n",num=1} }
x212102_g_IsMissionOkFail = 0

x212102_g_RadioItemBonus={{id=10420068 ,num=1},{id=10421068,num=1}}

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212102_OnDefaultEvent( sceneId, selfId, targetId )

  --��������ɹ�C�i n�y ����
  if (IsMissionHaveDone(sceneId,selfId,x212102_g_MissionId) > 0 ) then
    return

	elseif( IsHaveMission(sceneId,selfId,x212102_g_MissionId) > 0)  then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId, x212102_g_MissionName)
			AddText(sceneId, x212102_g_ContinueInfo)
		EndEvent( )
		local bDone = x212102_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x212102_g_ScriptId,x212102_g_MissionId,bDone)
				
	--Th�a m�n�����������
  elseif x212102_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212102_g_MissionName)
			AddText(sceneId,x212102_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x212102_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}")
			AddMoneyBonus( sceneId, x212102_g_MoneyBonus )
			for i, item in x212102_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent()
		DispatchMissionInfo(sceneId,selfId,targetId,x212102_g_ScriptId,x212102_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x212102_OnEnumerate( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212102_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x212102_g_MissionId) > 0 then
		AddNumText(sceneId, x212102_g_ScriptId, x212102_g_MissionName, 2, -1);
	--Th�a m�n�����������
	elseif x212102_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId, x212102_g_ScriptId, x212102_g_MissionName, 1, -1);
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x212102_CheckAccept( sceneId, selfId )

	--Ҫ�����to� � ǰ������
	if IsMissionHaveDone(sceneId,selfId,535) <= 0 then		--���Ż���
		return 0
	end
	
	--C�n 1c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= x212102_g_MissionLevel then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x212102_OnAccept( sceneId, selfId )
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212102_g_MissionId) > 0 then
		return 
	end
		
	-- ������������б�
	local ret = AddMission( sceneId,selfId, x212102_g_MissionId, x212102_g_ScriptId, 1, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	
	--���������������to� � ������ź�����λ��
	local misIndex = GetMissionIndexByID(sceneId, selfId, x212102_g_MissionId)-- �i�m������T�i 20c�i������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--�������кŰ��������to� � ��m�t λ��0	��m�t λ��ng���/th�t b�i���

	Msg2Player(  sceneId, selfId,"#YTi�p nh�n#W" .. x212102_g_MissionName, MSG2PLAYER_PARA )
	BeginEvent(sceneId)
		strText = "#YTi�p nh�n#W " .. x212102_g_MissionName
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
	-- �ȼ���ͼ����ng����ng��C�i n�y ��,����оͲ��ٷų���
	local nMonsterNum = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=1, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		
		if GetName(sceneId, nMonsterId)  == "Ti�u B�n"  then
			return
		end
	end
	-- ��������
	LuaFnCreateMonster(sceneId, 521, 272, 53, 1, 0, -1)

end

--**********************************
--����
--**********************************
function x212102_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x212102_g_MissionId )
end

--**********************************
--����
--**********************************
function x212102_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x212102_g_MissionName)
		AddText(sceneId,x212102_g_MissionComplete)
		AddMoneyBonus( sceneId, x212102_g_MoneyBonus )
		for i, item in x212102_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212102_g_ScriptId,x212102_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212102_CheckSubmit( sceneId, selfId )

	local missionId = x212102_g_MissionId
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
function x212102_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- ��ȫ�Լ��
	-- 1����������ng����ng��C�i n�y ����
	if IsHaveMission(sceneId,selfId,x212102_g_MissionId) <= 0 then
		return
	end
	
	-- 2��Ho�n t�t nhi�m v�to� � ������
	if x212102_CheckSubmit(sceneId, selfId) <= 0    then
		return
	end
	
	BeginAddItem(sceneId)
		for i, item in x212102_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
	local ret = EndAddItem(sceneId,selfId)
	
	if ret > 0 then
		AddItemListToHuman(sceneId,selfId)
		-- ��Ǯ��Kinh nghi�m
		AddMoney(sceneId,selfId,x212102_g_MoneyBonus )
		LuaFnAddExp( sceneId, selfId, x212102_g_exp)
		
		DelMission( sceneId,selfId, x212102_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId, x212102_g_MissionId )
		
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
function x212102_OnKillObject( sceneId, selfId, objdataId ,objId )

	local missionId = x212102_g_MissionId
	local misIndex = GetMissionIndexByID(sceneId,selfId,missionId)
	local monsterName = GetMonsterNamebyDataId(objdataId)
	
	if monsterName == x212102_g_szMonsterName   then

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
						local strText = format("�� chi�n th�ng Ti�u B�n: 1/1" )
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
function x212102_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212102_OnItemChanged( sceneId, selfId, itemdataId )
end







