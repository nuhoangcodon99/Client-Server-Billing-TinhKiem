x001097_g_scriptId = 001097
x001097_g_active =0

function x001097_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		if x001097_g_active ==1 then
			strText = "TÕi hÕ là Hoan LÕc Ti¬u Ð°ng phø trách phát #GNgân Chùy #Wcho t¤t cä b¢ng hæu Thiên Long Bát Bµ. Hãy ðªn g£p ta #Gsau m²i 2 tiªng #Wð¬ nh§n lînh #GNgân Chùy #Wmi­n phí dùng trong hoÕt ðµng #YRung HÕnh Phúc ÐÕi Chuông " --..GetQuarterTime()
			AddText( sceneId, strText )
			AddNumText( sceneId, x001097_g_scriptId, "#WNh§n mi­n phí 1 #GNgân Chùy", 3, 1)
			AddNumText( sceneId, x001097_g_scriptId, "# Làm sao có ðßþc các loÕi chùy",11 , 2)
		else
			local strText = "Sñ ki®n ðã kªt thúc! Cám ½n các hÕ ðã tham gia, chúc các hÕ nåm m¾i an khang th¸nh vßþng!  "
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
			--AddText(sceneId,"#W L¥n trß¾c nh§n#G Ngân Chùy#W cách l¥n nh§n này chßa ðü #Y2 tiªng.#W M¶i b¢ng hæu hãy quay lÕi sau!!!!")
			x001097_FailTips(sceneId, selfId,"#W L¥n trß¾c nh§n#G Ngân Chùy#W cách l¥n nh§n này chßa ðü #Y2 tiªng.#W M¶i b¢ng hæu hãy quay lÕi sau!!!!")
			x001097_Tips(sceneId, selfId,targetId,"#W L¥n trß¾c nh§n#G Ngân Chùy#W cách l¥n nh§n này chßa ðü #Y2 tiªng.#W M¶i b¢ng hæu hãy quay lÕi sau!!!!")
			return
		end
		local slot =LuaFnGetPropertyBagSpace( sceneId, selfId) --check slot bag
		if slot<1 then
		
			x001097_Tips(sceneId,selfId,targetId,"Tay näi cüa b¢ng hæu không ðü ch² tr¯ng!")
			x001097_FailTips(sceneId,selfId,"Tay näi cüa b¢ng hæu không ðü ch² tr¯ng!")
			return
		end
		local BagPos = TryRecieveItem( sceneId, selfId, 30504179, QUALITY_MUST_BE_CHANGE )
		if -1 ~= BagPos then
			LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
		end
		
		SetMissionData(sceneId,selfId,MD_RUNGCHUONG2013,CurHourTime) --set mission data
		x001097_FailTips(sceneId,selfId,"B¢ng hæu v×a nh§n ðßþc 1 #GNgân Chùy")
		x001097_Tips(sceneId,selfId,targetId,"B¢ng hæu v×a nh§n ðßþc 1 #GNgân Chùy")
		return
	end
	if GetNumText() == 2 then
		BeginEvent( sceneId )
			AddText(sceneId,"#YKim Chùy#W có th¬ có ðßþc nh¶ vßþt qua phø bän #GÁc T£c, Ác Bá, Nhi®m vø Tu¥n Hoàn Tô Châu ho£c #Wcó th¬ mua trong #Yshop Ði¬m T£ng")
			AddText(sceneId,"#r#GNgân Chùy#W có th¬ nh§n mi­n phí sau m²i 2 tiªng tÕi NPC #YHoan LÕc Ti¬u Ð°ng#W tÕi #GLÕc Dß½ng(274,252)")
			AddText(sceneId,"#r#cff9966Mµc Chùy #Wcó th¬ có ðßþc nh¶ viêc #cFF0000tiêu di®t quái v§t #W· #Gcác bän ð°, dã ngoÕi và s½n ðµng")
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
