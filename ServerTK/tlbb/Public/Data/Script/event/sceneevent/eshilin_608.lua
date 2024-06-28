--Th�ch L�m  S� th�t ��ng s� 608
--MisDescBegin
--�ű���
x212104_g_ScriptId = 212104

--�����
x212104_g_MissionId = 608

--�������
x212104_g_MissionKind = 37

--��ng c�p nhi�m v� 
x212104_g_MissionLevel = 63

--��ng����ngTinhӢ����
x212104_g_IfMissionElite = 0

--���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������**********************
--������ng���Ѿ����
x212104_g_IsMissionOkFail = 0		--����to� � ��0λ

--������ng��̬**************************************************************

--����C�n  �i�m��to� � ��Ʒ
x212104_g_DemandItem={{id=40002112,num=1}}		--������1λ

--�����ı�����
x212104_g_MissionName="S� th�t ��ng s�"
x212104_g_MissionInfo="#{Lua_Shilin_005}"
x212104_g_MissionTarget="  Mang #Y�u l�u c�a A Chi#W giao cho th�ng tr߷ng #GVi�n Nguy�t Th�n#W#R Tr�nh Huy�n #W#{_INFOAIM182,163,26, Tr�nh Huy�n}. "
x212104_g_ContinueInfo="  Ng߽i c� chuy�n g�?"
x212104_g_MissionComplete="  N�y, l� n�o ��y ch�nh l� �u l�u c�a th� l�nh c�a t� ch�c ch�ng ta ch�ng?"

--����ID
x212104_g_ItemID = 40002112

--�ջ���
x212104_g_Name = "Tr�nh Huy�n"

x212104_g_MoneyBonus=26900
x212104_g_Exp = 22000
--x212104_g_ItemBonus={{id=10112025,num=1}}
x212104_g_RadioItemBonus={{id=10420070 ,num=1},{id=10422111,num=1}}


--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212104_OnDefaultEvent( sceneId, selfId, targetId )

	--����ѽӴ�����
	if IsMissionHaveDone( sceneId, selfId, x212104_g_MissionId ) > 0 then
		return 
	elseif IsHaveMission(sceneId,selfId,x212104_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212104_g_Name then
			--���ͽ�����ǰto� � ������Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x212104_g_MissionName);
				AddText(sceneId,x212104_g_ContinueInfo);
			EndEvent(sceneId)
    		done = x212104_CheckSubmit( sceneId, selfId );
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212104_g_ScriptId,x212104_g_MissionId,done)
		end
	--Th�a m�n�����������
	elseif GetLevel( sceneId, selfId ) >= 60 then
	
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212104_g_MissionName);
			AddText(sceneId,x212104_g_MissionInfo);
			AddText(sceneId,"#{M_MUBIAO}");
			AddText(sceneId,x212104_g_MissionTarget);
			AddMoneyBonus( sceneId, x212104_g_MoneyBonus )
			for i, item in x212104_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent(sceneId)
		DispatchMissionInfo(sceneId,selfId,targetId,x212104_g_ScriptId,x212104_g_MissionId)

	end
end

--**********************************
--�о��¼�
--**********************************
function x212104_OnEnumerate( sceneId, selfId, targetId )

	if IsMissionHaveDone( sceneId, selfId, x212104_g_MissionId ) > 0 then
		AddText(sceneId, "  Ng߽i �� ho�n t�t nhi�m v� n�y");
		return 
	elseif IsHaveMission(sceneId,selfId,x212104_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212104_g_Name then
			AddNumText(sceneId, x212104_g_ScriptId,x212104_g_MissionName, 2, -1)
		end
	--Th�a m�n�����������
	elseif x212104_CheckAccept(sceneId,selfId) > 0 then
	  if targetId == -1 then
	    AddNumText(sceneId, x212104_g_ScriptId, x212104_g_MissionName, 1, -1);
		elseif GetName(sceneId,targetId) ~= x212104_g_Name then
			AddNumText(sceneId, x212104_g_ScriptId, x212104_g_MissionName, 1, -1);
		end
	end

end

--**********************************
--��ⴥ������
--**********************************
function x212104_CheckAccept( sceneId, selfId )
	--C�n 60c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= 60 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x212104_OnMissionAccept( sceneId, selfId )

	-- ��������ng����ng�Ѿ���ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId, selfId, x212104_g_MissionId) > 0   then
		return
	end
	
	if x212104_CheckAccept(sceneId, selfId)  <= 0   then
		return
	end

	-- ����m�t c�i�������
	BeginAddItem(sceneId)
		AddItem( sceneId, 40002112, 1)
	local retItem = EndAddItem(sceneId,selfId)

	if retItem < 0   then
		Msg2Player(  sceneId, selfId,"#YTay n�i nhi�m v� �� �y#W", MSG2PLAYER_PARA )
		return 
	end

	--������������б�
	local ret = AddMission( sceneId,selfId, x212104_g_MissionId, x212104_g_ScriptId, 0, 0, 0 )
	-- C�n ���������ng����ng�ܹ�Ti�p th���C�i n�y ����
	if ret <= 0      then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	-- ��������Ʒ
	AddItemListToHuman(sceneId,selfId)
	-- ɾ����ͨ����
	DelItem( sceneId, selfId, 30505061, 1 )
	
	misIndex = GetMissionIndexByID(sceneId,selfId,x212104_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,1)		--�������кŰ��������to� � ��0λ��1 (����������)
	
	-- ��Ϣ֪ͨ�ͻ���
	Msg2Player(  sceneId, selfId,"#YTi�p nh�n#W ".. x212104_g_MissionName, MSG2PLAYER_PARA )

	BeginEvent(sceneId)
		strText = "#YTi�p nh�n#W " .. x212104_g_MissionName
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--����
--**********************************
function x212104_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x212104_g_MissionId )
	
	-- ɾ���������
	DelItem( sceneId, selfId, 40002112, 1 )
	
end

--**********************************
--�Ѿ����������ٸ���to� � ��ʾ
--**********************************
function x212104_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x212104_g_MissionName)
		AddText(sceneId,x212104_g_MissionComplete)
		AddMoneyBonus( sceneId, x212104_g_MoneyBonus )
		for i, item in x212104_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent(sceneId)
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212104_g_ScriptId,x212104_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212104_CheckSubmit( sceneId, selfId )

	itemNum = GetItemCount( sceneId, selfId, x212104_g_ItemID );
	if itemNum > 0 then
		return 1;
	end
	return 0
end

--**********************************
--�ύ(���)
--**********************************
function x212104_OnSubmit( sceneId, selfId,targetId,selectRadioID )
	-- ��ȫ�Լ��
	-- 1����������ng����ng��C�i n�y ����
	if IsHaveMission(sceneId,selfId,x212104_g_MissionId) <= 0 then
		return
	end
	-- 2���������
	if x212104_CheckSubmit( sceneId, selfId )  <= 0  then
		return
	end
	
	BeginAddItem(sceneId)
	for i, item in x212104_g_RadioItemBonus do
		if item.id == selectRadioID then
			AddItem( sceneId,item.id, item.num )
		end
	end

	local ret = EndAddItem(sceneId,selfId)
	--���������
	if ret > 0 then		
		for i, item in x212104_g_DemandItem do
			DelItem( sceneId, selfId, item.id, item.num )
		end

		AddExp(sceneId,selfId,x212104_g_Exp)
		AddMoney(sceneId,selfId,x212104_g_MoneyBonus );

		ret = DelMission( sceneId, selfId, x212104_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x212104_g_MissionId )
				AddItemListToHuman(sceneId,selfId)
		end
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
function x212104_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x212104_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212104_OnItemChanged( sceneId, selfId, itemdataId )
end

