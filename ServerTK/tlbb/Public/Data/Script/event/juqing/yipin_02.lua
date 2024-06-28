-- 200051 Y ti�u nh�n gian v�n s�
-- ����Thi�n S�nͯ������,��ʵֻ��ng��Ϸ,��������

--************************************************************************
--MisDescBegin
--�ű���
x200051_g_ScriptId = 200051

--�����
x200051_g_MissionId = 41

--ǰ�������
x200051_g_PreMissionId = 40

--Ŀ��NPC
x200051_g_Name = "H� Tr�c"

--��ng����ngTinhӢ����
x200051_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x200051_g_MissionLevel = 70

--�������
x200051_g_MissionKind = 49

--�����ı�����
x200051_g_MissionName="Y ti�u nh�n gian v�n s�"
x200051_g_MissionInfo="#{Mis_juqing_0041}"
x200051_g_MissionTarget="#{Mis_juqing_Tar_0041}"	--M�c ti�u nhi�m v�
x200051_g_MissionComplete="  Ch�ng ta mau r�i kh�i ��y, A di �� Ph�t, �c t�i �c t�i.."

x200051_g_MoneyBonus=9000
x200051_g_exp=17280

x200051_g_RadioItemBonus={{id=10415013 ,num=1},{id=10415014,num=1},{id=10415015,num=1}}

x200051_g_Custom	= { {id="Y ti�u nh�n gian v�n s�",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200051_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200051_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200051_g_MissionId) > 0)  then
		-- �����ng����ngT�i ����,�ټ����ng����ng,�����ng�Ϳ���ֱHo�n t�t nhi�m v�,^_^
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --����������ng����
			-- �����T�n,��ȫ �i�m �i�m
			if GetName(sceneId, targetId) == x200051_g_Name  then
		    BeginEvent(sceneId)
				AddText(sceneId,x200051_g_MissionName)
				AddText(sceneId,x200051_g_MissionComplete)
				AddMoneyBonus( sceneId, x200051_g_MoneyBonus )
		    EndEvent( )
				bDone = x200051_CheckSubmit( sceneId, selfId )
				DispatchMissionDemandInfo(sceneId,selfId,targetId,x200051_g_ScriptId,x200051_g_MissionId,bDone)
		    --DispatchMissionContinueInfo(sceneId,selfId,targetId,x200051_g_ScriptId,x200051_g_MissionId)
			end
		end
	
	--Th�a m�n�����������
	elseif x200051_CheckAccept(sceneId, selfId, targetId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200051_g_MissionName)
			AddText(sceneId,x200051_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200051_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200051_g_MoneyBonus )
			for i, item in x200051_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200051_g_ScriptId,x200051_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x200051_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200051_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200051_g_MissionId) > 0 then
		--C�n T�i �����ſ���
		if GetName(sceneId, targetId) == x200051_g_Name    then
			AddNumText(sceneId, x200051_g_ScriptId,x200051_g_MissionName,2,-1);
		end
		
	--Th�a m�n�����������
	elseif x200051_CheckAccept(sceneId,selfId,targetId) > 0 then	
		AddNumText(sceneId,x200051_g_ScriptId,x200051_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200051_CheckAccept( sceneId, selfId, targetId )
	--�ж�����
	--1,ǰ���������
	if IsMissionHaveDone(sceneId,selfId,x200051_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200051_g_MissionId) > 0  then
		return 0
	end
	
	--2,��c�p�ﵽ50
	if GetLevel(sceneId, selfId) < 70   then
		return 0
	end

	--�����ng����ngThi�n S�n аng L�o
	if GetName(sceneId, targetId) ~= "Thi�n S�n аng L�o"    then
		return 0
	end
	
	return 1
end


--**********************************
--Ti�p th�
--**********************************
function x200051_OnAccept( sceneId, selfId, targetId )

	if x200051_CheckAccept(sceneId, selfId, targetId) ~= 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200051_g_MissionId, x200051_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	Msg2Player(  sceneId, selfId,"#Ynh�n nhi�m v�#W: y ti�u nh�n gian v�n s�",MSG2PLAYER_PARA )

	-- ��������
	LuaFnSetCopySceneData_Param(sceneId, 8, 1)
	LuaFnSetCopySceneData_Param(sceneId, 10, 0)
	LuaFnSetCopySceneData_Param(sceneId, 20, selfId)
end

--**********************************
--��ʱ�¼�
--**********************************
function x200051_OnTimer(sceneId,selfId)
	
	if 1==1  then 
		return
	end

	-- ���ü�ʱ��,���ƾ���
	local misIndex = GetMissionIndexByID(sceneId, selfId, x200051_g_MissionId)-- �i�m������T�i 20c�i������to� � ���к�
	
	local bDone = GetMissionParam( sceneId,selfId,misIndex,0 )
	local NowTime = LuaFnGetCurrentTime()
	local OldTime = GetMissionParam( sceneId,selfId,misIndex,1 )

	local nSceneId = GetMissionParam( sceneId,selfId,misIndex,3 )
	if 	nSceneId ~= sceneId    then
		-- ����뿪��C�i n�y ����,�ر�֮
		StopMissionTimer(sceneId,selfId,x200051_g_MissionId)
		return
	end
	
	if bDone == 1   then
		-- �رռ�ʱ��
		StopMissionTimer(sceneId, selfId, x200051_g_MissionId)
		return
	end
	
	-- ����ʱ�����NPC��Ϊ
	if NowTime - OldTime > 10   then
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)
		BeginEvent(sceneId)
			AddText(sceneId,"Nhi�m v� ho�n th�nh 1/1");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end

end

--**********************************
--����
--**********************************
function x200051_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200051_g_MissionId )
end

--**********************************
--����
--**********************************
function x200051_OnContinue( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,x200051_g_MissionName)
		AddText(sceneId,x200051_g_MissionComplete)
		AddMoneyBonus( sceneId, x200051_g_MoneyBonus )
		for i, item in x200051_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x200051_g_ScriptId,x200051_g_MissionId)
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200051_CheckSubmit( sceneId, selfId )
	
	--1, ��ng����C�i n�y ����
	if IsHaveMission(sceneId,selfId,x200051_g_MissionId) < 1 then
		return 0;
	end
	
	--2, ��ng���Ѿ����C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200051_g_MissionId) > 0  then
		return 0;
	end
	
	--3,��c�p�ﵽ70
	if GetLevel(sceneId, selfId) < 70 then
		return 0;
	end

	--4,�����ض�to� � ����
	local bDone = LuaFnGetCopySceneData_Param( sceneId, 15 )
	if bDone ~= 1 then
		return 0
	end

	return 1
	
end

--**********************************
--�ύ
--**********************************
function x200051_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--1,�����ύto� � �����ж�
	if x200051_CheckSubmit( sceneId, selfId) == 1  then

		--2,��ng��������Ʒ
	  	BeginAddItem(sceneId)
			for i, item in x200051_g_RadioItemBonus do
				if item.id == selectRadioId then
					AddItem( sceneId,item.id, item.num )
				end
			end
		ret = EndAddItem(sceneId,selfId)

		if ret < 1 then
			--������û�мӳɹ�
			BeginEvent(sceneId)
				strText = "Kh�ng th� Ho�n t�t nhi�m v�"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end

		--3,ɾ������
		MissionCom( sceneId, selfId, x200051_g_MissionId )
		if DelMission( sceneId, selfId, x200051_g_MissionId ) ~= 1 then
			return
		end

		--4,���������
		AddItemListToHuman(sceneId,selfId)
		AddMoney(sceneId,selfId, x200051_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200051_g_exp)
		
		--5,��ʾ
		Msg2Player( sceneId, selfId, "#YHo�n t�t nhi�m v�#W: y ti�u nh�n gian v�n s�", MSG2PLAYER_PARA )

		--6,���ú�������
		CallScriptFunction((200052), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x200051_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--���������¼�
--**********************************
function x200051_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200051_OnItemChanged( sceneId, selfId, itemdataId )
	
end


