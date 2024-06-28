-- 200089
-- �������� 

--MisDescBegin

--�ű���
x200089_g_ScriptId = 200089

--�����
x200089_g_MissionId = 19

--ǰ������
x200089_g_PreMissionId = 18

--Ti�p th�����NPC����
x200089_g_Position_X=38
x200089_g_Position_Z=99
x200089_g_SceneID=9
x200089_g_AccomplishNPC_Name="Huy�n T�"

--Ŀ��NPC
x200089_g_Name	="Huy�n T�"

--�������
x200089_g_MissionKind = 47

--��ng c�p nhi�m v� 
x200089_g_MissionLevel = 40

--��ng����ngTinhӢ����
x200089_g_IfMissionElite = 0

--������
x200089_g_MissionName="Thi�n h� v� c�ng xu�t Thi�u L�m"
x200089_g_MissionInfo="#{Mis_juqing_0019}"
x200089_g_MissionTarget="#{Mis_juqing_Tar_0019}"
x200089_g_MissionComplete="  A di �� Ph�t, l�o n�p �� �o�n ���c m�c ��ch c�a th� ch� t�i Thi�u L�m ta. Ti�c thay l�o n�p th�n �� tho�t b�i tr�n, ��ng h�i chuy�n h�ng tr�n n�a. A di �� Ph�t..."

x200089_g_MoneyBonus=5400
x200089_g_exp=5400

x200089_g_Custom	= { {id="�� t�m ���c Huy�n T�",num=1} }
x200089_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x200089_OnDefaultEvent( sceneId, selfId, targetId )
	
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200089_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200089_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200089_g_Name then
			x200089_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x200089_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200089_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200089_g_MissionName)
				AddText(sceneId,x200089_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200089_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200089_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200089_g_ScriptId,x200089_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x200089_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200089_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200089_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200089_g_Name then
			AddNumText(sceneId, x200089_g_ScriptId,x200089_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x200089_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200089_g_Name then
			AddNumText(sceneId,x200089_g_ScriptId,x200089_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200089_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x200089_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel( sceneId, selfId ) < x200089_g_MissionLevel then
		return 0
	end
	
	-- ǰ������to� � ������
	if IsMissionHaveDone(sceneId,selfId,x200089_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x200089_OnAccept( sceneId, selfId, targetId )
	if x200089_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200089_g_MissionId, x200089_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Thi�n h� v� c�ng xu�t Thi�u L�m",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200089_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--����
--**********************************
function x200089_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200089_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200089_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200089_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200089_g_MissionName)
		AddText(sceneId,x200089_g_MissionComplete)
		AddMoneyBonus( sceneId, x200089_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200089_g_ScriptId,x200089_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200089_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200089_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200089_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200089_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId,x200089_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200089_g_exp)
		DelMission( sceneId,selfId,  x200089_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200089_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: Thi�n h� v� c�ng xu�t Thi�u L�m",MSG2PLAYER_PARA )
		
		-- ���ú�������
		CallScriptFunction((200090), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200089_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x200089_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200089_OnItemChanged( sceneId, selfId, itemdataId )
end
