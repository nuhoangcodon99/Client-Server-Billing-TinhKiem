-- ËÕÖİ
--Éú»î¼¼ÄÜ
--ÎÊÂ·½Å±¾
x500023_g_scriptId = 500023

-- ÎÊÂ·ÀàĞÍ type: 1 Îª¶ş¼¶²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500023_g_Signpost = {
		{ type=2, name="ĞÕi sß tr°ng tr÷t", x=64, y=200, tip="Lâm Hoà T¸nh ", desc="Ra khöi Tô Châu Ğông Môn ği v« hß¾ng Nam, qua 1 cây c¥u nhö s¨ nhìn th¤y ĞÕi sß tr°ng tr÷t Lâm Hòa T¸nh (64, 200) . „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		{ type=2, name="ĞÕi sß khai thác mö", x=259, y=132, tip="Trß½ng Ti¬u Hà ", desc="ĞÕi sß khai khoáng Trß½ng Ti¬u Hà (259, 132) trong ti®m vû khí · Thành Ğông. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		{ type=2, name="ĞÕi sß hái thu¯c", x=106, y=109, tip="Vß½ng Th¦m Chi ", desc="ĞÕi sß hái thäo dßşc Vß½ng Th¦m Chi (106, 109) · Tây Th¸. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		{ type=2, name="ĞÕi sß câu cá", x=238, y=77, tip="Tß·ng Bình ", desc="ĞÕi sß câu cá Tß·ng Bình (238, 77) · bªn B¡c Ğông thành. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		{ type=2, name="ĞÕi sß mÛ ngh®", x=109, y=130, tip="T¢ng Tam Tïnh ", desc="ĞÕi sß công ngh® T¢ng Tam Tïnh (109, 130) · Tây Th¸. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		{ type=2, name="ĞÕi sß may vá", x=211, y=90, tip="Dß Hoá Long ", desc="ĞÕi sß may m£c Dß Hóa Long (211, 90) · g¥n B¡c Th¸. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		{ type=2, name="ĞÕi sß luy®n kim", x=251, y=151, tip="Tiªt Chúc ", desc="Ğúc kiªm ğÕi sß Tiªt Chúc (251, 151) · ti®m vû khí thành Ğông. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		{ type=2, name="ĞÕi sß n¤u ån", x=189, y=173, tip="Trí Hoá ", desc="ĞÕi sß n¤u nß¾ng Trí Hoá (189, 173) · cØa ti®m thu¯c phía B¡c TrÕng Viên Trß¶ng. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		{ type=2, name="ÖØÙÅä·½", x=96, y=127, tip="Ğ¡¸ß", desc="#GÖØÙÅä·½£º#WÒòÄ³·N²»¿É¿ØÔ­ÒòÔì³ÉÍæ¼ÒÒÑŒW•şµÄ#G¼Ó¹¤²ÄÁÏîÅä·½¡¢ğzî^Åä·½¡¢³õ/ÖĞ/¸ß¼‰Ê³²ÄîÅä·½¡¢åë³ßÌìÑÄÅä·½#WGÊ§£¬¿ÉÒÔµ½#GÌKÖİ#WµÄ#GĞ¡¸ß£¨96£¬127£©#WÙÙIÖØ#GÙÅä·½#W£¬Æä³öÊÛƒr¸ñ#G½yÒ»é1ãy#W¡£", eventId=-1 },
		{ type=2, name="²ÄÁÏ¼Ó¹¤½é½B", x=-1, y=-1, tip="", desc="#{CLJG_20071204}", eventId=-1 },	
}

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x500023_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500023_g_Signpost do
		AddNumText(sceneId, x500023_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x500023_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500023_g_Signpost[GetNumText()]

	if signpost.type == 1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. "£º")
			CallScriptFunction( signpost.eventId, "OnEnumerate", sceneId, selfId, targetId )
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	elseif signpost.type == 2 then
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, signpost.x, signpost.y, signpost.tip )

		BeginEvent(sceneId)
			AddText(sceneId, signpost.desc)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	end

end
