-- ������� ���Ǻ� ����>������to� �  ���Ǻ�
-- 200041

--************************************************************************
--MisDescBegin
--�ű���
x200041_g_ScriptId = 200041

--�����
x200041_g_MissionId = 34

--ǰ�������
x200041_g_PreMissionId = 33

--Ti�p th�����NPC����
x200041_g_Position_X=152
x200041_g_Position_Z=153
x200041_g_SceneID=14
x200041_g_AccomplishNPC_Name="Ph�m B�ch Linh"

--Ŀ��NPC
x200041_g_Name = "T� Tinh H�"

--��ng����ngTinhӢ����
x200041_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200041_g_MissionLevel = 60

--�������
x200041_g_MissionKind = 53

--�����ı�����
x200041_g_MissionName="T�nh h�u qu� �m"
x200041_g_MissionInfo="#{Mis_juqing_0034}"
x200041_g_MissionTarget="#{Mis_juqing_Tar_0034}"
x200041_g_MissionComplete="  T�i h� cung h�u �� l�u r�i, m�i ��i hi�p ng�i v�o c�"

x200041_g_MoneyBonus=7200
x200041_g_exp=6800

x200041_g_RadioItemBonus={{id=10415008 ,num=1},{id=10415009,num=1},{id=10415010,num=1},{id=10415011,num=1}}

x200041_g_Custom	= { {id="�� t�m ���c T� Tinh H�",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200041_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200041_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200041_g_MissionId) > 0)  then
		-- �����ng����ngT�i ����,�ټ����ng����ng,�����ng�Ϳ���ֱHo�n t�t nhi�m v�,^_^
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --����������ng����
			-- �����T�n,��ȫ �i�m �i�m
			if GetName(sceneId, targetId) == x200041_g_Name  then
		    BeginEvent(sceneId)
				AddText(sceneId,x200041_g_MissionName)
				AddText(sceneId,x200041_g_MissionComplete)
				AddMoneyBonus( sceneId, x200041_g_MoneyBonus )
				for i, item in x200041_g_RadioItemBonus do
					AddRadioItemBonus( sceneId, item.id, item.num )
				end
		    EndEvent( )
		    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200041_g_ScriptId,x200041_g_MissionId)
			end
		end
	
	--Th�a m�n�����������
	elseif x200041_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200041_g_MissionName)
			AddText(sceneId,x200041_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200041_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200041_g_MoneyBonus )
			for i, item in x200041_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200041_g_ScriptId,x200041_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x200041_OnEnumerate( sceneId, selfId, targetId )
	
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200041_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200041_g_MissionId) > 0 then
		--C�n T�i �����ſ���
		local sceneType = LuaFnGetSceneType(sceneId)
		if sceneType == 1 then --����������ng����
			AddNumText(sceneId, x200041_g_ScriptId,x200041_g_MissionName,2,-1);
		end
		
	--Th�a m�n�����������
	elseif x200041_CheckAccept(sceneId,selfId) > 0 then	
		AddNumText(sceneId,x200041_g_ScriptId,x200041_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200041_CheckAccept( sceneId, selfId )
	--�ж�����
	--1,ǰ���������
	if IsMissionHaveDone(sceneId,selfId,x200041_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200041_g_MissionId) > 0  then
		return 0
	end
	
	--2,��c�p�ﵽ60
	if GetLevel(sceneId, selfId) < 60   then
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
function x200041_OnAccept( sceneId, selfId, targetId )

	if x200041_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200041_g_MissionId, x200041_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: T�nh h�u qu� �m",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200041_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
end

--**********************************
--����
--**********************************
function x200041_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200041_g_MissionId )
end

--**********************************
--����
--**********************************
function x200041_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200041_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x200041_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- �����ύto� � �����ж�
	-- 1,��C�i n�y ����,
	if( IsHaveMission(sceneId,selfId,x200041_g_MissionId) > 0)  then
  	BeginAddItem(sceneId)
		for i, item in x200041_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		--���������
		if ret < 1 then
			--������û�мӳɹ�
			BeginEvent(sceneId)
				strText = "Kh�ng th� Ho�n t�t nhi�m v�"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		AddItemListToHuman(sceneId,selfId)

		AddMoney(sceneId,selfId,x200041_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200041_g_exp)
		
		DelMission( sceneId,selfId,  x200041_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200041_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�#W: T�nh h�u qu� �m",MSG2PLAYER_PARA )
		
		LuaFnSetCopySceneData_Param(sceneId, 8, 1)
		LuaFnSetCopySceneData_Param(sceneId, 10, 0)
		LuaFnSetCopySceneData_Param(sceneId, 20, selfId)
		
		-- ���ú�������
		CallScriptFunction((200042), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x200041_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--���������¼�
--**********************************
function x200041_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200041_OnItemChanged( sceneId, selfId, itemdataId )
	
end



