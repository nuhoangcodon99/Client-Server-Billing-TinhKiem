--��������
--����Ѱ�ұ���
--MisDescBegin
--�ű���
x224900_g_ScriptId = 224900

--�����
x224900_g_MissionId = 1084

--��һ�������ID
--g_MissionIdPre = 

--Ŀ��NPC
x224900_g_Name	="B�n Ph�m "

--�������
x224900_g_MissionKind = 24

--����ȼ�
x224900_g_MissionLevel = 10

--�Ƿ��Ǿ�Ӣ����
x224900_g_IfMissionElite = 0

--������
x224900_g_MissionName="Chi�n �u v� s� m�n"
x224900_g_MissionInfo="#{event_tianlong_0001}"
x224900_g_MissionTarget="    � Thi�n Long T� t�m �n B�n Ph�m #{_INFOAIM95,88,13, B�n Ph�m}."
x224900_g_MissionComplete="  C�c h� l� �ng m�n m�i �n ph�i kh�ng. C�c h� l�m tuy�t l�m. Ta � ��y c� nhi�u vi�c c�n c�c h� gi�p ��"
x224900_g_MoneyBonus=800

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x224900_OnDefaultEvent( sceneId, selfId, targetId )
    --��������ɹ��������
    if (IsMissionHaveDone(sceneId,selfId,x224900_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x224900_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x224900_g_Name then
			x224900_OnContinue( sceneId, selfId, targetId )
		end
    --���������������
    elseif x224900_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x224900_g_Name then
			--�����������ʱ��ʾ����Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x224900_g_MissionName)
				AddText(sceneId,x224900_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x224900_g_MissionTarget)
				
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x224900_g_ScriptId,x224900_g_MissionId)
		end
    end
end

--**********************************
--�о��¼�
--**********************************
function x224900_OnEnumerate( sceneId, selfId, targetId )
	--��������ɹ��������
	if IsMissionHaveDone(sceneId,selfId,x224900_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x224900_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x224900_g_Name then
			AddNumText(sceneId, x224900_g_ScriptId,x224900_g_MissionName,2,-1);
		end
	--���������������
	elseif x224900_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x224900_g_Name then
			AddNumText(sceneId,x224900_g_ScriptId,x224900_g_MissionName,1,-1);
		end
    end
end

--**********************************
--����������
--**********************************
function x224900_CheckAccept( sceneId, selfId )
	local  MenPai = GetMenPai( sceneId, selfId)
	if	MenPai ~= 6 then
		return 0
	else
		return 1
	end
end

--**********************************
--����
--**********************************
function x224900_OnAccept( sceneId, selfId )
	--������������б�
	AddMission( sceneId,selfId, x224900_g_MissionId, x224900_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�: chi�n �u v� s� m�n",MSG2PLAYER_PARA )
end

--**********************************
--����
--**********************************
function x224900_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧ������
    DelMission( sceneId, selfId, x224900_g_MissionId )
end

--**********************************
--����
--**********************************
function x224900_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱ��˵����Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x224900_g_MissionName)
		AddText(sceneId,x224900_g_MissionComplete)
		
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x224900_g_ScriptId,x224900_g_MissionId)
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x224900_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x224900_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x224900_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x224900_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		AddMoney(sceneId,selfId,x224900_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, 800)
		ret = DelMission( sceneId, selfId, x224900_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x224900_g_MissionId )
			Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�: chi�n �u v� s� m�n",MSG2PLAYER_PARA )
		end
	end
end

--**********************************
--ɱ����������
--**********************************
function x224900_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x224900_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x224900_OnItemChanged( sceneId, selfId, itemdataId )
end
