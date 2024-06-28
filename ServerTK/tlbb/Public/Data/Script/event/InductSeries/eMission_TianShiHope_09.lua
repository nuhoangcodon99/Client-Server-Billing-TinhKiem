--������[ QUFEI 2008-04-30 10:27 UPDATE BugID 34172 ]
--�����ʧ�����������¼��ű�
--������������_��ʦto� � �ڴ�9

--MisDescBegin
--�ű���
x500615_g_ScriptId	= 500615

--Ŀ������NPC����
x500615_g_Position_X=160.2399
x500615_g_Position_Z=134.1486
x500615_g_SceneID=0
x500615_g_AccomplishNPC_Name="Ch�u Thi�n S�"

--ǰ�������
x500615_g_PreMissionId	=	475
--�����
x500615_g_MissionId			= 476
--��m�t c�i����to� � ID
x500615_g_MissionIdNext	= 477
--��m�t c�i����to� � Index
x500615_g_MissionIndexNext	= 1018724
--��m�t c�i����to� � ScriptId
x500615_g_NextScriptId	= 006668
--L�nh M�c ti�u nhi�m v���T�i ����
x500615_g_AcceptNPC_SceneID	=	0
--L�nh ����npc
x500615_g_Name 					= "Ch�u Thi�n S�"
--�������
x500615_g_MissionKind			= 11
--��ng c�p nhi�m v� 
x500615_g_MissionLevel		= 45
--��ng����ngTinhӢ����
x500615_g_IfMissionElite	= 0
--������ng���Ѿ����
x500615_g_IsMissionOkFail	= 0		--�������to� � ��0λ

--�����ı�����
x500615_g_MissionName			= "Thi�n s� k� ��i [9]"
--��������
x500615_g_MissionInfo			= "#{YD_20080421_14}"
--M�c ti�u nhi�m v�
x500615_g_MissionTarget		= "#{YD_20080421_132}"
--δHo�n t�t nhi�m v�to� � npc�Ի�
x500615_g_ContinueInfo		= "#{YD_20080421_15}"
--Ho�n t�t nhi�m v�npc˵to� � ��
x500615_g_MissionComplete	= "#{YD_20080421_16}"
--�������to� � ����
x500615_g_MaxRound	= 1
--���ƽű�
x500615_g_ControlScript		= 001066

-- ����������,���ݶ�̬ˢ��,ռ���������to� � ��1λ
x500615_g_Custom	= { {id="�a th�ng l�n c�p 48",num=1} }
--MisDescEnd

--������ng�����
x500615_g_Mission_IsComplete = 0		--�������to� � ��0λ
--��ng��ﵽ��c�pto� � ���
x500615_g_RecordIdx 				 = 1		--�������to� � ��1λ
--����ű��ż�¼
x500615_g_MissScriptID_Idx	 = 2		--�������to� � ��2λ
--���񷢲�NPC���
x500615_g_AcceptNPC_Idx			 = 3		--�������to� � ��3λ 1.L�c D߽ngNPC

x500615_g_AcceptMission_IDX		= 785	--������������
x500615_g_CompleteMission_IDX	= 786	--�ύ��������

--��ӵ��to� � �¼�ID�б�
x500615_g_EventList	= {}

x500615_g_PlayerSlow_LVL					 = 45		-- Ti�p th�����to� � ��͵�c�p

--����
x500615_g_MoneyBonus					=	1579
x500615_g_ExpBonus						= 6378

--**********************************
--������ں���
--**********************************
-- �i�m���������ִ�д˽ű�
function x500615_OnDefaultEvent( sceneId, selfId, targetId )

	local	key	= GetNumText()	
	if key == x500615_g_AcceptMission_IDX then
		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		if LuaFnGetName( sceneId, targetId ) ~= x500615_g_Name then
			x500615_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
			return 0
		end
		-- ������ng������
		if IsMissionFull( sceneId, selfId ) == 1 then
			x500615_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_23}" )
			return 0
		end
		
		-- �������Ti�p th�����
		if x500615_CheckAccept( sceneId, selfId, targetId )<=0 then
			return 0
		end

		-- ����Ti�p th��������			
		x500615_AcceptMission( sceneId, selfId, targetId )				
	
	elseif key == x500615_g_CompleteMission_IDX then
		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		if LuaFnGetName( sceneId, targetId ) ~= x500615_g_AccomplishNPC_Name then
			x500615_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
			return 0
		end
		-- ����Ѿ���������
		if IsHaveMission( sceneId, selfId, x500615_g_MissionId) > 0 then
												
			--������������to� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId, x500615_g_MissionName)
				AddText(sceneId, x500615_g_ContinueInfo)			
			EndEvent( )
			
			local bDone = x500615_CheckSubmit( sceneId, selfId, targetId )				
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x500615_g_ScriptId, x500615_g_MissionId, bDone)
			
		else			
			x500615_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
			return 0
		end
	else
		x500615_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

end

--**********************************
--�о��¼�
--**********************************
function x500615_OnEnumerate( sceneId, selfId, targetId )

	if LuaFnGetName( sceneId, targetId ) ~= x500615_g_Name
		 or sceneId ~= x500615_g_SceneID then
		 
		 return 0
	end

	if IsHaveMission( sceneId, selfId, x500615_g_MissionId ) <= 0 then
		if IsMissionHaveDone( sceneId, selfId, x500615_g_MissionId ) <= 0
			 and LuaFnGetLevel( sceneId, selfId ) >= x500615_g_PlayerSlow_LVL then
			AddNumText( sceneId, x500615_g_ScriptId, x500615_g_MissionName, 1, x500615_g_AcceptMission_IDX )
		end
	else
		
		AddNumText( sceneId, x500615_g_ScriptId, x500615_g_MissionName, 2, x500615_g_CompleteMission_IDX )
	end

end

--**********************************
--���Ti�p th�����,Ҳ�����������
--**********************************
function x500615_CheckAccept( sceneId, selfId, targetId )
	
	--��������ng�����Ti�p th�����to� � ����
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500615_g_Name then
		x500615_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	--����c�p
	if LuaFnGetLevel( sceneId, selfId ) < x500615_g_PlayerSlow_LVL then
		local nStr = format( "#{YD_20080421_175}%d#{YD_20080421_176}", x500615_g_PlayerSlow_LVL )
		x500615_TalkInfo( sceneId, selfId, targetId, nStr )
		return 0
	end

	--�Ѿ��ӹ��򲻷�������
	if IsHaveMission( sceneId, selfId, x500615_g_MissionId ) > 0 then
		-- x500615_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_067}" )
		return 0
	end
	if IsMissionHaveDone( sceneId, selfId, x500615_g_MissionId ) > 0 then
		return 0
	end

	return 1
end

--**********************************
--Ti�p th�,����������������ù�������
--**********************************
function x500615_OnAccept( sceneId, selfId, targetId, scriptId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
 	if LuaFnGetName( sceneId, targetId ) ~= x500615_g_Name then
 		x500615_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	if x500615_CheckAccept( sceneId, selfId, targetId )<=0 then
		return 0
	end

	--������������б�
	local bAdd = AddMission( sceneId, selfId, x500615_g_MissionId, x500615_g_ScriptId, 0, 0, 0 )
	if bAdd >= 1 then

		-- �i�m������to� � ���к�
		local	misIndex		= GetMissionIndexByID( sceneId, selfId, x500615_g_MissionId )
		
		--�������кŰ��������to� � ��0λ��0 (����������)
		SetMissionByIndex( sceneId, selfId, misIndex, x500615_g_Mission_IsComplete, 0 )
		SetMissionByIndex( sceneId, selfId, misIndex, x500615_g_RecordIdx, 0 )
		--�������кŰ��������to� � ��2λ��Ϊ����ű���
		SetMissionByIndex( sceneId, selfId, misIndex, x500615_g_MissScriptID_Idx, scriptId )		
		SetMissionByIndex(sceneId, selfId, misIndex, x500615_g_AcceptNPC_Idx, 1)
		
		local strText = "#{YD_20080421_229}" .. x500615_g_MissionName
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
		
		-- ��ng��ﵽ48c�p
		local Playerlvl = LuaFnGetLevel( sceneId, selfId )
	  if Playerlvl >= 48 then
			SetMissionByIndex( sceneId, selfId, misIndex, x500615_g_Mission_IsComplete, 1 )
			SetMissionByIndex( sceneId, selfId, misIndex, x500615_g_RecordIdx, 1 )
			x500615_NotifyTip( sceneId, selfId, "#{YD_20080421_202}" )
		end

	end

	return 1

end

--**********************************
--����,�������������
--**********************************
function x500615_OnAbandon( sceneId, selfId )

  if IsHaveMission( sceneId, selfId, x500615_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x500615_g_MissionId )
	end
	
	return 0

end

--**********************************
--����
--**********************************
function x500615_OnContinue( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500615_g_AccomplishNPC_Name then
		x500615_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

	-- ���������ng�����
	if x500615_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then			
		return 0
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x500615_g_MissionName)
		AddText( sceneId, x500615_g_MissionComplete )				
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x500615_g_ScriptId,x500615_g_MissionId)
	
end

--**********************************
--�����ng������ύ
--**********************************
function x500615_CheckSubmit( sceneId, selfId, targetId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500615_g_AccomplishNPC_Name then
		x500615_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

	if IsHaveMission( sceneId, selfId, x500615_g_MissionId ) <= 0 then
		x500615_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
		return 0
	end

	-- ��ng��ﵽ48c�p
	local Playerlvl = LuaFnGetLevel( sceneId, selfId )
	if Playerlvl < 48 then
		x500615_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_203}" )
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x500615_g_MissionId)

	-- ���������ng�����	
	if GetMissionParam(sceneId, selfId, misIndex, x500615_g_Mission_IsComplete) > 0 then
		return 1
	end
	
	return 0
	
end

--**********************************
--�ύ,�������������
--**********************************
function x500615_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500615_g_AccomplishNPC_Name then
		x500615_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

  -- ���������ng�����
	if x500615_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then
		x500615_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )				
		return 0
	end

	AddMoney( sceneId, selfId, x500615_g_MoneyBonus )
	LuaFnAddExp( sceneId, selfId, x500615_g_ExpBonus )

	-- ����˳�����
	x500615_NotifyTip( sceneId, selfId, "#{YD_20080421_180}" )

	if IsHaveMission( sceneId, selfId, x500615_g_MissionId ) > 0 then  	
	 	DelMission( sceneId, selfId, x500615_g_MissionId )
	 	-- ���������Ѿ�����ɹ�
	 	MissionCom( sceneId, selfId, x500615_g_MissionId )
	 	
	 	local strText = "#Y" .. x500615_g_MissionName .. "#{YD_20080421_230}"
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
	 	
	 	-- ������������Ti�p th�����
	 	if IsHaveMission( sceneId, selfId, x500615_g_MissionIdNext ) <= 0 and IsMissionHaveDone( sceneId, selfId, x500615_g_MissionIdNext ) <= 0 then
	 		CallScriptFunction( x500615_g_NextScriptId, "OnDefaultEvent", sceneId, selfId, targetId, x500615_g_MissionIndexNext )
	 	end	 		 		 	
	end

end

--**********************************
--ɱ����������
--**********************************
function x500615_OnKillObject( sceneId, selfId, objdataId ,objId)--������˼: �����š����objId�������λ�úš�����
end

--**********************************
--���������¼�
--**********************************
function x500615_OnEnterArea( sceneId, selfId, zoneId )	
end

--**********************************
--���߸ı�
--**********************************
function x500615_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--���������ʾto� � ����
--**********************************
function x500615_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--���������ʾto� � ����
--**********************************
function x500615_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x500615_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--��NPC�Ի�
--**********************************
function x500615_TalkInfo( sceneId, selfId, targetId, msg )

	BeginEvent(sceneId)
		AddText( sceneId, msg )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ȡ �i�m���¼�to� � MissionId,����obj�ļ��жԻ��龰to� � �ж�
--**********************************
function x500615_GetEventMissionId( sceneId, selfId )	
	return x500615_g_MissionId
end

function x500615_AcceptMission( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500615_g_Name then
		x500615_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )
		return 0
	end

	local  PlayerName=GetName(sceneId,selfId)		
	
	--��������Ti�p th�ʱ��ʾto� � ��Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x500615_g_MissionName)
		AddText( sceneId, x500615_g_MissionInfo )
		AddText(sceneId,"#{M_MUBIAO}")
		AddText(sceneId,"#{YD_20080421_132}")
		AddText(sceneId,"#{M_SHOUHUO}")
		AddMoneyBonus( sceneId, x500615_g_MoneyBonus)
		
	EndEvent( )
	DispatchMissionInfo(sceneId,selfId,targetId,x500615_g_ScriptId,x500615_g_MissionId)	

end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--��ȡ����itemto� � ��ϸ��Ϣ
function x500615_GetItemDetailInfo(itemId)
	return 0
end	

--**********************************
--����ʹ��
--**********************************
function x500615_OnUseItem( sceneId, selfId, bagIndex )	
end

--**********************************
--�����¼�
--**********************************
function x500615_OnDie( sceneId, selfId, killerId )
end
