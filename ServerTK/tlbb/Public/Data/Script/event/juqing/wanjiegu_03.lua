-- Vi Ti�u Chi L�

--MisDescBegin
--�ű���
x200003_g_ScriptId = 200003

--�����
x200003_g_MissionId = 3

--ǰ�������
x200003_g_PreMissionId = 2

--Ŀ��NPC
x200003_g_Name	="Chung Linh"
x200003_g_Name1 ="Th�ch Nh�n"

--�������
x200003_g_MissionKind = 51

--��ng c�p nhi�m v� 
x200003_g_MissionLevel = 20

--��ng����ngTinhӢ����
x200003_g_IfMissionElite = 0

--������
x200003_g_MissionName="Vi Ti�u Chi L�"
--��������
x200003_g_MissionInfo="#{Mis_juqing_0003}"
--M�c ti�u nhi�m v�
x200003_g_MissionTarget="#{Mis_juqing_Tar_0003}"		
--�ύʱnpcto� � ��
x200003_g_MissionComplete="  <� ph�a tr߾c Th�ch �c K�n kh�ng ch�t gi� n�y, c�c h� s� t�m th�y m�t Th�ch C�m �߽ng, T� khe h� b�n c�nh Th�ch C�m �߽ng c� th� nghe th�y �m thanh c�a �o�n D�. >"		

x200003_g_MoneyBonus=100
x200003_g_exp=5600

x200003_g_Custom	= { {id="�� h� t�ng Chung Linh",num=1} }

--MisDescEnd

--**********************************
--������ں���
--**********************************
function x200003_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	if IsHaveMission(sceneId,selfId,x200003_g_MissionId) > 0 then
		if GetName(sceneId, targetId) == x200003_g_Name1  then
			--C�n ������ɲſ���
			--local misIndex = GetMissionIndexByID(sceneId, selfId, x200003_g_MissionId)-- �i�m������T�i 20c�i������to� � ���к�
			--if GetMissionParam(sceneId, selfId, misIndex, 0) == 1	then   --����������
			if LuaFnGetCopySceneData_Param(sceneId, 11) == 7  then
				BeginEvent(sceneId)
					AddText(sceneId,x200003_g_Name)
					AddText(sceneId,x200003_g_MissionComplete)
					AddText(sceneId,"#{M_MUBIAO}#r")
					AddText(sceneId,x200003_g_MissionTarget)
				EndEvent( )
				DispatchMissionContinueInfo(sceneId, selfId, targetId, x200003_g_ScriptId, x200003_g_MissionId)
			end
		end
		
	elseif x200003_CheckAccept(sceneId,selfId) > 0 then

		BeginEvent(sceneId)
			AddText(sceneId, x200003_g_MissionName)
			AddText(sceneId, x200003_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId, x200003_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200003_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200003_g_ScriptId,x200003_g_MissionId)
	end	
end

--**********************************
--�о��¼�
--**********************************
function x200003_OnEnumerate( sceneId, selfId, targetId )
	if LuaFnGetCopySceneData_Param(sceneId, 11) ~= 0  then
		if GetName(sceneId, targetId) == x200003_g_Name then
			return
		end
	end

	if 0 > GetLevel(sceneId, selfId)  then
		return
	end
	
	-- ���ǰ������1û�����,��Tr� v�
	if IsMissionHaveDone(sceneId, selfId, 2) <= 0   then
		return
	end
	-- ����������Ѿ����,��Tr� v�
	if IsMissionHaveDone(sceneId, selfId, x200003_g_MissionId) > 0 then
   	return
	--Th�a m�n�����������
	elseif IsHaveMission(sceneId, selfId, x200003_g_MissionId) > 0 then
		local misIndex = GetMissionIndexByID(sceneId, selfId, x200003_g_MissionId)-- �i�m������T�i 20c�i������to� � ���к�

		if GetMissionParam(sceneId, selfId, misIndex, 0) ~= 1	then   --����������
			if GetName(sceneId, targetId) == x200003_g_Name then
				--BeginEvent(sceneId)
					AddNumText(sceneId, x200003_g_ScriptId, x200003_g_MissionName,2,-1);
				--EndEvent()	
				DispatchEventList(sceneId, selfId, targetId)
			end
		end
		
		if GetName(sceneId, targetId) == x200003_g_Name1  then
			--if GetMissionParam(sceneId, selfId, misIndex, 0) == 1	then   --����������
			if LuaFnGetCopySceneData_Param(sceneId, 11) == 7 then
				--BeginEvent(sceneId)
					AddNumText(sceneId, x200003_g_ScriptId, x200003_g_MissionName,2,0);
				--EndEvent()	
				DispatchEventList(sceneId, selfId, targetId)
			end
		end
		
	--Th�a m�n�����������
  elseif x200003_CheckAccept(sceneId, selfId) > 0 then
		if GetName(sceneId, targetId) == x200003_g_Name then
			--BeginEvent(sceneId)
				AddNumText(sceneId, x200003_g_ScriptId, x200003_g_MissionName,1,-1);
			--EndEvent()
			DispatchEventList(sceneId, selfId, targetId)	
		end
  end
end

--**********************************
-- 
--**********************************
function x200003_OnLockedTarget( sceneId, selfId, targetId )

end

--**********************************
--���Ti�p th�����
--**********************************
function x200003_CheckAccept( sceneId, selfId )
	-- ������to� � ������ng,����ﵽ20c�p����,���������ǰ������
	if GetLevel(sceneId, selfId) < 20   then
		return 0
	end
	
	if IsMissionHaveDone(sceneId, selfId, x200003_g_PreMissionId ) < 1   then
		return 0
	end
	
	-- ��������Ѿ���ʼ,�Ͳ����ٽ�C�i n�y ����
	if LuaFnGetCopySceneData_Param(sceneId, 25) == 1   then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x200003_OnAccept( sceneId, selfId, targetId )

	if x200003_CheckAccept( sceneId, selfId ) < 1 then
		return
	end

	-- ��������ng����ng�Ѿ���ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId, selfId, x200003_g_MissionId) > 0   then
		return
	end

	--������������б�
	local ret = AddMission( sceneId,selfId, x200003_g_MissionId, x200003_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�: Vi Ti�u Chi L�",MSG2PLAYER_PARA )
	
	-- ֪ͨ������ʱ��,��ʼ���;���
	if LuaFnGetCopySceneData_Param(sceneId, 11) == 0 then
		LuaFnSetCopySceneData_Param(sceneId, 11, 1)
		LuaFnSetCopySceneData_Param(sceneId, 12, targetId)
	end
	
end

--**********************************
--����
--**********************************
function x200003_OnAbandon( sceneId, selfId )
  --������npc˲�ƻ�ԭ��λ��
  DelMission(sceneId, selfId, x200003_g_MissionId)
  
end

--**********************************
--����
--**********************************
function x200003_OnContinue( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText(sceneId,x200003_g_Name)
		AddText(sceneId,x200003_g_MissionComplete)
		AddText(sceneId,"#{M_MUBIAO}#r")
		AddText(sceneId,x200003_g_MissionTarget)
	EndEvent( )
	
	DispatchMissionContinueInfo(sceneId, selfId, targetId, x200003_g_ScriptId, x200003_g_MissionId)

end

--**********************************
--�����ng������ύ
--**********************************
function x200003_CheckSubmit( sceneId, selfId )

	--1, ��ng����C�i n�y ����
	if IsHaveMission(sceneId,selfId,x200003_g_MissionId) < 1 then
		return 0;
	end
	
	--2, ��ng���Ѿ����C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200003_g_MissionId) > 0  then
		return 0;
	end

	--3, �����ض��ж�
	local bComplete = LuaFnGetCopySceneData_Param(sceneId, 11)
	if bComplete > 6 then
		return 1
	else
		return 0
	end
	
end

--**********************************
--�ύ
--**********************************
function x200003_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	-- �����ng����ngTh�a m�nHo�n t�t nhi�m v�to� � ����
	if x200003_CheckSubmit(sceneId, selfId) < 1 then 
		return
	end

	if DelMission( sceneId,selfId, x200003_g_MissionId ) ~= 1 then
		return
	end

	--���������Ѿ�����ɹ�
	MissionCom( sceneId,selfId, x200003_g_MissionId )

	AddMoney(sceneId,selfId,x200003_g_MoneyBonus );
	LuaFnAddExp( sceneId, selfId,x200003_g_exp)
	

	Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�: Vi Ti�u Chi L�",MSG2PLAYER_PARA )

	-- ���ú�������
	CallScriptFunction((200004), "OnDefaultEvent",sceneId, selfId, targetId )
	
end

function x200003_OnHumanDie(sceneId, selfId)
end

--**********************************
--��ʱ�¼�
--**********************************
function x200003_OnTimer(sceneId,selfId)
end
