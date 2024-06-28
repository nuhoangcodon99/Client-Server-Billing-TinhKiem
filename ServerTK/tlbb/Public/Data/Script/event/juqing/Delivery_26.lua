-- 200093 
-- �������� 

--MisDescBegin

--�ű���
x200093_g_ScriptId = 200093

--�����
x200093_g_MissionId = 26

--ǰ������
x200093_g_PreMissionId = 25

--Ti�p th�����NPC����
x200093_g_Position_X=128
x200093_g_Position_Z=50
x200093_g_SceneID=18
x200093_g_AccomplishNPC_Name="Gia Lu�t M�c Ca"

--Ŀ��NPC
x200093_g_Name	="Ti�u Phong"

--�������
x200093_g_MissionKind = 52

--��ng c�p nhi�m v� 
x200093_g_MissionLevel = 50

--��ng����ngTinhӢ����
x200093_g_IfMissionElite = 0

--������
x200093_g_MissionName="T�i n�i Th߽ng Mang"
x200093_g_MissionInfo="#{Mis_juqing_0026}"
x200093_g_MissionTarget="#{Mis_juqing_Tar_0026}"
x200093_g_MissionComplete="  $N, ng�n gi� n�o th�i ng߽i t�i ��y? ��ng l� nh� ca ca ph�i kh�ng?"

x200093_g_MoneyBonus=23400
x200093_g_exp=31920

x200093_g_Custom	= { {id="�� t�m ���c Ti�u Phong",num=1} }
x200093_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x200093_OnDefaultEvent( sceneId, selfId, targetId )
	
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200093_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200093_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200093_g_Name then
			x200093_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x200093_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200093_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200093_g_MissionName)
				AddText(sceneId,x200093_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200093_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200093_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200093_g_ScriptId,x200093_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x200093_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200093_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200093_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200093_g_Name then
			AddNumText(sceneId, x200093_g_ScriptId,x200093_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x200093_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200093_g_Name then
			AddNumText(sceneId,x200093_g_ScriptId,x200093_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200093_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x200093_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel( sceneId, selfId ) < x200093_g_MissionLevel then
		return 0
	end
	
	-- ǰ������to� � ������
	if IsMissionHaveDone(sceneId,selfId,x200093_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1	
end

--**********************************
--Ti�p th�
--**********************************
function x200093_OnAccept( sceneId, selfId, targetId )
	if x200093_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	-- C�n ��������϶�m�t c�i��Ʒ
	BeginAddItem( sceneId )
		AddItem( sceneId, 40001007, 1 )
	local ret = EndAddItem( sceneId, selfId )

	if ret <= 0 then 
		--��ʾ���ܽ�������
		Msg2Player(  sceneId, selfId,"#Yh�nh Trang nhi�m v�#W c�a c�c h� �� �y", MSG2PLAYER_PARA )
	else
		--������������б�
		local ret = AddMission( sceneId,selfId, x200093_g_MissionId, x200093_g_ScriptId, 0, 0, 0 )
		if ret <= 0 then
			Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
			return
		end
		AddItemListToHuman(sceneId,selfId)
		Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: T�i n�i Th߽ng Mang xa",MSG2PLAYER_PARA )

		local misIndex = GetMissionIndexByID(sceneId,selfId,x200093_g_MissionId)
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
		SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
	end

end

--**********************************
--����
--**********************************
function x200093_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200093_g_MissionId )
	DelItem( sceneId, selfId, 40001007, 1 )	
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200093_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200093_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200093_g_MissionName)
		AddText(sceneId,x200093_g_MissionComplete)
		AddMoneyBonus( sceneId, x200093_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200093_g_ScriptId,x200093_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200093_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200093_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200093_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200093_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		DelItem( sceneId, selfId, 40001007, 1 )	
		AddMoney(sceneId,selfId,x200093_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200093_g_exp)
		DelMission( sceneId,selfId,  x200093_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200093_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: T�i n�i Th߽ng Mang xa",MSG2PLAYER_PARA )
		-- ���ú�������
		CallScriptFunction((200031), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200093_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x200093_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200093_OnItemChanged( sceneId, selfId, itemdataId )
end
