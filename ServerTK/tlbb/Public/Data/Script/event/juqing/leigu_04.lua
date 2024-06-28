-- ������ս 200043

-- ���������ŵ�������,(ͬm�t c�iNPC)

--************************************************************************
--MisDescBegin
--�ű���
x200043_g_ScriptId = 200043

--�����
x200043_g_MissionId = 36

--ǰ�������
x200043_g_PreMissionId = 35

--M�c ti�u nhi�m v�NPC����
x200043_g_Position_X=125
x200043_g_Position_Z=144
x200043_g_SceneID=14
x200043_g_AccomplishNPC_Name="T� Tinh H�"

--Ŀ��NPC
x200043_g_Name = "T� Tinh H�"

--��ng����ngTinhӢ����
x200043_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200043_g_MissionLevel = 60

--�������
x200043_g_MissionKind = 53

--�����ı�����
x200043_g_MissionName="Ch�n ng�y t�i chi�n"
x200043_g_MissionInfo="#{Mis_juqing_0036}"
x200043_g_MissionTarget="#{Mis_juqing_Tar_0036}"	--M�c ti�u nhi�m v�
x200043_g_MissionComplete="  C�c h� r�t cu�c �� �n r�i, h�y mau �i chu�n b� �i, tr�n chi�n v�i �inh Xu�n Thu l�n n�y, Hung hi�m v� b�"	--Ho�n t�t nhi�m v�npc˵��to� � ��

x200043_g_MoneyBonus=8100
x200043_g_exp=8000

x200043_g_Custom	= { {id="�� t�m ���c T� Tinh H�",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200043_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200043_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200043_g_MissionId) > 0)  then
		-- �����ng����ngT�i ����,�ټ����ng����ng,�����ng�Ϳ���ֱHo�n t�t nhi�m v�,^_^
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType ~= 1 then --�������Ͳ���ng����
			-- �����T�n,��ȫ �i�m �i�m
			if GetName(sceneId, targetId) == x200043_g_Name  then
		    BeginEvent(sceneId)
				AddText(sceneId,x200043_g_MissionName)
				AddText(sceneId,x200043_g_MissionComplete)
				AddMoneyBonus( sceneId, x200043_g_MoneyBonus )
		    EndEvent()
		    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200043_g_ScriptId,x200043_g_MissionId)
			end
		end
	
	--Th�a m�n�����������
	elseif x200043_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200043_g_MissionName)
			AddText(sceneId,x200043_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200043_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200043_g_MoneyBonus )
		EndEvent()
		DispatchMissionInfo(sceneId,selfId,targetId,x200043_g_ScriptId,x200043_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x200043_OnEnumerate( sceneId, selfId, targetId )
	
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200043_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200043_g_MissionId) > 0 then
		--C�n T�i �����ſ���
		local sceneType = LuaFnGetSceneType(sceneId)
		if sceneType ~= 1 then --����������ng����
			AddNumText(sceneId, x200043_g_ScriptId,x200043_g_MissionName,2,-1);
		end
		
	--Th�a m�n�����������
	elseif x200043_CheckAccept(sceneId,selfId) > 0 then	
		AddNumText(sceneId,x200043_g_ScriptId,x200043_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200043_CheckAccept( sceneId, selfId )
	--�ж�����
	--1,ǰ���������
	if IsMissionHaveDone(sceneId,selfId,x200043_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200043_g_MissionId) > 0  then
		return 0
	end
	
	--2,��c�p�ﵽ60
	if GetLevel(sceneId, selfId) < 60   then
		return 0
	end

	--3,��������ng����
	local sceneType = LuaFnGetSceneType(sceneId) ;
	if sceneType == 1 then --����������ng����
		return 1
	else 
		return 0
	end
	
	return 1
end


--**********************************
--Ti�p th�
--**********************************
function x200043_OnAccept( sceneId, selfId, targetId )

	if x200043_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200043_g_MissionId, x200043_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Ch�n ng�y t�i chi�n",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200043_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)

end

--**********************************
--����
--**********************************
function x200043_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200043_g_MissionId )
end

--**********************************
--����
--**********************************
function x200043_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200043_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x200043_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- �����ύto� � �����ж�
	-- 1,��C�i n�y ����,
	if( IsHaveMission(sceneId,selfId,x200043_g_MissionId) > 0)  then
		AddMoney(sceneId,selfId,x200043_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200043_g_exp)
		
		DelMission( sceneId,selfId,  x200043_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200043_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�#W: Ch�n ng�y t�i chi�n",MSG2PLAYER_PARA )

		-- ���ú�������
		CallScriptFunction((200045), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x200043_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--���������¼�
--**********************************
function x200043_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200043_OnItemChanged( sceneId, selfId, itemdataId )
	
end



