--������[ QUFEI 2008-04-30 10:27 UPDATE BugID 34164 ]
--�����ʧ�����������¼��ű�
--�����������2_��ϰ���

--MisDescBegin
--�ű���
x500600_g_ScriptId	= 500600

--Ŀ������NPC����
x500600_g_Position_X=160.2399
x500600_g_Position_Z=134.1486
x500600_g_SceneID=0
x500600_g_AccomplishNPC_Name="Ch�u Thi�n S�"

--ǰ�������
x500600_g_PreMissionId	=	401
--�����
x500600_g_MissionId			= 402
--��m�t c�i����to� � Id
x500600_g_MissionIdNext	= 403
--��m�t c�i����to� � ScriptId
x500600_g_NextScriptId	= 500606
--L�nh M�c ti�u nhi�m v���T�i ����
x500600_g_AcceptNPC_SceneID	=	0
--L�nh ����npc
x500600_g_Name 					= "Ng� Th� Nh�n"
--�������
x500600_g_MissionKind			= 11
--��ng c�p nhi�m v� 
x500600_g_MissionLevel		= 26
--��ng����ngTinhӢ����
x500600_g_IfMissionElite	= 0
--������ng���Ѿ����
x500600_g_IsMissionOkFail	= 0		--�������to� � ��0λ

--�����ı�����
x500600_g_MissionName			= "Luy�n t�p t� �i"
--��������
x500600_g_MissionInfo			= "#{YD_20080421_10}"
--M�c ti�u nhi�m v�
x500600_g_MissionTarget		= "#{YD_20080421_09}"
--δHo�n t�t nhi�m v�to� � npc�Ի�
x500600_g_ContinueInfo		= "#{YD_20080421_11}"
--Ho�n t�t nhi�m v�npc˵to� � ��
x500600_g_MissionComplete	= "#{YD_20080421_12}"
--�������to� � ����
x500600_g_MaxRound	= 1
--���ƽű�
x500600_g_ControlScript		= 001066

-- ����������,���ݶ�̬ˢ��,ռ���������to� � ��1λ
x500600_g_Custom	= { {id="�� l�p t� �i hai ng߶i",num=1} }
--MisDescEnd

--������ng�����
x500600_g_Mission_IsComplete = 0		--�������to� � ��0λ
--��ng�����to� � ���
x500600_g_RecordIdx 				 = 1		--�������to� � ��1λ
--����ű��ż�¼
x500600_g_MissScriptID_Idx	 = 2		--�������to� � ��2λ
--���񷢲�NPC���
x500600_g_AcceptNPC_Idx			 = 3		--�������to� � ��3λ 1.L�c D߽ngNPC

x500600_g_AcceptMission_IDX		= 743	--������������
x500600_g_CompleteMission_IDX	= 744	--�ύ��������

--��ӵ��to� � �¼�ID�б�
x500600_g_EventList	= {}

x500600_g_PlayerSlow_LVL					 = 26		-- Ti�p th�����to� � ��͵�c�p

--����
x500600_g_MoneyBonus					=	1800
x500600_g_ExpBonus						= 7000

--**********************************
--������ں���
--**********************************
-- �i�m���������ִ�д˽ű�
function x500600_OnDefaultEvent( sceneId, selfId, targetId )

	local	key	= GetNumText()	
	if key == x500600_g_AcceptMission_IDX then
		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		if LuaFnGetName( sceneId, targetId ) ~= x500600_g_Name then
			x500600_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
			return 0
		end
		-- ������ng������
		if IsMissionFull( sceneId, selfId ) == 1 then
			x500600_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_23}" )
			return 0
		end
		
		-- �������Ti�p th�����
		if x500600_CheckAccept( sceneId, selfId, targetId )<=0 then
			return 0
		end

		-- ����Ti�p th��������			
		x500600_AcceptMission( sceneId, selfId, targetId )				
	
	elseif key == x500600_g_CompleteMission_IDX then
		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		if LuaFnGetName( sceneId, targetId ) ~= x500600_g_AccomplishNPC_Name then
			x500600_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
			return 0
		end
		-- ����Ѿ���������
		if IsHaveMission( sceneId, selfId, x500600_g_MissionId) > 0 then
												
			--������������to� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId, x500600_g_MissionName)
				AddText(sceneId, x500600_g_ContinueInfo)			
			EndEvent( )
			
			local bDone = x500600_CheckSubmit( sceneId, selfId, targetId )				
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x500600_g_ScriptId, x500600_g_MissionId, bDone)
			
		else			
			x500600_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
			return 0
		end
	else
		x500600_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

end

--**********************************
--�о��¼�
--**********************************
function x500600_OnEnumerate( sceneId, selfId, targetId )

	if LuaFnGetName( sceneId, targetId ) == x500600_g_Name
		 and sceneId == x500600_g_AcceptNPC_SceneID then
		if IsHaveMission( sceneId, selfId, x500600_g_MissionId ) <= 0 then
			if IsMissionHaveDone( sceneId, selfId, x500600_g_PreMissionId ) > 0
				 and IsMissionHaveDone( sceneId, selfId, x500600_g_MissionId ) <= 0 then
				AddNumText( sceneId, x500600_g_ScriptId, x500600_g_MissionName, 1, x500600_g_AcceptMission_IDX )
			end
		end
	elseif LuaFnGetName( sceneId, targetId ) == x500600_g_AccomplishNPC_Name
				 and sceneId == x500600_g_SceneID then
	
		if IsHaveMission( sceneId, selfId, x500600_g_MissionId ) > 0 then
			local misIndex = GetMissionIndexByID(sceneId,selfId,x500600_g_MissionId)

			-- ���������ng�����	
			if GetMissionParam(sceneId, selfId, misIndex, x500600_g_Mission_IsComplete) <= 0 then
			
				-- �������ng������c�i(��)����to� � еi vi�n 
				local NumMem = LuaFnGetTeamSize( sceneId, selfId )
			  if NumMem >= 2 then
					SetMissionByIndex( sceneId, selfId, misIndex, x500600_g_Mission_IsComplete, 1 )
					SetMissionByIndex( sceneId, selfId, misIndex, x500600_g_RecordIdx, 1 )
					x500600_NotifyTip( sceneId, selfId, "#{XSHCD_20080418_095}" )
				end
			end
			
			AddNumText( sceneId, x500600_g_ScriptId, x500600_g_MissionName, 2, x500600_g_CompleteMission_IDX )
		end
	else
		return 0
	end

end

--**********************************
--���Ti�p th�����,Ҳ�����������
--**********************************
function x500600_CheckAccept( sceneId, selfId, targetId )
	
	--��������ng�����Ti�p th�����to� � ����
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500600_g_Name then
		x500600_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	--����c�p
	if LuaFnGetLevel( sceneId, selfId ) < x500600_g_PlayerSlow_LVL then
		local nStr = format( "#{YD_20080421_175}%d#{YD_20080421_176}", x500600_g_PlayerSlow_LVL )
		x500600_TalkInfo( sceneId, selfId, targetId, nStr )
		return 0
	end

	--�Ѿ��ӹ��򲻷�������
	if IsHaveMission( sceneId, selfId, x500600_g_MissionId ) > 0 then
		x500600_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_067}" )
		return 0
	end

	if IsMissionHaveDone( sceneId, selfId, x500600_g_MissionId ) > 0 then
		return 0
	end

	--���ǰ������
	if IsMissionHaveDone( sceneId, selfId, x500600_g_PreMissionId ) <= 0 then
		x500600_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_177}" )
		return 0
	end

	return 1
end

--**********************************
--Ti�p th�,����������������ù�������
--**********************************
function x500600_OnAccept( sceneId, selfId, targetId, scriptId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
 	if LuaFnGetName( sceneId, targetId ) ~= x500600_g_Name then
 		x500600_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	if x500600_CheckAccept( sceneId, selfId, targetId )<=0 then
		return 0
	end

	--������������б�
	local bAdd = AddMission( sceneId, selfId, x500600_g_MissionId, x500600_g_ScriptId, 0, 0, 0 )
	if bAdd >= 1 then

		-- �i�m������to� � ���к�
		local	misIndex		= GetMissionIndexByID( sceneId, selfId, x500600_g_MissionId )
		
		--�������кŰ��������to� � ��0λ��0 (����������)
		SetMissionByIndex( sceneId, selfId, misIndex, x500600_g_Mission_IsComplete, 0 )
		SetMissionByIndex( sceneId, selfId, misIndex, x500600_g_RecordIdx, 0 )
		--�������кŰ��������to� � ��2λ��Ϊ����ű���
		SetMissionByIndex( sceneId, selfId, misIndex, x500600_g_MissScriptID_Idx, scriptId )		
		SetMissionByIndex(sceneId, selfId, misIndex, x500600_g_AcceptNPC_Idx, 1)

		local strText = "#{YD_20080421_229}" .. x500600_g_MissionName
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
	end

	return 1

end

--**********************************
--����,�������������
--**********************************
function x500600_OnAbandon( sceneId, selfId )

  if IsHaveMission( sceneId, selfId, x500600_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x500600_g_MissionId )
	end
	
	return 0

end

--**********************************
--����
--**********************************
function x500600_OnContinue( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500600_g_AccomplishNPC_Name then
		x500600_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

	-- ���������ng�����
	if x500600_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then			
		return 0
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x500600_g_MissionName)
		AddText( sceneId, x500600_g_MissionComplete )				
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x500600_g_ScriptId,x500600_g_MissionId)
	
end

--**********************************
--�����ng������ύ
--**********************************
function x500600_CheckSubmit( sceneId, selfId, targetId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500600_g_AccomplishNPC_Name then
		x500600_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

	if IsHaveMission( sceneId, selfId, x500600_g_MissionId ) <= 0 then
		x500600_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
		return 0
	end

	-- �������ng������c�i(��)����to� � еi vi�n 
	local NumMem = LuaFnGetTeamSize( sceneId, selfId )
	if NumMem < 2 then
		x500600_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_179}" )
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x500600_g_MissionId)

	-- ���������ng�����	
	if GetMissionParam(sceneId, selfId, misIndex, x500600_g_Mission_IsComplete) > 0 then
		return 1
	end
	
	return 0
	
end

--**********************************
--�ύ,�������������
--**********************************
function x500600_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500600_g_AccomplishNPC_Name then
		x500600_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

  -- ���������ng�����
	if x500600_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then
		x500600_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )				
		return 0
	end

	AddMoney( sceneId, selfId, x500600_g_MoneyBonus )
	LuaFnAddExp( sceneId, selfId, x500600_g_ExpBonus )

	-- ����˳�����
	x500600_NotifyTip( sceneId, selfId, "#{YD_20080421_180}" )

	if IsHaveMission( sceneId, selfId, x500600_g_MissionId ) > 0 then  	
	 	DelMission( sceneId, selfId, x500600_g_MissionId )
	 	-- ���������Ѿ�����ɹ�
	 	MissionCom( sceneId, selfId, x500600_g_MissionId )
	 	
	 	local strText = "#Y" .. x500600_g_MissionName .. "#{YD_20080421_230}"
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
	 	
	 	-- ������������Ti�p th�����
	 	if CallScriptFunction( x500600_g_NextScriptId, "CheckAccept", sceneId, selfId, targetId ) > 0 then
	 		CallScriptFunction( x500600_g_NextScriptId, "AcceptMission", sceneId, selfId, targetId )
	 	end
	end

end

--**********************************
--ɱ����������
--**********************************
function x500600_OnKillObject( sceneId, selfId, objdataId ,objId)--������˼: �����š����objId�������λ�úš�����
end

--**********************************
--���������¼�
--**********************************
function x500600_OnEnterArea( sceneId, selfId, zoneId )	
end

--**********************************
--���߸ı�
--**********************************
function x500600_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--���������ʾto� � ����
--**********************************
function x500600_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--���������ʾto� � ����
--**********************************
function x500600_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x500600_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--��NPC�Ի�
--**********************************
function x500600_TalkInfo( sceneId, selfId, targetId, msg )

	BeginEvent(sceneId)
		AddText( sceneId, msg )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ȡ �i�m���¼�to� � MissionId,����obj�ļ��жԻ��龰to� � �ж�
--**********************************
function x500600_GetEventMissionId( sceneId, selfId )	
	return x500600_g_MissionId
end

function x500600_AcceptMission( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500600_g_Name then
		x500600_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )
		return 0
	end

	local  PlayerName=GetName(sceneId,selfId)		
	
	--��������Ti�p th�ʱ��ʾto� � ��Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x500600_g_MissionName)
		AddText( sceneId, x500600_g_MissionInfo )
		AddText(sceneId,"#{M_MUBIAO}")
		AddText(sceneId,"#{YD_20080421_09}")
		AddText(sceneId,"#{M_SHOUHUO}")
		AddMoneyBonus( sceneId, x500600_g_MoneyBonus)
		
	EndEvent( )
	DispatchMissionInfo(sceneId,selfId,targetId,x500600_g_ScriptId,x500600_g_MissionId)	

end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--��ȡ����itemto� � ��ϸ��Ϣ
function x500600_GetItemDetailInfo(itemId)
	return 0
end	

--**********************************
--����ʹ��
--**********************************
function x500600_OnUseItem( sceneId, selfId, bagIndex )	
end

--**********************************
--�����¼�
--**********************************
function x500600_OnDie( sceneId, selfId, killerId )
end
