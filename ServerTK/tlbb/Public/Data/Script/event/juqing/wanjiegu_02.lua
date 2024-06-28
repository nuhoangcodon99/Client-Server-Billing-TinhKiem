--��������
--��ٹ�,����
-- ���T�i ��ٹ�    �Ӹ�����ͷto� � ��������������,��������ͷ�Ͷ��������

--************************************************************************
--MisDescBegin
--�ű���
x200002_g_ScriptId = 200002

--�����
x200002_g_MissionId = 5

--ǰ�������
x200002_g_PreMissionId = 4

--Ŀ��NPC
x200002_g_Name = "�o�n Ch�nh Thu�n"

--Ti�p th�����NPC����
x200002_g_Position_X=193
x200002_g_Position_Z=110
x200002_g_SceneID=2
x200002_g_AccomplishNPC_Name="Hoa H�ch C�n"

--��ng����ngTinhӢ����
x200002_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200002_g_MissionLevel = 20

--�������
x200002_g_MissionKind = 51

--�����ı�����
x200002_g_MissionName="G�p nhau t�i V�n Ki�p C�c"
x200002_g_MissionInfo="#{Mis_juqing_0005}"
x200002_g_MissionTarget="#{Mis_juqing_Tar_0005}"	--M�c ti�u nhi�m v�
x200002_g_MissionComplete="  $N, c�c h� r�t cu�c �� �n r�i, ch�ng ta �� ��i c�c h� �� l�u r�i. "	--Ho�n t�t nhi�m v�npc˵��to� � ��

x200002_g_MoneyBonus=1800
x200002_g_exp=1500

x200002_g_Custom	= { {id="�� t�m ���c �o�n Ch�nh Thu�n",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200002_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200002_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200002_g_MissionId) > 0)  then
		-- �����ng����ngT�i ����,�ټ����ng����ng,�����ng�Ϳ���ֱHo�n t�t nhi�m v�,^_^
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --����������ng����
			-- �����T�n,��ȫ �i�m �i�m
			if GetName(sceneId, targetId) == x200002_g_Name  then
		    BeginEvent(sceneId)
				AddText(sceneId,x200002_g_MissionName)
				AddText(sceneId,x200002_g_MissionComplete)
				AddMoneyBonus( sceneId, x200002_g_MoneyBonus )
		    EndEvent( )
		    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200002_g_ScriptId,x200002_g_MissionId)
			end
		end
	
	--Th�a m�n�����������
	elseif x200002_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200002_g_MissionName)
			AddText(sceneId,x200002_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200002_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200002_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200002_g_ScriptId,x200002_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x200002_OnEnumerate( sceneId, selfId, targetId )
	
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200002_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200002_g_MissionId) > 0 then
		--C�n T�i �����ſ���
		local sceneType = LuaFnGetSceneType(sceneId) ;
		if sceneType == 1 then --����������ng����
			AddNumText(sceneId, x200002_g_ScriptId,x200002_g_MissionName,2,-1);
		end
		
	--Th�a m�n�����������
	elseif x200002_CheckAccept(sceneId,selfId) > 0 then	
		AddNumText(sceneId,x200002_g_ScriptId,x200002_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200002_CheckAccept( sceneId, selfId )
	--�ж�����
	--1,ǰ���������
	if IsMissionHaveDone(sceneId,selfId,x200002_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200002_g_MissionId) > 0  then
		return 0
	end
	
	--2,��c�p�ﵽ20
	if GetLevel(sceneId, selfId) < 20   then
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
function x200002_OnAccept( sceneId, selfId, targetId )

	if x200002_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200002_g_MissionId, x200002_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: G�p nhau t�i V�n Ki�p C�c",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200002_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
end

--**********************************
--����
--**********************************
function x200002_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200002_g_MissionId )
end

--**********************************
--����
--**********************************
function x200002_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200002_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x200002_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- �����ύto� � �����ж�
	-- 1,��C�i n�y ����,
	if( IsHaveMission(sceneId,selfId,x200002_g_MissionId) > 0)  then
		AddMoney(sceneId,selfId,x200002_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200002_g_exp)

		DelMission( sceneId, selfId,  x200002_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId, selfId, x200002_g_MissionId )
		Msg2Player( sceneId, selfId, "#YHo�n t�t nhi�m v�#W: G�p nhau t�i V�n Ki�p C�c",MSG2PLAYER_PARA )
		
		-- ���ú�������
		CallScriptFunction((200006), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200002_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--���������¼�
--**********************************
function x200002_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200002_OnItemChanged( sceneId, selfId, itemdataId )
	
end

