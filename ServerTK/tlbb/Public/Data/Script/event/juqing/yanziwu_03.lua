-- ҹ���ζ�
-- �Ѹ�����ͷ������to� � �� ��a cho T� Ch�u��to� � M� Dung Ph�c

--MisDescBegin
--�ű���
x200013_g_ScriptId = 200013

--�����
x200013_g_MissionId = 12

--ǰ�������
x200013_g_PreMissionId = 11

--��m�t c�i����to� � ID
--g_MissionIdPre = 
--Ti�p th�����NPC����
x200013_g_Position_X=129
x200013_g_Position_Z=77
x200013_g_SceneID=1
x200013_g_AccomplishNPC_Name="M� Dung Ph�c"

--Ŀ��NPC
x200013_g_Name	="M� Dung Ph�c"

--�������
x200013_g_MissionKind = 48

--��ng c�p nhi�m v� 
x200013_g_MissionLevel = 30

--��ng����ngTinhӢ����
x200013_g_IfMissionElite = 0

--������
x200013_g_MissionName="��m d�i l�m m�ng"
x200013_g_MissionInfo="#{Mis_juqing_0012}"
x200013_g_MissionTarget="#{Mis_juqing_Tar_0012}"
x200013_g_MissionContinue="  C�c h� t�m ta c� vi�c g�?"
x200013_g_MissionComplete="  C� ph�i bi�u mu�i sai ng߽i mang th� t�i cho ta? H� v�n b�nh an v� s� ch�? Ь ta xem th� tr߾c"

x200013_g_MoneyBonus=8100
x200013_g_exp=8000

x200013_g_DemandItem={{id=40001004,num=1}}

--x200013_g_Custom	= { {id="���ҵ�M� Dung Ph�c",num=1} }
x200013_g_IsMissionOkFail = 0
--MisDescEnd

--x200013_g_MissionItem = 40001004


--**********************************
--������ں���
--**********************************
function x200013_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200013_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200013_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200013_g_Name then
			x200013_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x200013_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200013_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
			AddText(sceneId,x200013_g_MissionName)
			AddText(sceneId,x200013_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200013_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200013_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200013_g_ScriptId,x200013_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x200013_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200013_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200013_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200013_g_Name then
			AddNumText(sceneId, x200013_g_ScriptId,x200013_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x200013_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200013_g_Name then
			AddNumText(sceneId,x200013_g_ScriptId,x200013_g_MissionName,1,-1);
		end
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x200013_CheckAccept( sceneId, selfId )
	--C�n 3c�p���ܽ�
	if GetLevel( sceneId, selfId ) < 30 then
		return 0
	end
	
	if 	IsMissionHaveDone(sceneId,selfId,x200013_g_PreMissionId) < 1 then
		return 0
	end

	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x200013_OnAccept( sceneId, selfId )
	
	-- ����������,"40001004",������to� � ��
	BeginAddItem( sceneId )
		AddItem( sceneId, 40001004, 1 )
	local ret = EndAddItem( sceneId, selfId )
	
	if ret <= 0 then 
		--��ʾ���ܽ�������
		Msg2Player(  sceneId, selfId,"#Yh�nh Trang nhi�m v�#W c�a c�c h� �� �y", MSG2PLAYER_PARA )
	else
		--������������б�
		local ret = AddMission( sceneId,selfId, x200013_g_MissionId, x200013_g_ScriptId, 0, 0, 0 )
		if ret <= 0 then
			Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
			return
		end
	
		AddItemListToHuman(sceneId,selfId)
		Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: ��m d�i l�m m�ng",MSG2PLAYER_PARA )
		--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x200013_g_SignPost.x, x200013_g_SignPost.z, x200013_g_SignPost.tip )
		
		-- ����������ɱ��
		
		local misIndex = GetMissionIndexByID(sceneId,selfId,x200013_g_MissionId)
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
		--SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
		
	end
end

--**********************************
--����
--**********************************
function x200013_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x200013_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200013_g_SignPost.tip )
	-- ɾ�������Ʒ
	DelItem( sceneId, selfId, 40001004, 1 )	
	
end

--**********************************
--����
--**********************************
function x200013_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200013_g_MissionName)
		AddText(sceneId,x200013_g_MissionComplete)
		AddMoneyBonus( sceneId, x200013_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200013_g_ScriptId,x200013_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200013_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200013_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200013_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200013_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--ɾ��������Ʒ 
		DelItem( sceneId, selfId, 40001004, 1 )

		--���������
		AddMoney(sceneId,selfId, x200013_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200013_g_exp)

		DelMission( sceneId, selfId, x200013_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId, selfId, x200013_g_MissionId )
		Msg2Player( sceneId, selfId, "#YHo�n t�t nhi�m v�#W: ��m d�i l�m m�ng", MSG2PLAYER_PARA )
		
		-- ���ú�������
		CallScriptFunction((200085), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x200013_OnKillObject( sceneId, selfId, objdataId )
	
end

--**********************************
--���������¼�
--**********************************
function x200013_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200013_OnItemChanged( sceneId, selfId, itemdataId )
	
end

