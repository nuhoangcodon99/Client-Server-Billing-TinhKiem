--NPC Qu�n l� th� M� Dung
--Author: mrhong@2gvn
--Date: 1/3/2012

x000508_g_scriptId = 000508

function x000508_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
--		AddText(sceneId,"Tr߷ng m�n s� huynh c� vi�c tr�ng ��i ph�i l�m, nh�ng vi�c nh�n � � b�i s� giao cho ta ph� tr�ch")
--		AddNumText(sceneId, x000508_g_scriptId, "Gi�i thi�u m�n ph�i",11,11)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000508_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText()==11 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"  Ю t� M� Dung th� gia n�i c�ng th�m h�u, chi�u th�c tinh qu�i v� c�ng.Khi � t� M� Dung giao chi�n v�i �ch th� chi�u g�y �ng �p l�ng �ng lu�n lu�n khi�n �i ph߽ng kinh h�i v� c�ng, c�ng t� �� l� ��t th�ng l�i.");
	  		AddText(sceneId,"  Ю t� M� Dung giao �u v�i � t� c�c m�n ph�i kh�c th߶ng nh�m v�o s� � c�a �i ph߽ng m� c�ng k�ch, xu�t qu� nh�p th�n khi�n ai ai c�ng �n l�nh, t� �� ���c s� kinh n� c�a v� l�m �ng ��o.#r  Ю t� M� Dung gia nghi�n c�u v�n ch߽ng t�p luy�n v� c�ng, m�t khi c� ng߶i b� �c hi�p th� l�p t�c cu�ng phong n� v� n�i l�n cho n�n thi�n h� v� l�m nh�n s� �u kh�ng mu�n giao ch�nh ch�nh di�n v�i ng߶i c�a M� Dung gia.");
	  		AddText(sceneId,"  Ю t� M� Dung gia nghi�n c�u v�n ch߽ng t�p luy�n v� c�ng, m�t khi c� ng߶i b� �c hi�p th� l�p t�c cu�ng phong n� v� n�i l�n cho n�n thi�n h� v� l�m nh�n s� �u kh�ng mu�n giao ch�nh ch�nh di�n v�i ng߶i c�a M� Dung gia.");
	  		AddText(sceneId,"  Ю t� M� Dung gia gi�i v� #cff0000n�i c�ng#W v� #cff0000c�ng k�ch thu�c t�nh Huy�n#W");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
	end

end
function x000508_AddMsg( sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg)
	EndEvent(sceneId)
	DispatchEventList(sceneId, selfId, targetId)
end

function x000508_AddTips( sceneId, selfId, tips)
	BeginEvent(sceneId)
		AddText(sceneId, tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end