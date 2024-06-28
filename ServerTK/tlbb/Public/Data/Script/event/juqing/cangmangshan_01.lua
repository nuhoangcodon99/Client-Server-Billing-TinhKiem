--200030
--T�i Nh�n Nam Ү��Ī��to� � ������,����ҹ��to� � ��ãɽ

--************************************************************************
--MisDescBegin
--�ű���
x200030_g_ScriptId = 200030

--MisDescEnd
--************************************************************************

--��������
x200030_g_CopySceneName = "Th߽ng Mang S�n"

x200030_g_CopySceneType = FUBEN_JUQING	--��������,����T�i ScriptGlobal.lua����

x200030_g_CopySceneMap = "cangmang_1.nav"
x200030_g_Exit = "cangmang_1.ini"
x200030_g_LimitMembers = 1				--���Խ�����to� � ��С��������
x200030_g_TickTime = 5					--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x200030_g_LimitTotalHoldTime = 360		--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x200030_g_LimitTimeSuccess = 500		--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x200030_g_CloseTick = 3					--�����ر�ǰ����ʱ(��λ: ����)
x200030_g_NoUserTime = 300				--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x200030_g_DeadTrans = 0					--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x200030_g_Fuben_X = 102					--���븱��to� � λ��X
x200030_g_Fuben_Z = 19					--���븱��to� � λ��Z
x200030_g_Back_X = 66					--Դ����λ��X
x200030_g_Back_Z = 56					--Դ����λ��Z

--**********************************
--������ں���
--**********************************
function x200030_OnDefaultEvent( sceneId, selfId, targetId )
	-- �������to� � ���,������͵���ͬto� � ����
	x200030_MakeCopyScene(sceneId, selfId)
end

--**********************************
--�о��¼�
--**********************************
function x200030_OnEnumerate( sceneId, selfId, targetId )
	
	--����ܹ�����ҹ��to� � ����to� � ǰ������
	-- 0,�������Ѿ��ӵ���29,���������29,�Ͳ����ٽ���C�i n�y ����
	if IsHaveMission( sceneId, selfId, 29 ) > 0 then
		return 0
	end
	if IsMissionHaveDone(sceneId, selfId, 29) > 0   then
		return 0
	end

	-- 1,ӵ�������Ϊ26to� � ����,
	if IsHaveMission( sceneId, selfId, 26 ) > 0 then
		AddNumText( sceneId, x200030_g_ScriptId, "Ъn Th߽ng Mang S�n (��m)", 10 ,-1 )
		return 0
	end

	-- 2,ֻҪ�����27����,���ܽ���
	if IsHaveMission( sceneId, selfId, 27 ) > 0 then
		AddNumText( sceneId, x200030_g_ScriptId, "Ъn Th߽ng Mang S�n (��m)", 10 ,-1 )
		return 0
	end
	
	-- 3,�����������26,û��27,Ҳ�ܽ���
	if IsMissionHaveDone(sceneId, selfId, 26) > 0   then
		if IsMissionHaveDone(sceneId, selfId, 27) < 1   then
			if IsHaveMission( sceneId, selfId, 27 ) < 1 then
				AddNumText( sceneId, x200030_g_ScriptId, "Ъn Th߽ng Mang S�n (��m)", 10 ,-1  )
				return 0
			end
		end
	end

	-- 3,�����������26,û��28,Ҳ�ܽ���
	if IsMissionHaveDone(sceneId, selfId, 26) > 0   then
		if IsMissionHaveDone(sceneId, selfId, 28) < 1   then
			if IsHaveMission( sceneId, selfId, 28 ) < 1 then
				AddNumText( sceneId, x200030_g_ScriptId, "Ъn Th߽ng Mang S�n (��m)", 10 ,-1  )
				return 0
			end
		end
	end
	
end

--**********************************
--���Ti�p th�����
--**********************************
function x200030_CheckAccept( sceneId, selfId )
	
end

--**********************************
--ѯ�������ng��Ҫ���븱��
--**********************************
function x200030_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Ti�p th�
--**********************************
function x200030_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--���ͬ����븱��
--**********************************
function x200030_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--��������
--**********************************
function x200030_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "cangmang_1.nav"); --��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200030_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200030_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200030_g_CopySceneType);--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200030_g_ScriptId);--��1����������Ϊ���������¼��ű���
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
	LuaFnSetSceneLoad_Area( sceneId, "cangmang_1_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "cangmang_1_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --��ʼ����ɺ���ô�����������
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D�ch chuy�n th�nh c�ng!");
		else
			AddText(sceneId,"S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--�����¼�
--**********************************
function x200030_OnCopySceneReady( sceneId, destsceneId )

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
		NewWorld( sceneId, leaderObjId, destsceneId, x200030_g_Fuben_X, x200030_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200030_g_Fuben_X, x200030_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x200030_g_Fuben_X, x200030_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x200030_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x200030_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--����
--**********************************
function x200030_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- �س�,ֻ��Th�nh ph� ���񸱱����Ե��ô˽ӿ�
--**********************************
function x200030_BackToCity( sceneId, selfId )
	
end

--**********************************
--����
--**********************************
function x200030_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x200030_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x200030_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--ɱ����������
--**********************************
function x200030_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--���������¼�
--**********************************
function x200030_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x200030_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--����������ʱ���¼�
--**********************************
function x200030_OnCopySceneTimer( sceneId, nowTime )
	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 8) ;--����˵��
	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 10) ;--����˵����
	
	local selfId = LuaFnGetCopySceneData_Param(sceneId, 20)
	
	local nTime  = LuaFnGetCopySceneData_Param(sceneId, 9);--ʱ��
	
	-- ��m�t ��to� � �԰� ��ʱ������� Ho�n t�t nhi�m v�to� � ʱ�򴥷�
	if nStep1==1 then
		--PrintNum(10)
		if nStep2==0 then
			-- Ti�u Phong paopao
			CallScriptFunction((200060), "Paopao",sceneId, "Ti�u Phong", "Th߽ng Mang S�n", "#{JQ_PaoPao_83}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==1 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			end
			
		elseif nStep2==2 then
			-- Ti�u Phong paopao
			CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu�t H�ng C�", "Th߽ng Mang S�n", "#{JQ_PaoPao_84}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==3 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 4)
			end
			
		elseif nStep2==4 then
			-- Ti�u Phong paopao
			CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu�t H�ng C�", "Th߽ng Mang S�n", "#{JQ_PaoPao_85}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 5)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		end
	end
end

