--Ph� b�n T�ng Kinh C�c
--Thi�u L�m V� T�ng
--Author: Ho�ng Steven

--************************--
x910123_g_ScriptId=910123												
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910123_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,"A di �� ph�t! Thi�n tai, thi�n tai!#rT�t c� �u tu�n theo ph�t ph�p, chung quy l�i c�ng �u quay v� c�i �o m�ng m� th�i.#rNh� s߽ng, c�ng nh� �i�n. T�t c� nh�ng n�i th� ch� t�ng �i qua, nh�ng ng߶i th� ch� �� t�ng ti�p x�c �u ch� l� h� �o c� m� th�i...")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	--************************--
	
end