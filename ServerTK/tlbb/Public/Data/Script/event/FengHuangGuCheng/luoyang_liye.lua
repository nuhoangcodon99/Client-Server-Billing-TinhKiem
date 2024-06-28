--NPC ti�p d�n Ph�ng Ho�ng C� Th�nh

--************************--
x930501_g_ScriptId = 930501
x930501_g_eventlist = {930500,930510}
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x930501_OnDefaultEvent(sceneId,selfId,targetId)

	--*****************--
	BeginEvent(sceneId)
		AddText(sceneId,"N�i chi�n tr߶ng kh�c li�t mang t�n #GPh�ng Ho�ng C� Th�nh#W l� n�i di�n ra r�t nhi�u cu�c chi�n ��m m�u c�a qu�n h�ng tr�n giang h�.")
		AddText(sceneId,"Ho�t �ng khai m� v�o #G21 gi�#W m�i ng�y, b�o danh #Gtr߾c 30 ph�t#W. C�c h� h�y n�m v�ng l�ch tr�nh m� tham gia nh�.")
		for i,eventId in x930501_g_eventlist do
			CallScriptFunction(eventId,"OnEnumerate",sceneId,selfId,targetId)
		end
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	--*****************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x930501_OnEventRequest(sceneId,selfId,targetId,eventId)

	--*****************--
	for i,findId in x930501_g_eventlist do
		if eventId==findId then
			CallScriptFunction(eventId,"OnDefaultEvent",sceneId,selfId,targetId)
			return
		end
	end
	--*****************--
	
end
