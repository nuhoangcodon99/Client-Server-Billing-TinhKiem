--NPC chi�n tr߶ng

--************************--
x910071_g_ScriptId = 910071
x910071_g_eventlist = {910072}
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910071_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Th�i gian g�n ��y, hai n߾c #GT�ng Li�u#W chi�n tranh li�n mi�n, khi�n b� t�nh l�m than, cu�c s�ng t�i c�c nay c�ng kh� kh�n h�n.")
		AddText(sceneId,"V�i b�n ph�n l� nh�n s� v� l�m giang h�, c�c v� anh h�ng h�y tham gia tr�n chi�n n�y, ��ng v� b�n c�ng l�, d�p �ch c�ng nhanh th� b�ch t�nh c�ng �� kh�.")
		AddText(sceneId,"Chi�n tr߶ng #GT�ng Li�u#W b�t �u v�o m�i #G19 gi�#W m�i ng�y. C�c v� ch� � th�i gian tham gia!")
		for i,eventId in x910071_g_eventlist do
			CallScriptFunction(eventId,"OnEnumerate",sceneId,selfId,targetId)
		end
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910071_OnEventRequest(sceneId,selfId,targetId,eventId)

	for i,findId in x910071_g_eventlist do
		if eventId==findId then
			CallScriptFunction(eventId,"OnDefaultEvent",sceneId,selfId,targetId)
			return
		end
	end
	
end
