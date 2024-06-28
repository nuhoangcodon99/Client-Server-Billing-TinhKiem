-- 200087
-- �������� 

--MisDescBegin

--�ű���
x200087_g_ScriptId = 200087

--�����
x200087_g_MissionId = 17

--ǰ������
x200087_g_PreMissionId = 16

--Ti�p th�����NPC����
x200087_g_Position_X=189
x200087_g_Position_Z=94
x200087_g_SceneID=2
x200087_g_AccomplishNPC_Name="�o�n Ch�nh Thu�n"

--Ŀ��NPC
x200087_g_Name	="�o�n Ch�nh Thu�n"

--�������
x200087_g_MissionKind = 47

--��ng c�p nhi�m v� 
x200087_g_MissionLevel = 40

--��ng����ngTinhӢ����
x200087_g_IfMissionElite = 0

--������
x200087_g_MissionName="Qu�n long v� th�"
x200087_g_MissionInfo="#{Mis_juqing_0017}"
x200087_g_MissionTarget="#{Mis_juqing_Tar_0017}"
x200087_g_MissionComplete="  Ha ha, thi�u hi�p l�u l�m kh�ng g�p, v�n m�nh gi�i ch�? T�i ��i L� ta c� chuy�n g�?"

x200087_g_MoneyBonus=5400
x200087_g_exp=5400

x200087_g_Custom	= { {id="�� t�m ���c �o�n Ch�nh Thu�n",num=1} }
x200087_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x200087_OnDefaultEvent( sceneId, selfId, targetId )
	
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200087_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200087_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200087_g_Name then
			x200087_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x200087_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200087_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200087_g_MissionName)
				AddText(sceneId,x200087_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200087_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200087_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200087_g_ScriptId,x200087_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x200087_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200087_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200087_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200087_g_Name then
			AddNumText(sceneId, x200087_g_ScriptId,x200087_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x200087_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200087_g_Name then
			AddNumText(sceneId,x200087_g_ScriptId,x200087_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200087_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x200087_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel( sceneId, selfId ) < x200087_g_MissionLevel then
		return 0
	end
	
	-- ǰ������to� � ������
	if IsMissionHaveDone(sceneId,selfId,x200087_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x200087_OnAccept( sceneId, selfId, targetId )
	if x200087_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200087_g_MissionId, x200087_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: qu�n long v� th�",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200087_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--����
--**********************************
function x200087_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200087_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200087_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200087_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200087_g_MissionName)
		AddText(sceneId,x200087_g_MissionComplete)
		AddMoneyBonus( sceneId, x200087_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200087_g_ScriptId,x200087_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200087_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200087_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200087_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200087_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId,x200087_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200087_g_exp)
		DelMission( sceneId,selfId,  x200087_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200087_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: qu�n long v� th�",MSG2PLAYER_PARA )
		
		-- ���ú�������
		CallScriptFunction((200088), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200087_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x200087_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200087_OnItemChanged( sceneId, selfId, itemdataId )
end
