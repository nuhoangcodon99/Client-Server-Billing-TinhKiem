--Thiªu Th¤t S½n
--Tri khách tång
--Author: Hoàng Steven

--************************--
x910160_g_ScriptId=910160												
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910160_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,"A di ðà ph§t...Ti¬u tång có th¬ giúp gì cho thí chü?")
		AddNumText(sceneId,x910160_g_ScriptId,"Ðßa ta ra khöi ðây",9,0)			--R¶i phø bän
		AddNumText(sceneId,x910160_g_ScriptId,"Làm phi«n sß phø...",-1,1)		--Bö qua
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910160_OnEventRequest(sceneId,selfId,targetId,eventId)
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