-- 200085
-- �������� 

-- M� Dung Ph�c -> ������

--MisDescBegin
--�ű���
x200085_g_ScriptId = 200085

--�����
x200085_g_MissionId = 13

--ǰ������
x200085_g_PreMissionId = 12

--Ŀ��NPC
x200085_g_Name	="V߽ng Ng� Y�n"

--�������
x200085_g_MissionKind = 48

--��ng c�p nhi�m v� 
x200085_g_MissionLevel = 30

--��ng����ngTinhӢ����
x200085_g_IfMissionElite = 0

--Ti�p th�����NPC����
x200085_g_Position_X=180
x200085_g_Position_Z=395
x200085_g_SceneID=1
x200085_g_AccomplishNPC_Name="L�o C�"

--������
x200085_g_MissionName="Nh�t ph�m �߶ng"
x200085_g_MissionInfo="#{Mis_juqing_0013}"
x200085_g_MissionTarget="#{Mis_juqing_Tar_0013}"
x200085_g_MissionComplete="  $N, cu�i c�ng ng߽i �� c�u ch�ng ta"

x200085_g_MoneyBonus=8100
x200085_g_exp=8000

x200085_g_Custom	= { {id="�� t�m ���c V߽ng Ng� Y�n",num=1} }
x200085_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x200085_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200085_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200085_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200085_g_Name then
			x200085_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x200085_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200085_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200085_g_MissionName)
				AddText(sceneId,x200085_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200085_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200085_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200085_g_ScriptId,x200085_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x200085_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200085_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200085_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200085_g_Name then
			AddNumText(sceneId, x200085_g_ScriptId,x200085_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x200085_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200085_g_Name then
			AddNumText(sceneId,x200085_g_ScriptId,x200085_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200085_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x200085_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel( sceneId, selfId ) < x200085_g_MissionLevel then
		return 0
	end
	
	-- ǰ������to� � ������
	if IsMissionHaveDone(sceneId,selfId,x200085_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x200085_OnAccept( sceneId, selfId, targetId )
	if x200085_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200085_g_MissionId, x200085_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: nh�t ph�m �߶ng",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200085_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--����
--**********************************
function x200085_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200085_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200085_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200085_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200085_g_MissionName)
		AddText(sceneId,x200085_g_MissionComplete)
		AddMoneyBonus( sceneId, x200085_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200085_g_ScriptId,x200085_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200085_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200085_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200085_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200085_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId,x200085_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200085_g_exp)
		
		DelMission( sceneId,selfId,  x200085_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200085_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: nh�t ph�m �߶ng",MSG2PLAYER_PARA )
		
		-- ���ú�������
		CallScriptFunction((200015), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200085_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x200085_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200085_OnItemChanged( sceneId, selfId, itemdataId )
end
