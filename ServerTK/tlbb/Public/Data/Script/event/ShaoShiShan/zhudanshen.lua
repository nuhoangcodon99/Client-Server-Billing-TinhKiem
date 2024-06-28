--Thi�u Th�t S�n
--Chu �an Th�n
--Author: Ho�ng Steven

--************************--
x910161_g_ScriptId=910161												
x910161_g_Event_ScriptId=910159												--Script event
--************************--
x910161_g_Introduce="C�i Bang ph�t Thi�p Anh H�ng, m�i c�c h�o ki�t v� l�m Trung Nguy�n t� t�u � Thi�u L�m, To�n Qu�n Thanh d� �nh l�i d�ng c� h�i l�n n�y khi�n cho C�i Bang g�y �p l�c cho  Thi�u L�m � tr� th�nh V� L�m Ю Nh�t, n�m trong tay c� v� l�m Trung Nguy�n; kh�ng nh� mong mu�n, s� xu�t hi�n c�a Ti�u Phong, �� khi�n cho chuy�n n�y c� bi�n chuy�n, � tr�n Thi�u Th�t S�n, ba ng߶i Ti�u Phong, �o�n D� v� H� Tr�c k�t ngh�a kim lan, k� vai chi�n �u v�i Trang T� Hi�n, �inh Xu�n Thu v� M� Dung Ph�c, gi�p Thi�u L�m v��t qua ki�p n�n; sau �� Ti�u Vi�n S�n v� M� Dung B�c �t ng�t xu�t hi�n, khi�n cho ch�n t߾ng s� vi�c huy�t t�y Nh�n M�n Quan n�m �� b� b�i l� tr߾c m�t m�i ng߶i trong thi�n h�, nh�ng T�o иa Th�n T�ng �n c� trong T�ng Kinh C�c �� d�ng thu�t Sinh T� Lu�n H�i Quy T�c, �� h�a gi�i huy�t h�i th�m th� k�o d�i nhi�u n�m gi�a cha con h� Ti�u v� gia t�c M� Dung.#rNg߶i ch�i#G c�p 80#W tr� l�n c� th� tham gia."
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910161_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,x910161_g_Introduce)
		CallScriptFunction(x910161_g_Event_ScriptId,"OnEnumerate",sceneId,selfId,targetId)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,x910161_g_ScriptId)
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910161_OnEventRequest(sceneId,selfId,targetId,eventId)

	if eventId==x910161_g_Event_ScriptId then
		CallScriptFunction(eventId,"OnDefaultEvent",sceneId,selfId,targetId)
		return
	end
	
end