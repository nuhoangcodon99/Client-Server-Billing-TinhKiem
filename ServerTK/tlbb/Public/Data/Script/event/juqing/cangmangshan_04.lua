-- �˳���  �ز�ãɽ��Ү�ɺ��,��Ү�����to� � ��ս�ƻ�������.


--************************************************************************
--MisDescBegin
--�ű���
x200033_g_ScriptId = 200033

--�����
x200033_g_MissionId = 29

--ǰ�������
x200033_g_PreMissionId = 28

--Ŀ��NPC
x200033_g_Name = "Gia Lu�t H�ng C�"

--��ng����ngTinhӢ����
x200033_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200033_g_MissionLevel = 50

--�������
x200033_g_MissionKind = 52

--�����ı�����
x200033_g_MissionName="B�y m�u t�nh k�"
x200033_g_MissionInfo="#{Mis_juqing_0029}"
x200033_g_MissionTarget="#{Mis_juqing_Tar_0029}"	--M�c ti�u nhi�m v�
x200033_g_MissionComplete="  Qu� kh�ng h� doanh nh�t phi�n trung th�nh, c�n l� t߾ng qu�n thi�n t�i. N�u nh� l�n n�y th�t s� c� th� gi�i tr� ph�n lo�n, tr�m nh�t �nh s� phong cho quan ch�c �� �c. "	--Ho�n t�t nhi�m v�npc˵��to� � ��

x200033_g_MoneyBonus=18000
x200033_g_exp=20000

x200033_g_Custom	= { {id="�� t�m ���c Gia Lu�t H�ng C�",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200033_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200033_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200033_g_MissionId) > 0)  then
		-- �����ng����ngT�i ����,�ټ����ng����ng,�����ng�Ϳ���ֱHo�n t�t nhi�m v�,^_^
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --����������ng����
			-- �����T�n,��ȫ �i�m �i�m
			if GetName(sceneId, targetId) == x200033_g_Name  then
		    BeginEvent(sceneId)
				AddText(sceneId,x200033_g_MissionName)
				AddText(sceneId,x200033_g_MissionComplete)
				AddMoneyBonus( sceneId, x200033_g_MoneyBonus )
		    EndEvent( )
		    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200033_g_ScriptId,x200033_g_MissionId)
			end
		end
	
	--Th�a m�n�����������
	elseif x200033_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
		AddText(sceneId,x200033_g_MissionName)
		AddText(sceneId,x200033_g_MissionInfo)
		AddText(sceneId,"#{M_MUBIAO}#r")
		AddText(sceneId,x200033_g_MissionTarget)
		AddText(sceneId,"#{M_SHOUHUO}#r")
		AddMoneyBonus( sceneId, x200033_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200033_g_ScriptId,x200033_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x200033_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200033_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200033_g_MissionId) > 0 then
		--C�n T�i �����ſ���
		local sceneType = LuaFnGetSceneType(sceneId) ;
		if sceneType == 1 then --����������ng����
			AddNumText(sceneId, x200033_g_ScriptId,x200033_g_MissionName,2,-1);
		end
		
	--Th�a m�n�����������
	elseif x200033_CheckAccept(sceneId,selfId) > 0 then	
		AddNumText(sceneId,x200033_g_ScriptId,x200033_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200033_CheckAccept( sceneId, selfId )
	--�ж�����
	--1,ǰ���������
	if IsMissionHaveDone(sceneId,selfId,x200033_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200033_g_MissionId) > 0  then
		return 0
	end
	
	--2,��c�p�ﵽ20
	if GetLevel(sceneId, selfId) < x200033_g_MissionLevel   then
		return 0
	end

	--3,��������ng����
	local sceneType = LuaFnGetSceneType(sceneId) ;
	if sceneType == 1 then --����������ng����
		return 0
	end
	
	return 1
end


--**********************************
--Ti�p th�
--**********************************
function x200033_OnAccept( sceneId, selfId, targetId )

	if x200033_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200033_g_MissionId, x200033_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: B�y m�u t�nh k�",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200033_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
end

--**********************************
--����
--**********************************
function x200033_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200033_g_MissionId )
end

--**********************************
--����
--**********************************
function x200033_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200033_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x200033_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- �����ύto� � �����ж�
	-- 1,��C�i n�y ����,
	if( IsHaveMission(sceneId,selfId,x200033_g_MissionId) > 0)  then
		--���������
		AddMoney(sceneId,selfId,x200033_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200033_g_exp)

		DelMission( sceneId,selfId,  x200033_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200033_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: B�y m�u t�nh k�",MSG2PLAYER_PARA )

		-- ���ú�������
		CallScriptFunction((200035), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x200033_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--���������¼�
--**********************************
function x200033_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200033_OnItemChanged( sceneId, selfId, itemdataId )
	
end

