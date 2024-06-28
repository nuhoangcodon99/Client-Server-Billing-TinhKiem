--������[ QUFEI 2008-04-30 10:27 UPDATE BugID 34169 ]
--�����ʧ�����������¼��ű�
--������������2_�ɵ�H�ng H�ng V߽ng

--MisDescBegin
--�ű���
x500610_g_ScriptId	= 500610

--Ŀ������NPC����
x500610_g_Position_X=251.1648
x500610_g_Position_Z=108.9732
x500610_g_SceneID=1
x500610_g_AccomplishNPC_Name="Hoa Ki�m �nh"

--ǰ�������
x500610_g_PreMissionId	=	423
--�����
x500610_g_MissionId			= 424
--��m�t c�i����to� � ID
x500610_g_MissionIdNext	= 425
--��m�t c�i����to� � Index
x500610_g_MissionIndexNext	= 1018711
--��m�t c�i����to� � ScriptId
x500610_g_NextScriptId	= 006668
--L�nh M�c ti�u nhi�m v���T�i ����
x500610_g_AcceptNPC_SceneID	=	1
--L�nh ����npc
x500610_g_Name 					= "Hoa Ki�m �nh"
--�������
x500610_g_MissionKind			= 12
--��ng c�p nhi�m v� 
x500610_g_MissionLevel		= 38
--��ng����ngTinhӢ����
x500610_g_IfMissionElite	= 0
--������ng���Ѿ����
x500610_g_IsMissionOkFail	= 0		--�������to� � ��0λ

--�����ı�����
x500610_g_MissionName			= "X� l� H�ng H�ng V߽ng"
--��������
x500610_g_MissionInfo			= "#{YD_20080421_70}"
--M�c ti�u nhi�m v�
x500610_g_MissionTarget		= "#{YD_20080421_69}"
--δHo�n t�t nhi�m v�to� � npc�Ի�
x500610_g_ContinueInfo		= "#{YD_20080421_194}"
--Ho�n t�t nhi�m v�npc˵to� � ��
x500610_g_MissionComplete	= "#{YD_20080421_71}"
--�������to� � ����
x500610_g_MaxRound	= 1
--���ƽű�
x500610_g_ControlScript		= 001066

-- ����������,���ݶ�̬ˢ��,ռ���������to� � ��1λ
x500610_g_Custom	= { {id="�� gi�t ch�t h�ng h�ng v߽ng",num=1} }
--MisDescEnd

--������ng�����
x500610_g_Mission_IsComplete = 0		--�������to� � ��0λ
--��ng��ɱ��to� � ���
x500610_g_RecordIdx 				 = 1		--�������to� � ��1λ
--����ű��ż�¼
x500610_g_MissScriptID_Idx	 = 2		--�������to� � ��2λ
--���񷢲�NPC���
x500610_g_AcceptNPC_Idx			 = 3		--�������to� � ��3λ 2.T� Ch�uNPC

x500610_g_AcceptMission_IDX		= 763	--������������
x500610_g_CompleteMission_IDX	= 764	--�ύ��������

--��ӵ��to� � �¼�ID�б�
x500610_g_EventList	= {}

x500610_g_PlayerSlow_LVL					 = 38		-- Ti�p th�����to� � ��͵�c�p

--����
x500610_g_MoneyBonus					=	9475
x500610_g_ExpBonus						= 37902
x500610_g_ItemBonus_List 	 	  = { id=30505701,num=1 }

--��������ID_����
x500610_g_TargetSceneId				= 49
--��������
x500610_g_MonsterName					=	"H�ng H�ng V߽ng"
--Ҫ��to� � ɱ������
x500610_g_KillMonsterCnt			=	1

--**********************************
--������ں���
--**********************************
-- �i�m���������ִ�д˽ű�
function x500610_OnDefaultEvent( sceneId, selfId, targetId )

	local	key	= GetNumText()	
	if key == x500610_g_AcceptMission_IDX then
		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		if LuaFnGetName( sceneId, targetId ) ~= x500610_g_Name then
			x500610_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
			return 0
		end
		-- ������ng������
		if IsMissionFull( sceneId, selfId ) == 1 then
			x500610_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_23}" )
			return 0
		end
		
		-- �������Ti�p th�����
		if x500610_CheckAccept( sceneId, selfId, targetId )<=0 then
			return 0
		end

		-- ����Ti�p th��������			
		x500610_AcceptMission( sceneId, selfId, targetId )				
	
	elseif key == x500610_g_CompleteMission_IDX then
		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		if LuaFnGetName( sceneId, targetId ) ~= x500610_g_AccomplishNPC_Name then
			x500610_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
			return 0
		end
		-- ����Ѿ���������
		if IsHaveMission( sceneId, selfId, x500610_g_MissionId) > 0 then
												
			--������������to� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId, x500610_g_MissionName)
				AddText(sceneId, x500610_g_ContinueInfo)			
			EndEvent( )
			
			local bDone = x500610_CheckSubmit( sceneId, selfId, targetId )				
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x500610_g_ScriptId, x500610_g_MissionId, bDone)
			
		else			
			x500610_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
			return 0
		end
	else
		x500610_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

end

--**********************************
--�о��¼�
--**********************************
function x500610_OnEnumerate( sceneId, selfId, targetId )

	if IsHaveMission( sceneId, selfId, x500610_g_MissionId ) <= 0 then
		if LuaFnGetName( sceneId, targetId ) == x500610_g_Name
			 and sceneId == x500610_g_AcceptNPC_SceneID then
			if IsMissionHaveDone( sceneId, selfId, x500610_g_PreMissionId ) > 0
				 and IsMissionHaveDone( sceneId, selfId, x500610_g_MissionId ) <= 0 then
				AddNumText( sceneId, x500610_g_ScriptId, x500610_g_MissionName, 1, x500610_g_AcceptMission_IDX )
			end
		end
	else
		if LuaFnGetName( sceneId, targetId ) == x500610_g_AccomplishNPC_Name
				 and sceneId == x500610_g_SceneID then
			
			AddNumText( sceneId, x500610_g_ScriptId, x500610_g_MissionName, 2, x500610_g_CompleteMission_IDX )
		end
	end

end

--**********************************
--���Ti�p th�����,Ҳ�����������
--**********************************
function x500610_CheckAccept( sceneId, selfId, targetId )
	
	--��������ng�����Ti�p th�����to� � ����
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500610_g_Name then
		x500610_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	--����c�p
	if LuaFnGetLevel( sceneId, selfId ) < x500610_g_PlayerSlow_LVL then
		local nStr = format( "#{YD_20080421_175}%d#{YD_20080421_176}", x500610_g_PlayerSlow_LVL )
		x500610_TalkInfo( sceneId, selfId, targetId, nStr )
		return 0
	end

	--�Ѿ��ӹ��򲻷�������
	if IsHaveMission( sceneId, selfId, x500610_g_MissionId ) > 0 then
		x500610_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_067}" )
		return 0
	end
	if IsMissionHaveDone( sceneId, selfId, x500610_g_MissionId ) > 0 then		
		return 0
	end

	--���ǰ������
	if IsMissionHaveDone( sceneId, selfId, x500610_g_PreMissionId ) <= 0 then
		x500610_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_177}" )
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�,����������������ù�������
--**********************************
function x500610_OnAccept( sceneId, selfId, targetId, scriptId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
 	if LuaFnGetName( sceneId, targetId ) ~= x500610_g_Name then
 		x500610_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	if x500610_CheckAccept( sceneId, selfId, targetId )<=0 then
		return 0
	end

	--������������б�
	local bAdd = AddMission( sceneId, selfId, x500610_g_MissionId, x500610_g_ScriptId, 1, 0, 0 )
	if bAdd >= 1 then

		-- �i�m������to� � ���к�
		local	misIndex		= GetMissionIndexByID( sceneId, selfId, x500610_g_MissionId )
		
		--�������кŰ��������to� � ��0λ��0 (����������)
		SetMissionByIndex( sceneId, selfId, misIndex, x500610_g_Mission_IsComplete, 0 )
		SetMissionByIndex( sceneId, selfId, misIndex, x500610_g_RecordIdx, 0 )
		--�������кŰ��������to� � ��2λ��Ϊ����ű���
		SetMissionByIndex( sceneId, selfId, misIndex, x500610_g_MissScriptID_Idx, scriptId )		
		SetMissionByIndex(sceneId, selfId, misIndex, x500610_g_AcceptNPC_Idx, 2)
		
		local strText = "#{YD_20080421_229}" .. x500610_g_MissionName
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )

	end

	return 1

end

--**********************************
--����,�������������
--**********************************
function x500610_OnAbandon( sceneId, selfId )

  if IsHaveMission( sceneId, selfId, x500610_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x500610_g_MissionId )
	end
	
	return 0

end

--**********************************
--����
--**********************************
function x500610_OnContinue( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500610_g_AccomplishNPC_Name then
		x500610_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

	-- ���������ng�����
	if x500610_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then			
		return 0
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x500610_g_MissionName)
		AddText( sceneId, x500610_g_MissionComplete )				
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x500610_g_ScriptId,x500610_g_MissionId)
	
end

--**********************************
--�����ng������ύ
--**********************************
function x500610_CheckSubmit( sceneId, selfId, targetId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500610_g_AccomplishNPC_Name then
		x500610_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

	if IsHaveMission( sceneId, selfId, x500610_g_MissionId ) <= 0 then
		x500610_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x500610_g_MissionId)

	-- ���������ng�����	
	if GetMissionParam(sceneId, selfId, misIndex, x500610_g_Mission_IsComplete) > 0 then
		return 1
	end
	
	return 0
	
end

--**********************************
--�ύ,�������������
--**********************************
function x500610_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500610_g_AccomplishNPC_Name then
		x500610_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

  -- ���������ng�����
	if x500610_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then
		x500610_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )				
		return 0
	end

	AddMoney( sceneId, selfId, x500610_g_MoneyBonus )
	LuaFnAddExp( sceneId, selfId, x500610_g_ExpBonus )

	-- ����˳�����
	x500610_NotifyTip( sceneId, selfId, "#{YD_20080421_180}" )

	if IsHaveMission( sceneId, selfId, x500610_g_MissionId ) > 0 then  	
	 	DelMission( sceneId, selfId, x500610_g_MissionId )
	 	-- ���������Ѿ�����ɹ�
	 	MissionCom( sceneId, selfId, x500610_g_MissionId )
	 	
	 	local strText = "#Y" .. x500610_g_MissionName .. "#{YD_20080421_230}"
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
	 	
	 	-- ������������Ti�p th�����
	 	if IsHaveMission( sceneId, selfId, x500610_g_MissionIdNext ) <= 0 and IsMissionHaveDone( sceneId, selfId, x500610_g_MissionIdNext ) <= 0 then
	 		CallScriptFunction( x500610_g_NextScriptId, "OnDefaultEvent", sceneId, selfId, targetId, x500610_g_MissionIndexNext )
	 	end	 		 		 	
	end

	-- local nItemId = 0
	-- -- ���轱����Ʒ
	-- BeginAddItem(sceneId)
	-- AddItem(sceneId,x500610_g_ItemBonus_List.id, x500610_g_ItemBonus_List.num)
	-- local canAdd = EndAddItem(sceneId,selfId)						
	-- if canAdd > 0 then
	-- 	nItemId = x500610_g_ItemBonus_List.id
	-- 	AddItemListToHuman(sceneId,selfId)
	-- end

end

--**********************************
--ɱ����������
--**********************************
function x500610_OnKillObject( sceneId, selfId, objdataId ,objId)--������˼: �����š����objId�������λ�úš�����

	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	local monsterName = GetMonsterNamebyDataId(objdataId)
	if monsterName ~= x500610_g_MonsterName then
		return 0
	end
	
	local num = GetMonsterOwnerCount(sceneId,objId)
	for i=0,num-1  do
		-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
		local humanObjId = GetMonsterOwnerID(sceneId,objId,i)
		-- PrintStr("humanObjId=" .. humanObjId)
		-- ��C�i n�y ����ng����ng��C�i n�y ����
		if IsHaveMission(sceneId, humanObjId, x500610_g_MissionId) > 0 then
			-- ���ж���ng����ng�Ѿ�Th�a m�n����ɱ�־
			local misIndex = GetMissionIndexByID(sceneId,humanObjId,x500610_g_MissionId)
			if GetMissionParam(sceneId, humanObjId, misIndex, x500610_g_Mission_IsComplete) <=0  then
				local killedCount =	GetMissionParam(sceneId, humanObjId, misIndex, x500610_g_RecordIdx)
				killedCount = killedCount + 1
				SetMissionByIndex(sceneId, humanObjId, misIndex, x500610_g_RecordIdx, killedCount)					
				BeginEvent(sceneId)
					local str = format("�� gi�t ch�t %s%d/%d", x500610_g_MonsterName, killedCount, x500610_g_KillMonsterCnt )						
					AddText(sceneId, str)
				EndEvent(sceneId)
				DispatchMissionTips(sceneId, humanObjId)
				if killedCount >= x500610_g_KillMonsterCnt then
					SetMissionByIndex(sceneId, humanObjId, misIndex, x500610_g_Mission_IsComplete, 1)
				end
			end
		end
	end

end

--**********************************
--���������¼�
--**********************************
function x500610_OnEnterArea( sceneId, selfId, zoneId )	
end

--**********************************
--���߸ı�
--**********************************
function x500610_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--���������ʾto� � ����
--**********************************
function x500610_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--���������ʾto� � ����
--**********************************
function x500610_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x500610_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--��NPC�Ի�
--**********************************
function x500610_TalkInfo( sceneId, selfId, targetId, msg )

	BeginEvent(sceneId)
		AddText( sceneId, msg )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ȡ �i�m���¼�to� � MissionId,����obj�ļ��жԻ��龰to� � �ж�
--**********************************
function x500610_GetEventMissionId( sceneId, selfId )	
	return x500610_g_MissionId
end

function x500610_AcceptMission( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500610_g_Name then
		x500610_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )
		return 0
	end

	local  PlayerName=GetName(sceneId,selfId)		
	
	--��������Ti�p th�ʱ��ʾto� � ��Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x500610_g_MissionName)
		AddText( sceneId, x500610_g_MissionInfo )
		AddText(sceneId,"#{M_MUBIAO}")
		AddText(sceneId,"#{YD_20080421_69}")
		AddText(sceneId,"#{M_SHOUHUO}")
		AddMoneyBonus( sceneId, x500610_g_MoneyBonus)
		
	EndEvent( )
	DispatchMissionInfo(sceneId,selfId,targetId,x500610_g_ScriptId,x500610_g_MissionId)	

end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--��ȡ����itemto� � ��ϸ��Ϣ
function x500610_GetItemDetailInfo(itemId)
	return 0
end	

--**********************************
--����ʹ��
--**********************************
function x500610_OnUseItem( sceneId, selfId, bagIndex )	
end

--**********************************
--�����¼�
--**********************************
function x500610_OnDie( sceneId, selfId, killerId )
end
