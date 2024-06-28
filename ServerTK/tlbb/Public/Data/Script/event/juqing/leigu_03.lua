-- ��Ӯ�ɰ�˭���� 200042


-- ��T�i ���������ɱ������

--************************************************************************
--MisDescBegin
--�ű���
x200042_g_ScriptId = 200042

--��������
x200042_g_CopySceneName="L�i C� S�n"

--�����
x200042_g_MissionId = 35

--ǰ������
x200042_g_PreMissionId = 34

--Ŀ��NPC
x200042_g_Name = "T� Tinh H� "

--��ng����ngTinhӢ����
x200042_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200042_g_MissionLevel = 60

--�������
x200042_g_MissionKind = 53

--�����ı�����
x200042_g_MissionName="Thua th�ng th�nh b�i ai bi�t ���c"
x200042_g_MissionInfo="#{Mis_juqing_0035}"
x200042_g_MissionTarget="#{Mis_juqing_Tar_0035}"	--M�c ti�u nhi�m v�
x200042_g_MissionComplete="  Th�t kh�ng ng� ti�u h�a th��ng n�y c� th� gi�i ���c v�n c� Tr�n Long! Tinh T�c H�i c�m k�ch b�t t�n. �inh Xu�n Thu ch�a th� xem th߶ng, � ��y c� m�t n�a c�ng lao c�a c�c h�. "	--Ho�n t�t nhi�m v�npc˵��to� � ��
x200042_g_MissionContinue="  Th�t kh�ng ng�, kh�ng ng�... b�n c� n�y l�i �i th�nh th� n�y.."

x200042_g_MoneyBonus=21600
x200042_g_exp=24000

x200042_g_RadioItemBonus={{id=10414013 ,num=1},{id=10414014,num=1},{id=10414015,num=1}}

x200042_g_Custom	= { {id="�� b�o h� H� Tr�c",num=1} }
x200042_g_IsMissionOkFail = 0

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200042_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200042_g_MissionId) > 0 then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200042_g_MissionName)
			AddText(sceneId,x200042_g_MissionContinue)
			--AddMoneyBonus( sceneId, x200042_g_MoneyBonus )
		EndEvent( )
		bDone = x200042_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200042_g_ScriptId,x200042_g_MissionId,bDone)
    --Th�a m�n�����������
  elseif x200042_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200042_g_MissionName)
			AddText(sceneId,x200042_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200042_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200042_g_MoneyBonus )
			for i, item in x200042_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200042_g_ScriptId,x200042_g_MissionId)
  end

end

--**********************************
--�о��¼�
--**********************************
function x200042_OnEnumerate( sceneId, selfId, targetId )

  --��������ɹ�C�i n�y ����
  if IsMissionHaveDone(sceneId,selfId,x200042_g_MissionId) > 0 then
		return
	end
  
  --����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200042_g_MissionId) > 0 then
		AddNumText(sceneId,x200042_g_ScriptId,x200042_g_MissionName,2,-1);
	--Th�a m�n�����������
	elseif x200042_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200042_g_ScriptId,x200042_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200042_CheckAccept( sceneId, selfId )
	
	--C�n 60c�p���ܽ�
	if GetLevel( sceneId, selfId ) < 60 then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200042_g_PreMissionId) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x200042_OnAccept( sceneId, selfId )
	--������������б�
	local ret = AddMission( sceneId,selfId, x200042_g_MissionId, x200042_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200042_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--�������кŰ��������to� � ��0λ��0
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Thua th�ng th�nh b�i ai bi�t ���c",MSG2PLAYER_PARA )
	--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x200042_g_SignPost.x, x200042_g_SignPost.z, x200042_g_SignPost.tip )
	
	-- ������ b�t �u����,����T�i ����to� � OnTime�����
	LuaFnSetCopySceneData_Param(sceneId, 8, 2) ;--����˵��
	LuaFnSetCopySceneData_Param(sceneId, 9, LuaFnGetCurrentTime())--ʱ��
	LuaFnSetCopySceneData_Param(sceneId, 10, 1) ;--����˵����
	LuaFnSetCopySceneData_Param(sceneId, 11, LuaFnGetCurrentTime())--ʱ��
	
end

--**********************************
--��ʱ�¼�
--**********************************
function x200042_OnTimer(sceneId,selfId)
	
end

--**********************************
--����
--**********************************
function x200042_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200042_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200042_g_SignPost.tip )
end


--**********************************
--����
--**********************************
function x200042_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200042_g_MissionName)
		AddText(sceneId,x200042_g_MissionComplete)
		AddMoneyBonus( sceneId, x200042_g_MoneyBonus )
		for i, item in x200042_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200042_g_ScriptId,x200042_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200042_CheckSubmit( sceneId, selfId )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200042_g_MissionId)			-- �i�m������to� � ���к�

	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200042_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	local Kill1 = LuaFnGetCopySceneData_Param(sceneId, 15)
	if Kill1 ~= 1   then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200042_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x200042_CheckSubmit(sceneId, selfId) == 1    then
  	BeginAddItem(sceneId)
		for i, item in x200042_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		--���������
		if ret < 1 then
			--������û�мӳɹ�
			BeginEvent(sceneId)
				strText = "Kh�ng th� Ho�n t�t nhi�m v�"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		AddItemListToHuman(sceneId,selfId)

		AddMoney(sceneId,selfId,x200042_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200042_g_exp)

		DelMission( sceneId, selfId, x200042_g_MissionId )
		MissionCom( sceneId, selfId, x200042_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�#W: Thua th�ng th�nh b�i ai bi�t ���c",MSG2PLAYER_PARA )

		-- ���ú�������
		CallScriptFunction((200043), "OnDefaultEvent",sceneId, selfId, targetId )
		if LuaFnGetCopySceneData_Param(sceneId, 8) == 2 then
			LuaFnSetCopySceneData_Param(sceneId, 8, 3)
		end
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200042_OnKillObject( sceneId, selfId, objdataId ,objId)

end

--**********************************
--���������¼�
--**********************************
function x200042_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200042_OnItemChanged( sceneId, selfId, itemdataId )
end
