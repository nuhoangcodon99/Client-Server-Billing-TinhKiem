--������[ QUFEI 2008-04-30 10:27 UPDATE BugID 34169 ]
--�����ʧ�����������¼��ű�
--������������3_�ɵ�����

--MisDescBegin
--�ű���
x500611_g_ScriptId	= 500611

--Ŀ������NPC����
x500611_g_Position_X=62.6751
x500611_g_Position_Z=162.6368
x500611_g_SceneID=1
x500611_g_AccomplishNPC_Name="Ti�n H�ng V�"

--ǰ�������
x500611_g_PreMissionId	=	425
--�����
x500611_g_MissionId			= 426
--��m�t c�i����to� � ID
x500611_g_MissionIdNext	= 427
--L�nh M�c ti�u nhi�m v���T�i ����
x500611_g_AcceptNPC_SceneID	=	1
--L�nh ����npc
x500611_g_Name 					= "Ti�n H�ng V�"
--�������
x500611_g_MissionKind			= 12
--��ng c�p nhi�m v� 
x500611_g_MissionLevel		= 38
--��ng����ngTinhӢ����
x500611_g_IfMissionElite	= 0
--������ng���Ѿ����
x500611_g_IsMissionOkFail	= 0		--�������to� � ��0λ

--�����ı�����
x500611_g_MissionName			= "X� l� S�n Tr�i ��i V߽ng"
--��������
x500611_g_MissionInfo			= "#{YD_20080421_75}"
--M�c ti�u nhi�m v�
x500611_g_MissionTarget		= "#{YD_20080421_74}"
--δHo�n t�t nhi�m v�to� � npc�Ի�
x500611_g_ContinueInfo		= "#{YD_20080421_195}"
--Ho�n t�t nhi�m v�npc˵to� � ��
x500611_g_MissionComplete	= "#{YD_20080421_76}"
--�������to� � ����
x500611_g_MaxRound	= 1
--���ƽű�
x500611_g_ControlScript		= 001066

-- ����������,���ݶ�̬ˢ��,ռ���������to� � ��1λ
x500611_g_Custom	= { {id="�� gi�t ch�t S�n Tr�i ��i V߽ng",num=1} }
--MisDescEnd

--������ng�����
x500611_g_Mission_IsComplete = 0		--�������to� � ��0λ
--��ng��ɱ��to� � ���
x500611_g_RecordIdx 				 = 1		--�������to� � ��1λ
--����ű��ż�¼
x500611_g_MissScriptID_Idx	 = 2		--�������to� � ��2λ
--���񷢲�NPC���
x500611_g_AcceptNPC_Idx			 = 3		--�������to� � ��3λ 2.T� Ch�uNPC

x500611_g_AcceptMission_IDX		= 765	--������������
x500611_g_CompleteMission_IDX	= 766	--�ύ��������

--��ӵ��to� � �¼�ID�б�
x500611_g_EventList	= {}

x500611_g_PlayerSlow_LVL					 = 38		-- Ti�p th�����to� � ��͵�c�p

--����
x500611_g_MoneyBonus					=	9475
x500611_g_ExpBonus						= 37902
x500611_g_ItemBonus_List 	 	  = { id=30505701,num=1 }

--��������ID_Ұ���կ
x500611_g_TargetSceneId				= 48
--��������
x500611_g_MonsterName					=	"S�n Tr�i ��i V߽ng"
--Ҫ��to� � ɱ������
x500611_g_KillMonsterCnt			=	1

--**********************************
--������ں���
--**********************************
-- �i�m���������ִ�д˽ű�
function x500611_OnDefaultEvent( sceneId, selfId, targetId )

	local	key	= GetNumText()	
	if key == x500611_g_AcceptMission_IDX then
		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		if LuaFnGetName( sceneId, targetId ) ~= x500611_g_Name then
			x500611_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
			return 0
		end
		-- ������ng������
		if IsMissionFull( sceneId, selfId ) == 1 then
			x500611_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_23}" )
			return 0
		end
		
		-- �������Ti�p th�����
		if x500611_CheckAccept( sceneId, selfId, targetId )<=0 then
			return 0
		end

		-- ����Ti�p th��������			
		x500611_AcceptMission( sceneId, selfId, targetId )				
	
	elseif key == x500611_g_CompleteMission_IDX then
		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		if LuaFnGetName( sceneId, targetId ) ~= x500611_g_AccomplishNPC_Name then
			x500611_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
			return 0
		end
		-- ����Ѿ���������
		if IsHaveMission( sceneId, selfId, x500611_g_MissionId) > 0 then
												
			--������������to� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId, x500611_g_MissionName)
				AddText(sceneId, x500611_g_ContinueInfo)			
			EndEvent( )
			
			local bDone = x500611_CheckSubmit( sceneId, selfId, targetId )				
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x500611_g_ScriptId, x500611_g_MissionId, bDone)
			
		else			
			x500611_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
			return 0
		end
	else
		x500611_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

end

--**********************************
--�о��¼�
--**********************************
function x500611_OnEnumerate( sceneId, selfId, targetId )

	if IsHaveMission( sceneId, selfId, x500611_g_MissionId ) <= 0 then
		if LuaFnGetName( sceneId, targetId ) == x500611_g_Name
			 and sceneId == x500611_g_AcceptNPC_SceneID then
			if IsMissionHaveDone( sceneId, selfId, x500611_g_PreMissionId ) > 0
				 and IsMissionHaveDone( sceneId, selfId, x500611_g_MissionId ) <= 0 then
				AddNumText( sceneId, x500611_g_ScriptId, x500611_g_MissionName, 1, x500611_g_AcceptMission_IDX )
			end
		end
	else
		if LuaFnGetName( sceneId, targetId ) == x500611_g_AccomplishNPC_Name
				 and sceneId == x500611_g_SceneID then
			
			AddNumText( sceneId, x500611_g_ScriptId, x500611_g_MissionName, 2, x500611_g_CompleteMission_IDX )
		end
	end

end

--**********************************
--���Ti�p th�����,Ҳ�����������
--**********************************
function x500611_CheckAccept( sceneId, selfId, targetId )
	
	--��������ng�����Ti�p th�����to� � ����
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500611_g_Name then
		x500611_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	--����c�p
	if LuaFnGetLevel( sceneId, selfId ) < x500611_g_PlayerSlow_LVL then
		local nStr = format( "#{YD_20080421_175}%d#{YD_20080421_176}", x500611_g_PlayerSlow_LVL )
		x500611_TalkInfo( sceneId, selfId, targetId, nStr )
		return 0
	end

	--�Ѿ��ӹ��򲻷�������
	if IsHaveMission( sceneId, selfId, x500611_g_MissionId ) > 0 then
		x500611_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_067}" )
		return 0
	end
	if IsMissionHaveDone( sceneId, selfId, x500611_g_MissionId ) > 0 then		
		return 0
	end

	--���ǰ������
	if IsMissionHaveDone( sceneId, selfId, x500611_g_PreMissionId ) <= 0 then
		x500611_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_177}" )
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�,����������������ù�������
--**********************************
function x500611_OnAccept( sceneId, selfId, targetId, scriptId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
 	if LuaFnGetName( sceneId, targetId ) ~= x500611_g_Name then
 		x500611_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	if x500611_CheckAccept( sceneId, selfId, targetId )<=0 then
		return 0
	end

	--������������б�
	local bAdd = AddMission( sceneId, selfId, x500611_g_MissionId, x500611_g_ScriptId, 1, 0, 0 )
	if bAdd >= 1 then

		-- �i�m������to� � ���к�
		local	misIndex		= GetMissionIndexByID( sceneId, selfId, x500611_g_MissionId )
		
		--�������кŰ��������to� � ��0λ��0 (����������)
		SetMissionByIndex( sceneId, selfId, misIndex, x500611_g_Mission_IsComplete, 0 )
		SetMissionByIndex( sceneId, selfId, misIndex, x500611_g_RecordIdx, 0 )
		--�������кŰ��������to� � ��2λ��Ϊ����ű���
		SetMissionByIndex( sceneId, selfId, misIndex, x500611_g_MissScriptID_Idx, scriptId )		
		SetMissionByIndex(sceneId, selfId, misIndex, x500611_g_AcceptNPC_Idx, 2)

		local strText = "#{YD_20080421_229}" .. x500611_g_MissionName
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )

	end

	return 1

end

--**********************************
--����,�������������
--**********************************
function x500611_OnAbandon( sceneId, selfId )

  if IsHaveMission( sceneId, selfId, x500611_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x500611_g_MissionId )
	end
	
	return 0

end

--**********************************
--����
--**********************************
function x500611_OnContinue( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500611_g_AccomplishNPC_Name then
		x500611_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

	-- ���������ng�����
	if x500611_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then			
		return 0
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x500611_g_MissionName)
		AddText( sceneId, x500611_g_MissionComplete )				
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x500611_g_ScriptId,x500611_g_MissionId)
	
end

--**********************************
--�����ng������ύ
--**********************************
function x500611_CheckSubmit( sceneId, selfId, targetId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500611_g_AccomplishNPC_Name then
		x500611_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

	if IsHaveMission( sceneId, selfId, x500611_g_MissionId ) <= 0 then
		x500611_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x500611_g_MissionId)

	-- ���������ng�����	
	if GetMissionParam(sceneId, selfId, misIndex, x500611_g_Mission_IsComplete) > 0 then
		return 1
	end
	
	return 0
	
end

--**********************************
--�ύ,�������������
--**********************************
function x500611_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500611_g_AccomplishNPC_Name then
		x500611_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

  -- ���������ng�����
	if x500611_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then
		x500611_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )				
		return 0
	end

	AddMoney( sceneId, selfId, x500611_g_MoneyBonus )
	LuaFnAddExp( sceneId, selfId, x500611_g_ExpBonus )

	-- ����˳�����
	x500611_NotifyTip( sceneId, selfId, "#{YD_20080421_180}" )

	if IsHaveMission( sceneId, selfId, x500611_g_MissionId ) > 0 then  	
	 	DelMission( sceneId, selfId, x500611_g_MissionId )
	 	-- ���������Ѿ�����ɹ�
	 	MissionCom( sceneId, selfId, x500611_g_MissionId )
	 	
	 	local strText = "#Y" .. x500611_g_MissionName .. "#{YD_20080421_230}"
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
	 	
	end

	-- local nItemId = 0
	-- -- ���轱����Ʒ
	-- BeginAddItem(sceneId)
	-- AddItem(sceneId,x500611_g_ItemBonus_List.id, x500611_g_ItemBonus_List.num)
	-- local canAdd = EndAddItem(sceneId,selfId)						
	-- if canAdd > 0 then
	-- 	nItemId = x500611_g_ItemBonus_List.id
	-- 	AddItemListToHuman(sceneId,selfId)
	-- end

end

--**********************************
--ɱ����������
--**********************************
function x500611_OnKillObject( sceneId, selfId, objdataId ,objId)--������˼: �����š����objId�������λ�úš�����

	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	local monsterName = GetMonsterNamebyDataId(objdataId)
	if monsterName ~= x500611_g_MonsterName then
		return 0
	end
	
	local num = GetMonsterOwnerCount(sceneId,objId)
	for i=0,num-1  do
		-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
		local humanObjId = GetMonsterOwnerID(sceneId,objId,i)
		-- PrintStr("humanObjId=" .. humanObjId)
		-- ��C�i n�y ����ng����ng��C�i n�y ����
		if IsHaveMission(sceneId, humanObjId, x500611_g_MissionId) > 0 then
			-- ���ж���ng����ng�Ѿ�Th�a m�n����ɱ�־
			local misIndex = GetMissionIndexByID(sceneId,humanObjId,x500611_g_MissionId)
			if GetMissionParam(sceneId, humanObjId, misIndex, x500611_g_Mission_IsComplete) <=0  then
				local killedCount =	GetMissionParam(sceneId, humanObjId, misIndex, x500611_g_RecordIdx)
				killedCount = killedCount + 1
				SetMissionByIndex(sceneId, humanObjId, misIndex, x500611_g_RecordIdx, killedCount)					
				BeginEvent(sceneId)
					local str = format("�� gi�t ch�t %s%d/%d", x500611_g_MonsterName, killedCount, x500611_g_KillMonsterCnt )						
					AddText(sceneId, str)
				EndEvent(sceneId)
				DispatchMissionTips(sceneId, humanObjId)
				if killedCount >= x500611_g_KillMonsterCnt then
					SetMissionByIndex(sceneId, humanObjId, misIndex, x500611_g_Mission_IsComplete, 1)
				end
			end
		end
	end

end

--**********************************
--���������¼�
--**********************************
function x500611_OnEnterArea( sceneId, selfId, zoneId )	
end

--**********************************
--���߸ı�
--**********************************
function x500611_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--���������ʾto� � ����
--**********************************
function x500611_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--���������ʾto� � ����
--**********************************
function x500611_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x500611_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--��NPC�Ի�
--**********************************
function x500611_TalkInfo( sceneId, selfId, targetId, msg )

	BeginEvent(sceneId)
		AddText( sceneId, msg )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ȡ �i�m���¼�to� � MissionId,����obj�ļ��жԻ��龰to� � �ж�
--**********************************
function x500611_GetEventMissionId( sceneId, selfId )	
	return x500611_g_MissionId
end

function x500611_AcceptMission( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500611_g_Name then
		x500611_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )
		return 0
	end

	local  PlayerName=GetName(sceneId,selfId)		
	
	--��������Ti�p th�ʱ��ʾto� � ��Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x500611_g_MissionName)
		AddText( sceneId, x500611_g_MissionInfo )
		AddText(sceneId,"#{M_MUBIAO}")
		AddText(sceneId,"#{YD_20080421_74}")
		AddText(sceneId,"#{M_SHOUHUO}")
		AddMoneyBonus( sceneId, x500611_g_MoneyBonus)
		
	EndEvent( )
	DispatchMissionInfo(sceneId,selfId,targetId,x500611_g_ScriptId,x500611_g_MissionId)	

end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--��ȡ����itemto� � ��ϸ��Ϣ
function x500611_GetItemDetailInfo(itemId)
	return 0
end	

--**********************************
--����ʹ��
--**********************************
function x500611_OnUseItem( sceneId, selfId, bagIndex )	
end

--**********************************
--�����¼�
--**********************************
function x500611_OnDie( sceneId, selfId, killerId )
end
