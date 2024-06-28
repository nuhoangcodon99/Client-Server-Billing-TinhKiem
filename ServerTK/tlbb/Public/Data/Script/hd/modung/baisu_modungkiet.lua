--NPC b�i s� M� Dung
--Author: mrhong@2gvn
--Date: 1/3/2012

x000503_g_scriptId = 000503

function x000503_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"Tr߷ng m�n s� huynh c� vi�c tr�ng ��i ph�i l�m, nh�ng vi�c nh�n � � b�i s� giao cho ta ph� tr�ch")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 and GetHumanMenpaiPoint(sceneId, selfId) == 0 then 
			AddNumText(sceneId, x000503_g_scriptId, "Gia nh�p m�n ph�i",6,0)
		end
		AddNumText(sceneId, x000503_g_scriptId, "Gi�i thi�u m�n ph�i",11,11)
		AddNumText(sceneId, x000503_g_scriptId, "H�c k� n�ng m�n ph�i",11,12)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000503_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		if GetLevel( sceneId, selfId ) < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ph�i M� Dung ta, ch� thu nh�n ng߶i t� c�p 10 tr� l�n")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if GetMenPai(sceneId, selfId) ~= 9  then
			BeginEvent(sceneId)
				AddText(sceneId,"G� n�y hay g�m nh�! ng߽i �� l� ng߶i c�a m�n ph�i kh�c, c�n t�i t�m M� Dung ta l�m g�?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if GetHumanMenpaiPoint(sceneId, selfId) ~= 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� �� gia nh�p M� Dung r�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			BeginEvent(sceneId)
				AddText(sceneId,"  H�y s�p x�p l�i tay n�i, c�n 1 v� tr� tr�ng, ta s� th߷ng cho ng߽i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		LuaFnJoinMenpai(sceneId, selfId, targetId, 9)
		LuaFnSetXinFaLevel(sceneId,selfId,64,10)
		LuaFnSetXinFaLevel(sceneId,selfId,65,10)
		LuaFnSetXinFaLevel(sceneId,selfId,66,10)
		LuaFnSetXinFaLevel(sceneId,selfId,67,1)
		LuaFnSetXinFaLevel(sceneId,selfId,68,1)
		LuaFnSetXinFaLevel(sceneId,selfId,69,1)
--		LuaFnSetXinFaLevel(sceneId,selfId,70,119)
--		LuaFnSetXinFaLevel(sceneId,selfId,71,119)
		SetHumanMenpaiPoint(sceneId, selfId, 1)
		BeginEvent(sceneId)
	  		AddText(sceneId,"C�c h� �� gia nh�p M� Dung!");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId,selfId, targetId)
	  			
	  	if TryRecieveItem( sceneId, selfId, 10124198, 1 ) >= 0 then
			str		= "#YC�c h� �� nh�n ���c "..GetItemName( sceneId, 10124001 ).."."
			--x000503_MsgBox( sceneId, selfId, str )				
		end

		LuaFnMsg2Player( sceneId, selfId,"C�c h� �� gia nh�p M� Dung!",MSG2PLAYER_PARA)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 163, 0)
	end

	if GetNumText()==11 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"  Ю t� M� Dung th� gia n�i c�ng th�m h�u, chi�u th�c tinh qu�i v� c�ng.Khi � t� M� Dung giao chi�n v�i �ch th� chi�u g�y �ng �p l�ng �ng lu�n lu�n khi�n �i ph߽ng kinh h�i v� c�ng, c�ng t� �� l� ��t th�ng l�i.");
	  		AddText(sceneId,"  Ю t� M� Dung giao �u v�i � t� c�c m�n ph�i kh�c th߶ng nh�m v�o s� � c�a �i ph߽ng m� c�ng k�ch, xu�t qu� nh�p th�n khi�n ai ai c�ng �n l�nh, t� �� ���c s� kinh n� c�a v� l�m �ng ��o.#r  Ю t� M� Dung gia nghi�n c�u v�n ch߽ng t�p luy�n v� c�ng, m�t khi c� ng߶i b� �c hi�p th� l�p t�c cu�ng phong n� v� n�i l�n cho n�n thi�n h� v� l�m nh�n s� �u kh�ng mu�n giao ch�nh ch�nh di�n v�i ng߶i c�a M� Dung gia.");
	  		AddText(sceneId,"  Ю t� M� Dung gia nghi�n c�u v�n ch߽ng t�p luy�n v� c�ng, m�t khi c� ng߶i b� �c hi�p th� l�p t�c cu�ng phong n� v� n�i l�n cho n�n thi�n h� v� l�m nh�n s� �u kh�ng mu�n giao ch�nh ch�nh di�n v�i ng߶i c�a M� Dung gia.");
	  		AddText(sceneId,"  Ю t� M� Dung gia gi�i v� #cff0000n�i c�ng#W v� #cff0000c�ng k�ch thu�c t�nh Huy�n#W");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
	end
	if GetNumText()==12 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"  M� Dung Thanh S�n l� cao th� m�i c�a M� Dung gia, c�c h� c� th� t�m �ng ta h�c v� c�ng. �ng ta � ph�a T�y Nam Y�n T� �.");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
	end

end

function x000503_AddMsg( sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg)
	EndEvent(sceneId)
	DispatchEventList(sceneId, selfId, targetId)
end

function x000503_AddTips( sceneId, selfId, tips)
	BeginEvent(sceneId)
		AddText(sceneId, tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end