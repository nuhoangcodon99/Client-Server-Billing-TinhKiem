-- 200036 ��굴�����
-- ��ãɽto� � ��Ҫ����

-- ��T�i ���������ɱ������

--************************************************************************
--MisDescBegin
--�ű���
x200036_g_ScriptId = 200036

--��������
x200036_g_CopySceneName="Th߽ng Mang S�n "

--�����
x200036_g_MissionId = 31

--ǰ������
x200036_g_PreMissionId = 30

--Ŀ��NPC
x200036_g_Name = "Ti�u Phong"

--��ng����ngTinhӢ����
x200036_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200036_g_MissionLevel = 50

--�������
x200036_g_MissionKind = 52

--�����ı�����
x200036_g_MissionName="Kim Qua ��ng Kh�u Ngao Binh"
x200036_g_MissionInfo="#{Mis_juqing_0031}"
x200036_g_MissionTarget="#{Mis_juqing_Tar_0031}"	--M�c ti�u nhi�m v�
x200036_g_MissionComplete="    $N, l�n n�y th� qu�n t�nh c�a ph�n qu�n �� l�ng l�o r�i, kh�ng c�n v�i, ch�ng ta ti�n t�ng b߾c v�o doanh, tri�t � gi�i tr� h�t b�n ph�n lo�n. "	--Ho�n t�t nhi�m v�npc˵��to� � ��
x200036_g_MissionContinue="  S� V߽ng �� b� gi�t, Ho�ng Th�i Th�c c�ng �� r�i v�o tay ch�ng ta"

x200036_g_MoneyBonus=36000
x200036_g_exp=34000

x200036_g_RadioItemBonus={{id=10423012 ,num=1},{id=10423013,num=1},{id=10423014,num=1}}

x200036_g_Custom	= { {id="�� gi�t ch�t S� V߽ng",num=1},{id="�� v�o ng�n kh� ri�ng c�a Ho�ng Th�i Th�c",num=1} }
--x200036_g_Custom	= { {id="�ѽ����̫������",num=1} }
x200036_g_IsMissionOkFail = 0

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200036_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200036_g_MissionId) > 0 then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200036_g_MissionName)
			AddText(sceneId,x200036_g_MissionContinue)
			--AddMoneyBonus( sceneId, x200036_g_MoneyBonus )
		EndEvent( )
		bDone = x200036_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200036_g_ScriptId,x200036_g_MissionId,bDone)
    --Th�a m�n�����������
  elseif x200036_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200036_g_MissionName)
			AddText(sceneId,x200036_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200036_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			for i, item in x200036_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
			AddMoneyBonus( sceneId, x200036_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200036_g_ScriptId,x200036_g_MissionId)
  end

end

--**********************************
--�о��¼�
--**********************************
function x200036_OnEnumerate( sceneId, selfId, targetId )
  --��������ɹ�C�i n�y ����
  if IsMissionHaveDone(sceneId,selfId,x200036_g_MissionId) > 0 then
		return
	end
    --����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200036_g_MissionId) > 0 then
		AddNumText(sceneId,x200036_g_ScriptId,x200036_g_MissionName,2,-1);
		--Th�a m�n�����������
	elseif x200036_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200036_g_ScriptId,x200036_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200036_CheckAccept( sceneId, selfId )

	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x200036_g_MissionId) > 0 ) then
		return 0
	end
	
	--C�n 4c�p���ܽ�
		if GetLevel( sceneId, selfId ) < x200036_g_MissionLevel then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200036_g_PreMissionId) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x200036_OnAccept( sceneId, selfId )
	--������������б�
	local ret = AddMission( sceneId,selfId, x200036_g_MissionId, x200036_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200036_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--�������кŰ��������to� � ��0λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--�������кŰ��������to� � ��1λ��0
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Kim Qua ��ng Kh�u Ngao Binh",MSG2PLAYER_PARA )
	--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x200036_g_SignPost.x, x200036_g_SignPost.z, x200036_g_SignPost.tip )

	SetMissionEvent(sceneId, selfId, x200036_g_MissionId, 0)
	SetMissionEvent(sceneId, selfId, x200036_g_MissionId, 1)

	-- b�t �u�ڶ��ξ���
	if LuaFnGetCopySceneData_Param(sceneId, 8) < 3  then
		LuaFnSetCopySceneData_Param(sceneId, 8, 3)
		LuaFnSetCopySceneData_Param(sceneId, 10, 1)
	end
	
--	--��ⳡ������ng����ng�г���,���û��,��m�t c�i����
--	local nMonsterNum = GetMonsterCount(sceneId)
--	
--	local ii = 0
--	local bHaveMonster = 0
--	for ii=0, nMonsterNum-1 do
--		local nMonsterId = GetMonsterObjID(sceneId,ii)
--		
--		if GetName(sceneId, nMonsterId)  == "Ү����³��"  then
--			return
--		end
--	end
--	-- ��������
--	--PrintStr("��������")
--	local nNpcId = LuaFnCreateMonster(sceneId, 406, 77, 44, 1, 0, -1)
--	SetCharacterName(sceneId, nNpcId, "Ү����³��")
--	SetCharacterTitle(sceneId, nNpcId, "����")
--	
--	local nNpcId1 = LuaFnCreateMonster(sceneId, 422, 45, 105, 1, 0, -1)
--	SetCharacterName(sceneId, nNpcId1, "Ү����Ԫ")
--	SetCharacterTitle(sceneId, nNpcId1, "��̫��")
	
end

--**********************************
--����
--**********************************
function x200036_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200036_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200036_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200036_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200036_g_MissionName)
		AddText(sceneId,x200036_g_MissionComplete)
		AddMoneyBonus( sceneId, x200036_g_MoneyBonus )
		for i, item in x200036_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200036_g_ScriptId,x200036_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200036_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200036_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200036_g_MissionId)
	if GetMissionParam(sceneId,selfId, misIndex, 0) < 1  then
		return 0
	end

	if LuaFnGetCopySceneData_Param(sceneId, 8) > 7  then
		return 1
	end
	
	return 0

end

--**********************************
--�ύ
--**********************************
function x200036_OnSubmit( sceneId, selfId, targetId,selectRadioId )

	if x200036_CheckSubmit(sceneId, selfId) == 1  then
		--���������
  	BeginAddItem(sceneId)
		for i, item in x200036_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		--���������
		if ret < 1 then
			--������û�мӳɹ�
			BeginEvent(sceneId)
				strText = "Nhi�m v� th�t b�i!"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return			
		end
		AddItemListToHuman(sceneId,selfId)

		AddMoney(sceneId,selfId, x200036_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200036_g_exp)

		DelMission( sceneId, selfId, x200036_g_MissionId )
		MissionCom( sceneId, selfId, x200036_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: Kim Qua ��ng Kh�u Ngao Binh",MSG2PLAYER_PARA )
	end

end

--**********************************
--ɱ����������
--**********************************
function x200036_OnKillObject( sceneId, selfId, objdataId ,objId)
	
end

--**********************************
--���������¼�
--**********************************
function x200036_OnEnterArea( sceneId, selfId, zoneId )
	if 1==1  then
		return
	end
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200036_g_MissionId)
	
	if GetMissionParam(sceneId,selfId,misIndex,4) == 0  then
	
		if zoneId == 1 or zoneId == 2  then
			
			-- ��ⳡ������ng����ng�г���,���û��,��m�t c�i����
			local nMonsterNum = GetMonsterCount(sceneId)
			local bHave = 0
			
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				
				if GetName(sceneId, nMonsterId)  == "Gia Lu�t Ni�t L� C�"  then
					bHave = 1
				end
			end
			
			if bHave == 1    then
				-- ���ø�c�i��ɫto� � ��������
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					
					if GetName(sceneId, nMonsterId)  == "Gia Lu�t Ni�t L� C�"  then
						SetUnitReputationID(sceneId, selfId, nMonsterId, 18)
						SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
	
						-- ����T�i �ı���Ӫ���Թ�����,����2��·��������,
						SetPatrolId(sceneId, nMonsterId, 2)
						--PrintStr("������")
					end
					
					if GetName(sceneId, nMonsterId)  == "Ti�u Phong"  then
						-- ͬʱTi�u Phong����3��·����,
						SetPatrolId(sceneId, nMonsterId, 1)
						--PrintStr("Ti�u Phong׷")
	
					end
				end
				
				SetMissionByIndex(sceneId,selfId,misIndex,1,1)
				SetMissionByIndex(sceneId,selfId,misIndex,4,1)
			end
		end	
	end
	
	-- ��ҽ����¼���1,�������
	if zoneId == 3  then
		if GetMissionParam(sceneId,selfId,misIndex,3) == 0  then
			if GetMissionParam(sceneId,selfId,misIndex,1) == 1  then
				-- ��ҽ���������3,��ʱ��,���Ti�u Phong,ɾ��,Ȼ��T�i λ�ô���Ti�u Phongץס
				-- ����to� � ʿ������Cu�c chi�n ,
				SetMissionByIndex(sceneId,selfId,misIndex,3,1)
				local nMonsterNum = GetMonsterCount(sceneId)
				local bHave = 0
				local ii = 0
				local bHaveMonster = 0
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					
					if GetName(sceneId, nMonsterId)  == "Ti�u Phong"  then
						-- ɾ��Ti�u Phong
						LuaFnDeleteMonster(sceneId, nMonsterId)
						
						--T�i ��to� � λ�ô���ģ��
						local nNpcId = LuaFnCreateMonster(sceneId, 423, 50,106, 0, 0, 120007)
						SetUnitReputationID(sceneId, selfId, nNpcId, 0)
						SetMonsterFightWithNpcFlag(sceneId, nNpcId, 0)
						SetCharacterName(sceneId, nNpcId, "Ti�u Phong")
						
					end
					
					if GetName(sceneId, nMonsterId)  == "Gia Lu�t Tr�ng Nguy�n"  then
						-- Ү����Ԫ
						LuaFnDeleteMonster(sceneId, nMonsterId)
					end
					
					if GetName(sceneId, nMonsterId)  == "Gia Lu�t Ni�t L� C�"  then
						-- Ү����Ԫ
						LuaFnDeleteMonster(sceneId, nMonsterId)
					end
					
					
					-- ����to� � ʿ����T�i ��ɲ���Cu�c chi�n 
					if GetName(sceneId, nMonsterId)  == "Th� v� T�y s�n kh�u"  then
						SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
						SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
					end
					if GetName(sceneId, nMonsterId)  == "S� V߽ng tinh anh v� s�"  then
						SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
						SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
					end
					if GetName(sceneId, nMonsterId)  == "Th� v� ��ng s�n kh�u"  then
						SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
						SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
					end
					if GetName(sceneId, nMonsterId)  == "Th� v� Ho�ng th�i th�c"  then
						SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
						SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
					end
					
					SetMissionByIndex(sceneId,selfId,misIndex,0,1)
					
					-- ���麰��
					LuaFnSetCopySceneData_Param(sceneId, 8, 4)
					LuaFnSetCopySceneData_Param(sceneId, 13, 0)
					LuaFnSetCopySceneData_Param(sceneId, 20, selfId)
					
					
				end
			end
		end
	end
end

--**********************************
--���߸ı�
--**********************************
function x200036_OnItemChanged( sceneId, selfId, itemdataId )
end

