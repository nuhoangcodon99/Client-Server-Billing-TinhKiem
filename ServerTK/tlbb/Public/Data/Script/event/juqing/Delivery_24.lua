-- 200091 
-- �������� 


--MisDescBegin

--�ű���
x200091_g_ScriptId = 200091

--Ti�p th�����NPC����
x200091_g_Position_X=326
x200091_g_Position_Z=355
x200091_g_SceneID=0
x200091_g_AccomplishNPC_Name="Khang M�n"

--�����
x200091_g_MissionId = 24

--ǰ������
x200091_g_PreMissionId = 23

--Ŀ��NPC
x200091_g_Name	="Khang M�n"

--�������
x200091_g_MissionKind = 52

--��ng c�p nhi�m v� 
x200091_g_MissionLevel = 50

--��ng����ngTinhӢ����
x200091_g_IfMissionElite = 0

--������
x200091_g_MissionName="B�o v� M� phu nh�n"
x200091_g_MissionInfo="#{Mis_juqing_0024}"
x200091_g_MissionTarget="#{Mis_juqing_Tar_0024}"
x200091_g_MissionComplete="  ��i hi�p �߶ng xa t�i, xin m�i v�o nh� u�ng tr�, ngh� ng�i"

x200091_g_MoneyBonus=7200
x200091_g_exp=9360

x200091_g_Custom	= { {id="�� t�m ���c Khang M�n",num=1} }
x200091_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x200091_OnDefaultEvent( sceneId, selfId, targetId )
	
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200091_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200091_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200091_g_Name then
			x200091_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x200091_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200091_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200091_g_MissionName)
				AddText(sceneId,x200091_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200091_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200091_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200091_g_ScriptId,x200091_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x200091_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200091_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200091_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200091_g_Name then
			AddNumText(sceneId, x200091_g_ScriptId,x200091_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x200091_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200091_g_Name then
			AddNumText(sceneId,x200091_g_ScriptId,x200091_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200091_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x200091_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel( sceneId, selfId ) < x200091_g_MissionLevel then
		return 0
	end
	
	-- ǰ������to� � ������
	if IsMissionHaveDone(sceneId,selfId,x200091_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1	
end

--**********************************
--Ti�p th�
--**********************************
function x200091_OnAccept( sceneId, selfId, targetId )
	if x200091_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200091_g_MissionId, x200091_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: b�o h� M� phu nh�n",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200091_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)

end

--**********************************
--����
--**********************************
function x200091_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200091_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200091_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200091_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
  BeginEvent(sceneId)
	AddText(sceneId,x200091_g_MissionName)
	AddText(sceneId,x200091_g_MissionComplete)
	AddMoneyBonus( sceneId, x200091_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x200091_g_ScriptId,x200091_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200091_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200091_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200091_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200091_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId,x200091_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200091_g_exp)
		DelMission( sceneId,selfId,  x200091_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200091_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: B�o h� M� phu nh�n",MSG2PLAYER_PARA )
		
		-- ���ú�������
		CallScriptFunction((200092), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200091_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x200091_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200091_OnItemChanged( sceneId, selfId, itemdataId )
end
