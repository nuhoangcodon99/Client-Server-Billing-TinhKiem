-- 200096
-- �������� 


-- 200096 
-- �������� 

-- ����ʦ -> ������

--MisDescBegin
--�ű���
x200096_g_ScriptId = 200096

--�����
x200096_g_MissionId = 39

--ǰ������
x200096_g_PreMissionId = 38

--Ti�p th�����NPC����
x200096_g_Position_X=133
x200096_g_Position_Z=64
x200096_g_SceneID=0
x200096_g_AccomplishNPC_Name="H�ch Li�n Thi�t Th�"

--Ŀ��NPC
x200096_g_Name	="Mai Ki�m"

--�������
x200096_g_MissionKind = 49

--��ng c�p nhi�m v� 
x200096_g_MissionLevel = 70

--��ng����ngTinhӢ����
x200096_g_IfMissionElite = 0

--������
x200096_g_MissionName="Nh�t ki�m th��ng thi�n s�n"
x200096_g_MissionInfo="#{Mis_juqing_0039}"
x200096_g_MissionTarget="#{Mis_juqing_Tar_0039}"
x200096_g_MissionComplete="  L� Thu Th�y, m�y ng�y tr߾c l�o t�ng tr��ng lu�n nh�c t�i c�i t�n n�y, Nh�ng n�ng r�t cu�c l� ng߶i nh� th� n�o, ch�ng ta c�ng kh�ng r�"

x200096_g_MoneyBonus=10800
x200096_g_exp=11000

x200096_g_Custom	= { {id="�� t�m ���c Mai Ki�m",num=1} }
x200096_g_IsMissionOkFail = 0

--MisDescEnd

--**********************************
--������ں���
--**********************************
function x200096_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200096_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200096_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200096_g_Name then
			x200096_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x200096_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200096_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200096_g_MissionName)
				AddText(sceneId,x200096_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200096_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200096_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200096_g_ScriptId,x200096_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x200096_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200096_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200096_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200096_g_Name then
			AddNumText(sceneId, x200096_g_ScriptId,x200096_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x200096_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200096_g_Name then
			AddNumText(sceneId,x200096_g_ScriptId,x200096_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200096_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x200096_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel( sceneId, selfId ) < x200096_g_MissionLevel then
		return 0
	end
	
	-- ǰ������to� � ������
	if IsMissionHaveDone(sceneId,selfId,x200096_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1	
end

--**********************************
--Ti�p th�
--**********************************
function x200096_OnAccept( sceneId, selfId, targetId )
	if x200096_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200096_g_MissionId, x200096_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Nh�t ki�m th��ng thi�n s�n",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200096_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--����
--**********************************
function x200096_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200096_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200096_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200096_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200096_g_MissionName)
		AddText(sceneId,x200096_g_MissionComplete)
		AddMoneyBonus( sceneId, x200096_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200096_g_ScriptId,x200096_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200096_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200096_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200096_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200096_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId,x200096_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200096_g_exp)
		DelMission( sceneId,selfId,  x200096_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200096_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: Nh�t ki�m th��ng thi�n s�n",MSG2PLAYER_PARA )
		
		-- ���ú�������
		CallScriptFunction((200097), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200096_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x200096_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200096_OnItemChanged( sceneId, selfId, itemdataId )
end
