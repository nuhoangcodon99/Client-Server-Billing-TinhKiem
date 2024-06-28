--ɱ������
--Сľ����
--Сľ����ɱľ������
--MisDescBegin
--�ű���
x210231_g_ScriptId  = 210231

--��һ�������ID
x210231_g_MissionIdPre = 710

--�����
x210231_g_MissionId = 711

--Ŀ��NPC
x210231_g_Name	="Ho�ng Mi T�ng "

--�������
x210231_g_MissionKind = 13

--����ȼ�
x210231_g_MissionLevel = 9

--�Ƿ��Ǿ�Ӣ����
x210231_g_IfMissionElite = 0

--���漸���Ƕ�̬��ʾ�����ݣ������������б��ж�̬��ʾ�������**********************
--�����Ƿ��Ѿ����
x210231_g_IsMissionOkFail = 0		--�����ĵ�0λ

--������Ҫɱ���Ĺ�
x210231_g_DemandKill ={{id=703,num=5}}		--������1λ

--�����Ƕ�̬**************************************************************

--�����ı�����
x210231_g_MissionName="Ti�u M�c Nh�n H�ng"
x210231_g_MissionInfo="  Th� ch�, Ti�u M�c Nh�n H�ng tuy s�nh kh�ng b�ng Thi�u L�m M�c Nh�n H�ng, nh�ng qu�i v�t � b�n trong ki�u d�ng d� th߶ng. Xin th� ch� l�c tu luy�n d�c to�n s�c. #rTh� ch� ch� c�n gi�t ch�t 5 con M�c Хu Nh�n, l�n tu luy�n n�y �� ho�n th�nh r�i. 1 l�n ch�a ��nh h�t c�ng kh�ng sao, th� ch� c� th� quay ra r�i v�o l�i Ti�u M�c Nh�n H�ng, �n khi n�o ho�n th�nh th� th�i. " --��������
x210231_g_MissionTarget="� #G Ti�u M�c Nh�n H�ng#W gi�t ch�t 5 con#R M�c Хu Nh�n#W, sau �� quay v� g�p #RHo�ng Mi T�ng #W#{_INFOAIM275,49,2, Ho�ng Mi T�ng}."	--����Ŀ��
x210231_g_ContinueInfo="C�c h� �� gi�t ch�t 5 con M�c Хu Nh�n ch�a?"	--δ��������npc�Ի�
x210231_g_MissionComplete="  Qu� tr�nh tu luy�n c�a th� ch� r�t th�nh c�ng. Kh�ng g�p 1 l�c, v� c�ng c�a th� ch� �� tinh ti�n kh�ng �t. "	--�������npc˵���Ļ�
x210231_g_SignPost = {x = 275, z = 50, tip = "Ho�ng Mi T�ng "}
--������
x210231_g_MoneyBonus=200
--x210231_g_ItemBonus={{id=40002108,num=1},{id=30101001,num=5}}

x210231_g_DemandTrueKill ={{name="M�c Хu Nh�n",num=5}}

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x210231_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	--��������ɹ��������ʵ��������������������Ͳ�����ʾ�������ټ��һ�αȽϰ�ȫ��
    --if IsMissionHaveDone(sceneId,selfId,x210231_g_MissionId) > 0 then
	--	return
	--end
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x210231_g_MissionId) > 0 then
		--���������������Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x210231_g_MissionName)
			AddText(sceneId,x210231_g_ContinueInfo)
			--for i, item in g_DemandItem do
			--	AddItemDemand( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210231_g_MoneyBonus )
		EndEvent( )
		bDone = x210231_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210231_g_ScriptId ,x210231_g_MissionId,bDone)
    --���������������
    elseif x210231_CheckAccept(sceneId,selfId) > 0 then
			--�����������ʱ��ʾ����Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x210231_g_MissionName)
				AddText(sceneId,x210231_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210231_g_MissionTarget)
				--for i, item in x210231_g_ItemBonus do
				--	AddItemBonus( sceneId, item.id, item.num )
				--end
				AddMoneyBonus( sceneId, x210231_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210231_g_ScriptId ,x210231_g_MissionId)
    end
end

--**********************************
--�о��¼�
--**********************************
function x210231_OnEnumerate( sceneId, selfId, targetId )
    --�����һ�δ�����һ������
    if 	IsMissionHaveDone(sceneId,selfId,x210231_g_MissionIdPre) <= 0 then
    	return
    end
    --��������ɹ��������
    if IsMissionHaveDone(sceneId,selfId,x210231_g_MissionId) > 0 then
    	return
	end
    --����ѽӴ�����
    if IsHaveMission(sceneId,selfId,x210231_g_MissionId) > 0 then
		AddNumText(sceneId,x210231_g_ScriptId ,x210231_g_MissionName,2,-1);
		--���������������
	elseif x210231_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210231_g_ScriptId ,x210231_g_MissionName,1,-1);
	end
end

--**********************************
--����������
--**********************************
function x210231_CheckAccept( sceneId, selfId )
	--��Ҫ9�����ܽ�
	if GetLevel( sceneId, selfId ) >= 9 then
		return 1
	else
		return 0
	end
end

--**********************************
--����
--**********************************
function x210231_OnAccept( sceneId, selfId )
	--������������б�
	AddMission( sceneId,selfId, x210231_g_MissionId, x210231_g_ScriptId , 1, 0, 0 )		--�������
	misIndex = GetMissionIndexByID(sceneId,selfId,x210231_g_MissionId)			--�õ���������к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--�������кŰ���������ĵ�0λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--�������кŰ���������ĵ�1λ��0
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Ti�u M�c Nh�n H�ng",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210231_g_SignPost.x, x210231_g_SignPost.z, x210231_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210231_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧ������
    DelMission( sceneId, selfId, x210231_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210231_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210231_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱ��˵����Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x210231_g_MissionName)
		AddText(sceneId,x210231_g_MissionComplete)
		AddMoneyBonus( sceneId, x210231_g_MoneyBonus )
		--for i, item in x210231_g_ItemBonus do
		--	AddItemBonus( sceneId, item.id, item.num )
		--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210231_g_ScriptId ,x210231_g_MissionId)
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x210231_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210231_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210231_g_MissionId)
    num = GetMissionParam(sceneId,selfId,misIndex,1)
    if num == x210231_g_DemandTrueKill[1].num then
			return 1
		end
	return 0
end

--**********************************
--�ύ
--**********************************
function x210231_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210231_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		ret = 1
		--���������
		if ret > 0 then
			AddMoney(sceneId,selfId,x210231_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId,1620)
			--�۳�������Ʒ
			--for i, item in g_DemandItem do
			--	DelItem( sceneId, selfId, item.id, item.num )
			--end
			ret = DelMission( sceneId, selfId, x210231_g_MissionId )
			if ret > 0 then
				MissionCom( sceneId, selfId, x210231_g_MissionId )
				--AddItemListToHuman(sceneId,selfId)
				Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�#W: Ti�u M�c Nh�n H�ng",MSG2PLAYER_PARA )
				CallScriptFunction( 210232, "OnDefaultEvent",sceneId, selfId, targetId)
			end
		else
		--������û�мӳɹ�
			BeginEvent(sceneId)
				strText = "Kh�ng th� Ho�n t�t nhi�m v�"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end

--**********************************
--ɱ����������
--**********************************
function x210231_OnKillObject( sceneId, selfId, objdataId ,objId)
	
	if GetName(sceneId,objId) == x210231_g_DemandTrueKill[1].name	  then
		-- ���������
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			
			-- ����û���������
			if IsHaveMission(sceneId, humanObjId, x210231_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,x210231_g_MissionId)
				local nNum = GetMissionParam(sceneId,humanObjId,misIndex,1)

	 			if nNum < x210231_g_DemandTrueKill[1].num then
	 				if nNum == x210231_g_DemandTrueKill[1].num - 1 then
	 					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
	 				end
	 				
			    SetMissionByIndex(sceneId,humanObjId,misIndex,1,nNum+1)
			  	BeginEvent(sceneId)
					strText = format("�� gi�t ���c %d/5 M�c Хu Nh�n", GetMissionParam(sceneId,humanObjId,misIndex,1) )
					AddText(sceneId,strText);
			  	EndEvent(sceneId)
			  	DispatchMissionTips(sceneId,humanObjId)
	 			end
			end
		end
	end
end

--**********************************
--���������¼�
--**********************************
function x210231_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210231_OnItemChanged( sceneId, selfId, itemdataId )
end
