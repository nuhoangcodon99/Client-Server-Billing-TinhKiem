x402045_g_KillNum = 30

--**********************************
-- 足球死亡
--**********************************
function x402045_OnDie(sceneId, objId, killerId)
	
	local szName = GetName(sceneId, objId)

	if szName == "Song Song Y猲"  or
			szName == "Uy阯 拷ng Qu鋓"  or
			szName == "V鈔 Ngo読 Phi陁"  or
			szName == "M鉵 Thi阯 Tinh"  or
			
			szName == "Song Song Y猲 Y猲"  or
			szName == "Uy阯 拷ng Qu鋓 Qu鋓"  or
			szName == "V鈔 Ngo読 Phi陁 Phi陁"     then
			
		local nKillNum = LuaFnGetCopySceneData_Param(sceneId, x402045_g_KillNum)
		nKillNum = nKillNum + 1
		local str = "秀 ti陁 di畉 t鷆 c : " .. tostring(nKillNum) .. "/149"
		x402045_TipAllHuman(sceneId, str)
		LuaFnSetCopySceneData_Param(sceneId, x402045_g_KillNum, nKillNum)
	end
end

--**********************************
--提示所有副本内玩家
--**********************************
function x402045_TipAllHuman( sceneId, Str )
	-- 获得场景里头的所有人
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	-- 没有人的场景，什么都不做
	if nHumanNum < 1 then
		return
	end
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end

