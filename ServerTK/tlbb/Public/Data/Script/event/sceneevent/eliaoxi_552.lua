--Li�u T�y �u�i theo H�c Phong
--MisDescBegin
--�ű���
x212107_g_ScriptId = 212107

--�����
x212107_g_MissionId = 552

--�������
x212107_g_MissionKind = 32

--��ng c�p nhi�m v� 
x212107_g_MissionLevel = 75

--��ng����ngTinhӢ����
x212107_g_IfMissionElite = 0

--���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������**********************
--������ng���Ѿ����
x212107_g_IsMissionOkFail = 0		--����to� � ��0λ
x212107_g_Custom	= { {id="�� �t ph�n s�i kh�",num=1} }

--������ng��̬**************************************************************

--����C�n  �i�m��to� � ��Ʒ
--x212107_g_DemandItem={{id=40002112,num=1}}		--������1λ

--�����ı�����
x212107_g_MissionName="�u�i theo H�c Phong"
x212107_g_MissionInfo="#{Lua_liaoxi_001}"
x212107_g_MissionTarget="  D�ng l�a �t ph�n s�i kh�, xua �u�i H�c Phong, sau �� �n #GQu�ng Ninh Tr�n#W, b�o c�o cho #RB� Nhan #W#{_INFOAIM164,199,21, B� Nhan} ph�t hi�n c�a c�c h�."
x212107_g_ContinueInfo="  Ng߽i �� �u�i H�c Phong �i ch�a?"
x212107_g_MissionComplete="  Ng߶i tr� tu�i, ng߽i ch�nh l� c�u tinh c�a ch�ng ta. Thay m�t t�t c� t�c nh�n ta, ta xin c�m t� s� gi�p �� c�a c�c h�. Ch�ng ta s� m�i kh�ng qu�n"

--����
x212107_g_MoneyBonus=49800
x212107_g_Exp = 45000
--x212107_g_ItemBonus={{id=30003007,num=5}}
x212107_g_RadioItemBonus={{id=10411081 ,num=1},{id=10412074,num=1}}


--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212107_OnDefaultEvent( sceneId, selfId, targetId )
	
	--����ѽӴ�����
	if IsMissionHaveDone( sceneId, selfId, x212107_g_MissionId ) > 0 then
		return 
	elseif IsHaveMission(sceneId,selfId,x212107_g_MissionId) > 0 then
--		if GetName(sceneId,targetId) == x212107_g_Name then
			--���ͽ�����ǰto� � ������Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x212107_g_MissionName);
				AddText(sceneId,x212107_g_ContinueInfo);
			EndEvent(sceneId)
    		done = x212107_CheckSubmit( sceneId, selfId );
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212107_g_ScriptId,x212107_g_MissionId,done)
--		end
	--Th�a m�n�����������
	elseif GetLevel( sceneId, selfId ) >= 75 then
	
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212107_g_MissionName);
			AddText(sceneId,x212107_g_MissionInfo);
			AddText(sceneId,"#{M_MUBIAO}");
			AddText(sceneId,x212107_g_MissionTarget);
			AddMoneyBonus( sceneId, x212107_g_MoneyBonus )
			for i, item in x212107_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent(sceneId)
		DispatchMissionInfo(sceneId,selfId,targetId,x212107_g_ScriptId,x212107_g_MissionId)

	end
end

--**********************************
--�о��¼�
--**********************************
function x212107_OnEnumerate( sceneId, selfId, targetId )
	
	if IsMissionHaveDone( sceneId, selfId, x212107_g_MissionId ) > 0 then
		return 

	elseif IsHaveMission(sceneId,selfId,x212107_g_MissionId) > 0 then
		AddNumText(sceneId, x212107_g_ScriptId,x212107_g_MissionName, 2, -1)

	--Th�a m�n�����������
	elseif x212107_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212107_g_MissionName then
			AddNumText(sceneId, x212107_g_ScriptId, x212107_g_MissionName, 1, -1);
		end
	end

end

--**********************************
--��ⴥ������
--**********************************
function x212107_CheckAccept( sceneId, selfId )
	--C�n 60c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= 75 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x212107_OnAccept( sceneId, selfId )

	-- ��������ng����ng�Ѿ���ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId, selfId, x212107_g_MissionId) > 0   then
		return
	end
	
	if x212107_CheckAccept(sceneId, selfId)  <= 0   then
		return
	end

	-- ����m�t c�i�������
	BeginAddItem(sceneId)
		AddItem( sceneId, 40002070, 1)
		--AddItem( sceneId, 40002069, 1)
	local retItem = EndAddItem(sceneId,selfId)

	if retItem < 0   then
		Msg2Player(  sceneId, selfId,"#YTay n�i nhi�m v� �� �y#W", MSG2PLAYER_PARA )
		return 
	end

	--������������б�
	local ret = AddMission( sceneId,selfId, x212107_g_MissionId, x212107_g_ScriptId, 0, 0, 0 )
	-- C�n ���������ng����ng�ܹ�Ti�p th���C�i n�y ����
	if ret <= 0      then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	-- ��������Ʒ
	AddItemListToHuman(sceneId,selfId)
	
	SetMissionEvent(sceneId, selfId, x212107_g_MissionId, 0)
	SetMissionEvent(sceneId, selfId, x212107_g_MissionId, 2)
	
	misIndex = GetMissionIndexByID(sceneId,selfId,x212107_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)		--�������кŰ��������to� � ��0λ��1 (����������)
	
	-- ��Ϣ֪ͨ�ͻ���
	Msg2Player(  sceneId, selfId,"#YTi�p nh�n#W ".. x212107_g_MissionName, MSG2PLAYER_PARA )

	BeginEvent(sceneId)
		strText = "#YTi�p nh�n#W ".. x212107_g_MissionName
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--����
--**********************************
function x212107_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x212107_g_MissionId )
	
	-- ɾ���������
	DelItem( sceneId, selfId, 40002070, 1 )
	DelItem( sceneId, selfId, 40002069, 1 )

end

--**********************************
--�Ѿ����������ٸ���to� � ��ʾ
--**********************************
function x212107_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x212107_g_MissionName)
		AddText(sceneId,x212107_g_MissionComplete)
		AddMoneyBonus( sceneId, x212107_g_MoneyBonus )
		for i, item in x212107_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent(sceneId)
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212107_g_ScriptId,x212107_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212107_CheckSubmit( sceneId, selfId )
	--���������ng��������to� � �����ng����ng����Ϊ1��
	misIndex = GetMissionIndexByID(sceneId,selfId,x212107_g_MissionId)			-- �i�m������to� � ���к�
	
	if GetMissionParam(sceneId, selfId, misIndex, 0) > 0  then
		return 1
	end
	return 0
end

--**********************************
--�ύ(���)
--**********************************
function x212107_OnSubmit( sceneId, selfId,targetId,selectRadioID )
	-- ��ȫ�Լ��
	-- 1����������ng����ng��C�i n�y ����
	if IsHaveMission(sceneId,selfId,x212107_g_MissionId) <= 0 then
		return
	end
	-- 2���������
	if x212107_CheckSubmit( sceneId, selfId )  <= 0  then
		return
	end
	
	BeginAddItem(sceneId)
		for i, item in x212107_g_RadioItemBonus do
			if item.id == selectRadioID then
				AddItem( sceneId,item.id, item.num )
			end
		end
	local ret = EndAddItem(sceneId,selfId)

	--���������
	if ret > 0 then		
		-- ɾ���������
		DelItem( sceneId, selfId, 40002070, 1 )
		DelItem( sceneId, selfId, 40002069, 1 )

		AddExp(sceneId,selfId,x212107_g_Exp)
		AddMoney(sceneId,selfId,x212107_g_MoneyBonus );
		DelMission( sceneId, selfId, x212107_g_MissionId )
		MissionCom( sceneId, selfId, x212107_g_MissionId )
		AddItemListToHuman(sceneId,selfId)

	else
	--������û�мӳɹ�
		BeginEvent(sceneId)
			strText = "Kh�ng th� Ho�n t�t nhi�m v�"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--ɱ����������
--**********************************
function x212107_OnKillObject( sceneId, selfId, objdataId ,objId )
	-- ������ɱ�˰��Ǵ���,���� ��t ���c��m�t c�i���ߡ����Ƿࡱ
	local monsterName = GetMonsterNamebyDataId(objdataId)
	
	if monsterName == "B�ch Lang V߽ng"   then
		--ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			--ȡ �i�mӵ�з���Ȩto� � ��to� � objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			
			-- ��C�i n�y ����ng����ng��C�i n�y ����
			if IsHaveMission(sceneId, humanObjId, x212107_g_MissionId) > 0 then
				-- ���ж���ng����ng�Ѿ�Th�a m�n����ɱ�־
				local nMisIndex = GetMissionIndexByID(sceneId,humanObjId,x212107_g_MissionId)
				
				-- ������������ng����ng��C�i n�y ��Ʒ��,���˾Ͳ��ٵ���
				if GetMissionParam(sceneId, humanObjId, nMisIndex, 0) == 0  and
						GetItemCount(sceneId, humanObjId, 40002069) == 0 then
					AddMonsterDropItem(sceneId,objId,humanObjId, 40002069)
				end
			end
		end
	end
	
end

--**********************************
--���������¼�
--**********************************
function x212107_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212107_OnItemChanged( sceneId, selfId, itemdataId )

	if itemdataId == 40002069  then
	 	BeginEvent(sceneId)
			AddText(sceneId, "�� l�y ���c ph�n s�i kh�: 1/1")
	  EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

