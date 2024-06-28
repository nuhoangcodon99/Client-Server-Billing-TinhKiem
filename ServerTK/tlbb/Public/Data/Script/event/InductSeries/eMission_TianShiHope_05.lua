--������[ QUFEI 2008-04-30 10:27 UPDATE BugID 34167 ]
--�����ʧ�����������¼��ű�
--��С��������_��ʦto� � �ڴ�5

--MisDescBegin
--�ű���
x500608_g_ScriptId	= 500608

--Ŀ������NPC����
x500608_g_Position_X=160.2399
x500608_g_Position_Z=134.1486
x500608_g_SceneID=0
x500608_g_AccomplishNPC_Name="Ch�u Thi�n S�"

--ǰ�������
x500608_g_PreMissionId	=	417
--�����
x500608_g_MissionId			= 418
--��m�t c�i����to� � ID
x500608_g_MissionIdNext	= 419
--��m�t c�i����to� � Index
x500608_g_MissionIndexNext	= 1018709
--��m�t c�i����to� � ScriptId
x500608_g_NextScriptId	= 006668
--L�nh M�c ti�u nhi�m v���T�i ����
x500608_g_AcceptNPC_SceneID	=	0
--L�nh ����npc
x500608_g_Name 					= "Ch�u Thi�n S�"
--�������
x500608_g_MissionKind			= 11
--��ng c�p nhi�m v� 
x500608_g_MissionLevel		= 35
--��ng����ngTinhӢ����
x500608_g_IfMissionElite	= 0
--������ng���Ѿ����
x500608_g_IsMissionOkFail	= 0		--�������to� � ��0λ

--�����ı�����
x500608_g_MissionName			= "Thi�n s� k� ��i [5]"
--��������
x500608_g_MissionInfo			= "#{YD_20080421_14}"
--M�c ti�u nhi�m v�
x500608_g_MissionTarget		= "#{YD_20080421_59}"
--δHo�n t�t nhi�m v�to� � npc�Ի�
x500608_g_ContinueInfo		= "#{YD_20080421_15}"
--Ho�n t�t nhi�m v�npc˵to� � ��
x500608_g_MissionComplete	= "#{YD_20080421_16}"
--�������to� � ����
x500608_g_MaxRound	= 1
--���ƽű�
x500608_g_ControlScript		= 001066

-- ����������,���ݶ�̬ˢ��,ռ���������to� � ��1λ
x500608_g_Custom	= { {id="�a th�ng l�n c�p 38",num=1} }
--MisDescEnd

--������ng�����
x500608_g_Mission_IsComplete = 0		--�������to� � ��0λ
--��ng��ﵽ��c�pto� � ���
x500608_g_RecordIdx 				 = 1		--�������to� � ��1λ
--����ű��ż�¼
x500608_g_MissScriptID_Idx	 = 2		--�������to� � ��2λ
--���񷢲�NPC���
x500608_g_AcceptNPC_Idx			 = 3		--�������to� � ��3λ 1.L�c D߽ngNPC

x500608_g_AcceptMission_IDX		= 759	--������������
x500608_g_CompleteMission_IDX	= 760	--�ύ��������

--��ӵ��to� � �¼�ID�б�
x500608_g_EventList	= {}

x500608_g_PlayerSlow_LVL					 = 35		-- Ti�p th�����to� � ��͵�c�p

--����
x500608_g_MoneyBonus					=	1251
x500608_g_ExpBonus						= 5005

--**********************************
--������ں���
--**********************************
-- �i�m���������ִ�д˽ű�
function x500608_OnDefaultEvent( sceneId, selfId, targetId )

	local	key	= GetNumText()	
	if key == x500608_g_AcceptMission_IDX then
		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		if LuaFnGetName( sceneId, targetId ) ~= x500608_g_Name then
			x500608_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
			return 0
		end
		-- ������ng������
		if IsMissionFull( sceneId, selfId ) == 1 then
			x500608_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_23}" )
			return 0
		end
		
		-- �������Ti�p th�����
		if x500608_CheckAccept( sceneId, selfId, targetId )<=0 then
			return 0
		end

		-- ����Ti�p th��������			
		x500608_AcceptMission( sceneId, selfId, targetId )				
	
	elseif key == x500608_g_CompleteMission_IDX then
		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		if LuaFnGetName( sceneId, targetId ) ~= x500608_g_AccomplishNPC_Name then
			x500608_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
			return 0
		end
		-- ����Ѿ���������
		if IsHaveMission( sceneId, selfId, x500608_g_MissionId) > 0 then
												
			--������������to� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId, x500608_g_MissionName)
				AddText(sceneId, x500608_g_ContinueInfo)			
			EndEvent( )
			
			local bDone = x500608_CheckSubmit( sceneId, selfId, targetId )				
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x500608_g_ScriptId, x500608_g_MissionId, bDone)
			
		else			
			x500608_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
			return 0
		end
	else
		x500608_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

end

--**********************************
--�о��¼�
--**********************************
function x500608_OnEnumerate( sceneId, selfId, targetId )

	if LuaFnGetName( sceneId, targetId ) ~= x500608_g_Name
		 or sceneId ~= x500608_g_SceneID then
		 
		 return 0
	end

	if IsHaveMission( sceneId, selfId, x500608_g_MissionId ) <= 0 then
		if IsMissionHaveDone( sceneId, selfId, x500608_g_MissionId ) <= 0
			 and LuaFnGetLevel( sceneId, selfId ) >= x500608_g_PlayerSlow_LVL then
			AddNumText( sceneId, x500608_g_ScriptId, x500608_g_MissionName, 1, x500608_g_AcceptMission_IDX )
		end
	else
		
		AddNumText( sceneId, x500608_g_ScriptId, x500608_g_MissionName, 2, x500608_g_CompleteMission_IDX )
	end

end

--**********************************
--���Ti�p th�����,Ҳ�����������
--**********************************
function x500608_CheckAccept( sceneId, selfId, targetId )
	
	--��������ng�����Ti�p th�����to� � ����
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500608_g_Name then
		x500608_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	--����c�p
	if LuaFnGetLevel( sceneId, selfId ) < x500608_g_PlayerSlow_LVL then
		local nStr = format( "#{YD_20080421_175}%d#{YD_20080421_176}", x500608_g_PlayerSlow_LVL )
		x500608_TalkInfo( sceneId, selfId, targetId, nStr )
		return 0
	end

	--�Ѿ��ӹ��򲻷�������
	if IsHaveMission( sceneId, selfId, x500608_g_MissionId ) > 0 then
		-- x500608_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_067}" )
		return 0
	end
	if IsMissionHaveDone( sceneId, selfId, x500608_g_MissionId ) > 0 then
		return 0
	end

	return 1
end

--**********************************
--Ti�p th�,����������������ù�������
--**********************************
function x500608_OnAccept( sceneId, selfId, targetId, scriptId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
 	if LuaFnGetName( sceneId, targetId ) ~= x500608_g_Name then
 		x500608_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	if x500608_CheckAccept( sceneId, selfId, targetId )<=0 then
		return 0
	end

	--������������б�
	local bAdd = AddMission( sceneId, selfId, x500608_g_MissionId, x500608_g_ScriptId, 0, 0, 0 )
	if bAdd >= 1 then

		-- �i�m������to� � ���к�
		local	misIndex		= GetMissionIndexByID( sceneId, selfId, x500608_g_MissionId )
		
		--�������кŰ��������to� � ��0λ��0 (����������)
		SetMissionByIndex( sceneId, selfId, misIndex, x500608_g_Mission_IsComplete, 0 )
		SetMissionByIndex( sceneId, selfId, misIndex, x500608_g_RecordIdx, 0 )
		--�������кŰ��������to� � ��2λ��Ϊ����ű���
		SetMissionByIndex( sceneId, selfId, misIndex, x500608_g_MissScriptID_Idx, scriptId )		
		SetMissionByIndex(sceneId, selfId, misIndex, x500608_g_AcceptNPC_Idx, 1)
		
		local strText = "#{YD_20080421_229}" .. x500608_g_MissionName
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
		
		-- ��ng��ﵽ38c�p
		local Playerlvl = LuaFnGetLevel( sceneId, selfId )
	  if Playerlvl >= 38 then
			SetMissionByIndex( sceneId, selfId, misIndex, x500608_g_Mission_IsComplete, 1 )
			SetMissionByIndex( sceneId, selfId, misIndex, x500608_g_RecordIdx, 1 )
			x500608_NotifyTip( sceneId, selfId, "#{YD_20080421_191}" )
		end

	end

	return 1

end

--**********************************
--����,�������������
--**********************************
function x500608_OnAbandon( sceneId, selfId )

  if IsHaveMission( sceneId, selfId, x500608_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x500608_g_MissionId )
	end
	
	return 0

end

--**********************************
--����
--**********************************
function x500608_OnContinue( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500608_g_AccomplishNPC_Name then
		x500608_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

	-- ���������ng�����
	if x500608_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then			
		return 0
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x500608_g_MissionName)
		AddText( sceneId, x500608_g_MissionComplete )				
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x500608_g_ScriptId,x500608_g_MissionId)
	
end

--**********************************
--�����ng������ύ
--**********************************
function x500608_CheckSubmit( sceneId, selfId, targetId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500608_g_AccomplishNPC_Name then
		x500608_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

	if IsHaveMission( sceneId, selfId, x500608_g_MissionId ) <= 0 then
		x500608_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
		return 0
	end

	-- ��ng��ﵽ38c�p
	local Playerlvl = LuaFnGetLevel( sceneId, selfId )
	if Playerlvl < 38 then
		x500608_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_192}" )
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x500608_g_MissionId)

	-- ���������ng�����	
	if GetMissionParam(sceneId, selfId, misIndex, x500608_g_Mission_IsComplete) > 0 then
		return 1
	end
	
	return 0
	
end

--**********************************
--�ύ,�������������
--**********************************
function x500608_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500608_g_AccomplishNPC_Name then
		x500608_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

  -- ���������ng�����
	if x500608_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then
		x500608_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )				
		return 0
	end

	AddMoney( sceneId, selfId, x500608_g_MoneyBonus )
	LuaFnAddExp( sceneId, selfId, x500608_g_ExpBonus )

	-- ����˳�����
	x500608_NotifyTip( sceneId, selfId, "#{YD_20080421_180}" )

	if IsHaveMission( sceneId, selfId, x500608_g_MissionId ) > 0 then  	
	 	DelMission( sceneId, selfId, x500608_g_MissionId )
	 	-- ���������Ѿ�����ɹ�
	 	MissionCom( sceneId, selfId, x500608_g_MissionId )
	 	
	 	local strText = "#Y" .. x500608_g_MissionName .. "#{YD_20080421_230}"
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
	 	
	 	-- ������������Ti�p th�����
	 	if IsHaveMission( sceneId, selfId, x500608_g_MissionIdNext ) <= 0 and IsMissionHaveDone( sceneId, selfId, x500608_g_MissionIdNext ) <= 0 then
	 		CallScriptFunction( x500608_g_NextScriptId, "OnDefaultEvent", sceneId, selfId, targetId, x500608_g_MissionIndexNext )
	 	end	 		 		 	
	end

end

--**********************************
--ɱ����������
--**********************************
function x500608_OnKillObject( sceneId, selfId, objdataId ,objId)--������˼: �����š����objId�������λ�úš�����
end

--**********************************
--���������¼�
--**********************************
function x500608_OnEnterArea( sceneId, selfId, zoneId )	
end

--**********************************
--���߸ı�
--**********************************
function x500608_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--���������ʾto� � ����
--**********************************
function x500608_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--���������ʾto� � ����
--**********************************
function x500608_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x500608_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--��NPC�Ի�
--**********************************
function x500608_TalkInfo( sceneId, selfId, targetId, msg )

	BeginEvent(sceneId)
		AddText( sceneId, msg )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ȡ �i�m���¼�to� � MissionId,����obj�ļ��жԻ��龰to� � �ж�
--**********************************
function x500608_GetEventMissionId( sceneId, selfId )	
	return x500608_g_MissionId
end

function x500608_AcceptMission( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500608_g_Name then
		x500608_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )
		return 0
	end

	local  PlayerName=GetName(sceneId,selfId)		
	
	--��������Ti�p th�ʱ��ʾto� � ��Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x500608_g_MissionName)
		AddText( sceneId, x500608_g_MissionInfo )
		AddText(sceneId,"#{M_MUBIAO}")
		AddText(sceneId,"#{YD_20080421_59}")
		AddText(sceneId,"#{M_SHOUHUO}")
		AddMoneyBonus( sceneId, x500608_g_MoneyBonus)
		
	EndEvent( )
	DispatchMissionInfo(sceneId,selfId,targetId,x500608_g_ScriptId,x500608_g_MissionId)	

end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--��ȡ����itemto� � ��ϸ��Ϣ
function x500608_GetItemDetailInfo(itemId)
	return 0
end	

--**********************************
--����ʹ��
--**********************************
function x500608_OnUseItem( sceneId, selfId, bagIndex )	
end

--**********************************
--�����¼�
--**********************************
function x500608_OnDie( sceneId, selfId, killerId )
end
