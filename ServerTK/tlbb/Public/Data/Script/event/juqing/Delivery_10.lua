-- 200084
-- �������� 

-- ���� -> ����

--MisDescBegin
--�ű���
x200084_g_ScriptId = 200084

--�����
x200084_g_MissionId = 10

--Ti�p th�����NPC����
x200084_g_Position_X=180
x200084_g_Position_Z=395
x200084_g_SceneID=1
x200084_g_AccomplishNPC_Name="L�o C�"

--ǰ������
x200084_g_PreMissionId = 9

--Ŀ��NPC
x200084_g_Name	="V߽ng Ng� Y�n"

--�������
x200084_g_MissionKind = 48

--��ng c�p nhi�m v� 
x200084_g_MissionLevel = 30

--��ng����ngTinhӢ����
x200084_g_IfMissionElite = 0

--������
x200084_g_MissionName="Ho�n Th� Th�y C�c"
x200084_g_MissionInfo="#{Mis_juqing_0010}"
x200084_g_MissionTarget="#{Mis_juqing_Tar_0010}"
x200084_g_MissionComplete="  T� ra l� c�c h�, $N! Nh�t �nh l� do bi�u ca c�a ta nh� c�c h� t�i.."

x200084_g_MoneyBonus=4800
x200084_g_exp=4000

x200084_g_Custom	= { {id="�� t�m ���c V߽ng Ng� Y�n",num=1} }
x200084_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x200084_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200084_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200084_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200084_g_Name then
			x200084_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x200084_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200084_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200084_g_MissionName)
				AddText(sceneId,x200084_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200084_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200084_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200084_g_ScriptId,x200084_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x200084_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200084_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200084_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200084_g_Name then
			AddNumText(sceneId, x200084_g_ScriptId,x200084_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x200084_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200084_g_Name then
			AddNumText(sceneId,x200084_g_ScriptId,x200084_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200084_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x200084_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel( sceneId, selfId ) < x200084_g_MissionLevel then
		return 0
	end
	
	-- ǰ������to� � ������
	if IsMissionHaveDone(sceneId,selfId,x200084_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x200084_OnAccept( sceneId, selfId, targetId )
	if x200084_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200084_g_MissionId, x200084_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Ho�n Th� Th�y C�c",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200084_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)

end

--**********************************
--����
--**********************************
function x200084_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200084_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200084_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200084_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200084_g_MissionName)
		AddText(sceneId,x200084_g_MissionComplete)
		AddMoneyBonus( sceneId, x200084_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200084_g_ScriptId,x200084_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200084_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200084_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200084_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200084_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId,x200084_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200084_g_exp)
		DelMission( sceneId,selfId,  x200084_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200084_g_MissionId )
		Msg2Player( sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: Ho�n Th� Th�y C�c",MSG2PLAYER_PARA )
		
		-- ���ú�������
		CallScriptFunction((200012), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200084_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x200084_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200084_OnItemChanged( sceneId, selfId, itemdataId )
end
