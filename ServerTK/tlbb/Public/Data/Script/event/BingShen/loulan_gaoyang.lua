--Ph� b�n Binh Th�nh K� Tr�n
--NPC L�u Lan - Cao D߽ng
--Code by S�i

--************************--
x910200_g_ScriptId=910200												
x910200_g_Event_ScriptId=910201												--Script event
--************************--
x910200_g_Introduce="Li�u Ho�ng s�c phong #GGia Lu�t Li�n Th�nh#W th� t߾ng �n #GChinh nam ti�n phong#W, c�ng v�i 4 t�n th� v� c�ng xu�t hi�n uy hi�p nh� T�ng. Tr߾c t�nh h�nh n�y, T�ng tri�u c� quan th��ng th� #GCao D߽ng#W c�u c�u s� gi�p �� c�a v� l�m qu�n h�ng."
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910200_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,x910200_g_Introduce)
		CallScriptFunction(x910200_g_Event_ScriptId,"OnEnumerate",sceneId,selfId,targetId)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,x910200_g_ScriptId)
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910200_OnEventRequest(sceneId,selfId,targetId,eventId)

	if eventId==x910200_g_Event_ScriptId then
		CallScriptFunction(eventId,"OnDefaultEvent",sceneId,selfId,targetId)
		return
	end
	
end