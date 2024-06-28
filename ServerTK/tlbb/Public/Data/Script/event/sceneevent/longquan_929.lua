--212119
--Long Tuy�n �����տ�����ʱ

--���̼�֮to� � ����� ��a cho ��ɽ��to� � ����.

--MisDescBegin
--�ű���
x212119_g_ScriptId = 212119

--Ti�p th�����NPC����
x212119_g_Position_X=208
x212119_g_Position_Z=62
x212119_g_SceneID=31
x212119_g_AccomplishNPC_Name="Ph�p Ni�m"

--�����
x212119_g_MissionId = 929

--Ŀ��NPC
x212119_g_Name	="Ph�p Ni�m"

--�������
x212119_g_MissionKind = 42

--��ng c�p nhi�m v� 
x212119_g_MissionLevel = 36

--��ng����ngTinhӢ����
x212119_g_IfMissionElite = 0

--������
x212119_g_MissionName="Th�i tu�i tr� ng�ng cu�ng"
x212119_g_MissionInfo="#{Mis_30_60_desc_004}"
x212119_g_MissionTarget="    Mang th� h�i l�i c�a �ng Qu� Chi �n Long Tuy�n Kim S�n T� giao cho Ph�p Ni�m #{_INFOAIM207,63,31, Ph�p Ni�m}. "
x212119_g_MissionContinue="  N�u c� th� l�m l�i l�n n�a, ta s� ch�n th� n�o ��y ? �� bi�t s� th�t v� h� �o kh� ph�n bi�t, sao kh�ng l�a ch�n theo ti�ng g�i c�a linh h�n"
x212119_g_MissionComplete="  Tr�i qua nh�ng th�ng tr�m c�a cu�c �i, nh�ng th� c�ng danh l�i l�c c� ��ng l� g�, h�y � n� bay theo l�n gi�!"

x212119_g_MoneyBonus=5000
x212119_g_exp=9000

x212119_g_Custom	= { {id="�� l�y ���c th� h�i l�i c�a �ng Qu� Chi",num=1} }
x212119_g_IsMissionOkFail = 0

x212119_g_MisItemId = 40004418 --�̼�֮to� � �����

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212119_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x212119_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212119_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212119_g_Name then
			--x212119_OnContinue( sceneId, selfId, targetId )
			BeginEvent(sceneId)
				AddText(sceneId,x212119_g_MissionName)
				AddText(sceneId,x212119_g_MissionContinue)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212119_g_ScriptId,x212119_g_MissionId,1)		
			
		end
	
	--Th�a m�n�����������
	elseif x212119_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212119_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x212119_g_MissionName)
				AddText(sceneId,x212119_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x212119_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x212119_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x212119_g_ScriptId,x212119_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x212119_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212119_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x212119_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212119_g_Name then
			AddNumText(sceneId, x212119_g_ScriptId,x212119_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x212119_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212119_g_Name then
			AddNumText(sceneId,x212119_g_ScriptId,x212119_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x212119_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x212119_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel(sceneId, selfId) < x212119_g_MissionLevel then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x212119_OnAccept( sceneId, selfId, targetId )
	if x212119_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end

	-- ������to� � �ķ���ng����ng�ﵽ��Ҫ��(ǰ������ng c�p t�m ph�p ���ڵ���30c�p)
	--if CallScriptFunction( 212120, "CheckAllXinfaLevel", sceneId, selfId, 35 ) == 0  then
   	--BeginEvent(sceneId)
	--		local strText = format("Nhi�m v� n�y y�u c�u 6 lo�i t�m ph�p �u ��t c�p 35.")
	--		AddText(sceneId, strText)
	--  EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end
	
	-- C�n ��������϶�m�t c�i��Ʒ
	BeginAddItem( sceneId )
		AddItem( sceneId, x212119_g_MisItemId, 1 )
	local ret = EndAddItem( sceneId, selfId )
	
	if ret > 0  then
		--������������б�
		ret = AddMission(sceneId,selfId, x212119_g_MissionId, x212119_g_ScriptId, 0, 0, 0)
		if ret <= 0 then
			local strText = format("#YDanh s�ch nhi�m v�#W: c�a c�c h� �� �y r�i")
			Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
	   	BeginEvent(sceneId)
				AddText(sceneId, strText)
		  EndEvent(sceneId)
	  	DispatchMissionTips(sceneId,selfId)
			return
		end
		local strText = format("#Y Ti�p nh�n nhi�m v�: Th�i thi�u ni�n cu�ng si")
		Msg2Player(sceneId, selfId, strText,MSG2PLAYER_PARA)
	 	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	
		local misIndex = GetMissionIndexByID(sceneId,selfId,x212119_g_MissionId)
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
		SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
		AddItemListToHuman(sceneId,selfId)
	
	else
		--��ʾ���ܽ�������
		local strText = "#Y � nhi�m v� c�a c�c h� �� �y."
		Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	
	end
	
end

--**********************************
--����
--**********************************
function x212119_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x212119_g_MissionId )
	DelItem( sceneId, selfId, x212119_g_MisItemId, 1 )	
end

--**********************************
--����
--**********************************
function x212119_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
  BeginEvent(sceneId)
	AddText(sceneId,x212119_g_MissionName)
	AddText(sceneId,x212119_g_MissionComplete)
	AddMoneyBonus( sceneId, x212119_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212119_g_ScriptId,x212119_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212119_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212119_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x212119_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212119_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		DelItem( sceneId, selfId, x212119_g_MisItemId, 1 )	
		AddMoney(sceneId,selfId, x212119_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212119_g_exp)
		DelMission( sceneId, selfId, x212119_g_MissionId )
		MissionCom( sceneId, selfId, x212119_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Ho�n th�nh nhi�m v�: Th�i tu�i tr� ng�ng cu�ng",MSG2PLAYER_PARA )
	end
end

--**********************************
--ɱ����������
--**********************************
function x212119_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x212119_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212119_OnItemChanged( sceneId, selfId, itemdataId )
end

