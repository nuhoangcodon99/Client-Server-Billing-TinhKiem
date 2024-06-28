--ɱ��,T�i ������to� � ͬʱ,����Ҫɱto� � ��
--Mai L�nh �������

--MisDescBegin
--�ű���
x212113_g_ScriptId = 212113

--�����
x212113_g_MissionId = 678

--ǰ�������
x212113_g_PreMissionId1 = 673
x212113_g_PreMissionId2 = 674
x212113_g_PreMissionId3 = 675

--Ŀ��NPC
x212113_g_Name	="Nguy�t Qu�"

--�������
x212113_g_MissionKind = 44

--��ng c�p nhi�m v� 
x212113_g_MissionLevel = 70

--��ng����ngTinhӢ����
x212113_g_IfMissionElite = 0

--������
x212113_g_MissionName="Хu s� t�i �c"
--��������
x212113_g_MissionInfo="#{Mis_K_Meiling_1000183}"
--M�c ti�u nhi�m v�
x212113_g_MissionTarget="    Nguy�t Qu� � Mai L�nh #{_INFOAIM192,70,33, Nguy�t Qu�} y�u c�u ng߽i gi�t ch�t Nghi�m B�ch H�. C�n th�n, ch� c�n Nguy�t Qu� b�t �u c�ng t�, #RNghi�m B�ch H�#W s� xu�t hi�n ngay."		
--δHo�n t�t nhi�m v�to� � npc�Ի�
x212113_g_ContinueInfo="  Ng߽i �� gi�t ch�t Nghi�m B�ch H� ch�a?"
--�ύʱnpcto� � ��
x212113_g_MissionComplete="  �a t� ng߽i, �a t�. Ha ha... ta kh�ng sao. C� m�i l�n c�ng t� l�i t�n hao �t ch�n kh�.."		

x212113_g_MoneyBonus=51700
x212113_g_exp=37000

x212113_g_szMonsterName = "Nghi�m B�ch H�"
x212113_g_MonsterID = 525

x212113_g_Custom	= { {id="�� gi�t ch�t Nghi�m B�ch H�",num=1} }
x212113_g_IsMissionOkFail = 0

x212113_g_RadioItemBonus={{id=10412072 ,num=1},{id=10403056,num=1}}

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212113_OnDefaultEvent( sceneId, selfId, targetId )

  --��������ɹ�C�i n�y ����
  if (IsMissionHaveDone(sceneId,selfId,x212113_g_MissionId) > 0 ) then
    return

	elseif( IsHaveMission(sceneId,selfId,x212113_g_MissionId) > 0)  then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId, x212113_g_MissionName)
			AddText(sceneId, x212113_g_ContinueInfo)
		EndEvent( )
		local bDone = x212113_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x212113_g_ScriptId,x212113_g_MissionId,bDone)
				
	--Th�a m�n�����������
  elseif x212113_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212113_g_MissionName)
			AddText(sceneId,x212113_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x212113_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}")
			AddMoneyBonus( sceneId, x212113_g_MoneyBonus )
			for i, item in x212113_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent()
		DispatchMissionInfo(sceneId,selfId,targetId,x212113_g_ScriptId,x212113_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x212113_OnEnumerate( sceneId, selfId, targetId )
	
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212113_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x212113_g_MissionId) > 0 then
		AddNumText(sceneId, x212113_g_ScriptId, x212113_g_MissionName, 2, -1);
	--Th�a m�n�����������
	elseif x212113_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId, x212113_g_ScriptId, x212113_g_MissionName, 1, -1);
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x212113_CheckAccept( sceneId, selfId )

	--Ҫ�����to� � 3c�iǰ������
	if IsMissionHaveDone(sceneId,selfId,x212113_g_PreMissionId1) <= 0 then
			return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x212113_g_PreMissionId2) <= 0 then
			return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x212113_g_PreMissionId3) <= 0 then
			return 0
	end
	
	--C�n 1c�p���ܽ�
	if GetLevel( sceneId, selfId ) < x212113_g_MissionLevel then
		return 0
	end
	
	return 1
	
end

--**********************************
--Ti�p th�
--**********************************
function x212113_OnAccept( sceneId, selfId )
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212113_g_MissionId) > 0 then
		return 
	end
		
	-- �ȼ���ͼ����ng����ng��C�i n�y ��,����оͲ��ٷų���
	local nMonsterNum = GetMonsterCount(sceneId)
	local ii = 0
	local bHaveMonster = 0
	for ii=1, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		if GetName(sceneId, nMonsterId)  == "Nghi�m B�ch H�"  then
			BeginEvent(sceneId)
				strText = "Hi�n kh�ng th� nh�n nhi�m v� n�y"
				AddText(sceneId, strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	end

	-- ������������б�
	local ret = AddMission( sceneId,selfId, x212113_g_MissionId, x212113_g_ScriptId, 1, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	
	--���������������to� � ������ź�����λ��
	local misIndex = GetMissionIndexByID(sceneId, selfId, x212113_g_MissionId)-- �i�m������T�i 20c�i������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--�������кŰ��������to� � ��m�t λ��0	��m�t λ��ng���/th�t b�i���
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)					--�������кŰ��������to� � ��m�t λ��0	��m�t λ��ng���/th�t b�i���

	Msg2Player(  sceneId, selfId,"#YTi�p nh�n#W" .. x212113_g_MissionName, MSG2PLAYER_PARA )
	BeginEvent(sceneId)
		strText = "#YTi�p nh�n#W ".. x212113_g_MissionName
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
	-- ��������
	local nMonstrId = LuaFnCreateMonster(sceneId, x212113_g_MonsterID, 189, 71, 1, 0, -1)
	CallScriptFunction((200060), "Paopao",sceneId, "Nghi�m B�ch H�", "Mai L�nh ", "а ph�m nh�n ��ng th߽ng. Ng߽i t߷ng ch� d�a v�o s�c l�c b� m�n c�a c�c ng߽i l� c� th� ph�n l�i � ch� c�a Tu La V߽ng sao? Ng߽i s� ph�i tr� gi� cho s� n�ng n�i c�a m�nh. Tu La V߽ng s� ch� ��i �n h�n c�a ng߽i!")
	SetCharacterDieTime(sceneId, nMonstrId, 600000)
	
end

--**********************************
--����
--**********************************
function x212113_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x212113_g_MissionId )
end

--**********************************
--����
--**********************************
function x212113_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x212113_g_MissionName)
		AddText(sceneId,x212113_g_MissionComplete)
		AddMoneyBonus( sceneId, x212113_g_MoneyBonus )
		for i, item in x212113_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212113_g_ScriptId,x212113_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212113_CheckSubmit( sceneId, selfId )

	local missionId = x212113_g_MissionId
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
function x212113_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- ��ȫ�Լ��
	-- 1����������ng����ng��C�i n�y ����
	if IsHaveMission(sceneId,selfId,x212113_g_MissionId) <= 0 then
		return
	end
	
	-- 2��Ho�n t�t nhi�m v�to� � ������
	if x212113_CheckSubmit(sceneId, selfId) <= 0    then
		return
	end
	
	BeginAddItem(sceneId)
		for i, item in x212113_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
	local ret = EndAddItem(sceneId,selfId)

	if ret > 0  then
		-- ��Ǯ��Kinh nghi�m
		AddMoney(sceneId,selfId,x212113_g_MoneyBonus )
		LuaFnAddExp( sceneId, selfId, x212113_g_exp)
	
		DelMission( sceneId,selfId, x212113_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId, x212113_g_MissionId )
		AddItemListToHuman(sceneId,selfId)
		
	else
		--������û�мӳɹ�
		BeginEvent(sceneId)
			strText = "Nhi�m v� th�t b�i!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--ɱ����������
--**********************************
function x212113_OnKillObject( sceneId, selfId, objdataId ,objId )

	local missionId = x212113_g_MissionId
	local misIndex = GetMissionIndexByID(sceneId,selfId,missionId)
	local monsterName = GetMonsterNamebyDataId(objdataId)
	
	if monsterName == x212113_g_szMonsterName   then

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
						local strText = format("�� chi�n th�ng Nghi�m B�ch H�: 1/1" )
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
function x212113_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212113_OnItemChanged( sceneId, selfId, itemdataId )
end







