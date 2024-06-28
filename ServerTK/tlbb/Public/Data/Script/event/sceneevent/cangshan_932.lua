--Th߽ng S�n ��Ѩ��Ӫ ̽��������
--212121


--MisDescBegin
--�ű���
x212121_g_ScriptId = 212121

--Ti�p th�����NPC����
x212121_g_Position_X=154
x212121_g_Position_Z=205
x212121_g_SceneID=25
x212121_g_AccomplishNPC_Name="T�t M�"

--�����
x212121_g_MissionId = 932

--Ŀ��NPC
x212121_g_Name	="T�t M�"

--�������
x212121_g_MissionKind = 35

--��ng c�p nhi�m v� 
x212121_g_MissionLevel = 41

--��ng����ngTinhӢ����
x212121_g_IfMissionElite = 0

--������
x212121_g_MissionName="Lang huy�t ��i doanh"
x212121_g_MissionInfo="#{Mis_30_60_desc_007}"
x212121_g_MissionTarget="    T�t M� � Th߽ng S�n #{_INFOAIM155,205,25, T�t M�} y�u c�u c�c h� �i d� th�m Lang huy�t ��i doanh."
x212121_g_MissionContinue="  C�c h� �� d� th�m Lang huy�t ��i doanh ch�a ?"
x212121_g_MissionComplete="  Xem ra T�t L� �ang mu�n ti�n h�nh th�m 1 h�nh �ng! Ta c�ng ph�i chu�n b� r�i!"

x212121_g_MoneyBonus=8500
x212121_g_exp=10000

x212121_g_Custom	= { {id="�� d� th�m Lang huy�t ��i doanh",num=1} }
x212121_g_IsMissionOkFail = 0

--MisDescEnd

--**********************************
--������ں���
--**********************************
function x212121_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x212121_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212121_g_MissionId) > 0)  then
			--x212121_OnContinue( sceneId, selfId, targetId )
			local bDone = x212121_CheckSubmit( sceneId, selfId )
			BeginEvent(sceneId)
				AddText(sceneId,x212121_g_MissionName)
				AddText(sceneId,x212121_g_MissionContinue)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212121_g_ScriptId,x212121_g_MissionId,bDone)		
	
	--Th�a m�n�����������
	elseif x212121_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		local  PlayerName=GetName(sceneId,selfId)	
		BeginEvent(sceneId)
			AddText(sceneId,x212121_g_MissionName)
			AddText(sceneId,x212121_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x212121_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x212121_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x212121_g_ScriptId,x212121_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x212121_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212121_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x212121_g_MissionId) > 0 then
			AddNumText(sceneId, x212121_g_ScriptId,x212121_g_MissionName,2,-1);
	--Th�a m�n�����������
	elseif x212121_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x212121_g_ScriptId,x212121_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x212121_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x212121_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel(sceneId, selfId) < x212121_g_MissionLevel then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x212121_OnAccept( sceneId, selfId, targetId )
	if x212121_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end

	-- ������to� � �ķ���ng����ng�ﵽ��Ҫ��(ǰ������ng c�p t�m ph�p ���ڵ���30c�p)
	--if CallScriptFunction( 212120, "CheckAllXinfaLevel", sceneId, selfId, 40 ) == 0  then
   	--BeginEvent(sceneId)
	--		local strText = format("Nhi�m v� n�y y�u c�u 6 lo�i t�m ph�p �u ��t c�p 40.")
	--		AddText(sceneId, strText)
	--  EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end
	
	--������������б�
	local ret = AddMission(sceneId,selfId, x212121_g_MissionId, x212121_g_ScriptId, 0, 0, 0)
	if ret <= 0 then
		local strText = format("#YNh�t k� nhi�m v� c�a c�c h� �� �y")
		Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end
	local strText = format("#Y Ti�p nh�n nhi�m v�: Lang huy�t ��i doanh")
	Msg2Player(sceneId, selfId, strText,MSG2PLAYER_PARA)
 	BeginEvent(sceneId)
		AddText(sceneId, strText)
  EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212121_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 0)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 0)
	
	-- ��ҹ��Ľ�������
	SetMissionEvent( sceneId,selfId,x212121_g_MissionId, 1 )
	
end

--**********************************
--����
--**********************************
function x212121_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x212121_g_MissionId )
end

--**********************************
--����
--**********************************
function x212121_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
  BeginEvent(sceneId)
	AddText(sceneId,x212121_g_MissionName)
	AddText(sceneId,x212121_g_MissionComplete)
	AddMoneyBonus( sceneId, x212121_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212121_g_ScriptId,x212121_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212121_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212121_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x212121_g_MissionId)
	if GetMissionParam(sceneId, selfId, misIndex, 0) < 1  then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x212121_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212121_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId, x212121_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212121_g_exp)
		DelMission( sceneId, selfId, x212121_g_MissionId )
		MissionCom( sceneId, selfId, x212121_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Ho�n th�nh nhi�m v�: Lang huy�t ��i doanh",MSG2PLAYER_PARA )
	end
end

--**********************************
--ɱ����������
--**********************************
function x212121_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x212121_OnEnterArea( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x212121_OnItemChanged( sceneId, selfId, itemdataId )
end

