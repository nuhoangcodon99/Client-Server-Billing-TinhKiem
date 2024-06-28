-- 200035 �������

--Ү�ɺ�� ����Һ� �Ի�, T�i Ho�n t�t nhi�m v�to� � ʱ��,���о���(�Ի�����)
--�˳���  �ز�ãɽ��Ү�ɺ��,��Ү�����to� � ��ս�ƻ�������.

--************************************************************************
--MisDescBegin
--�ű���
x200035_g_ScriptId = 200035

--�����
x200035_g_MissionId = 30

--ǰ�������
x200035_g_PreMissionId = 29

--Ŀ��NPC
x200035_g_Name = "Ti�u Phong"

--��ng����ngTinhӢ����
x200035_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200035_g_MissionLevel = 50

--�������
x200035_g_MissionKind = 52

--�����ı�����
x200035_g_MissionName="T� Di�n S� Ca"
x200035_g_MissionInfo="#{Mis_juqing_0030}"
x200035_g_MissionTarget="#{Mis_juqing_Tar_0030}"	--M�c ti�u nhi�m v�
x200035_g_MissionComplete="  Ra kh�i? Kh�ng th� n�o! T�i h� kh�ng �i ���c n�a, l�c t�i h� v� ngh�a huynh k�t b�i kim lang, v� �� th� r�ng, c� ph�c c�ng h߷ng, c� h�a c�ng chia, trong l�c nguy c�p th�y h�a kh�ng gi�p, Ti�u Phong t�i ��y nh�t quy�t kh�ng l�m. "	--Ho�n t�t nhi�m v�npc˵��to� � ��

x200035_g_MoneyBonus=1800
x200035_g_exp=1200

x200035_g_Custom	= { {id="�� t�m ���c Ti�u Phong",num=1} }
--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200035_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200035_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200035_g_MissionId) > 0)  then
		-- �����ng����ngT�i ����,�ټ����ng����ng,�����ng�Ϳ���ֱHo�n t�t nhi�m v�,^_^
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --����������ng����
			-- �����T�n,��ȫ �i�m �i�m
			if GetName(sceneId, targetId) == x200035_g_Name  then
		    BeginEvent(sceneId)
				AddText(sceneId,x200035_g_MissionName)
				AddText(sceneId,x200035_g_MissionComplete)
				AddMoneyBonus( sceneId, x200035_g_MoneyBonus )
		    EndEvent( )
		    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200035_g_ScriptId,x200035_g_MissionId)
			end
		end
	
	--Th�a m�n�����������
	elseif x200035_CheckAccept(sceneId, selfId, targetId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
		AddText(sceneId,x200035_g_MissionName)
		AddText(sceneId,x200035_g_MissionInfo)
		AddText(sceneId,"#{M_MUBIAO}#r")
		AddText(sceneId,x200035_g_MissionTarget)
		AddText(sceneId,"#{M_SHOUHUO}#r")
		AddMoneyBonus( sceneId, x200035_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200035_g_ScriptId,x200035_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x200035_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200035_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200035_g_MissionId) > 0 then
		--C�n T�i �����ſ���
		if GetName(sceneId, targetId) == x200035_g_Name    then
			AddNumText(sceneId, x200035_g_ScriptId,x200035_g_MissionName,2,-1);
		end
		
	--Th�a m�n�����������
	elseif x200035_CheckAccept(sceneId,selfId,targetId) > 0 then	
		AddNumText(sceneId,x200035_g_ScriptId,x200035_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200035_CheckAccept( sceneId, selfId, targetId )
	--�ж�����
	--1,ǰ���������
	if IsMissionHaveDone(sceneId,selfId,x200035_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200035_g_MissionId) > 0  then
		return 0
	end
	
	--2,��c�p�ﵽ50
	if GetLevel(sceneId, selfId) < x200035_g_MissionLevel   then
		return 0
	end
	
	--�����ng����ng�ʵ�
	if GetName(sceneId, targetId) ~= "Gia Lu�t H�ng C�"    then
		return 0
	end
	
	return 1
end


--**********************************
--Ti�p th�
--**********************************
function x200035_OnAccept( sceneId, selfId, targetId )

	if x200035_CheckAccept(sceneId, selfId, targetId) ~= 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200035_g_MissionId, x200035_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: T� Di�n S� Ca",MSG2PLAYER_PARA )

	-- �����к���to� � ����,C�n ���
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200035_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)

end

--**********************************
--����
--**********************************
function x200035_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200035_g_MissionId )
end

--**********************************
--����
--**********************************
function x200035_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200035_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x200035_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- �����ύto� � �����ж�
	-- 1,��C�i n�y ����,
	if( IsHaveMission(sceneId,selfId,x200035_g_MissionId) > 0)  then
		AddMoney(sceneId,selfId,x200035_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200035_g_exp)
		DelMission( sceneId,selfId,  x200035_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200035_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: T� Di�n S� Ca",MSG2PLAYER_PARA )
		
		-- ��m�t �ξ���,����������,����·����.
		if LuaFnGetCopySceneData_Param(sceneId, 8) < 1  then
			LuaFnSetCopySceneData_Param(sceneId, 8, 1)
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
		end
		
	end
end

--**********************************
--��ʱ�¼�
--**********************************
function x200035_OnTimer(sceneId,selfId)

end

--**********************************
--ɱ����������
--**********************************
function x200035_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--���������¼�
--**********************************
function x200035_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200035_OnItemChanged( sceneId, selfId, itemdataId )
	
end

