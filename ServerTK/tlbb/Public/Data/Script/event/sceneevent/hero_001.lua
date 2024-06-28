-- 212128
-- Ӣ�۲���Զ����

--MisDescBegin
--�ű���
x212128_g_ScriptId = 212128

--Ti�p th�����NPC����
x212128_g_Position_X=373
x212128_g_Position_Z=185
x212128_g_SceneID=2
x212128_g_AccomplishNPC_Name="Tr�m Qu�t"

--�����
x212128_g_MissionId = 250

--Ŀ��NPC
x212128_g_Name	="Tr�m Qu�t"

--�������
x212128_g_MissionKind = 55

--��ng c�p nhi�m v� 
x212128_g_MissionLevel = 75

--��ng����ngTinhӢ����
x212128_g_IfMissionElite = 0

--������
x212128_g_MissionName="Anh h�ng kh�ng s� vi�n chinh kh�"
x212128_g_MissionInfo="#{Mis_75_desc_001}"
x212128_g_MissionTarget="    T�m Tr�m Qu�t � th�nh ��i L� #{_INFOAIM373,185,2, Tr�m Qu�t}. "
--x212128_g_MissionContinue="  ��������ܹ�����m�t ��,�m�t ���ôѡ����?��Ȼ��ʵ������޴ӷֱ�,Ϊ�β�������Linhto� � �ٻ�����������."
x212128_g_MissionComplete="  ��c ���c h�t s�ch tr�n thi�n h�, �i h�t 5 ch�u 4 b� l� s� theo �u�i c�a �i ta. T� x�a �n nay ch� c� ng߶i tri th�c m�i tr� th�nh anh h�ng."

x212128_g_MoneyBonus=5000
x212128_g_exp=50000

x212128_g_Custom	= { {id="�� t�m th�y Tr�m Qu�t",num=1} }
x212128_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212128_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x212128_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212128_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212128_g_Name then
			x212128_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x212128_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212128_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x212128_g_MissionName)
				AddText(sceneId,x212128_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x212128_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x212128_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x212128_g_ScriptId,x212128_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x212128_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212128_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x212128_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212128_g_Name then
			AddNumText(sceneId, x212128_g_ScriptId,x212128_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x212128_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212128_g_Name then
			AddNumText(sceneId,x212128_g_ScriptId,x212128_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x212128_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x212128_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel(sceneId, selfId) < 10 then
		return 0
	end
	
	return 1
end

--**********************************
--���Ti�p th�����
--**********************************
function x212128_CheckAcceptEx( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x212128_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel(sceneId, selfId) < x212128_g_MissionLevel then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x212128_OnAccept( sceneId, selfId, targetId )
	if x212128_CheckAcceptEx(sceneId, selfId) < 1   then
		BeginEvent(sceneId)
			AddText( sceneId, "Nhi�m v� n�y y�u c�u ��ng c�p nh�n v�t ��t c�p 75, v� 6 lo�i t�m ph�p �u ��t c�p 70 m�i c� th� ti�p nh�n." )
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end

	-- ������to� � �ķ���ng����ng�ﵽ��Ҫ��(ǰ������ng c�p t�m ph�p ���ڵ���30c�p)
	
	--if CallScriptFunction( 212120, "CheckAllXinfaLevel", sceneId, selfId, 70 ) == 0  then
   	--BeginEvent(sceneId)
	--		local strText = format("Nhi�m v� n�y y�u c�u 6 lo�i t�m ph�p �u ��t c�p 70.")
	--		AddText(sceneId, strText)
	--  EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end
	
	-- C�n ��������϶�m�t c�i��Ʒ
	--������������б�
	local ret = AddMission(sceneId,selfId, x212128_g_MissionId, x212128_g_ScriptId, 0, 0, 0)
	if ret <= 0 then
		local strText = format("#YDanh s�ch nhi�m v�#W: c�a c�c h� �� �y r�i")
		Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end
	local strText = format("#Y Ti�p nh�n nhi�m v�: Anh h�ng kh�ng ng�i gian tru�n.")
	Msg2Player(sceneId, selfId, strText,MSG2PLAYER_PARA)
 	BeginEvent(sceneId)
		AddText(sceneId, strText)
  EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212128_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
	
end

--**********************************
--����
--**********************************
function x212128_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x212128_g_MissionId )
end

--**********************************
--����
--**********************************
function x212128_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
  BeginEvent(sceneId)
	AddText(sceneId,x212128_g_MissionName)
	AddText(sceneId,x212128_g_MissionComplete)
	AddMoneyBonus( sceneId, x212128_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212128_g_ScriptId,x212128_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212128_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212128_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x212128_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212128_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId, x212128_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212128_g_exp)
		DelMission( sceneId, selfId, x212128_g_MissionId )
		MissionCom( sceneId, selfId, x212128_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Ho�n th�nh nhi�m v�: Anh h�ng kh�ng ng�i gian tru�n",MSG2PLAYER_PARA )
	end
end

--**********************************
--ɱ����������
--**********************************
function x212128_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x212128_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212128_OnItemChanged( sceneId, selfId, itemdataId )
end

