-- 212129
-- ����Ӣ�۽Լ�į

--MisDescBegin
--�ű���
x212129_g_ScriptId = 212129

--Ti�p th�����NPC����
x212129_g_Position_X=274
x212129_g_Position_Z=381
x212129_g_SceneID=0
x212129_g_AccomplishNPC_Name="T� M� Quang"

--�����
x212129_g_MissionId = 251

--Ŀ��NPC
x212129_g_Name	="T� M� Quang"

--�������
x212129_g_MissionKind = 55

--��ng c�p nhi�m v� 
x212129_g_MissionLevel = 75

--��ng����ngTinhӢ����
x212129_g_IfMissionElite = 0

--������
x212129_g_MissionName="C� lai anh h�ng �u c� �c"
x212129_g_MissionInfo="#{Mis_75_desc_002}"
x212129_g_MissionTarget="    T�m T� M� Quang � L�c D߽ng #{_INFOAIM274,381,0, T� M� Quang}. "
--x212129_g_MissionContinue="  ��������ܹ�����m�t ��,�m�t ���ôѡ����?��Ȼ��ʵ������޴ӷֱ�,Ϊ�β�������Linhto� � �ٻ�����������."
x212129_g_MissionComplete="  L�ch s� l� 1 d�ng s�ng d�i, Ba ��o c�n c�n, B�n l�u b�t t�c. Nh�ng v� anh h�ng h�o ki�t, oanh oanh li�t li�t ra �i v� s� kh�ng bao gi� quay v�...."

x212129_g_MoneyBonus=5000
x212129_g_exp=50000

x212129_g_Custom	= { {id="�� t�m th�y T� M� Quang",num=1} }
x212129_g_IsMissionOkFail = 0


--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212129_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x212129_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212129_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212129_g_Name then
			x212129_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x212129_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212129_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x212129_g_MissionName)
				AddText(sceneId,x212129_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x212129_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x212129_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x212129_g_ScriptId,x212129_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x212129_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212129_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x212129_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212129_g_Name then
			AddNumText(sceneId, x212129_g_ScriptId,x212129_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x212129_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212129_g_Name then
			AddNumText(sceneId,x212129_g_ScriptId,x212129_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x212129_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x212129_g_MissionId) > 0 ) then
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
function x212129_CheckAcceptEx( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x212129_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel(sceneId, selfId) < x212129_g_MissionLevel then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x212129_OnAccept( sceneId, selfId, targetId )
	if x212129_CheckAcceptEx(sceneId, selfId) < 1   then
		BeginEvent(sceneId)
			AddText( sceneId, "  Nhi�m v� n�y y�u c�u ��ng c�p nh�n v�t ��t c�p 75, v� 6 lo�i t�m ph�p �u ��t c�p 70 m�i c� th� ti�p nh�n." )
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end

	-- ������to� � �ķ���ng����ng�ﵽ��Ҫ��(ǰ������ng c�p t�m ph�p ���ڵ���30c�p)
	
	--if CallScriptFunction( 212120, "CheckAllXinfaLevel", sceneId, selfId, 70 ) == 0  then
   --	BeginEvent(sceneId)
	--		local strText = format("Nhi�m v� n�y y�u c�u 6 lo�i t�m ph�p �u ��t c�p 70.")
	--		AddText(sceneId, strText)
	--  EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end
	
	-- C�n ��������϶�m�t c�i��Ʒ
	--������������б�
	local ret = AddMission(sceneId,selfId, x212129_g_MissionId, x212129_g_ScriptId, 0, 0, 0)
	if ret <= 0 then
		local strText = format("#YDanh s�ch nhi�m v�#W: c�a c�c h� �� �y r�i")
		Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end
	local strText = format("#Y Ti�p nh�n nhi�m v�: C� lai anh h�ng �u c� �c.")
	Msg2Player(sceneId, selfId, strText,MSG2PLAYER_PARA)
 	BeginEvent(sceneId)
		AddText(sceneId, strText)
  EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212129_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
	
end

--**********************************
--����
--**********************************
function x212129_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x212129_g_MissionId )
end

--**********************************
--����
--**********************************
function x212129_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
  BeginEvent(sceneId)
	AddText(sceneId,x212129_g_MissionName)
	AddText(sceneId,x212129_g_MissionComplete)
	AddMoneyBonus( sceneId, x212129_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212129_g_ScriptId,x212129_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212129_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212129_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x212129_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212129_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId, x212129_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212129_g_exp)
		DelMission( sceneId, selfId, x212129_g_MissionId )
		MissionCom( sceneId, selfId, x212129_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Ho�n th�nh nhi�m v�: C� lai anh h�ng �u c� �c",MSG2PLAYER_PARA )
	end
end

--**********************************
--ɱ����������
--**********************************
function x212129_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x212129_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212129_OnItemChanged( sceneId, selfId, itemdataId )
end

