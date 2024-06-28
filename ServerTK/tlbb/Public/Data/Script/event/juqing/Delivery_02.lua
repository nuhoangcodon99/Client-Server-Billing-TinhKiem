-- 200081 
-- �������� 

-- ������ -> ��Linh

--MisDescBegin

--�ű���
x200081_g_ScriptId = 200081

--�����
x200081_g_MissionId = 2

--ǰ������
x200081_g_PreMissionId = 1

--Ŀ��NPC
x200081_g_Name	="Chung Linh"

--Ti�p th�����NPC����
x200081_g_Position_X=193
x200081_g_Position_Z=110
x200081_g_SceneID=2
x200081_g_AccomplishNPC_Name="Hoa H�ch C�n"

--�������
x200081_g_MissionKind = 51

--��ng c�p nhi�m v� 
x200081_g_MissionLevel = 20

--��ng����ngTinhӢ����
x200081_g_IfMissionElite = 0

--������
x200081_g_MissionName="�o xanh l�i l�c h�nh n�i hi�m"
x200081_g_MissionInfo="#{Mis_juqing_0002}"
x200081_g_MissionTarget="#{Mis_juqing_Tar_0002}"
x200081_g_MissionComplete="    A, ng߽i ch�ng ph�i l� $N �� sao? Ng߽i t�i t�m ng߶i anh em �o�n D�?"

x200081_g_MoneyBonus=7200
x200081_g_exp=6900

x200081_g_Custom	= { {id="�� t�m ���c Chung Linh",num=1} }
x200081_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x200081_OnDefaultEvent( sceneId, selfId, targetId )
	
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200081_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200081_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200081_g_Name then
			x200081_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x200081_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200081_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200081_g_MissionName)
				AddText(sceneId,x200081_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200081_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200081_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200081_g_ScriptId,x200081_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x200081_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200081_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200081_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200081_g_Name then
			AddNumText(sceneId, x200081_g_ScriptId,x200081_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x200081_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200081_g_Name then
			AddNumText(sceneId,x200081_g_ScriptId,x200081_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200081_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x200081_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel( sceneId, selfId ) < x200081_g_MissionLevel then
		return 0
	end
	
	-- ǰ������to� � ������
	if IsMissionHaveDone(sceneId,selfId,x200081_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x200081_OnAccept( sceneId, selfId, targetId )
	if x200081_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200081_g_MissionId, x200081_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Thanh Sam L�i L�c Hi�m Phong H�nh",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200081_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
	
end

--**********************************
--����
--**********************************
function x200081_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200081_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200081_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200081_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200081_g_MissionName)
		AddText(sceneId,x200081_g_MissionComplete)
		AddMoneyBonus( sceneId, x200081_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200081_g_ScriptId,x200081_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200081_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200081_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200081_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200081_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId, x200081_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200081_g_exp)
		DelMission( sceneId,selfId,  x200081_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200081_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: Thanh Sam L�i L�c Hi�m Phong H�nh",MSG2PLAYER_PARA )
		
		-- ���ú�������
		CallScriptFunction((200003), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200081_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x200081_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200081_OnItemChanged( sceneId, selfId, itemdataId )
end
