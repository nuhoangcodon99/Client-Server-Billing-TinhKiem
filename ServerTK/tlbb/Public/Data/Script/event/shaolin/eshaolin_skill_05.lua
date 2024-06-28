--x212144_g_ScriptId = 212144
-- ��˳�ʳ

-- ��5Gѧ����

--MisDescBegin

--�ű���
x212144_g_ScriptId = 212144

--��������NPC����
x212144_g_Position_X=217
x212144_g_Position_Z=255
x212144_g_SceneID=2
x212144_g_AccomplishNPC_Name="V߽ng Thi�u "

--�����
x212144_g_MissionId = 966

--ǰ������
x212144_g_PreMissionId = 965

--Ŀ��NPC
x212144_g_Name	="V߽ng Thi�u "

--�������
x212144_g_MissionKind = 20

--����ȼ�
x212144_g_MissionLevel = 30

--�Ƿ��Ǿ�Ӣ����
x212144_g_IfMissionElite = 0

--������
x212144_g_MissionName="Di�t th� tri�u th�c"
x212144_g_MissionInfo="#{Mis_shaolin_966}"
x212144_g_MissionTarget="  Mang 5 v�ng �n Tu V�n ��i � th�nh ��i L�#W giao cho #RV߽ng Thi�u #W#{_INFOAIM217,255,2, V߽ng Thi�u}. "
x212144_g_MissionContinue="  C�c h� quy�t �nh mu�n h�c k� n�ng \"Di�t Th� Tri�u Th�c\" kh�ng ?"
x212144_g_MissionComplete="  Nh�n k� ��y, chi�u n�y s� truy�n cho ng߽i, sau n�y ph�i s� d�ng cho t�t nh�."

x212144_g_MoneyBonus=1000
x212144_g_exp=2000

--x212144_g_Custom	= { {id="",num=1} }
x212144_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212144_OnDefaultEvent( sceneId, selfId, targetId )
	
	--��������ɹ��������
	if (IsMissionHaveDone(sceneId,selfId,x212144_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212144_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212144_g_Name then
			x212144_OnContinue( sceneId, selfId, targetId )
		end
	
	--���������������
	elseif x212144_CheckAccept(sceneId,selfId) > 0 then
		--�����������ʱ��ʾ����Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212144_g_MissionName)
			AddText(sceneId,x212144_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x212144_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x212144_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x212144_g_ScriptId,x212144_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x212144_OnEnumerate( sceneId, selfId, targetId )
	--��������ɹ��������
	if IsMissionHaveDone(sceneId,selfId,x212144_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x212144_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212144_g_Name then
			AddNumText(sceneId, x212144_g_ScriptId,x212144_g_MissionName,2,-1);
		end
	--���������������
	elseif x212144_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x212144_g_ScriptId,x212144_g_MissionName,1,-1);
	end

end

--**********************************
--����������
--**********************************
function x212144_CheckAccept( sceneId, selfId )
	-- 1���������ǲ����Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x212144_g_MissionId) > 0 ) then
		return 0
	end
		
	-- �ȼ����
	if GetLevel( sceneId, selfId ) < x212144_g_MissionLevel then
		return 0
	end
	
	-- ���������ұ����������ɵ�
	if GetMenPai(sceneId, selfId) ~= 0  then
		return 0
	end
	
	-- ǰ�������������
	if IsMissionHaveDone(sceneId,selfId,x212144_g_PreMissionId) < 1  then
		return 0
	end
	return 1
end

--**********************************
--����
--**********************************
function x212144_OnAccept( sceneId, selfId, targetId )
	if x212144_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x212144_g_MissionId, x212144_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#Y Ti�p nh�n nhi�m v�: Di�t Th� Tri�u Th�c",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x212144_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--����
--**********************************
function x212144_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧ������
  DelMission( sceneId, selfId, x212144_g_MissionId )
end

--**********************************
--����
--**********************************
function x212144_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱ��˵����Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x212144_g_MissionName)
		AddText(sceneId,x212144_g_MissionComplete)
		AddMoneyBonus( sceneId, x212144_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x212144_g_ScriptId,x212144_g_MissionId)
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x212144_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212144_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	if GetMoney(sceneId, selfId) < 50000   then
		return 2
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x212144_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if x212144_CheckSubmit( sceneId, selfId, selectRadioId ) == 2 then
    BeginEvent(sceneId)
			AddText(sceneId,"C�c h� kh�ng c� �� ti�n m�t � ho�n th�nh nhi�m v� n�y.")
    EndEvent( )
    DispatchMissionTips(sceneId,selfId)
		return
	end
	
	if x212144_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		-- �۳����5��G
		if CostMoney(sceneId, selfId, 50000)  == 1  then
			--���������
			AddMoney(sceneId,selfId,x212144_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId,x212144_g_exp)
			
			-- �������ǲ��Ƕ�ü�ɵĵ���
			if GetMenPai(sceneId, selfId) == 0  then
				-- ���������304�ż���
				AddSkill(sceneId, selfId, 304)
		    BeginEvent(sceneId)
					AddText(sceneId,"C�c h� �� h�c ���c k� n�ng \"Di�t Th� Tri�u Th�c\"")
		    EndEvent( )
		    DispatchMissionTips(sceneId,selfId)
			end
			
			DelMission( sceneId,selfId,  x212144_g_MissionId )
			--���������Ѿ�����ɹ�
			MissionCom( sceneId,selfId,  x212144_g_MissionId )
			Msg2Player(  sceneId, selfId,"#Y Ho�n th�nh nhi�m v�: Di�t Th� Tri�u Th�c",MSG2PLAYER_PARA )
			
			-- ���ú�������
			CallScriptFunction((200087), "OnDefaultEvent",sceneId, selfId, targetId )
		
		else
	    BeginEvent(sceneId)
				AddText(sceneId,"Kh�u tr� ti�n m�t c� sai s�t")
	    EndEvent( )
	    DispatchMissionTips(sceneId,selfId)
			return
		end
	end
end

--**********************************
--ɱ����������
--**********************************
function x212144_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x212144_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212144_OnItemChanged( sceneId, selfId, itemdataId )
	
end
