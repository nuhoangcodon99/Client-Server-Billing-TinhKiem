--Li�u T�y �ؽ�����
--MisDescBegin
--�ű���
x212108_g_ScriptId = 212108

--�����
x212108_g_MissionId = 554

--�������
x212108_g_MissionKind = 32

--��ng c�p nhi�m v� 
x212108_g_MissionLevel = 78

--��ng����ngTinhӢ����
x212108_g_IfMissionElite = 0

--���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������**********************
--������ng���Ѿ����
x212108_g_IsMissionOkFail = 0		--����to� � ��0λ

--������ng��̬**************************************************************

--����C�n  �i�m��to� � ��Ʒ
--x212108_g_DemandItem={{id=40002112,num=1}}		--������1λ

--�����ı�����
x212108_g_MissionName="X�y d�ng l�i trang tr�i"
x212108_g_MissionInfo="#{Lua_liaoxi_002}"
x212108_g_MissionTarget="  T�m th�y 10 vi�n H�n thi�t kho�ng th�ch, 10 vi�n Kim kho�ng th�ch v� 10 �ng v�ng, h�y trao ch�ng cho #RGia Lu�t Kim #W � #GLi�u T�y Qu�ng Ninh Tr�n #W#{_INFOAIM170,206,21, Gia Lu�t Kim}. "
x212108_g_ContinueInfo="  C�c h� �� t�m �� nguy�n li�u ch�a ?"
x212108_g_MissionComplete="  �a t� ng߽i �� gi�p ��, ��i khi tr�i ch�n nu�i ���c x�y d�ng l�i, nh�t �nh ta s� ��i ng߽i m�n s�a d� t߽i nh�t v� m�n th�t n߾ng th�m ngon nh�t"

x212108_g_DemandItem={{id=20103004,num=10},{id=20103005,num=10}}		--�ӱ����м���

--����
x212108_g_MoneyBonus=46000
x212108_g_Exp = 65000
--x212108_g_ItemBonus={{id=10401031,num=1}}

x212108_g_RadioItemBonus={{id=10405067 ,num=1},{id=10401067,num=1},{id=10400068,num=1}}


--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212108_OnDefaultEvent( sceneId, selfId, targetId )
	
	--����ѽӴ�����
	if IsMissionHaveDone( sceneId, selfId, x212108_g_MissionId ) > 0 then
		return 
	elseif IsHaveMission(sceneId,selfId,x212108_g_MissionId) > 0 then
--		if GetName(sceneId,targetId) == x212108_g_Name then
			--���ͽ�����ǰto� � ������Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x212108_g_MissionName);
				AddText(sceneId,x212108_g_ContinueInfo);
			EndEvent(sceneId)
    		done = x212108_CheckSubmit( sceneId, selfId );
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212108_g_ScriptId,x212108_g_MissionId,done)
--		end
	--Th�a m�n�����������
	elseif GetLevel( sceneId, selfId ) >= 78 then
	
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212108_g_MissionName);
			AddText(sceneId,x212108_g_MissionInfo);
			AddText(sceneId,"#{M_MUBIAO}");
			AddText(sceneId,x212108_g_MissionTarget);
			AddMoneyBonus( sceneId, x212108_g_MoneyBonus )
			for i, item in x212108_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent(sceneId)
		DispatchMissionInfo(sceneId,selfId,targetId,x212108_g_ScriptId,x212108_g_MissionId)

	end
end

--**********************************
--�о��¼�
--**********************************
function x212108_OnEnumerate( sceneId, selfId, targetId )

	if IsMissionHaveDone( sceneId, selfId, x212108_g_MissionId ) > 0 then
		return 

	elseif IsHaveMission(sceneId,selfId,x212108_g_MissionId) > 0 then
		AddNumText(sceneId, x212108_g_ScriptId,x212108_g_MissionName, 2, -1)

	--Th�a m�n�����������
	elseif x212108_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212108_g_MissionName then
			AddNumText(sceneId, x212108_g_ScriptId, x212108_g_MissionName, 1, -1);
		end
	end

end

--**********************************
--��ⴥ������
--**********************************
function x212108_CheckAccept( sceneId, selfId )
	--C�n 60c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= 78 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x212108_OnAccept( sceneId, selfId )

	-- ��������ng����ng�Ѿ���ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId, selfId, x212108_g_MissionId) > 0   then
		return
	end
	
	if x212108_CheckAccept(sceneId, selfId)  <= 0   then
		return
	end

	--������������б�
	local ret = AddMission( sceneId,selfId, x212108_g_MissionId, x212108_g_ScriptId, 0, 0, 0 )
	-- C�n ���������ng����ng�ܹ�Ti�p th���C�i n�y ����
	if ret <= 0      then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x212108_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)		--�������кŰ��������to� � ��0λ��1 (����������)
	
	-- ��Ϣ֪ͨ�ͻ���
	Msg2Player(  sceneId, selfId,"#YTi�p nh�n#W ".. x212108_g_MissionName, MSG2PLAYER_PARA )
	
	SetMissionEvent(sceneId, selfId, x212108_g_MissionId, 2)
	
	BeginEvent(sceneId)
		strText = "#YTi�p nh�n#W ".. x212108_g_MissionName
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--����
--**********************************
function x212108_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x212108_g_MissionId )
	
end

--**********************************
--�Ѿ����������ٸ���to� � ��ʾ
--**********************************
function x212108_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x212108_g_MissionName)
		AddText(sceneId,x212108_g_MissionComplete)
		AddMoneyBonus( sceneId, x212108_g_MoneyBonus )
		for i, item in x212108_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent(sceneId)
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212108_g_ScriptId,x212108_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212108_CheckSubmit( sceneId, selfId )
	--��⿴���������ng����ng������Щ��Ʒ
	if  GetItemCount( sceneId, selfId, 20103005 ) < 10   then
		return 0
	end
	
	if  GetItemCount( sceneId, selfId, 20103004 ) < 10   then
		return 0
	end
	
	if  GetMoney(sceneId, selfId)  < 100000   then 
		return 0
	end
	
	return 1
end

--**********************************
--�ύ(���)
--**********************************
function x212108_OnSubmit( sceneId, selfId,targetId,selectRadioID )
	-- ��ȫ�Լ��
	-- 1����������ng����ng��C�i n�y ����
	if IsHaveMission(sceneId,selfId,x212108_g_MissionId) <= 0 then
		return
	end
	-- 2���������
	if x212108_CheckSubmit( sceneId, selfId )  <= 0  then
		return
	end
	
	--���Ǯ��ng����ng������
	if  GetMoney(sceneId, selfId)  < 100000  then
		return
	end
	
	--��������ng����ng��T�i 
	if  GetItemCount( sceneId, selfId, 20103005 ) < 10   then
		return 
	end
	
	if  GetItemCount( sceneId, selfId, 20103004 ) < 10   then
		return 
	end
	
	
	BeginAddItem(sceneId)
		for i, item in x212108_g_RadioItemBonus do
			if item.id == selectRadioID then
				AddItem( sceneId,item.id, item.num )
			end
		end
		
	ret = EndAddItem(sceneId,selfId)
	--���������
	if ret > 0 then		
		--���ٲ���
		DelItem( sceneId, selfId, 20103005, 10 )
		DelItem( sceneId, selfId, 20103004, 10 )
		
		AddExp(sceneId,selfId,x212108_g_Exp)
		
		--��Ǯ��
		CostMoney(sceneId,selfId, 100000)

		--��Ǯ
		AddMoney(sceneId,selfId,x212108_g_MoneyBonus );
				
		ret = DelMission( sceneId, selfId, x212108_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x212108_g_MissionId )
				AddItemListToHuman(sceneId,selfId)
		end
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
function x212108_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x212108_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212108_OnItemChanged( sceneId, selfId, itemdataId )

	if itemdataId == 20103005  then		-- ���ʯ
		--  ��t ���c���������to� �  ���ʯ to� � ����,���С�㣽10 ,����ʾ
		if  GetItemCount( sceneId, selfId, 20103005 ) <= 10   then
			BeginEvent(sceneId)
				strText = "��t ���c Kim kho�ng th�ch: " .. tostring(GetItemCount( sceneId, selfId, 20103005 )) .. "/10"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
	
	if itemdataId == 20103004  then		-- ������ʯ
		--  ��t ���c���������to� �  ������ʯ to� � ����,���С�㣽10 ,����ʾ
		if  GetItemCount( sceneId, selfId, 20103004 ) <= 10   then
			BeginEvent(sceneId)
				strText = "��t ���c H�n Thi�t kho�ng th�ch: " .. tostring(GetItemCount( sceneId, selfId, 20103004 )) .. "/10"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end

end

