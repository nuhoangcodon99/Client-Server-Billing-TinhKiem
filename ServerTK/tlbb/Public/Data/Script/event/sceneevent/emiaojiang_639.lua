-- �´�������
-- 212115

--MisDescBegin
--�ű���
x212115_g_ScriptId = 212115

--�����
x212115_g_MissionId = 639
--ǰ�������
x212115_g_PreMissionId = 638

--�������
x212115_g_MissionKind = 40

--��ng c�p nhi�m v� 
x212115_g_MissionLevel = 98

--��ng����ngTinhӢ����
x212115_g_IfMissionElite = 0

--���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������**********************
--������ng���Ѿ����
x212115_g_IsMissionOkFail = 0		--����to� � ��0λ

--������ng��̬**************************************************************

--����C�n  �i�m��to� � ��Ʒ
--x212115_g_DemandItem={{id=40002112,num=1}}		--������1λ

--�����ı�����
x212115_g_MissionName="D�ng c�m x�ng v�o H�n Ng�c Th�p"
x212115_g_MissionInfo="#{Mis_H_Miaojiang_1050003}"
x212115_g_MissionTarget="  H� t�ng A V� #{_INFOAIM182,264,29, A V�} t�i ch�n H�n Ng�c Th�p, t�m ng߶i tr�ng th�p A H�i Nam #{_INFOAIM92,266,29, A H�i Nam}. "
x212115_g_MissionComplete="  Kh�ng sao, ma l�c c�a H�n Ng�c Th�p v�nh vi�n kh�ng nh� c�c ng߽i t߷ng. H�y �i �i, l� ph�m nh�n. C�c ng߽i kh�ng th� v�o ���c H�n Ng�c Th�p. #r#r�, k� ph�m nh�n kia, v�o b�ng c�ch n�o th�? Mau ra ngay"

--����
x212115_g_MoneyBonus=16000
x212115_g_Exp = 30000
--x212115_g_ItemBonus={{id=10122010,num=1}}

x212115_g_Custom	= { {id="�� h� t�ng A V�",num=1} }

x212115_g_RadioItemBonus={{id=10413081 ,num=1},{id=10411086,num=1},{id=10412078,num=1}}

--MisDescEnd

-- ������ʱ��to� � Index
x212115_g_ScneneTimerIndex = -1
x212115_g_Step = 0
x212115_g_StartTime = 0
x212115_g_PlayerNum = 0
x212115_g_PlayerId= {0,0,0,0,0,0}

--**********************************
--������ں���
--**********************************
function x212115_OnDefaultEvent( sceneId, selfId, targetId )
	
	if GetName(sceneId, targetId) == "Linh h�n c�a A V�"  then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,"Ta c�n ph�i n�i ch�t g�");
			AddNumText(sceneId, x212115_g_ScriptId, x212115_g_MissionName, 2, 999);
		EndEvent(sceneId)
		DispatchMissionInfo(sceneId,selfId,targetId,x212115_g_ScriptId,x212115_g_MissionId)
		return
	end
	
	--����ѽӴ�����
	if IsMissionHaveDone( sceneId, selfId, x212115_g_MissionId ) > 0 then
		return 
	elseif IsHaveMission(sceneId,selfId,x212115_g_MissionId) > 0 then
--		if GetName(sceneId,targetId) == x212115_g_Name then
			--���ͽ�����ǰto� � ������Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x212115_g_MissionName);
			EndEvent(sceneId)
    		done = x212115_CheckSubmit( sceneId, selfId );
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212115_g_ScriptId,x212115_g_MissionId,done)
--		end
	--Th�a m�n�����������
	elseif x212115_CheckAccept( sceneId, selfId ) then
	
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212115_g_MissionName);
			AddText(sceneId,x212115_g_MissionInfo);
			AddText(sceneId,"#{M_MUBIAO}");
			AddText(sceneId,x212115_g_MissionTarget);
			AddMoneyBonus( sceneId, x212115_g_MoneyBonus )
			for i, item in x212115_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent(sceneId)
		DispatchMissionInfo(sceneId,selfId,targetId,x212115_g_ScriptId,x212115_g_MissionId)

	end
end

--**********************************
--�о��¼�
--**********************************
function x212115_OnEventRequest( sceneId, selfId, targetId )
	
	if GetNumText() == 999 then
		local misIndex = GetMissionIndexByID(sceneId,selfId, x212115_g_MissionId)
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)
		SetMissionByIndex(sceneId,selfId,misIndex,1,1)
		BeginEvent(sceneId)
			strText = "H� t�ng A V� th�nh c�ng!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		local nMonsterNum = GetMonsterCount(sceneId)
		local ii = 0
		local bHaveMonster = 0
		local nAyuId = 0
		for ii=0, nMonsterNum-1   do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)  == "Linh h�n c�a A V�"  then
				SetCharacterDieTime(sceneId,nMonsterId,100)
			end
		end
	end
	
end

--**********************************
--�о��¼�
--**********************************
function x212115_OnEnumerate( sceneId, selfId, targetId )
	
	if IsMissionHaveDone( sceneId, selfId, x212115_g_MissionId ) > 0 then
		return 

	elseif IsHaveMission(sceneId,selfId,x212115_g_MissionId) > 0 then
		if GetName(sceneId, targetId) == "A H�i Nam"  then
			AddNumText(sceneId, x212115_g_ScriptId,x212115_g_MissionName, 2, -1)
		end

	--Th�a m�n�����������
	elseif x212115_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212115_g_MissionName then
			AddNumText(sceneId, x212115_g_ScriptId, x212115_g_MissionName, 1, -1);
		end
	end

end

--**********************************
--��ⴥ������
--**********************************
function x212115_CheckAccept( sceneId, selfId )
	--C�n 60c�p���ܽ�
	if GetLevel( sceneId, selfId ) < x212115_g_MissionLevel then
		return 0
	end
	
	-- ǰ������
	if IsMissionHaveDone( sceneId, selfId, x212115_g_PreMissionId ) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x212115_OnAccept( sceneId, selfId )

	-- ��������ng����ng�Ѿ���ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId, selfId, x212115_g_MissionId) > 0   then
		return
	end
	
	if x212115_CheckAccept(sceneId, selfId)  <= 0   then
		return
	end
	
	if x212115_g_Step > 1  then
		BeginEvent(sceneId)
			strText = "#YHi�n kh�ng th� nh�n nhi�m v� n�y#W"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
	
	-- �����ǰ 
	if x212115_g_Step == 0  then
		-- ������ȼ�C�i n�y ����
		local ret = AddMission( sceneId,selfId, x212115_g_MissionId, x212115_g_ScriptId, 0, 0, 0 )
		-- C�n ���������ng����ng�ܹ�Ti�p th���C�i n�y ����
		if ret <= 0      then
			Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
			return
		end
		-- ��Ϣ֪ͨ�ͻ���
		Msg2Player(  sceneId, selfId,"#YTi�p nh�n#W ".. x212115_g_MissionName, MSG2PLAYER_PARA )
	
		BeginEvent(sceneId)
			strText = "#YTi�p nh�n#W ".. x212115_g_MissionName
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		-- M� ra ���;���  213
		-- ��ⳡ������ng����ng��C�i n�y ������
		local nMonsterNum = GetMonsterCount(sceneId)
		local ii = 0
		local bHaveMonster = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)  == "Linh h�n c�a A V�"  then
				bHaveMonster = 1
			end
		end
		
		-- ��C�i n�y ����,����T�i ��T�i ȥ�����ű�
		if bHaveMonster == 0   then
			local nNpcId = LuaFnCreateMonster(sceneId, 213, 185, 263, 6, 0, 212115)
			SetCharacterName(sceneId, nNpcId, "Linh h�n c�a A V�")
			
			-- ����Сʱʱ����ng10 ph�t
			SetCharacterDieTime(sceneId, nNpcId, 600000)
		end
		
		-- ��C�i n�y ��Ҽӵ���������б���
		x212115_g_PlayerNum = 1
		x212115_g_PlayerId[1] = selfId

		-- ����m�t c�i������ʱ��
		x212115_g_ScneneTimerIndex = SetTimer(sceneId, selfId, 212115, "OnScneneTimer", 1)
		
		x212115_g_Step = 1
		
		--��ǰʱ��
		x212115_g_StartTime = LuaFnGetCurrentTime()
	end
	
	-- ���뵽C�i n�y ����to� � ���
	if x212115_g_Step == 2  then
		if x212115_g_PlayerNum > 5  then
			--������
			return
		end
		
		-- ������ȼ�C�i n�y ����
		local ret = AddMission( sceneId,selfId, x212115_g_MissionId, x212115_g_ScriptId, 0, 0, 0 )
		-- C�n ���������ng����ng�ܹ�Ti�p th���C�i n�y ����
		if ret <= 0      then
			Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
			return
		end
		-- ��Ϣ֪ͨ�ͻ���
		Msg2Player(  sceneId, selfId,"#YTi�p nh�n#W ".. x212115_g_MissionName, MSG2PLAYER_PARA )
		
		x212115_g_PlayerNum = x212115_g_PlayerNum + 1
		x212115_g_PlayerId[x212115_g_PlayerNum] = selfId

		BeginEvent(sceneId)
			strText = "#YTi�p nh�n#W ".. x212115_g_MissionName
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
	
end

--**********************************
--������ʱ��
--**********************************
function x212115_OnScneneTimer(sceneId, selfId)

	x212115_g_PlayerNum=1
	x212115_g_PlayerId[1]=selfId
	
	local bHavePlayer = 0
	if LuaFnIsCanDoScriptLogic(sceneId, selfId) == 0   then
		for i=1, x212115_g_PlayerNum  do
			if LuaFnIsCanDoScriptLogic(sceneId, x212115_g_PlayerId[i]) == 1   then
				bHavePlayer = 1
				selfId = x212115_g_PlayerId[i]
				break
			end
		end
		
		if bHavePlayer == 0    then
			-- ��ʱ��ֹͣ,�������to� � ȫ�ֱ���
			x212115_CloseTimer(sceneId, x212115_g_ScneneTimerIndex)
		end
	end	
	
	-- �ȴ�5 gi�y����2
	if x212115_g_Step == 1   then
		-- ֪ͨ�Լ�����to� � ������ҽ�C�i n�y ����
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local nAyuId = 0
		local bHaveMonster = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "A V�"  then
				nAyuId = nMonsterId
				bHaveMonster = 1
			end
		end

		local nTeamCount = GetNearTeamCount(sceneId, selfId)
		for i=0, nTeamCount-1 do
			local PlayerId = GetNearTeamMember(sceneId, selfId, i)
			if PlayerId ~= selfId    then
				CallScriptFunction((212115), "OnDefaultEvent", sceneId, PlayerId, nAyuId )
			end
		end
		
		x212115_g_Step = 2
	end
	
	-- b�t �u�ȴ���to� � �����m�t ����C�i n�y ����
	if x212115_g_Step == 2   then
		if LuaFnGetCurrentTime() - x212115_g_StartTime >= 10   then
			x212115_g_Step = 3
		end
		
	end
	
	-- ����� �i�m���˿�ʼ����
	if x212115_g_Step == 3   then

		local nMonsterNum = GetMonsterCount(sceneId)
		local ii = 0
		local bHaveMonster = 0
		local nAyuId = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)  == "Linh h�n c�a A V�"  then
				bHaveMonster = 1
				nAyuId = nMonsterId
			end
		end
		
		if bHaveMonster == 1  then
			SetPatrolId(sceneId, nAyuId, 0)
			x212115_g_Step = 4
		end
		
	end
	
	-- ���͹���
	if x212115_g_Step == 4   then
		local nMonsterNum = GetMonsterCount(sceneId)
		local ii = 0
		local bHaveMonster = 0
		local nAyuId = 0
		for ii=0, nMonsterNum-1   do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)  == "Linh h�n c�a A V�"  then
				bHaveMonster = 1
				nAyuId = nMonsterId
			end
		end
		
		if bHaveMonster == 0   then
			-- �رռ�ʱ��
			x212115_CloseTimer(sceneId, x212115_g_ScneneTimerIndex)
			return
		end
		
		-- ���Ayu �����֮��to� � ����
		local targetX, targetZ = GetWorldPos(sceneId, nAyuId)
		
		-- ���������to� � �����Ѿ��뿪to� � ����������Ҳ�T�i ���Ͷ���10����,C�i n�y ���th�t b�i
		for i=1, x212115_g_PlayerNum  do
			if x212115_g_PlayerId[i] ~= 0  then
				if LuaFnIsCanDoScriptLogic(sceneId, x212115_g_PlayerId[i]) == 0   then
					-- ���б���ɾ��C�i n�y ���
					x212115_g_PlayerId[i] = 0
					local nPlayerX, nPlayerZ = GetWorldPos(sceneId, x212115_g_PlayerId[i])
					local distance1 = floor(sqrt((targetX-nPlayerX)*(targetX-nPlayerX)+(targetZ-nPlayerZ)*(targetZ-nPlayerZ)))
					
					if distance1 > 10    then
						--��ʾC�i n�y �������th�t b�i
						BeginEvent(sceneId)
							strText = "#YH� t�ng A V� th�t b�i!#W"
							AddText(sceneId,strText);
						EndEvent(sceneId)
						DispatchMissionTips(sceneId,x212115_g_PlayerId[i])
						
						x212115_g_PlayerId[i] = 0
					end
				end
			end
		end
		
		local x, z = GetLastPatrolPoint(sceneId, 0)
		local distance = floor(sqrt((targetX-x)*(targetX-x)+(targetZ-z)*(targetZ-z)))
		
		-- ������ �i�m
		if distance<=1  then
			for i=1, x212115_g_PlayerNum  do
				if x212115_g_PlayerId[i]~=0   then
					-- ��������ng����ng��C�i n�y ����
					if IsHaveMission(sceneId,x212115_g_PlayerId[i],x212115_g_MissionId) > 0 then
						local misIndex = GetMissionIndexByID(sceneId, x212115_g_PlayerId[i], x212115_g_MissionId)
						SetMissionByIndex(sceneId,x212115_g_PlayerId[i],misIndex,0,1)
						SetMissionByIndex(sceneId,x212115_g_PlayerId[i],misIndex,1,1)
						
						BeginEvent(sceneId)
							strText = "#YH� t�ng A V�: 1/1#W"
							AddText(sceneId,strText);
						EndEvent(sceneId)
						DispatchMissionTips(sceneId,x212115_g_PlayerId[i])
					end
				end
			end
			-- ɾ������to� � ģ��
			LuaFnDeleteMonster(sceneId, nAyuId)
			x212115_g_Step = 5
			
			-- �رռ�ʱ��
			x212115_CloseTimer(sceneId, x212115_g_ScneneTimerIndex)
		end
	end
	
end

--**********************************
--�رռ�ʱ��
--**********************************
function x212115_CloseTimer( sceneId, TimerIndex )
	StopTimer(sceneId, TimerIndex)
	x212115_g_ScneneTimerIndex = -1
	x212115_g_Step = 0
	x212115_g_StartTime = 0
	x212115_g_PlayerNum = 0
	x212115_g_PlayerId[1]= 0
	x212115_g_PlayerId[2]= 0
	x212115_g_PlayerId[3]= 0
	x212115_g_PlayerId[4]= 0
	x212115_g_PlayerId[5]= 0
	x212115_g_PlayerId[6]= 0
end


--**********************************
--����
--**********************************
function x212115_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x212115_g_MissionId )
end

--**********************************
--�Ѿ����������ٸ���to� � ��ʾ
--**********************************
function x212115_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x212115_g_MissionName)
		AddText(sceneId,x212115_g_MissionComplete)
		AddMoneyBonus( sceneId, x212115_g_MoneyBonus )
		for i, item in x212115_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent(sceneId)
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212115_g_ScriptId,x212115_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x212115_CheckSubmit( sceneId, selfId )
	--���������ng��������to� � �����ng����ng����Ϊ1��
	local misIndex = GetMissionIndexByID(sceneId,selfId,x212115_g_MissionId)			-- �i�m������to� � ���к�
	
	if GetMissionParam(sceneId, selfId, misIndex, 0) > 0  then
		return 1
	end
	return 0
end

--**********************************
--�ύ(���)
--**********************************
function x212115_OnSubmit( sceneId, selfId,targetId,selectRadioID )
	-- ��ȫ�Լ��
	-- 1����������ng����ng��C�i n�y ����
	if IsHaveMission(sceneId,selfId,x212115_g_MissionId) <= 0 then
		return
	end
	-- 2���������
	if x212115_CheckSubmit( sceneId, selfId )  <= 0  then
		return
	end
	
	BeginAddItem(sceneId)
		for i, item in x212115_g_RadioItemBonus do
			if item.id == selectRadioID then
				AddItem( sceneId,item.id, item.num )
			end
		end
	local ret = EndAddItem(sceneId,selfId)
	--���������
	if ret > 0 then		
		AddExp(sceneId,selfId,x212115_g_Exp)
		AddMoney(sceneId,selfId,x212115_g_MoneyBonus );

		DelMission( sceneId, selfId, x212115_g_MissionId )
		MissionCom( sceneId, selfId, x212115_g_MissionId )
		AddItemListToHuman(sceneId,selfId)

	else
	--������û�мӳɹ�
		BeginEvent(sceneId)
			strText = "Nhi�m v� th�t b�i!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--ɱ����������
--**********************************
function x212115_OnKillObject( sceneId, selfId, objdataId ,objId )
	
end

--**********************************
--���������¼�
--**********************************
function x212115_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212115_OnItemChanged( sceneId, selfId, itemdataId )
	
end

