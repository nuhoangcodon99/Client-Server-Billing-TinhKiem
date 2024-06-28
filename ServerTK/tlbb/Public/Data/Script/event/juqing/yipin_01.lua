-- T�i  �������� ������,����m�t Ʒ��,
-- 200050

--************************************************************************
--MisDescBegin
--�ű���
x200050_g_ScriptId = 200050

--MisDescEnd
--************************************************************************

--��������
x200050_g_CopySceneName = "Nh�t ph�m �߶ng"

x200050_g_CopySceneType = FUBEN_JUQING	--��������,����T�i ScriptGlobal.lua����

x200050_g_CopySceneMap = "yipin_1.nav"
x200050_g_Exit = "yipin_1.ini"
x200050_g_LimitMembers = 1					--���Խ�����to� � ��С��������
x200050_g_TickTime = 5							--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x200050_g_LimitTotalHoldTime = 360	--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x200050_g_LimitTimeSuccess = 500		--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x200050_g_CloseTick = 3							--�����ر�ǰ����ʱ(��λ: ����)
x200050_g_NoUserTime = 300					--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x200050_g_DeadTrans = 0							--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x200050_g_Fuben_X = 32							--���븱��to� � λ��X
x200050_g_Fuben_Z = 113							--���븱��to� � λ��Z
x200050_g_Back_X = 66								--Դ����λ��X
x200050_g_Back_Z = 56								--Դ����λ��Z

--**********************************
--������ں���
--**********************************
function x200050_OnDefaultEvent( sceneId, selfId, targetId )
	-- �������to� � ���,������͵���ͬto� � ����
	x200050_MakeCopyScene(sceneId, selfId)
end

--**********************************
--�о��¼�
--**********************************
function x200050_OnEnumerate( sceneId, selfId, targetId )
	--AddNumText( sceneId, x200050_g_ScriptId, "��a ta �im�t Ʒ��(ҹ��)", 10 ,-1  )
	-- 0,�������Ѿ���44����,�Ͳ���T�i ����C�i n�y ����
	if IsHaveMission( sceneId, selfId, 44 ) > 0 then
		return 0
	end
	
	-- �������Ѿ������43,�Ͳ����ٽ�����
	if IsMissionHaveDone(sceneId, selfId, 43) > 0   then
		return 0
	end
	
	-- �������Ѿ������42,�Ͳ����ٽ�����
	if IsMissionHaveDone(sceneId, selfId, 42) > 0   then
		return 0
	end
	
	-- �������Ѿ�����42����,���� ��ȥ
	if IsHaveMission( sceneId, selfId, 42 ) > 0 then
		return 0
	end

	-- 1,ӵ�������Ϊ40to� � ����,
	if IsHaveMission( sceneId, selfId, 40 ) > 0 then
		AddNumText( sceneId, x200050_g_ScriptId, "Ъn Nh�t ph�m �߶ng (��m)", 10 ,-1  )
		return 0
	end

	-- 2,ֻҪ�����41����,���ܽ���
	if IsHaveMission( sceneId, selfId, 41 ) > 0 then
		AddNumText( sceneId, x200050_g_ScriptId, "Ъn Nh�t ph�m �߶ng (��m)", 10 ,-1  )
		return 0
	end
	
	-- 3,�����������40,û��41,Ҳ�ܽ���
	if IsMissionHaveDone(sceneId, selfId, 40) > 0   then
		if IsHaveMission( sceneId, selfId, 41 ) < 1 then
			AddNumText( sceneId, x200050_g_ScriptId, "Ъn Nh�t ph�m �߶ng (��m)", 10 ,-1  )
			return 0
		end
	end
	
	-- 4,�����������40,����ngû��42,Ҳ��ng���Խ���
	if IsMissionHaveDone(sceneId, selfId, 40) > 0   then
		if IsHaveMission( sceneId, selfId, 42 ) < 1 then
			AddNumText( sceneId, x200050_g_ScriptId, "Ъn Nh�t ph�m �߶ng (��m)", 10 ,-1  )
			return 0
		end
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x200050_CheckAccept( sceneId, selfId )
	
end

--**********************************
--ѯ�������ng��Ҫ���븱��
--**********************************
function x200050_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Ti�p th�
--**********************************
function x200050_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--���ͬ����븱��
--**********************************
function x200050_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--��������
--**********************************
function x200050_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "yipin_1.nav"); --��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200050_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200050_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200050_g_CopySceneType);--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200050_g_ScriptId);--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--���ø����رձ�־, 0����,1�ر�
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --��������
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--ɱ��Bossto� � ����
	
	-- �����õ�to� � �������
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end

	
	--���ó�����to� � ����Npc������
	LuaFnSetSceneLoad_Area( sceneId, "yipin_1_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "yipin_1_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --��ʼ����ɺ���ô�����������
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D�ch chuy�n th�nh c�ng!")
		else
			AddText(sceneId,"S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!")
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--�����¼�
--**********************************
function x200050_OnCopySceneReady( sceneId, destsceneId )

	--���븱��to� � ����
	-- 1,���C�i n�y �ļ�û�����,�ʹ���C�i n�y �ļ��Լ����븱��
	-- 2, �������ж���,����ng��Ҳ���ng�ӳ�,�ʹ����Լ����븱��
	-- 3,�������ж���,����C�i n�y �����ng�ӳ�,�ʹ����Լ��͸�������m�t ���ȥ

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --���ø�����ڳ�����
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- �����޷�ִ���߼�to� � ״̬
		return
	end

	-- ��������ng����ng�ж���
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- û�ж���
		NewWorld( sceneId, leaderObjId, destsceneId, x200050_g_Fuben_X, x200050_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200050_g_Fuben_X, x200050_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				--misIndex = GetMissionIndexByID(sceneId,mems[i],x200050_g_MissionId)
				
				--������to� � ��2����������Ϊ����to� � ������
				--SetMissionByIndex(sceneId,mems[i],misIndex,x200050_g_Param_sceneid,destsceneId)
						
				NewWorld( sceneId, mems[i], destsceneId, x200050_g_Fuben_X, x200050_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x200050_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x200050_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--����
--**********************************
function x200050_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- �س�,ֻ��Th�nh ph� ���񸱱����Ե��ô˽ӿ�
--**********************************
function x200050_BackToCity( sceneId, selfId )
	
end

--**********************************
--����
--**********************************
function x200050_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200050_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x200050_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--ɱ����������
--**********************************
function x200050_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--���������¼�
--**********************************
function x200050_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200050_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--����������ʱ���¼�
--**********************************
function x200050_OnCopySceneTimer( sceneId, nowTime )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- û����to� � ����,ʲô������
	if nHumanNum < 1 then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId,0)
	
	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 8) --����˵��
	local nTime  = LuaFnGetCopySceneData_Param(sceneId, 9)	--ʱ��

	-- �԰� 
	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 10) --����˵����
	
	-- paopao 
	local nStep3 = LuaFnGetCopySceneData_Param(sceneId, 11) --����˵����
	
	-- �԰� m�t Ц�˼����� ������to� � ʱ�򴥷�
	if nStep1==1 then
		if nStep2==0 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0024}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "L� Thu Thu�", "Nh�t ph�m �߶ng ", "#{JQ_DB_0024}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==1 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			end
		
		elseif nStep2==2 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0025}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "H� Tr�c", "Nh�t ph�m �߶ng ", "#{JQ_DB_0025}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==3 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 4)
			end
		
		elseif nStep2==4 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0026}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Thi�n S�n аng L�o", "Nh�t ph�m �߶ng ", "#{JQ_DB_0026}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 5)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==5 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 6)
			end

		elseif nStep2==6 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0027}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "L� Thu Thu�", "Nh�t ph�m �߶ng ", "#{JQ_DB_0027}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 7)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==7 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 8)
			end

		elseif nStep2==8 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0028}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "L� Thu Thu�", "Nh�t ph�m �߶ng ", "#{JQ_DB_0028}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 9)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==9 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 10)
			end

		elseif nStep2==10 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0029}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "L� Thu Thu�", "Nh�t ph�m �߶ng ", "#{JQ_DB_0029}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 11)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==11 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 12)
			end

		elseif nStep2==12 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0030}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Thi�n S�n аng L�o", "Nh�t ph�m �߶ng ", "#{JQ_DB_0030}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 13)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==13 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 14)
			end
		
		elseif nStep2==14 then
			-- ���� L� Thu Th�y,�ı�Thi�n S�nͯ��to� � Cu�c chi�n ��ϵ,��Ҳ�����
			local nNpcId = LuaFnCreateMonster(sceneId, 454, 22, 27, 1, 0, -1)
			SetUnitReputationID(sceneId,selfId, nNpcId, 24)
			SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
			SetNPCAIType(sceneId, nNpcId, 16)
			SetCharacterName(sceneId, nNpcId, "L� Thu Thu�")
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, nNpcId, nNpcId, 44, 2)
			
			--Thi�n S�nͯ��C�n ��ģ��
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				
				if GetName(sceneId, nMonsterId)  == "Thi�n S�n аng L�o"  then
					-- �� ��t ���cC�i n�y λ��,Ȼ��ɾ��C�i n�y ģ��,֮�󴴽�m�t c�i��to� � 
					LuaFnDeleteMonster(sceneId, nMonsterId)
					
					local newMonster = LuaFnCreateMonster(sceneId, 453, 20, 25, 1, 0, -1)

					SetUnitReputationID(sceneId,selfId, newMonster, 25)
					SetMonsterFightWithNpcFlag(sceneId, newMonster, 1)
					SetNPCAIType(sceneId, newMonster, 16)
					SetCharacterName(sceneId, newMonster, "Thi�n S�n аng L�o")
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, newMonster, newMonster, 44, 2)
					break
				end
			end
			
			LuaFnSetCopySceneData_Param(sceneId, 10, 15)
		
		elseif nStep2==15 then
			if nowTime - nTime > 60  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 16)
			end

		elseif nStep2==16 then
			-- ����ͣս
			
			local newMonst1
			local newMonst2
			
			--��Thi�n S�nͯ��to� � ��Ӫ
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				
				-- H� Tr�cC�n ��AI
				if GetName(sceneId, nMonsterId)  == "Thi�n S�n аng L�o"  then
					LuaFnDeleteMonster(sceneId, nMonsterId)
					newMonst1 = LuaFnCreateMonster(sceneId, 491, 20, 25, 1, 0, -1)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, newMonst1, newMonst1, 44, 2)
					
				end
				if GetName(sceneId, nMonsterId)  == "L� Thu Thu�"  then
					LuaFnDeleteMonster(sceneId, nMonsterId)
					newMonst2 = LuaFnCreateMonster(sceneId, 492, 22, 27, 1, 0, -1)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, newMonst2, newMonst2, 44, 2)
					
				end
			end
			
			-- ����2c�i����ģ��,����ѪΪ1
			SetUnitReputationID(sceneId,selfId, newMonst1, 0)
			SetMonsterFightWithNpcFlag(sceneId, newMonst1, 1)
			SetNPCAIType(sceneId, newMonst1, 3)
			SetCharacterName(sceneId, newMonst1, "Thi�n S�n аng L�o")
			SetHp(sceneId, newMonst1, 1)
				
			SetUnitReputationID(sceneId,selfId, newMonst2, 0)
			SetMonsterFightWithNpcFlag(sceneId, newMonst2, 1)
			SetNPCAIType(sceneId, newMonst2, 3)
			SetCharacterName(sceneId, newMonst2, "L� Thu Thu�")
			SetHp(sceneId, newMonst2, 1)
			
			LuaFnSetCopySceneData_Param(sceneId, 8, 2)
			LuaFnSetCopySceneData_Param(sceneId, 10, 17)
			
		end
	end

	-- paopao m�t Ц�˼����� 
	if nStep1==2 then
		if nStep3==0    	then
			CallScriptFunction((200060), "Paopao",sceneId, "L� Thu Thu�", "Nh�t ph�m �߶ng ", "#{JQ_PaoPao_104}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==1  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 2)
			end

		elseif nStep3==2  then
			CallScriptFunction((200060), "Paopao",sceneId, "H� Tr�c", "Nh�t ph�m �߶ng ", "#{JQ_PaoPao_105}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==3  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 4)
			end

		elseif nStep3==4  then
			CallScriptFunction((200060), "Paopao",sceneId, "Thi�n S�n аng L�o", "Nh�t ph�m �߶ng ", "#{JQ_PaoPao_106}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 5)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==5  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 6)
			end

		elseif nStep3==6  then
			CallScriptFunction((200060), "Paopao",sceneId, "Thi�n S�n аng L�o", "Nh�t ph�m �߶ng ", "#{JQ_PaoPao_107}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 7)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep3==7  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 8)
			end

		elseif nStep3==8  then
			CallScriptFunction((200060), "Paopao",sceneId, "H� Tr�c", "Nh�t ph�m �߶ng ", "#{JQ_PaoPao_108}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 9)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==9  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 10)
			end

		elseif nStep3==10  then
			CallScriptFunction((200060), "Paopao",sceneId, "Thi�n S�n аng L�o", "Nh�t ph�m �߶ng ", "#{JQ_PaoPao_109}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 11)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==11  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 12)
			end

		elseif nStep3==12  then
			CallScriptFunction((200060), "Paopao",sceneId, "H� Tr�c", "Nh�t ph�m �߶ng ", "#{JQ_PaoPao_110}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 13)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==13  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 14)
			end

		elseif nStep3==14  then
			CallScriptFunction((200060), "Paopao",sceneId, "Thi�n S�n аng L�o", "Nh�t ph�m �߶ng ", "#{JQ_PaoPao_111}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 15)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==15  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 16)
			end
			
		elseif nStep3==16  then
			CallScriptFunction((200060), "Paopao",sceneId, "Thi�n S�n аng L�o", "Nh�t ph�m �߶ng ", "#{JQ_PaoPao_112}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 17)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==17  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 18)
			end

		elseif nStep3==18  then
			CallScriptFunction((200060), "Paopao",sceneId, "L� Thu Thu�", "Nh�t ph�m �߶ng ", "#{JQ_PaoPao_113}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 19)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==19  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 20)
			end

		elseif nStep3==20  then
			CallScriptFunction((200060), "Paopao",sceneId, "H� Tr�c", "Nh�t ph�m �߶ng ", "#{JQ_PaoPao_114}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 21)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==21  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 22)
			end

		elseif nStep3==22  then
			CallScriptFunction((200060), "Paopao",sceneId, "L� Thu Thu�", "Nh�t ph�m �߶ng ", "#{JQ_PaoPao_115}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 23)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==23  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 24)
			end

		elseif nStep3==24  then
			CallScriptFunction((200060), "Paopao",sceneId, "L� Thu Thu�", "Nh�t ph�m �߶ng ", "#{JQ_PaoPao_116}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 25)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==25  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 26)
			end

		elseif nStep3==26  then
			CallScriptFunction((200060), "Paopao",sceneId, "L� Thu Thu�", "Nh�t ph�m �߶ng ", "#{JQ_PaoPao_117}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 27)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==27  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 28)
			end

		elseif nStep3==28  then
			CallScriptFunction((200060), "Paopao",sceneId, "L� Thu Thu�", "Nh�t ph�m �߶ng ", "#{JQ_PaoPao_118}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 29)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==29  then
			LuaFnSetCopySceneData_Param(sceneId, 15, 1)
			
		end
	end
	
end

