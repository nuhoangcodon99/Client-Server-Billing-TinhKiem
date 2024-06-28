-- 200095 
-- �������� 

-- ����ʦ -> ������

--MisDescBegin
--�ű���
x200095_g_ScriptId = 200095

--Ti�p th�����NPC����
x200095_g_Position_X=113.5541
x200095_g_Position_Z=63.7330
x200095_g_SceneID=0
x200095_g_AccomplishNPC_Name="H�ch Li�n Thi�t Th�"

--�����
x200095_g_MissionId = 38

--ǰ������
x200095_g_PreMissionId = 37

--Ŀ��NPC
x200095_g_Name	="H�ch Li�n Thi�t Th�"

--�������
x200095_g_MissionKind = 49

--��ng c�p nhi�m v� 
x200095_g_MissionLevel = 70

--��ng����ngTinhӢ����
x200095_g_IfMissionElite = 0

--������
x200095_g_MissionName="Cu�c thi �� c�u v�n qu�c"
x200095_g_MissionInfo="#{Mis_juqing_0038}"
x200095_g_MissionTarget="#{Mis_juqing_Tar_0038}"
x200095_g_MissionComplete="  Cu�i c�ng ng߽i �� t�i, ta t�m ng߽i �� l�u"

x200095_g_MoneyBonus=10800
x200095_g_exp=12000

x200095_g_Custom	= { {id="�� t�m ���c Li�n Thi�t Th�",num=1} }
x200095_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x200095_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200095_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200095_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200095_g_Name then
			x200095_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x200095_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200095_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200095_g_MissionName)
				AddText(sceneId,x200095_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200095_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200095_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200095_g_ScriptId,x200095_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x200095_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200095_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200095_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200095_g_Name then
			AddNumText(sceneId, x200095_g_ScriptId,x200095_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x200095_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200095_g_Name then
			AddNumText(sceneId,x200095_g_ScriptId,x200095_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200095_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x200095_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel( sceneId, selfId ) < x200095_g_MissionLevel then
		return 0
	end
	
	-- ǰ������to� � ������
	if IsMissionHaveDone(sceneId,selfId,x200095_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1	
end

--**********************************
--Ti�p th�
--**********************************
function x200095_OnAccept( sceneId, selfId, targetId )
	if x200095_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200095_g_MissionId, x200095_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Thi �u tranh gi�i �� c�u c�c n߾c",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200095_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--����
--**********************************
function x200095_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200095_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200095_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200095_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200095_g_MissionName)
		AddText(sceneId,x200095_g_MissionComplete)
		AddMoneyBonus( sceneId, x200095_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200095_g_ScriptId,x200095_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200095_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200095_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200095_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200095_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId,x200095_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200095_g_exp)
		DelMission( sceneId,selfId,  x200095_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200095_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: Thi �u tranh gi�i �� c�u c�c n߾c",MSG2PLAYER_PARA )
		
		-- ���ú�������
		CallScriptFunction((200096), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200095_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x200095_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200095_OnItemChanged( sceneId, selfId, itemdataId )
end
