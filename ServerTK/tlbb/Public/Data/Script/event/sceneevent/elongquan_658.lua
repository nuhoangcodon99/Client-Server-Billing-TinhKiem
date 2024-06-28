--ɱ��,T�i ������to� � ͬʱ,����Ҫɱto� � ��
--���m�t ��

--MisDescBegin
--�ű���
x212109_g_ScriptId = 212109

--�����
x212109_g_MissionId = 658

--Ŀ��NPC
x212109_g_Name	="A Thanh"

--�������
x212109_g_MissionKind = 42

--��ng c�p nhi�m v� 
x212109_g_MissionLevel = 38

--��ng����ngTinhӢ����
x212109_g_IfMissionElite = 0

--������
x212109_g_MissionName="Tr�n ��nh cu�i c�ng"
--��������
x212109_g_MissionInfo="#{Lua_Longquan_0001}"
--M�c ti�u nhi�m v�
x212109_g_MissionTarget="#RA Thanh#W � #GLong Tuy�n �o�n Ki�u #W#{_INFOAIM51,115,31, A Thanh} y�u c�u ng߽i gi�t ch�t #RTh�ng Thi�n#W. #RTh�ng Thi�n #W#{_INFOAIM48,51,31,-1} th߶ng xu�t hi�n g�n #GQuy V�n ��nh#W."		
--δHo�n t�t nhi�m v�to� � npc�Ի�
x212109_g_ContinueInfo="  Ng߽i �� gi�t ch�t Th�ng Thi�n ch�a?"
--�ύʱnpcto� � ��
x212109_g_MissionComplete="  T�t c� �� k�t th�c r�i? Nh��c b�ng ta v� Tr�ng Chi Chi c�ng n�n c�t ��t �i ch�ng"		

x212109_g_MoneyBonus=4000
x212109_g_exp=20000

--x212109_g_ItemBonus={{id=10111011, num=1}}

x212109_g_RadioItemBonus={{id=10421066 ,num=1},{id=10411073,num=1},{id=10410067,num=1}}

x212109_g_Custom	= { {id="�� gi�t ch�t Th�ng Thi�n",num=1} }

x212109_g_IsMissionOkFail = 0		--����to� � ��0λ

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212109_OnDefaultEvent( sceneId, selfId, targetId )

  --��������ɹ�C�i n�y ����
  if (IsMissionHaveDone(sceneId,selfId,x212109_g_MissionId) > 0 ) then
    return

	elseif( IsHaveMission(sceneId,selfId,x212109_g_MissionId) > 0)  then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId, x212109_g_MissionName)
			AddText(sceneId, x212109_g_ContinueInfo)
		EndEvent( )
		local bDone = x212109_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x212109_g_ScriptId,x212109_g_MissionId,bDone)
				
	--Th�a m�n�����������
  elseif x212109_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212109_g_MissionName)
			AddText(sceneId,x212109_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x212109_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}")
			AddMoneyBonus( sceneId, x212109_g_MoneyBonus )
			for i, item in x212109_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent()
		DispatchMissionInfo(sceneId,selfId,targetId,x212109_g_ScriptId,x212109_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x212109_OnEnumerate( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212109_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x212109_g_MissionId) > 0 then
		AddNumText(sceneId, x212109_g_ScriptId, x212109_g_MissionName, 2, -1)
	--Th�a m�n�����������
	elseif x212109_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId, x212109_g_ScriptId, x212109_g_MissionName, 1, -1)
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x212109_CheckAccept( sceneId, selfId )

	--Ҫ�����to� � ǰ������
	if IsMissionHaveDone(sceneId,selfId,656) <= 0 then		--���Ż���
		return 0
	elseif IsMissionHaveDone(sceneId,selfId,657) <= 0 then		--���Ż���
		return 0
	end
	
	--C�n 1c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= x212109_g_MissionLevel then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x212109_OnAccept( sceneId, selfId )
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212109_g_MissionId) > 0 then
		return 
	end

	-- ��������ϼ�m�t c�i����
	BeginAddItem(sceneId)
		AddItem( sceneId, 40002152, 1)
	local ret = EndAddItem(sceneId,selfId)
	
	if ret > 0 then
		-- ������������б�
		local ret = AddMission( sceneId,selfId, x212109_g_MissionId, x212109_g_ScriptId, 1, 0, 0 )
		if ret <= 0 then
			Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
			return
		end
		
		AddItemListToHuman(sceneId,selfId)

		--���������������to� � ������ź�����λ��
		local misIndex = GetMissionIndexByID(sceneId, selfId, x212109_g_MissionId)-- �i�m������T�i 20c�i������to� � ���к�
		SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--�������кŰ��������to� � ��m�t λ��0	��m�t λ��ng���/th�t b�i���
		SetMissionByIndex(sceneId,selfId,misIndex,1,0)					--�������кŰ��������to� � ��m�t λ��0	��m�t λ��ng���/th�t b�i���
	
		Msg2Player(  sceneId, selfId,"#YTi�p nh�n#W " .. x212109_g_MissionName, MSG2PLAYER_PARA )

		BeginEvent(sceneId)
			strText = "#YTi�p nh�n#W ".. x212109_g_MissionName
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	else
	
		Msg2Player(  sceneId, selfId,"#YTay n�i c�a ng߽i �� �y#W", MSG2PLAYER_PARA )
	end	

end	

--**********************************
--����
--**********************************
function x212109_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x212109_g_MissionId )
	
	--ɾ��������Ʒ
	DelItem( sceneId, selfId, 40002152, 1 )
end

--**********************************
--����
--**********************************
function x212109_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x212109_g_MissionName)
		AddText(sceneId,x212109_g_MissionComplete)
		AddMoneyBonus( sceneId, x212109_g_MoneyBonus )
		for i, item in x212109_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212109_g_ScriptId,x212109_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212109_CheckSubmit( sceneId, selfId )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212109_g_MissionId)
	
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
function x212109_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- ��ȫ�Լ��
	-- 1����������ng����ng��C�i n�y ����
	if IsHaveMission(sceneId,selfId,x212109_g_MissionId) <= 0 then
		return
	end
	
	-- 2��Ho�n t�t nhi�m v�to� � ������
	if x212109_CheckSubmit(sceneId, selfId) <= 0    then
		return
	end
	
	BeginAddItem(sceneId)
		for i, item in x212109_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
	local ret = EndAddItem(sceneId,selfId)
	
	if ret > 0 then
		--ɾ��������Ʒ
		DelItem( sceneId, selfId, 40002152, 1 )
		AddItemListToHuman(sceneId,selfId)
		-- ��Ǯ��Kinh nghi�m
		AddMoney(sceneId,selfId,x212109_g_MoneyBonus )
		LuaFnAddExp( sceneId, selfId, x212109_g_exp)
		
		DelMission( sceneId,selfId, x212109_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId, x212109_g_MissionId )
	else
		--������û�мӳɹ�
		BeginEvent(sceneId)
			AddText(sceneId, "Kh�ng th� Ho�n t�t nhi�m v�");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
		
end

--**********************************
--ɱ����������
--**********************************
function x212109_OnKillObject( sceneId, selfId, objdataId ,objId )

	local monsterName = GetMonsterNamebyDataId(objdataId)
	
	-- ���������ng����ng�Ѿ����
	if x212109_CheckSubmit(sceneId, selfId) > 0    then
		return
	end
	
	if monsterName == "Th�ng Thi�n"   then
		--ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			--ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x212109_g_MissionId) > 0 then
				-- ���ж���ng����ng�Ѿ�Th�a m�n����ɱ�־
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,x212109_g_MissionId)

				if GetMissionParam(sceneId, humanObjId, misIndex, 0) <=0  then
		     	BeginEvent(sceneId)
						local strText = format("�� gi�t ch�t Th�ng Thi�n: 1/1" )
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
function x212109_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212109_OnItemChanged( sceneId, selfId, itemdataId )
end

