-- 200097
-- �������� 

-- ����ʦ -> ������

--MisDescBegin
--�ű���
x200097_g_ScriptId = 200097

--�����
x200097_g_MissionId = 40

--ǰ������
x200097_g_PreMissionId = 39

--Ti�p th�����NPC����
x200097_g_Position_X=112
x200097_g_Position_Z=64
x200097_g_SceneID=0
x200097_g_AccomplishNPC_Name="N� Nhi H�i"

--Ŀ��NPC
x200097_g_Name	="Thi�n S�n аng L�o"

--�������
x200097_g_MissionKind = 49

--��ng c�p nhi�m v� 
x200097_g_MissionLevel = 70

--��ng����ngTinhӢ����
x200097_g_IfMissionElite = 0

--������
x200097_g_MissionName="D� nguy m� y�n"
x200097_g_MissionInfo="#{Mis_juqing_0040}"
x200097_g_MissionTarget="#{Mis_juqing_Tar_0040}"
x200097_g_MissionComplete="  $N, Ti�u nha �u Mai ki�m th�t kh�ng �n gi�n. Chi�u c� ta c� th� l�a ���c L� Thu Th�y, nh�ng kh�ng l�a ���c ti�u nha �u n�y. Xem ra ta ph�i ch�n c� ta l�m ch߷ng m�n, kh�ng nh�n l�m ng߶i"

x200097_g_MoneyBonus=21600
x200097_g_exp=24000

x200097_g_Custom	= { {id="�� t�m ���c Thi�n S�n �ng l�o",num=1} }
x200097_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x200097_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200097_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200097_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200097_g_Name then
			x200097_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x200097_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200097_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200097_g_MissionName)
				AddText(sceneId,x200097_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200097_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200097_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200097_g_ScriptId,x200097_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x200097_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200097_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200097_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200097_g_Name then
			AddNumText(sceneId, x200097_g_ScriptId,x200097_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x200097_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200097_g_Name then
			AddNumText(sceneId,x200097_g_ScriptId,x200097_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200097_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x200097_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel( sceneId, selfId ) < x200097_g_MissionLevel then
		return 0
	end
	
	-- ǰ������to� � ������
	if IsMissionHaveDone(sceneId,selfId,x200097_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1	
end

--**********************************
--Ti�p th�
--**********************************
function x200097_OnAccept( sceneId, selfId, targetId )
	if x200097_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200097_g_MissionId, x200097_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: D� nguy m� y�n",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200097_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--����
--**********************************
function x200097_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200097_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200097_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200097_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200097_g_MissionName)
		AddText(sceneId,x200097_g_MissionComplete)
		AddMoneyBonus( sceneId, x200097_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200097_g_ScriptId,x200097_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200097_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200097_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200097_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200097_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId,x200097_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200097_g_exp)
		DelMission( sceneId,selfId,  x200097_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200097_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: D� nguy m� y�n",MSG2PLAYER_PARA )
		
		-- ���ú�������
		CallScriptFunction((200051), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200097_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x200097_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200097_OnItemChanged( sceneId, selfId, itemdataId )
end
