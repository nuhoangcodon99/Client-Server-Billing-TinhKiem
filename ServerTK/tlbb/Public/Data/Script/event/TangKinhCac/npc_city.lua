--Ph� b�n T�ng Kinh C�c
--NPC Thi�u L�m V�n Du T�ng Nh�n
--Author: Ho�ng Steven

--************************--
x910122_g_ScriptId=910122												
x910122_g_Event_ScriptId=910120												--Script event
--************************--
x910122_g_Introduce="A di �� ph�t! Kh�ng bi�t t� ��u xu�t hi�n t�n �c t�ng #GM�ng Di�n#W khi�u chi�n #GThi�u L�m T�#W h�ng �o�t b�o v�t c�t gi� trong #GT�ng Kinh C�c#W. C�c v� anh h�ng h�o h�n, c�c v� h�y gi�p #GThi�u L�m#W v��t qua ki�p n�n n�y. Xin �a t� c�c v� nhi�u!"
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910122_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,x910122_g_Introduce)
		CallScriptFunction(x910122_g_Event_ScriptId,"OnEnumerate",sceneId,selfId,targetId)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,x910122_g_ScriptId)
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910122_OnEventRequest(sceneId,selfId,targetId,eventId)

	if eventId==x910122_g_Event_ScriptId then
		CallScriptFunction(eventId,"OnDefaultEvent",sceneId,selfId,targetId)
		return
	end
	
end