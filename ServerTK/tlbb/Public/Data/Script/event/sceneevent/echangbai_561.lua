--���� ׽�Բ�
--MisDescBegin
--�ű���
x212110_g_ScriptId = 212110

--�����
x212110_g_MissionId = 561

--�������
x212110_g_MissionKind = 33

--��ng c�p nhi�m v� 
x212110_g_MissionLevel = 88

--��ng����ngTinhӢ����
x212110_g_IfMissionElite = 0

--���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������**********************
--������ng���Ѿ����
x212110_g_IsMissionOkFail = 0		--����to� � ��0λ

--������ng��̬**************************************************************

--����C�n  �i�m��to� � ��Ʒ
--x212110_g_DemandItem={{id=40002112,num=1}}		--������1λ

--�����ı�����
x212110_g_MissionName="Tr�n t�m"
x212110_g_MissionInfo="#{Lua_changbai_001}"
x212110_g_MissionTarget="  Ho�n Nhan Ng�t Thu�t � #GTr߶ng B�ch S�n Ho�n Nhan B� #W#{_INFOAIM118,107,22, Ho�n Nhan Ng�t Thu�t} y�u c�u ng߽i t�m #RHo�n Nhan Ni�m M�t H�t #W#{_INFOAIM147,120,22, Ho�n Nhan Ni�m M�t H�t}, #RHo�n Nhan C�t Ly B�t #W#{_INFOAIM166,94,22, Ho�n Nhan C�t Ly B�t}, #RHo�n Nhan Ngoa L� ��a #W#{_INFOAIM178,113,22, Ho�n Nhan Ngoa L� ��a}. "
x212110_g_ContinueInfo="  Ng߽i t�m th�y c�c ca ca c�a ta r�i sao?"
x212110_g_MissionComplete="  Ng߽i qu� l� l�i h�i, t�m th�y h� nhanh �n v�y. Ta lu�n kh�ng t�m ra, l� n�o ta l� 1 ��a tr� ng�c?"

--����
x212110_g_MoneyBonus=54500
x212110_g_Exp = 36000
--x212110_g_ItemBonus={{id=30004020,num=1}}

x212110_g_Custom	= { {id="�� t�m th�y Ni�m M�t Kh�t c�a b� l�c Ho�n Nhan",num=1},{id="�� t�m th�y C�t Ly B�t c�a b� l�c Ho�n Nhan",num=1},{id="�� t�m th�y Ngoa Ly ��a c�a b� l�c Ho�n Nhan",num=1} }
x212110_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212110_OnDefaultEvent( sceneId, selfId, targetId )
	
	--����ѽӴ�����
	if IsMissionHaveDone( sceneId, selfId, x212110_g_MissionId ) > 0 then
		return 
	elseif IsHaveMission(sceneId,selfId,x212110_g_MissionId) > 0 then
--		if GetName(sceneId,targetId) == x212110_g_Name then
			--���ͽ�����ǰto� � ������Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x212110_g_MissionName);
				AddText(sceneId,x212110_g_ContinueInfo);
			EndEvent(sceneId)
    		done = x212110_CheckSubmit( sceneId, selfId );
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212110_g_ScriptId,x212110_g_MissionId,done)
--		end
	--Th�a m�n�����������
	elseif GetLevel( sceneId, selfId ) >= 88 then
	
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212110_g_MissionName);
			AddText(sceneId,x212110_g_MissionInfo);
			AddText(sceneId,"#{M_MUBIAO}");
			AddText(sceneId,x212110_g_MissionTarget);
			AddMoneyBonus( sceneId, x212110_g_MoneyBonus )
			--for i, item in x212110_g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
		EndEvent(sceneId)
		DispatchMissionInfo(sceneId,selfId,targetId,x212110_g_ScriptId,x212110_g_MissionId)

	end
end

--**********************************
--�о��¼�
--**********************************
function x212110_OnEnumerate( sceneId, selfId, targetId )

	if IsHaveMission(sceneId,selfId,x212110_g_MissionId) > 0 then
		local misIndex = GetMissionIndexByID(sceneId, selfId, x212110_g_MissionId)			-- �i�m������to� � ���к�
	
		--�ȿ���ng����ng�Ҷ�����,����Ҷ�,�͸�c�i��ʾ,�����ng�ڶ���,�͸���ͬto� � ��ʾ
		if  GetName(sceneId, targetId) == "Ho�n Nhan Ni�m M�t Kh�t"   then
			if GetMissionParam(sceneId, selfId, misIndex, 1) == 0  then
				SetMissionByIndex(sceneId,selfId,misIndex,1,1)		--�������кŰ��������to� � ��0λ��1 (����������)
				BeginEvent(sceneId)
					strText = "T�m th�y Ni�m M�t Kh�t c�a b� l�c Ho�n Nhan"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				
				local n1 = GetMissionParam(sceneId, selfId, misIndex, 1)
				local n2 = GetMissionParam(sceneId, selfId, misIndex, 2)
				local n3 = GetMissionParam(sceneId, selfId, misIndex, 3)
				
				if n1==1 and n2==1 and n3==1   then
					SetMissionByIndex(sceneId,selfId,misIndex,0,1)
				end
				return
			end
		end
		
		if  GetName(sceneId, targetId) == "Ho�n Nhan C�t Ly B�t"   then
			if GetMissionParam(sceneId, selfId, misIndex, 2) == 0  then
				SetMissionByIndex(sceneId,selfId,misIndex,2,1)		--�������кŰ��������to� � ��0λ��1 (����������)
				BeginEvent(sceneId)
					strText = "T�m th�y C�t Ly B�t c�a b� l�c Ho�n Nhan"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
		
				local n1 = GetMissionParam(sceneId, selfId, misIndex, 1)
				local n2 = GetMissionParam(sceneId, selfId, misIndex, 2)
				local n3 = GetMissionParam(sceneId, selfId, misIndex, 3)
				
				if n1==1 and n2==1 and n3==1   then
					SetMissionByIndex(sceneId,selfId,misIndex,0,1)
				end
				return
			end
		end
		
		if  GetName(sceneId, targetId) == "Ho�n Nhan Ngoa L� ��a"   then
			if GetMissionParam(sceneId, selfId, misIndex, 3) == 0  then
				SetMissionByIndex(sceneId,selfId,misIndex,3,1)		--�������кŰ��������to� � ��0λ��1 (����������)
				BeginEvent(sceneId)
					strText = "T�m th�y Ngoa Ly �o� c�a b� l�c Ho�n Nhan"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
		
				local n1 = GetMissionParam(sceneId, selfId, misIndex, 1)
				local n2 = GetMissionParam(sceneId, selfId, misIndex, 2)
				local n3 = GetMissionParam(sceneId, selfId, misIndex, 3)
				
				if n1==1 and n2==1 and n3==1   then
					SetMissionByIndex(sceneId,selfId,misIndex,0,1)
				end
				return
			end
		end
	end

	if IsMissionHaveDone( sceneId, selfId, x212110_g_MissionId ) > 0 then
		return 

	elseif IsHaveMission(sceneId,selfId,x212110_g_MissionId) > 0 then
		if  GetName(sceneId, targetId) == "Ho�n Nhan Ng�t Thu�t"   then
			AddNumText(sceneId, x212110_g_ScriptId,x212110_g_MissionName, 2, -1)
		end	

	--Th�a m�n�����������
	elseif x212110_CheckAccept(sceneId,selfId) > 0 then
		if  GetName(sceneId, targetId) == "Ho�n Nhan Ng�t Thu�t"   then
			AddNumText(sceneId, x212110_g_ScriptId, x212110_g_MissionName, 1, -1);
		end
	end

end

--**********************************
--��ⴥ������
--**********************************
function x212110_CheckAccept( sceneId, selfId )
	--C�n 60c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= 88 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x212110_OnAccept( sceneId, selfId )

	-- ��������ng����ng�Ѿ���ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId, selfId, x212110_g_MissionId) > 0   then
		return
	end
	
	if x212110_CheckAccept(sceneId, selfId)  <= 0   then
		return
	end

	--������������б�
	local ret = AddMission( sceneId,selfId, x212110_g_MissionId, x212110_g_ScriptId, 0, 0, 0 )
	-- C�n ���������ng����ng�ܹ�Ti�p th���C�i n�y ����
	if ret <= 0      then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212110_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)		--�������кŰ��������to� � ��0λ��1 (����������)
	SetMissionByIndex(sceneId,selfId,misIndex,2,0)		--�������кŰ��������to� � ��0λ��1 (����������)
	SetMissionByIndex(sceneId,selfId,misIndex,3,0)		--�������кŰ��������to� � ��0λ��1 (����������)
	
	-- ��Ϣ֪ͨ�ͻ���
	Msg2Player(  sceneId, selfId,"#YTi�p nh�n#W ".. x212110_g_MissionName, MSG2PLAYER_PARA )
	BeginEvent(sceneId)
		strText = "#YTi�p nh�n#W ".. x212110_g_MissionName
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)


end

--**********************************
--����
--**********************************
function x212110_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x212110_g_MissionId )
end

--**********************************
--�Ѿ����������ٸ���to� � ��ʾ
--**********************************
function x212110_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x212110_g_MissionName)
		AddText(sceneId,x212110_g_MissionComplete)
		AddMoneyBonus( sceneId, x212110_g_MoneyBonus )
		--for i, item in x212110_g_ItemBonus do
		--	AddItemBonus( sceneId, item.id, item.num )
		--end
	EndEvent(sceneId)
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212110_g_ScriptId,x212110_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212110_CheckSubmit( sceneId, selfId )
	--���������ng��������to� � �����ng����ng����Ϊ1��
	local misIndex = GetMissionIndexByID(sceneId,selfId,x212110_g_MissionId)			-- �i�m������to� � ���к�
	
	if GetMissionParam(sceneId, selfId, misIndex, 1) <= 0  then
		return 0
	end
	if GetMissionParam(sceneId, selfId, misIndex, 2) <= 0  then
		return 0
	end
	if GetMissionParam(sceneId, selfId, misIndex, 3) <= 0  then
		return 0
	end
	
	return 1
end

--**********************************
--�ύ(���)
--**********************************
function x212110_OnSubmit( sceneId, selfId,targetId,selectRadioID )
	-- ��ȫ�Լ��
	-- 1����������ng����ng��C�i n�y ����
	if IsHaveMission(sceneId,selfId,x212110_g_MissionId) <= 0 then
		return
	end
	-- 2���������
	if x212110_CheckSubmit( sceneId, selfId )  <= 0  then
		return
	end
	
--	BeginAddItem(sceneId)
--		for i, item in x212110_g_ItemBonus do
--			AddItem( sceneId,item.id, item.num )
--		end
		
--	ret = EndAddItem(sceneId,selfId)
	--���������
--	if ret > 0 then		
		AddExp(sceneId,selfId,x212110_g_Exp)
		AddMoney(sceneId,selfId,x212110_g_MoneyBonus );

		DelMission( sceneId, selfId, x212110_g_MissionId )
		MissionCom( sceneId, selfId, x212110_g_MissionId )
		AddItemListToHuman(sceneId,selfId)
--	else
--	--������û�мӳɹ�
--		BeginEvent(sceneId)
--			strText = "��������,�޷�Ho�n t�t nhi�m v�"
--			AddText(sceneId,strText);
--		EndEvent(sceneId)
--		DispatchMissionTips(sceneId,selfId)
--	end
end

--**********************************
--ɱ����������
--**********************************
function x212110_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x212110_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212110_OnItemChanged( sceneId, selfId, itemdataId )
end

