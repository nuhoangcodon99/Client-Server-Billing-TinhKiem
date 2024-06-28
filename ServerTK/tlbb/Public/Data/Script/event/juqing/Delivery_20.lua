-- 200090 
-- �������� 

--MisDescBegin

--�ű���
x200090_g_ScriptId = 200090

--�����
x200090_g_MissionId = 20

--ǰ������
x200090_g_PreMissionId = 19

--Ti�p th�����NPC����
x200090_g_Position_X=307
x200090_g_Position_Z=343
x200090_g_SceneID=0
x200090_g_AccomplishNPC_Name="T� Kinh L�i"

--Ŀ��NPC
x200090_g_Name	="T� Kinh L�i"

--�������
x200090_g_MissionKind = 47

--��ng c�p nhi�m v� 
x200090_g_MissionLevel = 40

--��ng����ngTinhӢ����
x200090_g_IfMissionElite = 0

--������
x200090_g_MissionName="T� Hi�n Trang"
x200090_g_MissionInfo="#{Mis_juqing_0020}"
x200090_g_MissionTarget="#{Mis_juqing_Tar_0020}"
x200090_g_MissionComplete="  N�u hai v� cao t�ng Huy�n N�n ��i s� v� Huy�n T�ch ��i s� �n T� Hi�n Trang, Th� th� anh h�ng thi�n h� s� kh�ng c�n l� r�n kh�ng �u r�i. $N, �a t� ng߽i. N�u g�n ��y ng߽i kh�ng b�n vi�c, c� th� c�ng anh h�ng trong T� Hi�n Trang giao k�t m�t phen"

x200090_g_MoneyBonus=5400
x200090_g_exp=5400

x200090_g_Custom	= { {id="�� t�m ���c T� Kinh L�i",num=1} }
x200090_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x200090_OnDefaultEvent( sceneId, selfId, targetId )
	
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200090_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200090_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200090_g_Name then
			x200090_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x200090_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200090_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200090_g_MissionName)
				AddText(sceneId,x200090_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200090_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200090_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200090_g_ScriptId,x200090_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x200090_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200090_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200090_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200090_g_Name then
			AddNumText(sceneId, x200090_g_ScriptId,x200090_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x200090_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200090_g_Name then
			AddNumText(sceneId,x200090_g_ScriptId,x200090_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200090_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x200090_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel( sceneId, selfId ) < x200090_g_MissionLevel then
		return 0
	end
	
	-- ǰ������to� � ������
	if IsMissionHaveDone(sceneId,selfId,x200090_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1	
end

--**********************************
--Ti�p th�
--**********************************
function x200090_OnAccept( sceneId, selfId, targetId )
	if x200090_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200090_g_MissionId, x200090_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: T� Hi�n Trang",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200090_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--����
--**********************************
function x200090_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200090_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200090_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200090_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200090_g_MissionName)
		AddText(sceneId,x200090_g_MissionComplete)
		AddMoneyBonus( sceneId, x200090_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200090_g_ScriptId,x200090_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200090_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200090_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200090_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200090_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId,x200090_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200090_g_exp)
		DelMission( sceneId,selfId,  x200090_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x200090_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: T� Hi�n Trang",MSG2PLAYER_PARA )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200090_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x200090_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200090_OnItemChanged( sceneId, selfId, itemdataId )
end
