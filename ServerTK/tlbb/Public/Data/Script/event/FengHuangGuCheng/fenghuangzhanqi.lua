--Ð¤u trß¶ng Phøng Hoàng C± Thành
--Phøng Hoàng Chiªn KÏ
--Author: Kenvin Sói

--************************--
x930504_g_ScriptId = 930504
x930504_g_Impact=12750
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x930504_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x930504_g_Impact)<1 then
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,4912,0)
		LuaFnCancelSpecificImpact(sceneId,selfId,4912)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x930504_g_Impact,0)
	end
	--************************--
	
end