--动态生成的僵尸

--**********************************
--事件交互入口
--**********************************
function x002073_OnDefaultEvent( sceneId, selfId, targetId )
	--判断是否能够激活该npc的条件
	--PrintStr("haha...我是僵尸")
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
			AddText(sceneId, "D醡 coi th叨ng ta, ph鋓 c� nh髆 3 ng叨i m緄 xong, ha ha")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	elseif teamLeaderLevel < npcLevel then
		--提示条件不符
		BeginEvent(sceneId)
			AddText(sceneId, "D醡 coi th叨ng ta, 鹌ng c cao h絥 s� bi猼 l㱮 h読 c黙 ta")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return

	else
		--激活npc, 其实是生成了一个模型相同的新的NPC
		local PosX,PosZ=LuaFnGetWorldPos(sceneId, targetId)
		PosX=floor(PosX)
		PosZ=floor(PosZ)
		
		LuaFnDeleteMonster(sceneId, targetId)
		local aifile = random(10)
		LuaFnCreateMonster(sceneId, 1551, PosX, PosZ, 0, aifile, -1)
	
	end
	
end
