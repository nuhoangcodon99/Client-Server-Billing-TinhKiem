--Ph� b�n Ph�ng Ho�ng L�ng M�
--L� D�
--Code by S�i

--************************--
x930512_g_ScriptId=930512												
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x930512_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,"Ta c� th� gi�p g� c�c h�")
		AddNumText(sceneId,x930512_g_ScriptId,"��a ta ra kh�i ��y",9,0)			--R�i ph� b�n
		AddNumText(sceneId,x930512_g_ScriptId,"Ta ch� �i ngang qua...",-1,1)	--B� qua
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