-- 212132
-- ��į����

-- ֱ�ӽ�����,Ho�n t�t nhi�m v�

--MisDescBegin
--�ű���
x212132_g_ScriptId = 212132

--Ti�p th�����NPC����
x212132_g_Position_X=274
x212132_g_Position_Z=381
x212132_g_SceneID=0
x212132_g_AccomplishNPC_Name="T� M� Quang"

--�����
x212132_g_MissionId = 254
--ǰ�������
x212132_g_PreMissionId = 349

--Ŀ��NPC
x212132_g_Name	="T� M� Quang"

--�������
x212132_g_MissionKind = 55

--��ng c�p nhi�m v� 
x212132_g_MissionLevel = 75

--��ng����ngTinhӢ����
x212132_g_IfMissionElite = 0

--������
x212132_g_MissionName="T�ch m�ch cao th�"
x212132_g_MissionInfo="#{Mis_Hero_songxin_02}"
x212132_g_MissionTarget="    T�m T� M� Quang � L�c D߽ng #{_INFOAIM274,381,0,T� M� Quang}. "
x212132_g_MissionComplete="  иa v� v� quan h� c�a c�c h� �u �� �c b� giang h�, c�ch danh hi�u anh h�ng kh�ng c�n bao xa."

x212132_g_MoneyBonus=50000
x212132_g_exp=700000

x212132_g_Custom	= { {id="�� t�m th�y T� M� Quang",num=1} }
x212132_g_IsMissionOkFail = 0

x212132_g_RadioItemBonus={{id=10510047 ,num=1},{id=10515027,num=1}}


--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212132_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x212132_g_MissionId) > 0 ) then
		return
	
	elseif( IsHaveMission(sceneId,selfId,x212132_g_MissionId) > 0)  then
		x212132_OnContinue( sceneId, selfId, targetId )
	
	--Th�a m�n�����������
	elseif x212132_CheckAccept(sceneId,selfId) > 0 then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212132_g_MissionName)
			AddText(sceneId,x212132_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x212132_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			for i, item in x212132_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
			AddMoneyBonus( sceneId, x212132_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x212132_g_ScriptId,x212132_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x212132_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212132_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x212132_g_MissionId) > 0 then
		AddNumText(sceneId, x212132_g_ScriptId,x212132_g_MissionName,2,-1);

	--Th�a m�n�����������
	elseif x212132_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x212132_g_ScriptId,x212132_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x212132_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x212132_g_MissionId) > 0 ) then
		return 0
	end

	-- ��c�p���
	if GetLevel(sceneId, selfId) < x212132_g_MissionLevel then
		return 0
	end	
	
	--���ǰ������
	if IsMissionHaveDone(sceneId, selfId, x212132_g_PreMissionId ) < 1   then
		return 0
	end

	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x212132_OnAccept( sceneId, selfId, targetId )
	if x212132_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end

	-- ������to� � �ķ���ng����ng�ﵽ��Ҫ��(ǰ������ng c�p t�m ph�p ���ڵ���30c�p)
	--if CallScriptFunction( 212120, "CheckAllXinfaLevel", sceneId, selfId, 70 ) == 0  then
   	--BeginEvent(sceneId)
	--		local strText = format("Nhi�m v� n�y y�u c�u 6 lo�i t�m ph�p �u ��t c�p 70.")
	--		AddText(sceneId, strText)
	--  EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end
	
	--������������б�
	local ret = AddMission(sceneId,selfId, x212132_g_MissionId, x212132_g_ScriptId, 0, 0, 0)
	if ret <= 0 then
		local strText = format("#YDanh s�ch nhi�m v�#W: c�a c�c h� �� �y r�i")
		Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end
	local strText = format("#Y Ti�p nh�n nhi�m v�: Cao th� c� �c.")
	Msg2Player(sceneId, selfId, strText,MSG2PLAYER_PARA)
 	BeginEvent(sceneId)
		AddText(sceneId, strText)
  EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212132_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
	
end

--**********************************
--����
--**********************************
function x212132_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x212132_g_MissionId )
end

--**********************************
--����
--**********************************
function x212132_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
  BeginEvent(sceneId)
		AddText(sceneId,x212132_g_MissionName)
		AddText(sceneId,x212132_g_MissionComplete)
		AddMoneyBonus( sceneId, x212132_g_MoneyBonus )
		for i, item in x212132_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212132_g_ScriptId,x212132_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212132_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212132_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x212132_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212132_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		
		--���������
		BeginAddItem(sceneId)
		for i, item in x212132_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		
		if ret < 1 then
			--������û�мӳɹ�
			BeginEvent(sceneId)
				strText = "Nhi�m v� th�t b�i!"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		AddItemListToHuman(sceneId,selfId)
		
		AddMoney(sceneId,selfId, x212132_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212132_g_exp)
		DelMission( sceneId, selfId, x212132_g_MissionId )
		MissionCom( sceneId, selfId, x212132_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Ho�n th�nh nhi�m v�: Cao th� c� �c",MSG2PLAYER_PARA )

		-- �������ӳƺ�
		LuaFnAwardTitle( sceneId, selfId,  10, 234)
		SetCurTitle(sceneId, selfId,  10, 234)
		LuaFnDispatchAllTitle(sceneId, selfId)
	end
end

--**********************************
--ɱ����������
--**********************************
function x212132_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x212132_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212132_OnItemChanged( sceneId, selfId, itemdataId )
end

