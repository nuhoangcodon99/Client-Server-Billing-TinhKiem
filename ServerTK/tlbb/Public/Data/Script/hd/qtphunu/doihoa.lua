--NPC �i hoa 8-3-2014
x001098_g_scriptId = 001098
function x001098_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText ="T�i h� l� ng߶i gi�p nh�ng b�ng hoa h�ng b� nh� kia th�m r�c r�. B�ng h�u c� hoa h�ng kh�ng, mang ch�ng t�i ��y ta s� gi�p...!!!"
		AddText( sceneId, strText )
		AddNumText( sceneId, x001098_g_scriptId, "D�ng hoa h�ng nh� k�t th�nh ��a hoa l�n", 3, 1)
		AddNumText( sceneId, x001098_g_scriptId, "#V� s� ki�n m�ng 8 th�ng 3",11 , 8)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
function x001098_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		BeginEvent( sceneId )
				AddText( sceneId, "M�i b�ng h�u l�a ch�n h�nh th�c �i hoa" )
				AddNumText( sceneId, x001098_g_scriptId, "#RD�ng #Y400#W b�ng hoa nh� #W�i l�y #G999 ��a h�ng", 3, 2)
				AddNumText( sceneId, x001098_g_scriptId, "#RD�ng #Y10 b�ng hoa nh� #W�i 1 b� hoa #G10 b�ng h�ng", 3, 3)
				AddNumText( sceneId, x001098_g_scriptId, "#RD�ng #Y15 b�ng hoa nh� #W�i 1 b� #G15 ��a Mai Kh�i", 3, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if GetNumText() == 2 then -- doi 400 bong
			
		local number = LuaFnGetAvailableItemCount(sceneId, selfId, 30509008)
		local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
		if number < 400 then
			
			local strText = "B�ng h�u ph�i c� �� #400 b�ng h�ng nh� #Wth� ta m�i gi�p b�ng h�u ���c"
			x001098_Tips(sceneId,selfId,targetId,strText)
			
			return
		elseif slot < 1 then
				x001098_Tips(sceneId,selfId,targetId,"Tay n�i c�a b�ng h�u kh�ng �� ch� tr�ng!")
				x001098_FailTips(sceneId,selfId,"Tay n�i c�a b�ng h�u kh�ng �� ch� tr�ng!")
			return
		else
			LuaFnDelAvailableItem(sceneId,selfId,30509008,400) --xoa item
			local BagPos = TryRecieveItem( sceneId, selfId, 30509011, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
		end		
		x001098_Tips(sceneId,selfId,targetId,"B�ng h�u v�a nh�n ���c 1 #G999 ��a h�ng")
		x001098_FailTips(sceneId,selfId,"B�ng h�u v�a nh�n ���c #G999 ��a h�ng")
		return
	end
	if GetNumText() == 3 then-- doi 10 bong
			
		local number = LuaFnGetAvailableItemCount(sceneId, selfId, 30509008)
		local slot =LuaFnGetPropertyBagSpace( sceneId, selfId) --check slot bag
		if number<10 then
				local text = "B�ng h�u ph�i c� �� #R10 b�ng h�ng nh� #Wth� ta m�i gi�p b�ng h�u ���c"
				x001098_Tips(sceneId,selfId,targetId,text)
			return
		elseif slot<1 then
				x001098_Tips(sceneId,selfId,targetId,"Tay n�i c�a b�ng h�u kh�ng �� ch� tr�ng!")
				x001098_FailTips(sceneId,selfId,"Tay n�i c�a b�ng h�u kh�ng �� ch� tr�ng!")
			return
		else
			LuaFnDelAvailableItem(sceneId,selfId,30509008,10) --xoa item
			local BagPos = TryRecieveItem( sceneId, selfId, 30509013, QUALITY_MUST_BE_CHANGE )
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
		end		
		x001098_FailTips(sceneId,selfId,"B�ng h�u v�a nh�n ���c 1 b� #Y10 b�ng h�ng")
		x001098_Tips(sceneId,selfId,targetId,"B�ng h�u v�a nh�n ���c 1 b�#Y 10 b�ng h�ng")
			
		return
	end

	if GetNumText() == 4 then-- doi 15 bong
			
		local number = LuaFnGetAvailableItemCount(sceneId, selfId, 30509008)
		local slot =LuaFnGetPropertyBagSpace( sceneId, selfId) --check slot bag
		if number<15 then
				local text = "B�ng h�u ph�i c� �� #R15 b�ng h�ng nh� #Wth� ta m�i gi�p b�ng h�u ���c"
				x001098_Tips(sceneId,selfId,targetId,text)
			return
		elseif slot<1 then
				x001098_Tips(sceneId,selfId,targetId,"Tay n�i c�a b�ng h�u kh�ng �� ch� tr�ng!")
				x001098_FailTips(sceneId,selfId,"Tay n�i c�a b�ng h�u kh�ng �� ch� tr�ng!")
			return
		else
			LuaFnDelAvailableItem(sceneId,selfId,30509008,15) --xoa item
			local BagPos = TryRecieveItem( sceneId, selfId, 30509014, QUALITY_MUST_BE_CHANGE )
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
		end		
		x001098_FailTips(sceneId,selfId,"B�ng h�u v�a nh�n ���c 1 b� #Y15 ��a Mai Kh�i")
		x001098_Tips(sceneId,selfId,targetId,"B�ng h�u v�a nh�n ���c 1 b� #Y15 ��a Mai Kh�i")
			
		return
	end


	if GetNumText() == 8 then --huong dan su kien
		BeginEvent( sceneId )
			local strText1="Hoa h�ng nh� c� th� thu th�p ���c b�ng c�ch tham gia c�c ph� b�n: �c T�c, �c B�, Q 123 T� Ch�u ho�c mua trong ti�m KNB. #rT�ng hoa: Khi t�ng �i ph߽ng 1 b� 999 ��a h�ng, c� b�ng h�u v� �i ph߽ng �u c� c� h�i nh�n ���c nh�ng v�t ph�m b�t ng� nh�n d�p Qu�c t� Ph� n� 8-3"
			--local strText2="T�ng hoa: Khi t�ng �i ph߽ng 1 b� 999 ��a h�ng, c� b�ng h�u v� �i ph߽ng �u c� c� h�i nh�n ���c nh�ng v�t ph�m b�t ng� nh�n d�p Qu�c t� Ph� n� 8-3"
			local strText3="N�u kh�ng c� �i�u ki�n � c� ���c 1 b� 999 ��a h�ng, b�ng h�u c�ng c� th� d�ng 1 b�ng h�ng, 10 b�ng h�ng ho�c 15 ��a Mai Kh�i �em t�ng ng߶i �y."
			localstrText4="C�ng s� c� nh�ng m�n qu� khi b�ng h�u t�ng �i ph߽ng nh�ng b�ng hoa nh� xinh x�n �� �y!!!#r ��y c�ng l� d�p r�t t�t � b�ng h�u b�y t� t�m ch�n t�nh v�i ng߶i �y ��. C�n ng�i ng�n g� n�a m� kh�ng th�?????"
		--	local strText5="��y c�ng l� d�p r�t t�t � b�ng h�u b�y t� t�m ch�n t�nh v�i ng߶i �y ��. C�n ng�i ng�n g� n�a m� kh�ng th�?????"
				AddText(sceneId,strText1)
				AddText(sceneId,strText2)
				AddText(sceneId,strText3)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--end hd
end
function x001098_Tips(sceneId, selfId,targetId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x001098_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
