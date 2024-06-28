--Th�o Nguy�n Th�o Nguy�nto� � �ٷ�
--212125

--MisDescBegin
--�ű���
x212125_g_ScriptId = 212125

--Ti�p th�����NPC����
x212125_g_Position_X=164
x212125_g_Position_Z=159
x212125_g_SceneID=20
x212125_g_AccomplishNPC_Name="Ti�u T߶ng"

--�����
x212125_g_MissionId = 943

--Ŀ��NPC
x212125_g_Name	="Ti�u T߶ng"

--�������
x212125_g_MissionKind = 31

--��ng c�p nhi�m v� 
x212125_g_MissionLevel = 59

--��ng����ngTinhӢ����
x212125_g_IfMissionElite = 0

--������
x212125_g_MissionName="Th�o Nguy�n c߾p ph�"
x212125_g_MissionInfo="#{Mis_30_60_desc_018}"
x212125_g_MissionTarget="    Ti�u T߶ng c�a th�o nguy�n Lan L�ng Qu�n #{_INFOAIM163,158,20, Ti�u T߶ng} y�u c�u ng߽i gi�t 30 t�n Loan �ao M� Ph� #{_INFOAIM273,156,20,-1}. "
x212125_g_MissionContinue="  C�c h� �� gi�t 30 t�n Loan �ao M� Ph� ch�a ?"
x212125_g_MissionComplete="  Kh�ng ng� c�c h� v�n c�n 2 l��t."

x212125_g_MoneyBonus=10000
x212125_g_exp=15000

x212125_g_Custom	= { {id="�� gi�t ch�t Loan �ao M� Ph�",num=30} }
x212125_g_IsMissionOkFail = 0


--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212125_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x212125_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212125_g_MissionId) > 0)  then
		--x212125_OnContinue( sceneId, selfId, targetId )
		local bDone = x212125_CheckSubmit( sceneId, selfId )
		BeginEvent(sceneId)
			AddText(sceneId,x212125_g_MissionName)
			AddText(sceneId,x212125_g_MissionContinue)
		EndEvent( )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x212125_g_ScriptId,x212125_g_MissionId,bDone)		
	
	--Th�a m�n�����������
	elseif x212125_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		local  PlayerName=GetName(sceneId,selfId)	
		BeginEvent(sceneId)
			AddText(sceneId,x212125_g_MissionName)
			AddText(sceneId,x212125_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x212125_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x212125_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x212125_g_ScriptId,x212125_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x212125_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212125_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x212125_g_MissionId) > 0 then
		AddNumText(sceneId, x212125_g_ScriptId,x212125_g_MissionName,2,-1);
	--Th�a m�n�����������
	elseif x212125_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x212125_g_ScriptId,x212125_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x212125_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x212125_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel(sceneId, selfId) < x212125_g_MissionLevel then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x212125_OnAccept( sceneId, selfId, targetId )
	if x212125_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	-- ������to� � �ķ���ng����ng�ﵽ��Ҫ��(ǰ������ng c�p t�m ph�p ���ڵ���60c�p)
	--if CallScriptFunction( 212120, "CheckAllXinfaLevel", sceneId, selfId, 60 ) == 0  then
   	--BeginEvent(sceneId)
	--		local strText = format("Nhi�m v� n�y y�u c�u 6 lo�i t�m ph�p �u ��t c�p 60.")
	--		AddText(sceneId, strText)
	--  EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end
	
	--������������б�
	local ret = AddMission(sceneId,selfId, x212125_g_MissionId, x212125_g_ScriptId, 0, 0, 0)
	if ret <= 0 then
		Msg2Player(sceneId, selfId,"#YDanh s�ch nhi�m v�#W: c�a c�c h� �� �y r�i" , MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, "#YDanh s�ch nhi�m v�#W: c�a c�c h� �� �y r�i")
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end
	Msg2Player(sceneId, selfId,"#Y Ti�p nh�n nhi�m v�: C߾p � Th�o Nguy�n",MSG2PLAYER_PARA)
 	BeginEvent(sceneId)
		AddText(sceneId, "#Y Ti�p nh�n nhi�m v�: C߾p � Th�o Nguy�n")
  EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212125_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 0)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 0)
	
	-- ��ҹ���ɱ��
	SetMissionEvent( sceneId,selfId,x212125_g_MissionId, 0 )

end

--**********************************
--����
--**********************************
function x212125_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x212125_g_MissionId )
end

--**********************************
--����
--**********************************
function x212125_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
  BeginEvent(sceneId)
	AddText(sceneId,x212125_g_MissionName)
	AddText(sceneId,x212125_g_MissionComplete)
	AddMoneyBonus( sceneId, x212125_g_MoneyBonus )
  EndEvent()
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212125_g_ScriptId,x212125_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212125_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212125_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x212125_g_MissionId)
	if GetMissionParam(sceneId, selfId, misIndex, 0) < 1  then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x212125_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212125_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId, x212125_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212125_g_exp)
		DelMission( sceneId, selfId, x212125_g_MissionId )
		MissionCom( sceneId, selfId, x212125_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Ho�n th�nh nhi�m v�: C߾p � Th�o Nguy�n",MSG2PLAYER_PARA )
	end
end

--**********************************
--ɱ����������
--**********************************
function x212125_OnKillObject( sceneId, selfId, objdataId, objId )
	local monsterName = GetMonsterNamebyDataId(objdataId)
	if monsterName == "Loan �ao M� Ph�"    then
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			if IsHaveMission(sceneId, humanObjId, x212125_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,x212125_g_MissionId)
				if GetMissionParam(sceneId, humanObjId, misIndex, 0) <=0  then
					local ct = GetMissionParam(sceneId, humanObjId, misIndex, 1)
					if ct < 30    then
						SetMissionByIndex(sceneId, humanObjId, misIndex, 1, ct+1)
						-- ֪ͨ�ͻ���
			     	BeginEvent(sceneId)
							local strText = format("�� gi�t ch�t Loan �ao M� Ph�: %d/30", ct+1 )
							AddText(sceneId, strText)
					  EndEvent(sceneId)
				  	DispatchMissionTips(sceneId,humanObjId)
						if ct+1 >= 30  then
							SetMissionByIndex( sceneId, humanObjId, misIndex, 0, 1 )
						end
					end
				end
			end
		end
	end
end

--**********************************
--���������¼�
--**********************************
function x212125_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212125_OnItemChanged( sceneId, selfId, itemdataId )
end

