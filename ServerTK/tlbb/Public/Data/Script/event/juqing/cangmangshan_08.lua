-- 200037

-- 200037 ��굴�����
-- ��ãɽto� � ��Ҫ����

-- ��T�i ���������ɱ������

--************************************************************************
--MisDescBegin
--�ű���
x200037_g_ScriptId = 200037

--�����
x200037_g_MissionId = 31

--Ŀ��NPC
x200037_g_Name = "Ti�u Phong"

--�����ı�����
x200037_g_MissionName="Kim Qua ��ng Kh�u Ngao Binh"
x200037_g_MissionInfo="#{Mis_juqing_0031}"
x200037_g_MissionTarget="#{Mis_juqing_Tar_0031}"	--M�c ti�u nhi�m v�
x200037_g_MissionComplete="    $N, l�n n�y th� qu�n t�nh c�a ph�n qu�n �� l�ng l�o r�i, kh�ng c�n v�i, ch�ng ta ti�n t�ng b߾c v�o doanh, tri�t � gi�i tr� h�t b�n ph�n lo�n. "	--Ho�n t�t nhi�m v�npc˵��to� � ��
x200037_g_MissionContinue="  S� V߽ng �� b� gi�t, Ho�ng Th�i Th�c c�ng �� r�i v�o tay ch�ng ta"

x200037_g_MoneyBonus=36000
x200037_g_exp=34000

x200037_g_RadioItemBonus={{id=10423012 ,num=1},{id=10423013,num=1},{id=10423014,num=1}}

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x200037_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200037_g_MissionId) > 0 then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x200037_g_MissionName)
			AddText(sceneId,x200037_g_MissionContinue)
			--AddMoneyBonus( sceneId, x200037_g_MoneyBonus )
		EndEvent( )
		bDone = x200037_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200037_g_ScriptId,x200037_g_MissionId,bDone)
    --Th�a m�n�����������
  end

end

--**********************************
--�о��¼�
--**********************************
function x200037_OnEnumerate( sceneId, selfId, targetId )
  --��������ɹ�C�i n�y ����
  if IsMissionHaveDone(sceneId,selfId,x200037_g_MissionId) > 0 then
		return
	end
    --����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x200037_g_MissionId) > 0 then
		AddNumText(sceneId,x200037_g_ScriptId,x200037_g_MissionName,2,-1);
		--Th�a m�n�����������
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x200037_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ti�p th�
--**********************************
function x200037_OnAccept( sceneId, selfId )
	
end

--**********************************
--����
--**********************************
function x200037_OnAbandon( sceneId, selfId )

end

--**********************************
--����
--**********************************
function x200037_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x200037_g_MissionName)
		AddText(sceneId,x200037_g_MissionComplete)
		AddMoneyBonus( sceneId, x200037_g_MoneyBonus )
		for i, item in x200037_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200037_g_ScriptId,x200037_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x200037_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200037_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	if LuaFnGetCopySceneData_Param(sceneId, 8) > 7  then
		return 1
	end
	
	return 0

end

--**********************************
--�ύ
--**********************************
function x200037_OnSubmit( sceneId, selfId, targetId,selectRadioId )

	if x200037_CheckSubmit(sceneId, selfId) == 1  then
		--���������
  	BeginAddItem(sceneId)
		for i, item in x200037_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		--���������
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

		AddMoney(sceneId,selfId, x200037_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200037_g_exp)

		DelMission( sceneId, selfId, x200037_g_MissionId )
		MissionCom( sceneId, selfId, x200037_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: Kim Qua ��ng Kh�u Ngao Binh",MSG2PLAYER_PARA )
	end

end

--**********************************
--ɱ����������
--**********************************
function x200037_OnKillObject( sceneId, selfId, objdataId ,objId)
	
end

--**********************************
--���������¼�
--**********************************
function x200037_OnEnterArea( sceneId, selfId, zoneId )

end

--**********************************
--���߸ı�
--**********************************
function x200037_OnItemChanged( sceneId, selfId, itemdataId )
end


