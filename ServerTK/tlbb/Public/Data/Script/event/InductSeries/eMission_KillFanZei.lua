--������[ QUFEI 2008-04-30 10:27 UPDATE BugID 34166 ]
--�����ʧ�����������¼��ű�
--������������1_�췴����

--MisDescBegin
--�ű���
x500604_g_ScriptId	= 500604

--Ŀ������NPC����
x500604_g_Position_X=160.2399
x500604_g_Position_Z=134.1486
x500604_g_SceneID=0
x500604_g_AccomplishNPC_Name="Ch�u Thi�n S�"

--ǰ�������
x500604_g_PreMissionId	=	413
--�����
x500604_g_MissionId			= 414
--��m�t c�i����to� � ID
x500604_g_MissionIdNext	= 415
--��m�t c�i����to� � ScriptId
x500604_g_NextScriptId	= 500605
--L�nh M�c ti�u nhi�m v���T�i ����
x500604_g_AcceptNPC_SceneID	=	0
--L�nh ����npc
x500604_g_Name 					= "L�p Ph�n"
--�������
x500604_g_MissionKind			= 11
--��ng c�p nhi�m v� 
x500604_g_MissionLevel		= 32
--��ng����ngTinhӢ����
x500604_g_IfMissionElite	= 0
--������ng���Ѿ����
x500604_g_IsMissionOkFail	= 0		--�������to� � ��0λ

--�����ı�����
x500604_g_MissionName			= "�c T�c T�o ph�n"
--��������
x500604_g_MissionInfo			= "#{YD_20080421_49}"
--M�c ti�u nhi�m v�
x500604_g_MissionTarget		= "#{YD_20080421_48}"
--δHo�n t�t nhi�m v�to� � npc�Ի�
x500604_g_ContinueInfo		= "#{YD_20080421_185}"
--Ho�n t�t nhi�m v�npc˵to� � ��
x500604_g_MissionComplete	= "#{YD_20080421_50}"
--�������to� � ����
x500604_g_MaxRound	= 1
--���ƽű�
x500604_g_ControlScript		= 001066

-- ����������,���ݶ�̬ˢ��,ռ���������to� � ��1λ
x500604_g_Custom	= { {id="�� gi�t ch�t t�c binh �u m�c",num=1} }
--MisDescEnd

--������ng�����
x500604_g_Mission_IsComplete = 0		--�������to� � ��0λ
--��ng��ɱ��to� � ���
x500604_g_RecordIdx 				 = 1		--�������to� � ��1λ
--����ű��ż�¼
x500604_g_MissScriptID_Idx	 = 2		--�������to� � ��2λ
--���񷢲�NPC���
x500604_g_AcceptNPC_Idx			 = 3		--�������to� � ��3λ 1.L�c D߽ngNPC

x500604_g_AcceptMission_IDX		= 751	--������������
x500604_g_CompleteMission_IDX	= 752	--�ύ��������

--��ӵ��to� � �¼�ID�б�
x500604_g_EventList	= {}

x500604_g_PlayerSlow_LVL					 = 32		-- Ti�p th�����to� � ��͵�c�p

--����
x500604_g_MoneyBonus					=	8121
x500604_g_ExpBonus						= 32487
x500604_g_ItemBonus_List 	 	  = { id=40004449,num=1 }

--��������ID_����Ӫ��
x500604_g_TargetSceneId				= 127
--��������
x500604_g_MonsterName					=	"T�c Binh Хu M�c"
--Ҫ��to� � ɱ������
x500604_g_KillMonsterCnt			=	1

--**********************************
--������ں���
--**********************************
-- �i�m���������ִ�д˽ű�
function x500604_OnDefaultEvent( sceneId, selfId, targetId )

	local	key	= GetNumText()	
	if key == x500604_g_AcceptMission_IDX then
		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		if LuaFnGetName( sceneId, targetId ) ~= x500604_g_Name then
			x500604_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
			return 0
		end
		-- ������ng������
		if IsMissionFull( sceneId, selfId ) == 1 then
			x500604_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_23}" )
			return 0
		end
		
		-- �������Ti�p th�����
		if x500604_CheckAccept( sceneId, selfId, targetId )<=0 then
			return 0
		end

		-- ����Ti�p th��������			
		x500604_AcceptMission( sceneId, selfId, targetId )				
	
	elseif key == x500604_g_CompleteMission_IDX then
		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		if LuaFnGetName( sceneId, targetId ) ~= x500604_g_AccomplishNPC_Name then
			x500604_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
			return 0
		end
		-- ����Ѿ���������
		if IsHaveMission( sceneId, selfId, x500604_g_MissionId) > 0 then
												
			--������������to� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId, x500604_g_MissionName)
				AddText(sceneId, x500604_g_ContinueInfo)			
			EndEvent( )
			
			local bDone = x500604_CheckSubmit( sceneId, selfId, targetId )				
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x500604_g_ScriptId, x500604_g_MissionId, bDone)
			
		else			
			x500604_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
			return 0
		end
	else
		x500604_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

end

--**********************************
--�о��¼�
--**********************************
function x500604_OnEnumerate( sceneId, selfId, targetId )

	if LuaFnGetName( sceneId, targetId ) == x500604_g_Name
		 and sceneId == x500604_g_AcceptNPC_SceneID then
		if IsHaveMission( sceneId, selfId, x500604_g_MissionId ) <= 0 then
			if IsMissionHaveDone( sceneId, selfId, x500604_g_PreMissionId ) > 0
				 and IsMissionHaveDone( sceneId, selfId, x500604_g_MissionId ) <= 0 then
				AddNumText( sceneId, x500604_g_ScriptId, x500604_g_MissionName, 1, x500604_g_AcceptMission_IDX )
			end
		end
	elseif LuaFnGetName( sceneId, targetId ) == x500604_g_AccomplishNPC_Name
				 and sceneId == x500604_g_SceneID then
	
		if IsHaveMission( sceneId, selfId, x500604_g_MissionId ) > 0 then
			AddNumText( sceneId, x500604_g_ScriptId, x500604_g_MissionName, 2, x500604_g_CompleteMission_IDX )
		end
	else
		return 0
	end

end

--**********************************
--���Ti�p th�����,Ҳ�����������
--**********************************
function x500604_CheckAccept( sceneId, selfId, targetId )
	
	--��������ng�����Ti�p th�����to� � ����
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500604_g_Name then
		x500604_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	--����c�p
	if LuaFnGetLevel( sceneId, selfId ) < x500604_g_PlayerSlow_LVL then
		local nStr = format( "#{YD_20080421_175}%d#{YD_20080421_176}", x500604_g_PlayerSlow_LVL )
		x500604_TalkInfo( sceneId, selfId, targetId, nStr )
		return 0
	end

	--�Ѿ��ӹ��򲻷�������
	if IsHaveMission( sceneId, selfId, x500604_g_MissionId ) > 0 then
		x500604_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_067}" )
		return 0
	end
	if IsMissionHaveDone( sceneId, selfId, x500604_g_MissionId ) > 0 then
		return 0
	end

	--���ǰ������
	if IsMissionHaveDone( sceneId, selfId, x500604_g_PreMissionId ) <= 0 then
		x500604_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_177}" )
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�,����������������ù�������
--**********************************
function x500604_OnAccept( sceneId, selfId, targetId, scriptId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
 	if LuaFnGetName( sceneId, targetId ) ~= x500604_g_Name then
 		x500604_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	if x500604_CheckAccept( sceneId, selfId, targetId )<=0 then
		return 0
	end

	--������������б�
	local bAdd = AddMission( sceneId, selfId, x500604_g_MissionId, x500604_g_ScriptId, 1, 0, 0 )
	if bAdd >= 1 then

		-- �i�m������to� � ���к�
		local	misIndex		= GetMissionIndexByID( sceneId, selfId, x500604_g_MissionId )
		
		--�������кŰ��������to� � ��0λ��0 (����������)
		SetMissionByIndex( sceneId, selfId, misIndex, x500604_g_Mission_IsComplete, 0 )
		SetMissionByIndex( sceneId, selfId, misIndex, x500604_g_RecordIdx, 0 )
		--�������кŰ��������to� � ��2λ��Ϊ����ű���
		SetMissionByIndex( sceneId, selfId, misIndex, x500604_g_MissScriptID_Idx, scriptId )		
		SetMissionByIndex(sceneId, selfId, misIndex, x500604_g_AcceptNPC_Idx, 1)

		local strText = "#{YD_20080421_229}" .. x500604_g_MissionName
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )

	end

	return 1

end

--**********************************
--����,�������������
--**********************************
function x500604_OnAbandon( sceneId, selfId )

  if IsHaveMission( sceneId, selfId, x500604_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x500604_g_MissionId )
	end
	
	return 0

end

--**********************************
--����
--**********************************
function x500604_OnContinue( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500604_g_AccomplishNPC_Name then
		x500604_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

	-- ���������ng�����
	if x500604_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then			
		return 0
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x500604_g_MissionName)
		AddText( sceneId, x500604_g_MissionComplete )				
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x500604_g_ScriptId,x500604_g_MissionId)
	
end

--**********************************
--�����ng������ύ
--**********************************
function x500604_CheckSubmit( sceneId, selfId, targetId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500604_g_AccomplishNPC_Name then
		x500604_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

	if IsHaveMission( sceneId, selfId, x500604_g_MissionId ) <= 0 then
		x500604_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x500604_g_MissionId)

	-- ���������ng�����	
	if GetMissionParam(sceneId, selfId, misIndex, x500604_g_Mission_IsComplete) > 0 then
		return 1
	end
	
	return 0
	
end

--**********************************
--�ύ,�������������
--**********************************
function x500604_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500604_g_AccomplishNPC_Name then
		x500604_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

  -- ���������ng�����
	if x500604_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then
		x500604_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )				
		return 0
	end

	AddMoney( sceneId, selfId, x500604_g_MoneyBonus )
	LuaFnAddExp( sceneId, selfId, x500604_g_ExpBonus )

	-- ����˳�����
	x500604_NotifyTip( sceneId, selfId, "#{YD_20080421_180}" )

	if IsHaveMission( sceneId, selfId, x500604_g_MissionId ) > 0 then  	
	 	DelMission( sceneId, selfId, x500604_g_MissionId )
	 	-- ���������Ѿ�����ɹ�
	 	MissionCom( sceneId, selfId, x500604_g_MissionId )
	 	
	 	local strText = "#Y" .. x500604_g_MissionName .. "#{YD_20080421_230}"
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
	 	
	 	-- ������������Ti�p th�����
	 	if CallScriptFunction( x500604_g_NextScriptId, "CheckAccept", sceneId, selfId, targetId ) > 0 then
	 		CallScriptFunction( x500604_g_NextScriptId, "AcceptMission", sceneId, selfId, targetId )
	 	end	 	
	end

	local nItemId = 0
	-- ���轱����Ʒ
	BeginAddItem(sceneId)
	AddItem(sceneId,x500604_g_ItemBonus_List.id, x500604_g_ItemBonus_List.num)
	local canAdd = EndAddItem(sceneId,selfId)						
	if canAdd > 0 then
		nItemId = x500604_g_ItemBonus_List.id
		AddItemListToHuman(sceneId,selfId)
	end

end

--**********************************
--ɱ����������
--**********************************
function x500604_OnKillObject( sceneId, selfId, objdataId ,objId)--������˼: �����š����objId�������λ�úš�����

	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	local monsterName = GetMonsterNamebyDataId(objdataId)
	if monsterName ~= x500604_g_MonsterName then
		return 0
	end
	
	local num = GetMonsterOwnerCount(sceneId,objId)
	for i=0,num-1  do
		-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
		local humanObjId = GetMonsterOwnerID(sceneId,objId,i)
		-- PrintStr("humanObjId=" .. humanObjId)
		-- ��C�i n�y ����ng����ng��C�i n�y ����
		if IsHaveMission(sceneId, humanObjId, x500604_g_MissionId) > 0 then
			-- ���ж���ng����ng�Ѿ�Th�a m�n����ɱ�־
			local misIndex = GetMissionIndexByID(sceneId,humanObjId,x500604_g_MissionId)
			if GetMissionParam(sceneId, humanObjId, misIndex, x500604_g_Mission_IsComplete) <=0  then
				local killedCount =	GetMissionParam(sceneId, humanObjId, misIndex, x500604_g_RecordIdx)
				killedCount = killedCount + 1
				SetMissionByIndex(sceneId, humanObjId, misIndex, x500604_g_RecordIdx, killedCount)					
				BeginEvent(sceneId)
					local str = format("�� gi�t ch�t %s%d/%d", x500604_g_MonsterName, killedCount, x500604_g_KillMonsterCnt )						
					AddText(sceneId, str)
				EndEvent(sceneId)
				DispatchMissionTips(sceneId, humanObjId)
				if killedCount >= x500604_g_KillMonsterCnt then
					SetMissionByIndex(sceneId, humanObjId, misIndex, x500604_g_Mission_IsComplete, 1)
				end
			end
		end
	end

end

--**********************************
--���������¼�
--**********************************
function x500604_OnEnterArea( sceneId, selfId, zoneId )	
end

--**********************************
--���߸ı�
--**********************************
function x500604_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--���������ʾto� � ����
--**********************************
function x500604_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--���������ʾto� � ����
--**********************************
function x500604_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x500604_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--��NPC�Ի�
--**********************************
function x500604_TalkInfo( sceneId, selfId, targetId, msg )

	BeginEvent(sceneId)
		AddText( sceneId, msg )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ȡ �i�m���¼�to� � MissionId,����obj�ļ��жԻ��龰to� � �ж�
--**********************************
function x500604_GetEventMissionId( sceneId, selfId )	
	return x500604_g_MissionId
end

function x500604_AcceptMission( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500604_g_Name then
		x500604_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )
		return 0
	end

	local  PlayerName=GetName(sceneId,selfId)		
	
	--��������Ti�p th�ʱ��ʾto� � ��Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x500604_g_MissionName)
		AddText( sceneId, x500604_g_MissionInfo )
		AddText(sceneId,"#{M_MUBIAO}")
		AddText(sceneId,"#{YD_20080421_48}")
		AddText(sceneId,"#{M_SHOUHUO}")
		AddItemBonus( sceneId, x500604_g_ItemBonus_List.id, x500604_g_ItemBonus_List.num )
		AddMoneyBonus( sceneId, x500604_g_MoneyBonus)

	EndEvent( )
	DispatchMissionInfo(sceneId,selfId,targetId,x500604_g_ScriptId,x500604_g_MissionId)	

end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--��ȡ����itemto� � ��ϸ��Ϣ
function x500604_GetItemDetailInfo(itemId)
	return 0
end	

--**********************************
--����ʹ��
--**********************************
function x500604_OnUseItem( sceneId, selfId, bagIndex )	
end

--**********************************
--�����¼�
--**********************************
function x500604_OnDie( sceneId, selfId, killerId )
end