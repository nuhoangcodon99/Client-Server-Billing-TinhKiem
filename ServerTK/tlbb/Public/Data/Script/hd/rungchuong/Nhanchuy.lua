x001097_g_scriptId = 001097
x001097_g_active =0

function x001097_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		if x001097_g_active ==1 then
			strText = "T�i h� l� Hoan L�c Ti�u аng ph� tr�ch ph�t #GNg�n Ch�y #Wcho t�t c� b�ng h�u Thi�n Long B�t B�. H�y �n g�p ta #Gsau m�i 2 ti�ng #W� nh�n l�nh #GNg�n Ch�y #Wmi�n ph� d�ng trong ho�t �ng #YRung H�nh Ph�c ��i Chu�ng " --..GetQuarterTime()
			AddText( sceneId, strText )
			AddNumText( sceneId, x001097_g_scriptId, "#WNh�n mi�n ph� 1 #GNg�n Ch�y", 3, 1)
			AddNumText( sceneId, x001097_g_scriptId, "# L�m sao c� ���c c�c lo�i ch�y",11 , 2)
		else
			local strText = "S� ki�n �� k�t th�c! C�m �n c�c h� �� tham gia, ch�c c�c h� n�m m�i an khang th�nh v��ng!  "
			AddText( sceneId, strText )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
function x001097_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if x001097_g_active ~= 1 then return end
	
	if MD_RUNGCHUONG2013 == nil then MD_RUNGCHUONG2013 =296 end
	local lannhan = GetMissionData(sceneId,selfId,MD_RUNGCHUONG2013)
	if GetNumText()==1 then
		local CurHourTime = GetQuarterTime()
		if (CurHourTime-lannhan)<8 then
			--AddText(sceneId,"#W L�n tr߾c nh�n#G Ng�n Ch�y#W c�ch l�n nh�n n�y ch�a �� #Y2 ti�ng.#W M�i b�ng h�u h�y quay l�i sau!!!!")
			x001097_FailTips(sceneId, selfId,"#W L�n tr߾c nh�n#G Ng�n Ch�y#W c�ch l�n nh�n n�y ch�a �� #Y2 ti�ng.#W M�i b�ng h�u h�y quay l�i sau!!!!")
			x001097_Tips(sceneId, selfId,targetId,"#W L�n tr߾c nh�n#G Ng�n Ch�y#W c�ch l�n nh�n n�y ch�a �� #Y2 ti�ng.#W M�i b�ng h�u h�y quay l�i sau!!!!")
			return
		end
		local slot =LuaFnGetPropertyBagSpace( sceneId, selfId) --check slot bag
		if slot<1 then
		
			x001097_Tips(sceneId,selfId,targetId,"Tay n�i c�a b�ng h�u kh�ng �� ch� tr�ng!")
			x001097_FailTips(sceneId,selfId,"Tay n�i c�a b�ng h�u kh�ng �� ch� tr�ng!")
			return
		end
		local BagPos = TryRecieveItem( sceneId, selfId, 30504179, QUALITY_MUST_BE_CHANGE )
		if -1 ~= BagPos then
			LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
		end
		
		SetMissionData(sceneId,selfId,MD_RUNGCHUONG2013,CurHourTime) --set mission data
		x001097_FailTips(sceneId,selfId,"B�ng h�u v�a nh�n ���c 1 #GNg�n Ch�y")
		x001097_Tips(sceneId,selfId,targetId,"B�ng h�u v�a nh�n ���c 1 #GNg�n Ch�y")
		return
	end
	if GetNumText() == 2 then
		BeginEvent( sceneId )
			AddText(sceneId,"#YKim Ch�y#W c� th� c� ���c nh� v��t qua ph� b�n #G�c T�c, �c B�, Nhi�m v� Tu�n Ho�n T� Ch�u ho�c #Wc� th� mua trong #Yshop �i�m T�ng")
			AddText(sceneId,"#r#GNg�n Ch�y#W c� th� nh�n mi�n ph� sau m�i 2 ti�ng t�i NPC #YHoan L�c Ti�u аng#W t�i #GL�c D߽ng(274,252)")
			AddText(sceneId,"#r#cff9966M�c Ch�y #Wc� th� c� ���c nh� vi�c #cFF0000ti�u di�t qu�i v�t #W� #Gc�c b�n �, d� ngo�i v� s�n �ng")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end


end
function x001097_Tips(sceneId, selfId,targetId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x001097_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
