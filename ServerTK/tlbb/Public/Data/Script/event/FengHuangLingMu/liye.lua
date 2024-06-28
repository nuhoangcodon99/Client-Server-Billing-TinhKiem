--Phø bän Phøng Hoàng Lång Mµ
--Lý Dã
--Code by Sói

--************************--
x930512_g_ScriptId=930512												
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x930512_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,"Ta có th¬ giúp gì các hÕ")
		AddNumText(sceneId,x930512_g_ScriptId,"Ðßa ta ra khöi ðây",9,0)			--R¶i phø bän
		AddNumText(sceneId,x930512_g_ScriptId,"Ta chï ði ngang qua...",-1,1)	--Bö qua
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x930512_OnEventRequest(sceneId,selfId,targetId,eventId)
local key=GetNumText()

	--************************--
	if key==1 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
	end
	--************************--
	if key==0 then
		local Scene=LuaFnGetCopySceneData_Param(sceneId,3)
		local x=LuaFnGetCopySceneData_Param(sceneId,4)
		local y=LuaFnGetCopySceneData_Param(sceneId,5)
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,Scene,x,y)
	end
	--************************--
	
end