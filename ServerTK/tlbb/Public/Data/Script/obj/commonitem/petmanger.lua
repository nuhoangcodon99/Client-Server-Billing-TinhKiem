--petmanger.lua
------------------------------------------------------------------------------------------
--Ò»°ãÎïÆ·µÄÄ¬ÈÏ½Å±¾
--ÊŞÀ¸
--½Å±¾ºÅ
x335805_g_ScriptId	= 335805

--Ğ§¹ûµÄID
x335805_g_Impact		= -1	--Ê¹ÓÃÒ»¸öÌØ¶¨µÄÌØĞ§±àºÅ

--Ó¦ÓÃµ¥Ôª
x335805_g_UseMax		= 4
x335805_g_UseUnit		=
{
	[30509500]				= 1,	--ÊŞÀ¸1¼¶
	[30509501]				= 2,	--ÊŞÀ¸2¼¶
	[30509502]				= 3,	--ÊŞÀ¸3¼¶
	[30509503]				= 4,	--ÊŞÀ¸4¼¶
}

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x335805_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Õâ¸öÎïÆ·µÄÊ¹ÓÃ¹ı³ÌÊÇ·ñÀàËÆÓÚ¼¼ÄÜ£º
--ÏµÍ³»áÔÚÖ´ĞĞ¿ªÊ¼Ê±¼ì²âÕâ¸öº¯ÊıµÄ·µ»ØÖµ£¬Èç¹û·µ»ØÊ§°ÜÔòºöÂÔºóÃæµÄÀàËÆ¼¼ÄÜµÄÖ´ĞĞ¡£
--·µ»Ø1£º¼¼ÄÜÀàËÆµÄÎïÆ·£¬¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜµÄÖ´ĞĞ£»·µ»Ø0£ººöÂÔºóÃæµÄ²Ù×÷¡£
--**********************************
function x335805_IsSkillLikeScript( sceneId, selfId )
	return 1	 --Õâ¸ö½Å±¾ĞèÒª¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓÈ¡ÏûĞ§¹û£º
--ÏµÍ³»áÖ±½Óµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÒÑ¾­È¡Ïû¶ÔÓ¦Ğ§¹û£¬²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»·µ»Ø0£ºÃ»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û£¬¼ÌĞøÖ´ĞĞ¡£
--**********************************
function x335805_CancelImpacts( sceneId, selfId )
	return 0	 --²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕ·µ»Ø0¡£
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜ¼ì²âµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÌõ¼ş¼ì²âÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÌõ¼ş¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--**********************************
function x335805_OnConditionCheck( sceneId, selfId )
	--±³°üÖĞµÄÎ»ÖÃ
	local	bagId			= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	local	numExtra	= x335805_g_UseUnit[ GetItemTableIndexByIndex( sceneId, selfId, bagId ) ]
	if numExtra == nil then
		return 0
	end

	--¼ì²âÎïÆ·ÊÇ·ñ¼ÓËø
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		x335805_MsgBox( sceneId, selfId, "V§t ph¦m ğã b¸ khoá" )
		return 0
	end

	--Ğ£ÑéÊ¹ÓÃµÄÎïÆ·
	if( 1 ~= LuaFnVerifyUsedItem( sceneId, selfId ) ) then
		return 0
	end

	--ÅĞ¶ÏÍæ¼ÒÏÖÔÚÊ¹ÓÃÊŞÀ¸µÄÇé¿ö
	if GetPetNumExtra( sceneId, selfId ) >= x335805_g_UseMax then
		x335805_MsgBox( sceneId, selfId, "Ğã ğÕt s¯ lßşng t¯i ğa trân thú có th¬ mang theo, không th¬ tång thêm không gian" )
		return 0
	end
	
	--modify by xindefeng
	--modify by dun.liu 2008-04-11
	local curShouLanLevel = GetPetNumExtra( sceneId, selfId )
	if curShouLanLevel ~= (numExtra - 1) then
		local szMsg = format("Ğ¬ sØ døng ğßşc Thú Lan c¤p %d , các hÕ c¥n sØ døng Thú Lan c¤p %d trß¾c tiên", curShouLanLevel, curShouLanLevel+1)
		x335805_MsgBox( sceneId, selfId, szMsg)
		return 0
	end
	
	return 1
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜÏûºÄµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÏûºÄ´¦ÀíÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÏûºÄ¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--×¢Òâ£ºÕâ²»¹â¸ºÔğÏûºÄµÄ¼ì²âÒ²¸ºÔğÏûºÄµÄÖ´ĞĞ¡£
--**********************************
function x335805_OnDeplete( sceneId, selfId )
--if( 0 < LuaFnDepletingUsedItem( sceneId, selfId ) ) then
--	return 1
--end
--return 0

	return 1
end

--**********************************
--Ö»»áÖ´ĞĞÒ»´ÎÈë¿Ú£º
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Âú×ãµÄÊ±ºò£©£¬¶øÒıµ¼
--¼¼ÄÜÒ²»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¼¼ÄÜµÄÒ»¿ªÊ¼£¬ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó£©¡£
--·µ»Ø1£º´¦Àí³É¹¦£»·µ»Ø0£º´¦ÀíÊ§°Ü¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x335805_OnActivateOnce( sceneId, selfId )
	if( -1 ~= x335805_g_Impact ) then
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x335805_g_Impact, 0 )
	end

	local	nBagIndex	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	local	numExtra	= x335805_g_UseUnit[ GetItemTableIndexByIndex( sceneId, selfId, nBagIndex ) ]
	local	szTran		= GetBagItemTransfer( sceneId, selfId, nBagIndex )
	if numExtra ~= nil and EraseItem( sceneId, selfId, nBagIndex ) == 1 then
		if SetPetNumExtra( sceneId, selfId, numExtra ) == 1 then
			if numExtra == 1 then	--modify by xindefeng
				x335805_MsgBox( sceneId, selfId, "Không gian s¯ lßşng trân thú mang theo : "..GetPetNumMax(sceneId, selfId)..", nªu mu¯n tång thêm næa, các hÕ hãy dùng Thú Lan c¤p cao h½n." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#H sØ døng #W#{_INFOMSG%s}#H sau ğó #H tång thêm s¯ lßşng trân thú mang theo#H. S¯ lßşng tång ğªn #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			elseif numExtra == 2 then
				x335805_MsgBox( sceneId, selfId, "Không gian s¯ lßşng trân thú mang theo : "..GetPetNumMax(sceneId, selfId)..", nªu mu¯n tång thêm næa, các hÕ hãy dùng Thú Lan c¤p cao h½n." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#H sØ døng #W#{_INFOMSG%s}#H sau ğó #H tång thêm s¯ lßşng trân thú mang theo#H. S¯ lßşng tång ğªn #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			elseif numExtra == 3 then
				x335805_MsgBox( sceneId, selfId, "Không gian s¯ lßşng trân thú mang theo : "..GetPetNumMax(sceneId, selfId)..", nªu mu¯n tång thêm næa, các hÕ hãy dùng Thú Lan c¤p cao h½n." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#H sØ døng #W#{_INFOMSG%s}#H sau ğó #H tång thêm s¯ lßşng trân thú mang theo#H. S¯ lßşng tång ğªn #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			elseif numExtra == 4 then
				x335805_MsgBox( sceneId, selfId, "Không gian s¯ lßşng trân thú mang theo : "..GetPetNumMax(sceneId, selfId)..", ğã ğÕt mÑc t¯i ğa." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#H sØ døng #W#{_INFOMSG%s}#H sau ğó #H tång thêm s¯ lßşng trân thú mang theo#H. S¯ lßşng tång ğªn #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			end
			AddGlobalCountNews( sceneId, strMsg )	--·¢ÏµÍ³¹«¸æ
		end
	end
	
	return 1
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú£º
--Òıµ¼¼¼ÄÜ»áÔÚÃ¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃÕâ¸ö½Ó¿Ú¡£
--·µ»Ø£º1¼ÌĞøÏÂ´ÎĞÄÌø£»0£ºÖĞ¶ÏÒıµ¼¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x335805_OnActivateEachTick( sceneId, selfId )
	return 1	 --²»ÊÇÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı¡£
end

--**********************************
--ĞÅÏ¢ÌáÊ¾
--**********************************
function x335805_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
