--Thi�u Th�t S�n
--Tri kh�ch t�ng
--Author: Ho�ng Steven

--************************--
x910160_g_ScriptId=910160												
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910160_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,"A di �� ph�t...Ti�u t�ng c� th� gi�p g� cho th� ch�?")
		AddNumText(sceneId,x910160_g_ScriptId,"��a ta ra kh�i ��y",9,0)			--R�i ph� b�n
		AddNumText(sceneId,x910160_g_ScriptId,"L�m phi�n s� ph�...",-1,1)		--B� qua
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