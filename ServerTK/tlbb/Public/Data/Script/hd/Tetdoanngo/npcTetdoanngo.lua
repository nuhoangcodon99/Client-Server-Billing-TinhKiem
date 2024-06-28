x001085_g_scriptId = 001085
function x001085_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "#WT�t c� b�ng h�u trong th� gi�i Thi�n Long B�t B� T�nh Ki�m h�y �i thu th�p �� 4 ch�  #Y�o�n - T� - Sum - V�y #Wv� mang t�i s� gi� s� ki�n � �i m�m b�nh ph� h�p"
		AddText( sceneId, strText )
		AddNumText( sceneId, x001085_g_scriptId, "бi m�m b�nh", 3, 1)
		AddNumText( sceneId, x001085_g_scriptId, "V� event #Gбi m�m b�nh", 11, 2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
function x001085_OnEventRequest( sceneId, selfId, targetId, eventId )
	local sum = LuaFnGetAvailableItemCount(sceneId, selfId,20700042)-- �m s� ch� Sum
	local vay= LuaFnGetAvailableItemCount(sceneId, selfId,20700043)-- �m s� ch� V�y
	local doan = LuaFnGetAvailableItemCount(sceneId, selfId,20700044)-- �m s� ch� �o�n
	local tu = LuaFnGetAvailableItemCount(sceneId, selfId,20700045)-- �m s� ch� T�
	
	if GetNumText()==1 then
	local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
		if slot <1 then
			x001085_Tips(sceneId, selfId,targetId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
			x001085_FailTips(sceneId,selfId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
			return
		end
		BeginEvent( sceneId )
			local strText = "#WM�i c�c h� l�a ch�n k�ch c� m�m b�nh mu�n �i"
			AddText( sceneId, strText )
			AddNumText( sceneId, x001085_g_scriptId, "бi m�m b�nh ti�u", 3, 3)
			AddNumText( sceneId, x001085_g_scriptId, "бi m�m b�nh trung", 3, 4)
			AddNumText( sceneId, x001085_g_scriptId, "бi m�m b�nh ��i", 3, 5)
			AddNumText( sceneId, x001085_g_scriptId, "Li�n quan t�i k�ch c� m�m b�nh", 11, 6)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if GetNumText()==3 then
		if sum<1 or vay<1 or doan<1 or tu<1 then
			x001085_Tips(sceneId, selfId,targetId,"B�ng h�u kh�ng �� 4 lo�i ch�!!")
			x001085_FailTips(sceneId, selfId,"B�ng h�u kh�ng �� 4 lo�i ch�!!")
			return
		else
			local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
			LuaFnDelAvailableItem(sceneId,selfId,20700042,1)
			LuaFnDelAvailableItem(sceneId,selfId,20700043,1)
			LuaFnDelAvailableItem(sceneId,selfId,20700044,1)
			LuaFnDelAvailableItem(sceneId,selfId,20700045,1)

			local BagPos = TryRecieveItem( sceneId, selfId, 30006015, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			x001085_Tips(sceneId, selfId,targetId,"бi m�m b�nh th�nh c�ng")
			x001085_FailTips(sceneId,selfId,"бi m�m b�nh th�nh c�ng")
			return
		end
	end
			
	if GetNumText()==4 then
		if sum<10 or vay<10 or doan<10 or tu<10 then
			x001085_Tips(sceneId, selfId,targetId,"B�ng h�u kh�ng �� 4 lo�i ch�!!")
			x001085_FailTips(sceneId, selfId,"B�ng h�u kh�ng �� 4 lo�i ch�!!")
			return
		else
	
			LuaFnDelAvailableItem(sceneId,selfId,20700042,10)
			LuaFnDelAvailableItem(sceneId,selfId,20700043,10)
			LuaFnDelAvailableItem(sceneId,selfId,20700044,10)
			LuaFnDelAvailableItem(sceneId,selfId,20700045,10)

			local BagPos = TryRecieveItem( sceneId, selfId, 30006016, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			x001085_Tips(sceneId, selfId,targetId,"бi m�m b�nh th�nh c�ng")
			x001085_FailTips(sceneId,selfId,"бi m�m b�nh th�nh c�ng")
			return
		end
	end
	
	if GetNumText()==5 then
		if sum<50 or vay<50 or doan<50 or tu<50 then
			x001085_Tips(sceneId, selfId,targetId,"B�ng h�u kh�ng �� 4 lo�i ch�!!")
			x001085_FailTips(sceneId, selfId,"B�ng h�u kh�ng �� 4 lo�i ch�!!")
			return
		else
			local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)

			LuaFnDelAvailableItem(sceneId,selfId,20700042,50)
			LuaFnDelAvailableItem(sceneId,selfId,20700043,50)
			LuaFnDelAvailableItem(sceneId,selfId,20700044,50)
			LuaFnDelAvailableItem(sceneId,selfId,20700045,50)

			local BagPos = TryRecieveItem( sceneId, selfId, 30006017, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			x001085_Tips(sceneId, selfId,targetId,"бi m�m b�nh th�nh c�ng")
			x001085_FailTips(sceneId,selfId,"бi m�m b�nh th�nh c�ng")
			return
		end
	end
	
	if GetNumText()==6 then
		BeginEvent( sceneId )
			local text1 ="#GM�m b�nh Ti�u #Wc�n #Y�o�n - T� - Sum - V�y#W m�i lo�i 1 ch�. #r#GM�m b�nh Trung c�n �o�n - T� - Sum - V�y#W m�i lo�i 10 ch�#r"
			local text2 = "#GM�m b�nh ��i #Wc�n #Y�o�n - T� - Sum - V�y#W m�i lo�i 50 ch�. L� d� nhi�n, ph�n th߷ng c�a t�ng m�m b�nh s� kh�c nhau."
			AddText(sceneId,text1)
			AddText(sceneId,text2)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if GetNumText()==2 then
		BeginEvent( sceneId )
			local text1 ="#WTham gia c�c ho�t �ng #GTr�n Long K� Cu�c, �c T�c, �c B�, L�u Lan T�m B�o, T� Ch�u 1 2 3.... #WB�ng h�u c� t� l� nh�n ���c c�c k� t� c� t�n: #Y�o�n - T� - Sum - V�y#r"
			local text2="#WMang �� 4 k� t� #Y�o�n - T� - Sum - V�y, #W�n g�p t�i h�, r�t nhi�u v�t ph�m b�t ng� t� Thi�n Long B�t B� T�nh Ki�m �ang ch� ��n b�ng h�u !!"
			AddText(sceneId,text1)
			AddText(sceneId,text2)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
end

function x001085_Tips(sceneId, selfId,targetId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x001085_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
