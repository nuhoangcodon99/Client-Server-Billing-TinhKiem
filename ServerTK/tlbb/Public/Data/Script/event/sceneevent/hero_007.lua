-- 212134
-- ����Ӣ��

-- ֱ�ӽ�����,Ho�n t�t nhi�m v�

--MisDescBegin
--�ű���
x212134_g_ScriptId = 212134

--Ti�p th�����NPC����
x212134_g_Position_X=282
x212134_g_Position_Z=220
x212134_g_SceneID=2
x212134_g_AccomplishNPC_Name="L� C�ng B�"

--�����
x212134_g_MissionId = 256
--ǰ�������
x212134_g_PreMissionId_1 = 253
x212134_g_PreMissionId_2 = 254
x212134_g_PreMissionId_3 = 255

--Ŀ��NPC
x212134_g_Name	="L� C�ng B�"

--�������
x212134_g_MissionKind = 55

--��ng c�p nhi�m v� 
x212134_g_MissionLevel = 75

--��ng����ngTinhӢ����
x212134_g_IfMissionElite = 0

--������
x212134_g_MissionName="C�i th� anh h�ng"
x212134_g_MissionInfo="#{Mis_Hero_end}"
x212134_g_MissionTarget="    T�m L� C�ng B� � th�nh ��i L� #{_INFOAIM282,220,2,L� C�ng B�}. "
x212134_g_MissionComplete="  A, ng߶i thanh ni�n, c�c h� qu� nhi�n kh�ng ph� k� v�ng cua ta. C�c h� �� s� d�ng l�ng d�ng c�m v� th�ng minh t�i tr� c�a m�nh tr�i qua bi�t bao ch�n �߶ng, quen bi�t bao nhi�u ng߶i, tr� h�i v� s� l� y�u qu�i. Danh hi�u anh h�ng c�i th� ta t�ng cho ng߶i c�ng kh�ng ti�c ch�t n�o! "

x212134_g_MoneyBonus=500000
x212134_g_exp=700000

x212134_g_Custom	= { {id="�� t�m ���c L� C�ng B�",num=1} }
x212134_g_IsMissionOkFail = 0

x212134_g_RadioItemBonus={{id=10553037 ,num=1},{id=10514077,num=1},{id=10521057,num=1}}


--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212134_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if (IsMissionHaveDone(sceneId,selfId,x212134_g_MissionId) > 0 ) then
		return
	
	elseif( IsHaveMission(sceneId,selfId,x212134_g_MissionId) > 0)  then
		x212134_OnContinue( sceneId, selfId, targetId )
	
	--Th�a m�n�����������
	elseif x212134_CheckAccept(sceneId,selfId) > 0 then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212134_g_MissionName)
			AddText(sceneId,x212134_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x212134_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			for i, item in x212134_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
			AddMoneyBonus( sceneId, x212134_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x212134_g_ScriptId,x212134_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x212134_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x212134_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x212134_g_MissionId) > 0 then
		AddNumText(sceneId, x212134_g_ScriptId,x212134_g_MissionName,2,-1);

	--Th�a m�n�����������
	elseif x212134_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x212134_g_ScriptId,x212134_g_MissionName,1,-1);
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x212134_CheckAccept( sceneId, selfId )
	-- 1,��������ng����ng�Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x212134_g_MissionId) > 0 ) then
		return 0
	end

	-- ��c�p���
	if GetLevel(sceneId, selfId) < x212134_g_MissionLevel then
		return 0
	end	
	
	--���ǰ������
	if IsMissionHaveDone(sceneId, selfId, x212134_g_PreMissionId_1 ) < 1   then
		return 0
	end
	--���ǰ������
	if IsMissionHaveDone(sceneId, selfId, x212134_g_PreMissionId_2 ) < 1   then
		return 0
	end
	--���ǰ������
	if IsMissionHaveDone(sceneId, selfId, x212134_g_PreMissionId_3 ) < 1   then
		return 0
	end

	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x212134_OnAccept( sceneId, selfId, targetId )
	if x212134_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end

	-- ������to� � �ķ���ng����ng�ﵽ��Ҫ��(ǰ������ng c�p t�m ph�p ���ڵ���30c�p)
	--if CallScriptFunction( 212120, "CheckAllXinfaLevel", sceneId, selfId, 70 ) == 0  then
   	--BeginEvent(sceneId)
	---		local strText = format("Nhi�m v� n�y y�u c�u 6 lo�i t�m ph�p �u ��t c�p 70.")
	--		AddText(sceneId, strText)
	 -- EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end
	
	--������������б�
	local ret = AddMission(sceneId,selfId, x212134_g_MissionId, x212134_g_ScriptId, 0, 0, 0)
	if ret <= 0 then
		local strText = format("#YDanh s�ch nhi�m v�#W: c�a c�c h� �� �y r�i")
		Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end
	local strText = format("#Y Ti�p nh�n nhi�m v�: Anh h�ng c�i th�")
	Msg2Player(sceneId, selfId, strText,MSG2PLAYER_PARA)
 	BeginEvent(sceneId)
		AddText(sceneId, strText)
  EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212134_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
	
end

--**********************************
--����
--**********************************
function x212134_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
  DelMission( sceneId, selfId, x212134_g_MissionId )
end

--**********************************
--����
--**********************************
function x212134_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
  BeginEvent(sceneId)
		AddText(sceneId,x212134_g_MissionName)
		AddText(sceneId,x212134_g_MissionComplete)
		AddMoneyBonus( sceneId, x212134_g_MoneyBonus )
		for i, item in x212134_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212134_g_ScriptId,x212134_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212134_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212134_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x212134_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212134_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		
		--���������
		BeginAddItem(sceneId)
		for i, item in x212134_g_RadioItemBonus do
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
		
		AddMoney(sceneId,selfId, x212134_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212134_g_exp)
		DelMission( sceneId, selfId, x212134_g_MissionId )
		MissionCom( sceneId, selfId, x212134_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Ho�n th�nh nhi�m v�: Anh h�ng c�i th�",MSG2PLAYER_PARA )

		-- �������ӳƺ�
		LuaFnAwardTitle( sceneId, selfId,  12, 236)
		SetCurTitle(sceneId, selfId,  12, 236)
		LuaFnDispatchAllTitle(sceneId, selfId)
	end
end

--**********************************
--ɱ����������
--**********************************
function x212134_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x212134_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212134_OnItemChanged( sceneId, selfId, itemdataId )
end


