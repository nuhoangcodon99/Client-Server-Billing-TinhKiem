-- ������to� � �Ƿ����Ÿ�L�c D߽ngˢ����to� � �Ƿ�

--MisDescBegin
--�ű���
x200026_g_ScriptId = 200026

--�����
x200026_g_MissionId = 47

--ǰ������
x200026_g_PreMissionId = 21

--Ti�p th�����NPC����
x200026_g_Position_X=277
x200026_g_Position_Z=133
x200026_g_SceneID=0
x200026_g_AccomplishNPC_Name="Ti�u Phong"

--Ŀ��NPC
x200026_g_Name	="Ti�u Phong"

--�������
x200026_g_MissionKind = 47

--��ng c�p nhi�m v� 
x200026_g_MissionLevel = 40

--��ng����ngTinhӢ����
x200026_g_IfMissionElite = 0

--������
x200026_g_MissionName="K� sau g�p m�t"
x200026_g_MissionInfo="  $N, S� gi�p �� c�a c�c h�, Ki�u m� v� c�ng c�m k�ch. #rS�ng s�m ng�y mai Ki�u m� ph�i ��a A Ch�u t�i T� Hi�n Trang, M�i Ti�t Th�n Y tr� th߽ng gi�p c� ta. Nh�ng k� ti�u nh�n v� tri trong T� Hi�n Trang vu c�o b�a �t �i v�i Ki�u m� kh�ng c� g� l� kh�, nh�ng mu�n ra tay �� th߽ng ta, kh�ng ph�i l� d�. #r$N, s�ng s�m ng�y mai, c�a ��ng th�nh L�c D߽ng ch�ng ta g�p nhau!"
x200026_g_MissionTarget="  � g�n #G��ng m�n th�nh L�c D߽ng#W t�m#R Ti�u Phong #W#{_INFOAIM377,263,0, Ti�u Phong}. "
x200026_g_MissionComplete="  $N, huynh �n mu�n, Phi�n � � ��y ��i l�u. Ch�ng ta xu�t h�nh �i T� Hi�n Trang th�i"

x200026_g_MoneyBonus=5400
x200026_g_exp=5400

x200026_g_Custom	= { {id="�� t�m ���c Ti�u Phong",num=1} }
x200026_g_IsMissionOkFail = 0


--MisDescEnd
--**********************************
--������ں���
--**********************************
function x200026_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x200026_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200026_g_MissionId) > 0)  then
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType ~= 1 then --����������ng����
			x200026_OnContinue( sceneId, selfId, targetId )
		end
	
	--Th�a m�n�����������
	elseif x200026_CheckAccept(sceneId,selfId) > 0 then
		-- �ж���ngT�i ����,
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --����������ng����
		--if GetName(sceneId,targetId) ~= x200026_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x200026_g_MissionName)
				AddText(sceneId,x200026_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200026_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200026_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200026_g_ScriptId,x200026_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x200026_OnEnumerate( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x200026_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x200026_g_MissionId) > 0 then
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType ~= 1 then --����������ng����
			AddNumText(sceneId, x200026_g_ScriptId,x200026_g_MissionName,2,-1);
		end
	--Th�a m�n�����������
	elseif x200026_CheckAccept(sceneId,selfId) > 0 then
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --����������ng����
			AddNumText(sceneId,x200026_g_ScriptId,x200026_g_MissionName,1,-1);
		end
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200026_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x200026_g_MissionId) > 0 ) then
		return 0
	end
		
	-- ��c�p���
	if GetLevel( sceneId, selfId ) < x200026_g_MissionLevel then
		return 0
	end
	
	-- ǰ������to� � ������
	if IsMissionHaveDone(sceneId,selfId,x200026_g_PreMissionId) < 1  then
		return 0
	end
	return 1	
end

--**********************************
--Ti�p th�
--**********************************
function x200026_OnAccept( sceneId, selfId, targetId )
	if x200026_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--������������б�
	local ret = AddMission( sceneId,selfId, x200026_g_MissionId, x200026_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: K� sau g�p m�t",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200026_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
	
end

--**********************************
--����
--**********************************
function x200026_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x200026_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200026_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x200026_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
  BeginEvent(sceneId)
	AddText(sceneId,x200026_g_MissionName)
	AddText(sceneId,x200026_g_MissionComplete)
	AddMoneyBonus( sceneId, x200026_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x200026_g_ScriptId,x200026_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200026_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200026_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x200026_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200026_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId, x200026_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200026_g_exp)
		
		--���������Ѿ�����ɹ�
		DelMission( sceneId,selfId,  x200026_g_MissionId )
		MissionCom( sceneId,selfId,  x200026_g_MissionId )

		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: K� sau g�p m�t",MSG2PLAYER_PARA )
		
		-- ���ú�������
		CallScriptFunction((200022), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--ɱ����������
--**********************************
function x200026_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x200026_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x200026_OnItemChanged( sceneId, selfId, itemdataId )
end
