-- 200055 T�nh y�u kh�ng ph�i l� m�
-- ��L� Thu Th�yȥ��to� � ��Ϣ֪ͨL�c D߽ng��to� � ��������.

--************************************************************************
--MisDescBegin
--�ű���
x200055_g_ScriptId = 200055

--�����
x200055_g_MissionId = 44

--ǰ�������
x200055_g_PreMissionId = 43

--Ŀ��NPC
x200055_g_Name = "H� Tr�c"

--��ng����ngTinhӢ����
x200055_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200055_g_MissionLevel = 70

--�������
x200055_g_MissionKind = 49

--�����ı�����
x200055_g_MissionName="T�nh y�u kh�ng ph�i l� m�"
x200055_g_MissionInfo="#{Mis_juqing_0044}"
x200055_g_MissionTarget="#{Mis_juqing_Tar_0044}"	--M�c ti�u nhi�m v�
x200055_g_MissionComplete="  Sao? C�i g�? Ta �� ���c ch�n?"


x200055_g_MoneyBonus=9000
x200055_g_exp=17280

x200055_g_Custom	= { {id="�� t�m th�y H� Tr�c",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200055_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200055_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200055_g_MissionId) > 0)  then
		-- �����ng����ngT�i ����,�ټ����ng����ng,�����ng�Ϳ���ֱHo�n t�t nhi�m v�,^_^
			-- �����T�n,��ȫ �i�m �i�m
		if GetName(sceneId, targetId) == x200055_g_Name  then
	    BeginEvent(sceneId)
				AddText(sceneId,x200055_g_MissionName)
				AddText(sceneId,x200055_g_MissionComplete)
				AddMoneyBonus( sceneId, x200055_g_MoneyBonus )
	    EndEvent( )
			DispatchMissionContinueInfo(sceneId,selfId,targetId,x200055_g_ScriptId,x200055_g_MissionId)
		end
	
	--Th�a m�n�����������
	elseif x200055_CheckAccept(sceneId, selfId, targetId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200055_g_MissionName)
			AddText(sceneId,x200055_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200055_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200055_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200055_g_ScriptId,x200055_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x200055_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200055_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200055_g_MissionId) > 0 then
		--C�n T�i �����ſ���
		if GetName(sceneId, targetId) == x200055_g_Name    then
			AddNumText(sceneId, x200055_g_ScriptId,x200055_g_MissionName,2,-1);
		end
		
	--Th�a m�n�����������
	elseif x200055_CheckAccept(sceneId,selfId,targetId) > 0 then	
		if GetName(sceneId, targetId) == "Hi�u L�i"    then
			AddNumText(sceneId,x200055_g_ScriptId,x200055_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200055_CheckAccept( sceneId, selfId, targetId )

	--�ж�����
	--1,ǰ���������
	if IsMissionHaveDone(sceneId,selfId,x200055_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200055_g_MissionId) > 0  then
		return 0
	end
	
	if LuaFnGetCopySceneData_Param(sceneId, 15) ~= 1 then
		return 0
	end
	
	--2,��c�p�ﵽ50
	if GetLevel(sceneId, selfId) < 70   then
		return 0
	end
	
	return 1
end


--**********************************
--Ti�p th�
--**********************************
function x200055_OnAccept( sceneId, selfId, targetId )

	if x200055_CheckAccept(sceneId, selfId, targetId) ~= 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200055_g_MissionId, x200055_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	Msg2Player(  sceneId, selfId,"#Ynh�n nhi�m v�#W: t�nh y�u c�a ta kh�ng ph�i l� m�ng",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200055_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
end

--**********************************
--��ʱ�¼�
--**********************************
function x200055_OnTimer(sceneId,selfId)
end

--**********************************
--����
--**********************************
function x200055_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200055_g_MissionId )
end

--**********************************
--����
--**********************************
function x200055_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200055_CheckSubmit( sceneId, selfId, selectRadioId )
  local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200055_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	local misIndex = GetMissionIndexByID(sceneId, selfId, x200055_g_MissionId)-- �i�m������T�i 20c�i������to� � ���к�
	local bDone = GetMissionParam( sceneId,selfId,misIndex,0 )
	
	if bDone == 1  then
		return 1
	end
	return 0
	
end

--**********************************
--�ύ
--**********************************
function x200055_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- �����ύto� � �����ж�
	if x200055_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		if DelMission( sceneId, selfId, x200055_g_MissionId ) ~=1 then
			return
		end
		MissionCom( sceneId, selfId, x200055_g_MissionId )
		--���������
		AddMoney(sceneId,selfId, x200055_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200055_g_exp)

		Msg2Player( sceneId, selfId, "#YHo�n t�t nhi�m v�#W: t�nh y�u c�a ta kh�ng ph�i l� m�ng", MSG2PLAYER_PARA )
	
		--�������ͽ�Ǯ

		-- ���ú�������
		CallScriptFunction((200056), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x200055_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--���������¼�
--**********************************
function x200055_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200055_OnItemChanged( sceneId, selfId, itemdataId )
	
end


