--����̽����2�� 

--�ű���
x300006_g_scriptId = 300004

--�����
x300006_g_MissionId = 700

--������߱��
x300006_g_ItemId = 40002106

--**********************************
--ˢ���¼�
--**********************************
function x300006_OnDefaultEvent( sceneId, selfId, BagIndex )
	misIndex = GetMissionIndexByID(sceneId,selfId,x300006_g_MissionId)
	x300006_g_MissionCondition = GetMissionParam(sceneId,selfId,misIndex,0)		--�������״̬
	scene = GetMissionParam(sceneId,selfId,misIndex,2)					--��ñ��ﳡ����
	treasureX = GetMissionParam(sceneId,selfId,misIndex,3)					--��ñ���X����
	treasureZ = GetMissionParam(sceneId,selfId,misIndex,4)				--��ñ���Z����	
	--��������Ѿ����
	if x300006_g_MissionCondition == 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"�� t�m ���c r�i, quay v� giao tr� nhi�m v� �i")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--ȡ����ҵ�ǰ����
	PlayerX = GetHumanWorldX(sceneId,selfId)
	PlayerZ = GetHumanWorldZ(sceneId,selfId)
	--��������뱦�صľ���
	Distance = floor(sqrt((treasureX - PlayerX) * (treasureX - PlayerX) + (treasureZ - PlayerZ) * (treasureZ - PlayerZ)))
	if sceneId ~= scene then
		BeginEvent(sceneId)
			AddText(sceneId,"H�nh nh� b�o t�ng kh�ng n�m trong c�nh n�y")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	if Distance >1 then
		--BeginEvent(sceneId)
		--	AddText(sceneId,"̽����û�и�Ӧ���κα���")
		--EndEvent(sceneId)
		--DispatchMissionTips(sceneId,selfId)
		--BeginEvent(sceneId)
		--	AddText(sceneId,"�����Ұ�")
		--EndEvent(sceneId)
		--DispatchMissionTips(sceneId,selfId)
	--elseif Distance <= 100 and Distance >=2 then
		BeginEvent(sceneId)
			AddText(sceneId,"C� ly c�ch b�o t�ng c�n "..Distance.." G�o")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif Distance <= 1 then
		BeginAddItem(sceneId)
			AddItem( sceneId,x300006_g_ItemId, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			AddItemListToHuman(sceneId,selfId)
			SetMissionByIndex(sceneId,selfId,misIndex,0,1)		--������״̬��������Ϊ1,��ʾ�Ѿ����
		end
	end
end

--function OnTimeUp( sceneId, selfId, timeIndex )
--	npcobjid = LuaFnGetCopySceneData_Param(sceneId, 2)
--	if npcobjid ~= 0 then
--		LuaFnDeleteMonster( sceneId, npcobjid )
--		LuaFnSetCopySceneData_Param(sceneId, 2, 0)
--		StopTimer( sceneId, selfId,timeIndex)
--	end
--end

--function BaoZangAddress( sceneId, selfId  )
--	return	 45,2,3
	--g_TreasureAddress[1].scenenum,g_TreasureAddress[1].x,g_TreasureAddress[1].z
--end
