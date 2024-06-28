--��̬���ɵĽ�ʬ

--**********************************
--�¼��������
--**********************************
function x002073_OnDefaultEvent( sceneId, selfId, targetId )
	--�ж��Ƿ��ܹ������npc������
	--PrintStr("haha...���ǽ�ʬ")
	local npcLevel = GetCharacterLevel(sceneId, targetId)
	local teamCount = GetTeamMemberCount(sceneId, selfId)
	local teamLeaderID = GetTeamLeader(sceneId, selfId)
	local teamLeaderLevel = GetCharacterLevel(sceneId, teamLeaderID)
	
	--PrintNum(teamLeaderID)
	--PrintNum(teamCount)
	--PrintNum(teamLeaderLevel)
	--PrintNum(npcLevel)
	
	if  teamCount < 2 then	
		BeginEvent(sceneId)
			AddText(sceneId, "D�m coi th߶ng ta, ph�i c� nh�m 3 ng߶i m�i xong, ha ha")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	elseif teamLeaderLevel < npcLevel then
		--��ʾ��������
		BeginEvent(sceneId)
			AddText(sceneId, "D�m coi th߶ng ta, ��ng c�p cao h�n s� bi�t l�i h�i c�a ta")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return

	else
		--����npc, ��ʵ��������һ��ģ����ͬ���µ�NPC
		local PosX,PosZ=LuaFnGetWorldPos(sceneId, targetId)
		PosX=floor(PosX)
		PosZ=floor(PosZ)
		
		LuaFnDeleteMonster(sceneId, targetId)
		local aifile = random(10)
		LuaFnCreateMonster(sceneId, 1551, PosX, PosZ, 0, aifile, -1)
	
	end
	
end
