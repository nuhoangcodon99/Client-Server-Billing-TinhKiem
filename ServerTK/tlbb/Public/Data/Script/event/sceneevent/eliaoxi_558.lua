--Li�u T�y Th� nh� c�a d�ng s�
--MisDescBegin
--�ű���
x212112_g_ScriptId = 212112

--�����
x212112_g_MissionId = 558

--�������
x212112_g_MissionKind = 32

--��ng c�p nhi�m v� 
x212112_g_MissionLevel = 80

--��ng����ngTinhӢ����
x212112_g_IfMissionElite = 0

--���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������**********************
--������ng���Ѿ����
x212112_g_IsMissionOkFail = 0		--����to� � ��0λ

--������ng��̬**************************************************************

--����C�n  �i�m��to� � ��Ʒ
x212112_g_DemandItem={{id=40002071,num=1}}		--������1λ

--�����ı�����
x212112_g_MissionName="Th� nh� c�a d�ng s�"
x212112_g_MissionInfo="#{Mis_S_Liaoxi_1010091}"
x212112_g_MissionTarget="  H�y mang #YD�ng s� gia th�#W trao cho #RL� L�o Th�i Th�i#W � #G Nam H�i #W#{_INFOAIM214,243,34, L� L�o Th�i Th�i}. "
x212112_g_ContinueInfo="  C�c h� t�m ta c� vi�c g�?"
x212112_g_MissionComplete="  Con trai ta tuy �� ch�t, nh�ng n� kh�ng l�m m�t m�t t� ph� n�"

--����ID
x212112_g_ItemID = 40002071

--�ջ���
x212112_g_Name = "L� L�o Th�i Th�i"

x212112_g_MoneyBonus=54500
x212112_g_Exp = 35000

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212112_OnDefaultEvent( sceneId, selfId, targetId )

	--����ѽӴ�����
	if IsMissionHaveDone( sceneId, selfId, x212112_g_MissionId ) > 0 then
		return 
	elseif IsHaveMission(sceneId,selfId,x212112_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212112_g_Name then
			--���ͽ�����ǰto� � ������Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x212112_g_MissionName);
				AddText(sceneId,x212112_g_ContinueInfo);
			EndEvent(sceneId)
    		done = x212112_CheckSubmit( sceneId, selfId );
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212112_g_ScriptId,x212112_g_MissionId,done)
		end
	--Th�a m�n�����������
	elseif GetLevel( sceneId, selfId ) >= x212112_g_MissionLevel then
	
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212112_g_MissionName);
			AddText(sceneId,x212112_g_MissionInfo);
			AddText(sceneId,"#{M_MUBIAO}");
			AddText(sceneId,x212112_g_MissionTarget);
			AddMoneyBonus( sceneId, x212112_g_MoneyBonus )
		EndEvent(sceneId)
		DispatchMissionInfo(sceneId,selfId,targetId,x212112_g_ScriptId,x212112_g_MissionId)

	end
end

--**********************************
--�о��¼�
--**********************************
function x212112_OnEnumerate( sceneId, selfId, targetId )
	-- add by zchw
	if IsMissionHaveDone( sceneId, selfId, x212112_g_MissionId ) > 0 and targetId == -1 then
		AddText(sceneId, "  Ng߽i �� ho�n t�t nhi�m v� n�y");
		return 
	elseif IsHaveMission(sceneId,selfId,x212112_g_MissionId) > 0  then
		if targetId == -1 then
		AddText(sceneId, "  Ng߽i v�n ch�a c� v�t ph�m c�n thi�t.");
	  elseif GetName(sceneId,targetId) == x212112_g_Name then
			AddNumText(sceneId, x212112_g_ScriptId,x212112_g_MissionName, 2, -1)
		end
	--Th�a m�n�����������
	elseif x212112_CheckAccept(sceneId,selfId) > 0 then
	  if targetId == -1 then
			AddNumText(sceneId, x212112_g_ScriptId, x212112_g_MissionName, 1, -1);
		elseif GetName(sceneId,targetId) ~= x212112_g_Name then
			AddNumText(sceneId, x212112_g_ScriptId, x212112_g_MissionName, 1, -1);
		end
	end

end

--**********************************
--��ⴥ������
--**********************************
function x212112_CheckAccept( sceneId, selfId )
	--C�n 60c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= 80 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x212112_OnMissionAccept( sceneId, selfId )

	-- ��������ng����ng�Ѿ���ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId, selfId, x212112_g_MissionId) > 0   then
		return
	end
	
	if x212112_CheckAccept(sceneId, selfId)  <= 0   then
		return
	end

	-- ����m�t c�i�������
	BeginAddItem(sceneId)
		AddItem( sceneId, 40002071, 1)
	local retItem = EndAddItem(sceneId,selfId)

	if retItem < 0   then
		Msg2Player(  sceneId, selfId,"#YTay n�i nhi�m v� �� �y#W", MSG2PLAYER_PARA )
		return 
	end

	--������������б�
	local ret = AddMission( sceneId,selfId, x212112_g_MissionId, x212112_g_ScriptId, 0, 0, 0 )
	-- C�n ���������ng����ng�ܹ�Ti�p th���C�i n�y ����
	if ret <= 0      then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	-- ��������Ʒ
	AddItemListToHuman(sceneId,selfId)
	-- ɾ����ͨ����
	DelItem( sceneId, selfId, 30505060, 1 )
	
	misIndex = GetMissionIndexByID(sceneId,selfId,x212112_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,1)		--�������кŰ��������to� � ��0λ��1 (����������)
	
	-- ��Ϣ֪ͨ�ͻ���
	Msg2Player(  sceneId, selfId,"#YTi�p nh�n#W ".. x212112_g_MissionName, MSG2PLAYER_PARA )

	BeginEvent(sceneId)
		strText = "#YTi�p nh�n#W ".. x212112_g_MissionName
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--����
--**********************************
function x212112_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x212112_g_MissionId )
	
	-- ɾ���������
	DelItem( sceneId, selfId, 40002071, 1 )
	
end

--**********************************
--�Ѿ����������ٸ���to� � ��ʾ
--**********************************
function x212112_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x212112_g_MissionName)
		AddText(sceneId,x212112_g_MissionComplete)
		AddMoneyBonus( sceneId, x212112_g_MoneyBonus )
	EndEvent(sceneId)
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212112_g_ScriptId,x212112_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212112_CheckSubmit( sceneId, selfId )

	itemNum = GetItemCount( sceneId, selfId, x212112_g_ItemID );
	if itemNum > 0 then
		return 1;
	end
	return 0
end

--**********************************
--�ύ(���)
--**********************************
function x212112_OnSubmit( sceneId, selfId,targetId,selectRadioID )
	-- ��ȫ�Լ��
	-- 1����������ng����ng��C�i n�y ����
	if IsHaveMission(sceneId,selfId,x212112_g_MissionId) <= 0 then
		return
	end
	-- 2���������
	if x212112_CheckSubmit( sceneId, selfId )  <= 0  then
		return
	end

	for i, item in x212112_g_DemandItem do
		DelItem( sceneId, selfId, item.id, item.num )
	end
	
	AddExp(sceneId,selfId,x212112_g_Exp)
	AddMoney(sceneId,selfId,x212112_g_MoneyBonus );

	ret = DelMission( sceneId, selfId, x212112_g_MissionId )
	if ret > 0 then
		MissionCom( sceneId, selfId, x212112_g_MissionId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x212112_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x212112_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212112_OnItemChanged( sceneId, selfId, itemdataId )
end

