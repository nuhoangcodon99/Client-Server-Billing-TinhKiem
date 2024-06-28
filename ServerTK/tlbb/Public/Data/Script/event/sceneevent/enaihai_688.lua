-- ��������
-- ʯ�ҵ� -> Ҷ����

--MisDescBegin
--�ű���
x212114_g_ScriptId = 212114

--�����
x212114_g_MissionId = 688

--ǰ������
x212114_g_PreMissionId = 687

--Ŀ��NPC
x212114_g_Name	="Di�p L�u Ph�m"

--�������
x212114_g_MissionKind = 45

--��ng c�p nhi�m v� 
x212114_g_MissionLevel = 82

--��ng����ngTinhӢ����
x212114_g_IfMissionElite = 0

--������
x212114_g_MissionName="V�t m�u th� 2"
x212114_g_MissionInfo="#{Mis_S_Nanhai_1010193}"
x212114_g_MissionTarget="  Mang #YHuy�t y#W t�ng cho #RDi�p L�u Ph�m#W � #GNam H�i Ki�m Ph� #W#{_INFOAIM115,58,34, L�u Di�p Ph�m}. "
x212114_g_MissionContinue="  C�c h� t�m ta c� vi�c g�?"
x212114_g_MissionComplete="  T�m... T�m huy�t y n�y d߶ng nh� l� y trang c�a Nam Chi�u B�ch Mi�u Nh�n"

x212114_g_MoneyBonus=36900
x212114_g_exp=35000

x212114_g_Custom	= { {id="�� ��t ���c t�m huy�t y",num=1} }
x212114_g_IsMissionOkFail = 0

--MisDescEnd

--**********************************
--������ں���
--**********************************
function x212114_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x212114_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212114_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212114_g_Name then
			x212114_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x212114_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212114_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x212114_g_MissionName)
				AddText(sceneId,x212114_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x212114_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x212114_g_MoneyBonus )
				AddRadioItemBonus( sceneId, 10420074, 1 )
				AddRadioItemBonus( sceneId, 10410076, 1 )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x212114_g_ScriptId,x212114_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x212114_OnEnumerate( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212114_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x212114_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212114_g_Name then
			AddNumText(sceneId, x212114_g_ScriptId,x212114_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x212114_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212114_g_Name then
			AddNumText(sceneId,x212114_g_ScriptId,x212114_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x212114_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x212114_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel( sceneId, selfId ) < x212114_g_MissionLevel then
		return 0
	end
	
	-- ǰ������to� � ������
	if IsMissionHaveDone(sceneId,selfId,x212114_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1	
end

--**********************************
--Ti�p th�
--**********************************
function x212114_OnAccept( sceneId, selfId, targetId )
	if x212114_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	-- ���������Ʒ
	BeginAddItem( sceneId )
		AddItem( sceneId, 40002075, 1 )
	local ret = EndAddItem( sceneId, selfId )

	if ret <= 0 then 
		--��ʾ���ܽ�������
		Msg2Player(  sceneId, selfId,"#Yh�nh Trang nhi�m v�#W c�a c�c h� �� �y", MSG2PLAYER_PARA )
	else
		--������������б�
		local ret = AddMission( sceneId,selfId, x212114_g_MissionId, x212114_g_ScriptId, 0, 0, 0 )
		if ret <= 0 then
			Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
			return
		end

		AddItemListToHuman(sceneId,selfId)
		Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: v�t m�u th� 2",MSG2PLAYER_PARA )
		BeginEvent(sceneId)
			strText = "#YNh�n nhi�m v�#W: v�t m�u th� 2"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		local misIndex = GetMissionIndexByID(sceneId,selfId,x212114_g_MissionId)
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
		SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
	end
	
end

--**********************************
--����
--**********************************
function x212114_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x212114_g_MissionId )
	DelItem( sceneId, selfId, 40002075, 1 )	
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x212114_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x212114_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
  BeginEvent(sceneId)
	AddText(sceneId,x212114_g_MissionName)
	AddText(sceneId,x212114_g_MissionComplete)
	AddMoneyBonus( sceneId, x212114_g_MoneyBonus )
	AddRadioItemBonus( sceneId, 10420074, 1 )
	AddRadioItemBonus( sceneId, 10410076, 1 )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212114_g_ScriptId,x212114_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212114_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212114_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x212114_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if x212114_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		-- ��ӽ�����Ʒ
		BeginAddItem(sceneId)
			AddItem( sceneId, selectRadioId, 1 )
		local ret = EndAddItem(sceneId,selfId)
		
		if ret > 0  then
			-- ɾ��������Ʒ
			DelItem( sceneId, selfId, 40002075, 1 )	

			--���������
			AddItemListToHuman(sceneId,selfId)			
			AddMoney(sceneId,selfId, x212114_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId, x212114_g_exp)
			
			--���������Ѿ�����ɹ�
			DelMission( sceneId,selfId,  x212114_g_MissionId )
			MissionCom( sceneId,selfId,  x212114_g_MissionId )
	
			Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�#W: v�t m�u th� 2",MSG2PLAYER_PARA )
			
			-- ���ú�������
			CallScriptFunction((200081), "OnDefaultEvent",sceneId, selfId, targetId )
			
			-- �ύ�����,ˢ2��,3c�i�ֳ���,��ʧʱ��30 gi�y
			local nNpcId
			nNpcId = LuaFnCreateMonster(sceneId, 823, 118, 55, 0, 0, -1)
			SetCharacterDieTime(sceneId, nNpcId, 30000)
			
			nNpcId = LuaFnCreateMonster(sceneId, 821, 115, 54, 0, 0, -1)
			SetCharacterDieTime(sceneId, nNpcId, 30000)
			nNpcId = LuaFnCreateMonster(sceneId, 821, 114, 52, 0, 0, -1)
			SetCharacterDieTime(sceneId, nNpcId, 30000)
			
		else
			--������û�мӳɹ�
			BeginEvent(sceneId)
				AddText(sceneId, "Nhi�m v� th�t b�i!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		
		end
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x212114_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x212114_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212114_OnItemChanged( sceneId, selfId, itemdataId )
end
