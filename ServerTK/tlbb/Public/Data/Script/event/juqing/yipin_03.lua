-- 200052 ����չ���ҹ��
-- ��L� Thu Th�yȥ��to� � ��Ϣ֪ͨL�c D߽ng��to� � ��������.

--************************************************************************
--MisDescBegin
--�ű���
x200052_g_ScriptId = 200052

--�����
x200052_g_MissionId = 42

--ǰ�������
x200052_g_PreMissionId = 41

--M�c ti�u nhi�m v�NPC����
x200052_g_Position_X=210
x200052_g_Position_Z=207
x200052_g_SceneID=0
x200052_g_AccomplishNPC_Name="H�ch Li�n Thi�t Th�"

--Ŀ��NPC
x200052_g_Name = "H�ch Li�n Thi�t Th�"

--��ng����ngTinhӢ����
x200052_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200052_g_MissionLevel = 70

--�������
x200052_g_MissionKind = 49

--�����ı�����
x200052_g_MissionName="Ho�n Ph�ng Kh�ng quy nguy�t d� h�n"
x200052_g_MissionInfo="#{Mis_juqing_0042}"
x200052_g_MissionTarget="#{Mis_juqing_Tar_0042}"	--M�c ti�u nhi�m v�
x200052_g_MissionComplete="  Ch�, Ho�ng Th�i Phi �t nhi�n quy ti�n tr�n �߶ng...ho�ng th��ng �t �au l�ng l�m"


x200052_g_MoneyBonus=10800
x200052_g_exp=12000

x200052_g_Custom	= { {id="�� t�m ���c Li�n Thi�t Th�",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200052_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200052_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200052_g_MissionId) > 0)  then
		-- �����ng����ngT�i ����,�ټ����ng����ng,�����ng�Ϳ���ֱHo�n t�t nhi�m v�,^_^
			-- �����T�n,��ȫ �i�m �i�m
		if GetName(sceneId, targetId) == x200052_g_Name  then
	    BeginEvent(sceneId)
				AddText(sceneId,x200052_g_MissionName)
				AddText(sceneId,x200052_g_MissionComplete)
				AddMoneyBonus( sceneId, x200052_g_MoneyBonus )
	    EndEvent( )
			DispatchMissionContinueInfo(sceneId,selfId,targetId,x200052_g_ScriptId,x200052_g_MissionId)
		end
	
	--Th�a m�n�����������
	elseif x200052_CheckAccept(sceneId, selfId, targetId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200052_g_MissionName)
			AddText(sceneId,x200052_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200052_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200052_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200052_g_ScriptId,x200052_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x200052_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200052_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200052_g_MissionId) > 0 then
		--C�n T�i �����ſ���
		if GetName(sceneId, targetId) == x200052_g_Name    then
			AddNumText(sceneId, x200052_g_ScriptId,x200052_g_MissionName,2,-1);
		end
		
	--Th�a m�n�����������
	elseif x200052_CheckAccept(sceneId,selfId,targetId) > 0 then	
		if GetName(sceneId, targetId) == "H� Tr�c"    then
			AddNumText(sceneId,x200052_g_ScriptId,x200052_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200052_CheckAccept( sceneId, selfId, targetId )
	--�ж�����
	--1,ǰ���������
	if IsMissionHaveDone(sceneId,selfId,x200052_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200052_g_MissionId) > 0  then
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
function x200052_OnAccept( sceneId, selfId, targetId )

	if x200052_CheckAccept(sceneId, selfId, targetId) ~= 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200052_g_MissionId, x200052_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	Msg2Player(  sceneId, selfId,"#Ynh�n nhi�m v�: Ho�n Ph�ng Kh�ng quy nguy�t d� h�n",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200052_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)

end

--**********************************
--��ʱ�¼�
--**********************************
function x200052_OnTimer(sceneId,selfId)
end

--**********************************
--����
--**********************************
function x200052_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200052_g_MissionId )
end

--**********************************
--����
--**********************************
function x200052_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200052_CheckSubmit( sceneId, selfId, selectRadioId )

end

--**********************************
--�ύ
--**********************************
function x200052_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- �����ύto� � �����ж�
		--���������
		AddMoney(sceneId,selfId, x200052_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200052_g_exp)

		DelMission( sceneId, selfId, x200052_g_MissionId )
		MissionCom( sceneId, selfId, x200052_g_MissionId )
		Msg2Player( sceneId, selfId, "#YHo�n t�t nhi�m v�#W: Ho�n Ph�ng Kh�ng quy nguy�t d� h�n", MSG2PLAYER_PARA )
	--�������ͽ�Ǯ

		-- ���ú�������
		CallScriptFunction((200053), "OnDefaultEvent",sceneId, selfId, targetId )
	
end

--**********************************
--ɱ����������
--**********************************
function x200052_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--���������¼�
--**********************************
function x200052_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200052_OnItemChanged( sceneId, selfId, itemdataId )
	
end


