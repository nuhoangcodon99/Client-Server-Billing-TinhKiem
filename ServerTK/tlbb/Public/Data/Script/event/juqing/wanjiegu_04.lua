-- �������񡪡���ٹ�  ���������ŵ�������
-- ʯ�ҵ�->������

--MisDescBegin
--�ű���
x200004_g_ScriptId = 200004

--�����
x200004_g_MissionId = 4

--ǰ������
x200004_g_PreMissionId = 3

--��m�t c�i����to� � ID
--g_MissionIdPre = 

--Ŀ��NPC
x200004_g_Name	="�o�n Ch�nh Thu�n"

--�������
x200004_g_MissionKind = 51

--��ng c�p nhi�m v� 
x200004_g_MissionLevel = 20

--��ng����ngTinhӢ����
x200004_g_IfMissionElite = 0

--Ti�p th�����NPC����
x200004_g_Position_X=189
x200004_g_Position_Z=94
x200004_g_SceneID=2
x200004_g_AccomplishNPC_Name="�o�n Ch�nh Thu�n"

--������
x200004_g_MissionName="�c Qu�n M�n Doanh"
x200004_g_MissionInfo="#{Mis_juqing_0004}"
x200004_g_MissionTarget="#{Mis_juqing_Tar_0004}"
x200004_g_MissionComplete="  N�y, n�y, ta l�p t�c th�ng b�o vi�c n�y cho ho�ng huynh"

x200004_g_MoneyBonus=7200
x200004_g_exp=6900

x200004_g_RadioItemBonus={{id=10414001 ,num=1},{id=10414002,num=1},{id=10414003,num=1},{id=10414004,num=1}}

x200004_g_Custom	= { {id="�� t�m ���c �o�n Ch�nh Thu�n",num=1} }

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x200004_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200004_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200004_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200004_g_Name then
			x200004_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x200004_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200004_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
			AddText(sceneId,x200004_g_MissionName)
			AddText(sceneId,x200004_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200004_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200004_g_MoneyBonus )
			for i, item in x200004_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200004_g_ScriptId,x200004_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x200004_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200004_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200004_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200004_g_Name then
			AddNumText(sceneId, x200004_g_ScriptId,x200004_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x200004_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200004_g_Name then
			AddNumText(sceneId,x200004_g_ScriptId,x200004_g_MissionName,1,-1);
		end
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x200004_CheckAccept( sceneId, selfId )
	--C�n 3c�p���ܽ�
	if GetLevel( sceneId, selfId ) < 20 then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200004_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1	
end

--**********************************
--Ti�p th�
--**********************************
function x200004_OnAccept( sceneId, selfId, targetId )
	if x200004_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200004_g_MissionId, x200004_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: �c Qu�n M�n Doanh",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200004_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
end

--**********************************
--����
--**********************************
function x200004_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200004_g_MissionId )
--	--CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200004_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200004_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200004_g_MissionName)
		AddText(sceneId,x200004_g_MissionComplete)
		AddMoneyBonus( sceneId, x200004_g_MoneyBonus )
		for i, item in x200004_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200004_g_ScriptId,x200004_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200004_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200004_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200004_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200004_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
  	BeginAddItem(sceneId)
		for i, item in x200004_g_RadioItemBonus do
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

		--���������
		AddMoney(sceneId,selfId,x200004_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200004_g_exp)

		DelMission( sceneId,selfId,  x200004_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200004_g_MissionId )
		Msg2Player( sceneId, selfId,"#YHo�n t�t nhi�m v�#W: �c Qu�n M�n Doanh",MSG2PLAYER_PARA )
		
		-- ���ú�������
		CallScriptFunction((200002), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200004_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x200004_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200004_OnItemChanged( sceneId, selfId, itemdataId )
end
