-- ��ʱ�������
-- ȥ��ãɽս��̽����̫�����ʡ�������Ӫ����ãɽ��ɽ��,��ãɽ��ɽ��.

--MisDescBegin
--�ű���
x200031_g_ScriptId = 200031

--�����
x200031_g_MissionId = 27

x200031_g_Name=""

--ǰ������
x200031_g_PreMissionId = 26

--�������
x200031_g_MissionKind = 52

--��ng c�p nhi�m v� 
x200031_g_MissionLevel = 50

--��ng����ngTinhӢ����
x200031_g_IfMissionElite = 0

--������
x200031_g_MissionName="Thi�n th�i kh�ng b�ng �a l�i"
x200031_g_MissionInfo="#{Mis_juqing_0027}"
x200031_g_MissionTarget="#{Mis_juqing_Tar_0027}"
x200031_g_MissionComplete="  C� trong tay t�nh b�o n�y, ch�ng ta ch� c� th� ch� ��i qu�n ph�n lo�n ph�m sai l�m"
x200031_g_MissionContinue="  Ng߽i �� th�m d� ng�n kh� ri�ng Ho�ng Th�i Th�c, ��i doanh S� V߽ng, �߶ng n�i Th߽ng Mang b�n tr�i, �߶ng n�i Th߽ng Mang b�n ph�i ch�a?"

x200031_g_MoneyBonus=16200
x200031_g_exp=19920

x200031_g_RadioItemBonus={{id=10414009 ,num=1},{id=10414010,num=1},{id=10414011,num=1},{id=10414012,num=1}}

x200031_g_Custom	= { {id="�� l�c so�t S� V߽ng ��i doanh",num=1}
										 ,{id="�� l�c so�t ng�n kh� ri�ng c�a Ho�ng Th�iTh�c",num=1} 
										 ,{id="�� l�c so�t �߶ng ph�a ��ng n�i Th߽ng Mang",num=1} 
										 ,{id="�� l�c so�t �߶ng ph�a T�y n�i Th߽ng Mang",num=1} }

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x200031_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200031_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200031_g_MissionId) > 0)  then
		--x200031_OnContinue( sceneId, selfId, targetId )
 		local done = x200031_CheckSubmit( sceneId, selfId )
 		
		BeginEvent(sceneId)
			AddText(sceneId,x200031_g_MissionName);
			AddText(sceneId,x200031_g_MissionContinue);
		EndEvent(sceneId)
 		
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200031_g_ScriptId,x200031_g_MissionId,done)

	--Th�a m�n�����������
	elseif x200031_CheckAccept(sceneId,selfId) > 0 then
		--if GetName(sceneId,targetId) ~= x200031_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200031_g_MissionName)
				AddText(sceneId,x200031_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200031_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r") -- �㽫 �i�m��
				for i, item in x200031_g_RadioItemBonus do
					AddRadioItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x200031_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200031_g_ScriptId,x200031_g_MissionId)
		--end
	end
end

--**********************************
--�о��¼�
--**********************************
function x200031_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200031_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200031_g_MissionId) > 0 then
		AddNumText(sceneId, x200031_g_ScriptId,x200031_g_MissionName,2,-1);
	--Th�a m�n�����������
	elseif x200031_CheckAccept(sceneId,selfId) > 0 then
		--if GetName(sceneId,targetId) ~= x200031_g_Name then
			AddNumText(sceneId,x200031_g_ScriptId,x200031_g_MissionName,1,-1);
		--end
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x200031_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x200031_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel( sceneId, selfId ) < x200031_g_MissionLevel then
		return 0
	end
	
	-- ǰ������to� � ������
	if IsMissionHaveDone(sceneId,selfId,x200031_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1	
end

--**********************************
--Ti�p th�
--**********************************
function x200031_OnAccept( sceneId, selfId )
	if x200031_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200031_g_MissionId, x200031_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player( sceneId, selfId,"#YNh�n nhi�m v�#W: Thi�n th�i kh�ng b�ng �a l�i",MSG2PLAYER_PARA )
	
	-- ֪ͨ��ϵ��������
	-- 0 KillObj, 1 EnterArea, 2 ItemChanged, 3 PetChanged, 4 LockedTarget
	SetMissionEvent(sceneId, selfId, x200031_g_MissionId, 1)
	
	-- ʹ������to� � ǰ4λ����¼̽��to� � 4c�i����
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200031_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)
	SetMissionByIndex(sceneId,selfId,misIndex,2,0)
	SetMissionByIndex(sceneId,selfId,misIndex,3,0)
	
end

--**********************************
--����
--**********************************
function x200031_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200031_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200031_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200031_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200031_g_MissionName)
		AddText(sceneId,x200031_g_MissionComplete)
		AddMoneyBonus( sceneId, x200031_g_MoneyBonus )
		for i, item in x200031_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200031_g_ScriptId,x200031_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200031_CheckSubmit( sceneId, selfId )

	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200031_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	-- ��ѯ4c�iֵ��ng����ng��ֵΪ1��
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200031_g_MissionId)			-- �i�m������to� � ���к�
	if GetMissionParam(sceneId, selfId, misIndex, 0) < 1 then
		return 0
	end
	if GetMissionParam(sceneId, selfId, misIndex, 1) < 1 then
		return 0
	end
	if GetMissionParam(sceneId, selfId, misIndex, 2) < 1 then
		return 0
	end
	if GetMissionParam(sceneId, selfId, misIndex, 3) < 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200031_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200031_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		
		-- 
  	BeginAddItem(sceneId)
		for i, item in x200031_g_RadioItemBonus do
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

		--���������
		AddMoney(sceneId,selfId, x200031_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200031_g_exp)

		DelMission( sceneId,selfId,  x200031_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200031_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: Thi�n th�i kh�ng b�ng �a l�i",MSG2PLAYER_PARA )
		
		-- ���þ��鲽��1
		LuaFnSetCopySceneData_Param(sceneId, 8, 1)
		LuaFnSetCopySceneData_Param(sceneId, 10, 0)
		LuaFnSetCopySceneData_Param(sceneId, 20, selfId)
	end
end

--**********************************
--��ʱ�¼�
--**********************************
function x200031_OnTimer(sceneId,selfId)
end

--**********************************
--ɱ����������
--**********************************
function x200031_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x200031_OnEnterArea( sceneId, selfId, zoneId )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200031_g_MissionId)			-- �i�m������to� � ���к�
	
	if zoneId == 0 then
		if GetMissionParam(sceneId, selfId, misIndex, 0) == 0 then
			BeginEvent(sceneId)
				AddText(sceneId, "�� l�c so�t S� V߽ng ��i Doanh: 1/1")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			SetMissionByIndex(sceneId,selfId,misIndex,0,1)
		end
		
	elseif zoneId == 1 then
		if GetMissionParam(sceneId, selfId, misIndex, 1) == 0 then
			BeginEvent(sceneId)
				AddText(sceneId, "�� l�c so�t ng�n kh� ri�ng c�a Ho�ng Th�i Th�c: 1/1")
	  	EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			SetMissionByIndex(sceneId,selfId,misIndex,1,1)
		end
		
	elseif zoneId == 2 then
		if GetMissionParam(sceneId, selfId, misIndex, 2) == 0 then
			BeginEvent(sceneId)
				AddText(sceneId, "�� l�c so�t �߶ng ph�a ��ng n�i Th߽ng Mang: 1/1")
	  	EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			SetMissionByIndex(sceneId,selfId,misIndex,2,1)
		end
		
	elseif zoneId == 3 then
		if GetMissionParam(sceneId, selfId, misIndex, 3) == 0 then
			BeginEvent(sceneId)
				AddText(sceneId, "�� l�c so�t �߶ng ph�a T�y n�i Th߽ng Mang: 1/1")
	  	EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			SetMissionByIndex(sceneId,selfId,misIndex,3,1)
		end
		
	end

end

--**********************************
--���߸ı�
--**********************************
function x200031_OnItemChanged( sceneId, selfId, itemdataId )
end
