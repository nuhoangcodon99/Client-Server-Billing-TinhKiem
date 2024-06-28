-- Ѫս����ׯ


-- 200024
-- ��������

-- ��T�i ���������ɱ������

--************************************************************************
--MisDescBegin
--�ű���
x200024_g_ScriptId = 200024

--��������
x200024_g_CopySceneName="T� Hi�n Trang"

--�����
x200024_g_MissionId = 23

--ǰ������
x200024_g_PreMissionId = 22

--Ŀ��NPC
x200024_g_Name = "Ti�t M� Hoa"

--��ng����ngTinhӢ����
x200024_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200024_g_MissionLevel = 40

--�������
x200024_g_MissionKind = 47

--�����ı�����
x200024_g_MissionName="Huy�t chi�n T� Hi�n Trang"
x200024_g_MissionInfo="#{Mis_juqing_0023}"
x200024_g_MissionTarget="#{Mis_juqing_Tar_0023}"	--M�c ti�u nhi�m v�
x200024_g_MissionComplete="  $N, n� l�i c�a c�c h�, l�o phu nh�t �nh tr� kh�i v�t th߽ng c�a ti�u a �u n�y. ��i �n l�c v�t th߽ng l�nh, nh�t �nh ph�i tr� l�i lai l�ch c�a H�c Y nh�n. "	--Ho�n t�t nhi�m v�npc˵��to� � ��

x200024_g_MoneyBonus=63000
x200024_g_exp=64000

x200024_g_RadioItemBonus={{id=10415004 ,num=1},{id=10415005,num=1},{id=10415006,num=1},{id=10415007,num=1}}

x200024_g_Custom	= { {id="�� b�o h� Ti�u Phong tho�t nguy",num=1} }
x200024_g_IsMissionOkFail = 0

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200024_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200024_g_MissionId) > 0 then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200024_g_MissionName)
			--AddMoneyBonus( sceneId, x200024_g_MoneyBonus )
		EndEvent( )
		bDone = x200024_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200024_g_ScriptId,x200024_g_MissionId,bDone)
    --Th�a m�n�����������
  elseif x200024_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200024_g_MissionName)
			AddText(sceneId,x200024_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200024_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200024_g_MoneyBonus )
			for i, item in x200024_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200024_g_ScriptId,x200024_g_MissionId)
  end

end

--**********************************
--�о��¼�
--**********************************
function x200024_OnEnumerate( sceneId, selfId, targetId )
  --��������ɹ�C�i n�y ����
  if IsMissionHaveDone(sceneId,selfId,x200024_g_MissionId) > 0 then
		return
	end

  --����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200024_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == "Ti�t M� Hoa"   then
			AddNumText(sceneId,x200024_g_ScriptId,x200024_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x200024_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200024_g_ScriptId,x200024_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200024_CheckAccept( sceneId, selfId )
	
	--C�n 4c�p���ܽ�
	if GetLevel( sceneId, selfId ) < 40 then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200024_g_PreMissionId) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x200024_OnAccept( sceneId, selfId )
	--������������б�
	local ret = AddMission( sceneId,selfId, x200024_g_MissionId, x200024_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200024_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--�������кŰ��������to� � ��0λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--�������кŰ��������to� � ��1λ��0
	Msg2Player(  sceneId, selfId,"#YTi�p nh�n nhi�m v�#W: Huy�t chi�n T� huy�n trang",MSG2PLAYER_PARA )
	--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x200024_g_SignPost.x, x200024_g_SignPost.z, x200024_g_SignPost.tip )
	
	-- Ti�p th������,M� ra ����
	LuaFnSetCopySceneData_Param(sceneId, 10, 1)
	LuaFnSetCopySceneData_Param(sceneId, 11, LuaFnGetCurrentTime())
	LuaFnSetCopySceneData_Param(sceneId, 12, LuaFnGetCurrentTime())
	LuaFnSetCopySceneData_Param(sceneId, 13, 1)
	
end

--**********************************
--��ʱ�¼�
--**********************************
function x200024_OnTimer(sceneId,selfId)--,missionIndex)
	
end

--**********************************
--����
--**********************************
function x200024_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200024_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200024_g_SignPost.tip )
end


--**********************************
--����
--**********************************
function x200024_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
  BeginEvent(sceneId)
	AddText(sceneId,x200024_g_MissionName)
	AddText(sceneId,x200024_g_MissionComplete)
	AddText(sceneId,"#{M_SHOUHUO}#r")
	AddMoneyBonus( sceneId, x200024_g_MoneyBonus )
	for i, item in x200024_g_RadioItemBonus do
		AddRadioItemBonus( sceneId, item.id, item.num )
	end
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x200024_g_ScriptId,x200024_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200024_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200024_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200024_g_MissionId)
	
	local Kill1 = LuaFnGetCopySceneData_Param(sceneId, 15)

	if Kill1~=1 			then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200024_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x200024_CheckSubmit(sceneId, selfId) == 1   then
  	BeginAddItem(sceneId)
		for i, item in x200024_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		local ret = EndAddItem(sceneId,selfId)
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

		AddMoney(sceneId,selfId,x200024_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200024_g_exp)

		DelMission( sceneId, selfId, x200024_g_MissionId )
		MissionCom( sceneId, selfId, x200024_g_MissionId )
		Msg2Player( sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: Huy�t chi�n T� Hi�n Trang",MSG2PLAYER_PARA )

		Msg2Player( sceneId, selfId,"C�c h� �� ho�n th�nh xong lo�t nhi�m v� #GT� Hi�n Trang #W",MSG2PLAYER_PARA )
		local selfGuid = LuaFnObjId2Guid(sceneId, selfId)
		LuaFnSendMailToGUID(sceneId, selfGuid, "C�c h� �� ho�n th�nh xong lo�t nhi�m v� #GT� Hi�n Trang #W. Sau khi ��t t�i c�p 50, t�m Tri�u Thi�n S� � th�nh ��i L�, M� m�t lo�t nhi�m v� #GTh߽ng Mang S�n #W")

		-- ��ɾ���ׯ����,��10 �i�m���� �i�m
		local nPoint = GetHumanJuqingPoint(sceneId, selfId)
		SetHumanJuqingPoint(sceneId, selfId, nPoint+10)

		-- ֪ͨ���,����������ѭ��������
		-- ����T�i ����ȥAA��to� � [bb,cc]�ҵ�DD,Ti�p th�DDѭ������.
		local strText1 = "C�c h� b�y gi� c� th� �i to� � [118,62]th�nh L�c D߽ng t�m Gia Lu�t ��i Th�ch, ti�p nh�n nhi�m v� tu�n ho�n c�a Ti�u Phong."
		LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText1)
		
		BeginEvent(sceneId)
			AddText(sceneId,strText1);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200024_OnKillObject( sceneId, selfId, objdataId ,objId)

	local misIndex
	if GetName(sceneId,objId) == "Huy�n N�n"	  then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x200024_g_MissionId)
		SetMissionByIndex(sceneId,selfId,misIndex,3,1)
	end
	if GetName(sceneId,objId) == "Huy�n T�ch"	  then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x200024_g_MissionId)
		SetMissionByIndex(sceneId,selfId,misIndex,4,1)
	end
	
end

--**********************************
--���������¼�
--**********************************
function x200024_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200024_OnItemChanged( sceneId, selfId, itemdataId )
end


