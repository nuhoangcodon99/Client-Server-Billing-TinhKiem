--×¢Òâ£º

--ÎïÆ·¼¼ÄÜµÄÂß¼­Ö»ÄÜÊ¹ÓÃ»ù´¡¼¼ÄÜºÍ½Å±¾À´ÊµÏÖ

--½Å±¾:

--ÒÔÏÂÊÇ½Å±¾ÑùÀı:


--tulingzhu.lua
------------------------------------------------------------------------------------------
--Ò»°ãÎïÆ·µÄÄ¬ÈÏ½Å±¾
--ÍÁÁéÖé

--ÍÁÁéÖéÓĞ3ÖÖ²Ù×÷£º
--1.Ö±½ÓÊ¹ÓÃÊ±´ò¿ªÍÁÁéÖéÊ¹ÓÃ½çÃæ
--2.Ê¹ÓÃ½çÃæÉÏµã»÷¡°¶¨Î»¡±½øĞĞ¶¨Î»
--3.Ê¹ÓÃ½çÃæÉÏµã»÷¡°´«ËÍ¡±½øĞĞ´«ËÍ
--Ê¹ÓÃÍÁÁéÖéÊ±µ¯³öµÄ½çÃæÊÇÔÚ¿Í»§¶ËÖ±½ÓÓ²±àÂëÊµÏÖ£¬Êµ¼ÊÉÏ²¢Ã»ÓĞ¡°Ê¹ÓÃÎïÆ·¡±£¬Òò´Ë²»»áµ÷ÓÃµ½±¾½Å±¾ÄÚ¡£
--±¾½Å±¾ÎªÍÁÁéÖéµÄÊ¹ÓÃÂß¼­£¬Õı³£Ê¹ÓÃÍÁÁéÖéµÄÂß¼­Îª¡°´«ËÍ¡±¡£
--ÍÁÁéÖéµÄ¶¨Î»ÊÇÍ¨¹ı¿Í»§¶ËÖ±½Ócall±¾½Å±¾µÄx330001_SetPositionº¯ÊıÊµÏÖ£¬²¢²»ÊôÓÚÍÁÁéÖéµÄÊ¹ÓÃÂß¼­¡£

--½Å±¾ºÅ
x330001_g_ScriptId	= 330001

--ÎïÆ·ID
x330001_g_ItemId = 30008007
x330001_g_ItemId01 = 30505216

--Ğ§¹ûµÄID
x330001_g_Impact		= -1	--´«ËÍÊ±ÒªÊ¹ÓÃµÄÌØĞ§µÄ±àºÅ


x330001_g_UseTim		= 10				--Ê¹ÓÃ´ÎÊı
x330001_g_Yinpiao		= 40002000	--ÒøÆ±

--ÆÕÍ¨³¡¾°ÏŞÖÆ£¬ÕâĞ©³¡¾°ÄÚÎŞ·¨´«ËÍ
x330001_g_UselessScn=
{
	125,		-- Hoa son
	314, --tong lieu
	442, --phung hoang
}

--ÆÕÍ¨³¡¾°ÏŞÖÆ£¬ÕâĞ©³¡¾°ÄÚÎŞ·¨¶¨Î»
x330001_g_SetPosLimitScn=
{
	125,	-- Hoa son
	414,		-- Canh ky truong	
	314, --tong lieu
	442, --phung hoang
}

--½ûÖ¹´«ËÍµ½Ä³Ğ©³¡¾°µÄµÈ¼¶ÏŞÖÆ....
x330001_g_LimitTransScene =
{
	{423,90},	--»ğÑæÉ½
	{519,90},	--»ğÑæ¹È
	{424,90},	--¸ß²ı
	{520,90},	--¸ß²ıÃÔ¹¬
	{425,90},	--ËşÀïÄ¾
	{427,90},	--Ëş¿ËÀ­Âê¸É
	{186,75},	--Â¥À¼
	{431,90}, --´óÍğ
	{432,90}  --º¹ÑªÁë
}



x330001_g_StrCannotUse = "Khu vñc các hÕ không n¢m trong tình trÕng sØ døng d¸ch chuy¬n, không th¬ sØ døng ğÕo cø d¸ch chuy¬n. "

x330001_g_Impact_NotTransportList = { 5929 } -- ½ûÖ¹´«ËÍµÄImpact
x330001_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}" } -- ½ûÖ¹´«ËÍµÄImpactÌáÊ¾ĞÅÏ¢

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x330001_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı
end


--**********************************
--Õâ¸öÎïÆ·µÄÊ¹ÓÃ¹ı³ÌÊÇ·ñÀàËÆÓÚ¼¼ÄÜ£º
--ÏµÍ³»áÔÚÖ´ĞĞ¿ªÊ¼Ê±¼ì²âÕâ¸öº¯ÊıµÄ·µ»ØÖµ£¬Èç¹û·µ»ØÊ§°ÜÔòºöÂÔºóÃæµÄÀàËÆ¼¼ÄÜµÄÖ´ĞĞ¡£
--·µ»Ø1£º¼¼ÄÜÀàËÆµÄÎïÆ·£¬¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜµÄÖ´ĞĞ£»·µ»Ø0£ººöÂÔºóÃæµÄ²Ù×÷¡£
--**********************************
function x330001_IsSkillLikeScript( sceneId, selfId )
	return 1	 --Õâ¸ö½Å±¾ĞèÒª¶¯×÷Ö§³Ö
end


--**********************************
--Ö±½ÓÈ¡ÏûĞ§¹û£º
--ÏµÍ³»áÖ±½Óµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÒÑ¾­È¡Ïû¶ÔÓ¦Ğ§¹û£¬²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»·µ»Ø0£ºÃ»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û£¬¼ÌĞøÖ´ĞĞ¡£
--**********************************
function x330001_CancelImpacts( sceneId, selfId )
	return 0	 --²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕ·µ»Ø0¡£
end


--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜ¼ì²âµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÌõ¼ş¼ì²âÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÌõ¼ş¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--**********************************
function x330001_OnConditionCheck( sceneId, selfId )

	--
	--Õı³£Ê¹ÓÃÍÁÁéÖéµÄÂß¼­Îª´«ËÍ£¬´Ë´¦Ö»ĞèÒª½øĞĞ´«ËÍÇ°µÄ¼ì²â¾Í¿ÉÒÔÁË¡£
	--
	--Tong lieu va phung hoang
	if sceneId==314 or sceneId==442 then
		x300056_MsgBox(sceneId, selfId, "Cänh này không cho phép sØ døng ğÕo cø này!" )
		return 0
	end
	--end

	--±³°üÖĞµÄÎ»ÖÃ
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagId < 0 then
		return 0
	end

	--Ğ£ÑéÊ¹ÓÃµÄÎïÆ·
	if( 1 ~= LuaFnVerifyUsedItem( sceneId, selfId ) ) then
		return 0
	end
	
	--¼ì²âÎïÆ·ÊÇ·ñ¼ÓËø
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		x330001_MsgBox( sceneId, selfId, "V§t ph¦m này ğã b¸ khóa!" )
		return 0
	end

	-- ´¦ÓÚ×é¶Ó¸úËæ×´Ì¬ÏÂ£¬²»ÄÜ´«ËÍ
	if IsTeamFollow(sceneId, selfId) == 1  then
		x330001_MsgBox( sceneId, selfId, x330001_g_StrCannotUse )
		return 0
	end

	-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇ´¦ÓÚ°ÚÌ¯×´Ì¬£¬
	if LuaFnIsStalling(sceneId, selfId) == 1  then
		x330001_MsgBox( sceneId, selfId, x330001_g_StrCannotUse )
		return 0
	end

	--ÅĞ¶Ïµ±Ç°×´Ì¬ÊÇ·ñ¿ÉÊ¹ÓÃ(äîÔË)
	if IsHaveMission( sceneId, selfId, 4021 ) > 0 then
		x330001_MsgBox( sceneId, selfId, x330001_g_StrCannotUse )
		return 0
	end

	--¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓĞ¡°ÒøÆ±¡±Õâ¸ö¶«Î÷£¬ÓĞ¾Í²»ÄÜÊ¹ÓÃÕâÀïµÄ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x330001_g_Yinpiao) >= 1  then
		x330001_MsgBox(sceneId, selfId, x330001_g_StrCannotUse )
		return 0
	end
	
	--¼ì²âImpact×´Ì¬×¤ÁôĞ§¹û
	for i, ImpactId in x330001_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			BeginEvent(sceneId)			
				AddText(sceneId, x330001_g_TalkInfo_NotTransportList[i]);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
	
	--ÅäÖÃµÄÖ¸¶¨³¡¾°²»ÄÜÍù¶¨Î»µã´«ËÍ
	for _, tmp in x330001_g_UselessScn do
		if tmp == sceneId then
			x330001_MsgBox( sceneId, selfId, "Trong khu vñc này không th¬ sØ døng!" )
			return 0
		end
	end
	
	--¼ì²âÄ¿±ê³¡¾°ÊÇ·ñÊÇ90¼¶ÒÔÄÚ²»ÄÜ´«ËÍµÄ³¡¾°	--add by xindefeng
	--»ñÈ¡¼ÇÂ¼ÔÚÎïÆ·ÉíÉÏµÄÊı¾İ½á¹¹
	local	otim			--Ê£ÓàÊ¹ÓÃ´ÎÊı
	local	osid			--³¡¾°±àºÅ
	local	opx, opy	--¼ÇÒä×ø±ê
	otim	= GetBagItemParam( sceneId, selfId, bagId, 3, 0 )
	osid	= GetBagItemParam( sceneId, selfId, bagId, 4, 1 )
	opx		= GetBagItemParam( sceneId, selfId, bagId, 6, 1 )
	opy		= GetBagItemParam( sceneId, selfId, bagId, 8, 1 )

	if opx > 0 and opy > 0 then	--ÒÑ¾­¶¨¹ıÎ»ÁË		

		for _, tmp in x330001_g_LimitTransScene do
			if ( (tmp[1] == osid) and (GetLevel(sceneId, selfId) < tmp[2]) ) then
				local szMsg = format("C¥n c¤p ğµ %d m¾i có th¬ vào", tmp[2] )
				x330001_MsgBox( sceneId, selfId, szMsg)
				return 0
			end
		end

	end
	
	return 1

end


--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜÏûºÄµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÏûºÄ´¦ÀíÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÏûºÄ¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--×¢Òâ£ºÕâ²»¹â¸ºÔğÏûºÄµÄ¼ì²âÒ²¸ºÔğÏûºÄµÄÖ´ĞĞ¡£
--**********************************
function x330001_OnDeplete( sceneId, selfId )

	--Ê¹ÓÃÍÁ¶İÖé½øĞĞ´«ËÍÖ®Ç°»áµ÷ÓÃ±¾º¯ÊıÀ´ÏûºÄÎïÆ·....
	--Tong lieu va phung hoang
	if sceneId==314 or sceneId==442 then
		x300056_MsgBox(sceneId, selfId, "Cänh này không cho phép sØ døng ğÕo cø này!" )
		return 0
	end
	--end
	--
	--ÔÚ´Ë»¹ÒªÔÙ´Î¼ì²âÒ»ÏÂ....
	--
	local ret
	ret = x330001_OnConditionCheck( sceneId, selfId )
	if 0 == ret then
		return 0
	end

	--±³°üÖĞµÄÎ»ÖÃ
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )

	--»ñÈ¡¼ÇÂ¼ÔÚÎïÆ·ÉíÉÏµÄÊı¾İ½á¹¹
	local	otim			--Ê£ÓàÊ¹ÓÃ´ÎÊı
	local	osid			--³¡¾°±àºÅ
	local	opx, opy	--¼ÇÒä×ø±ê
	otim	= GetBagItemParam( sceneId, selfId, bagId, 3, 0 )
	osid	= GetBagItemParam( sceneId, selfId, bagId, 4, 1 )
	opx		= GetBagItemParam( sceneId, selfId, bagId, 6, 1 )
	opy		= GetBagItemParam( sceneId, selfId, bagId, 8, 1 )

	--ÒÑ¾­¶¨¹ıÎ»ÁË....
	if opx > 0 and opy > 0 then

		--²»Í¬³¡¾°´«ËÍ....Èç¹ûÄ¿±ê³¡¾°²»¿ÉÓÃ....ÔòÏûºÄÊ§°Ü....
		if sceneId ~= osid then
			if IsCanNewWorld( sceneId, selfId, osid, opx, opy ) ~= 1 then
				x330001_MsgBox( sceneId, selfId, "Không th¬ d¸ch chuy¬n ğªn khu vñc møc tiêu. " )
				return 0
			end
		end

		--¿ÉÒÔ´«ËÍ....ÔòÏûºÄÎïÆ·....
		--µ«ÊÇÔÚ´Ë´¦²»Ö±½ÓÏûºÄ....ÒòÎªÔÚx330001_OnActivateOnce()ÖĞ»¹ĞèÒª·ÃÎÊÎïÆ·ÉíÉÏµÄ¶¨Î»ĞÅÏ¢....
		--Òò´Ë´Ë´¦µÄÏûºÄÅ²µ½x330001_OnActivateOnce()ÖĞ....

		return 1

	else

		--»¹Ã»¶¨Î»....ÔòÏûºÄÊ§°Ü....
		x330001_MsgBox( sceneId, selfId, "Vui lòng ch÷n ğ¸a ği¬m ğ¸nh v¸ thích hşp r°i hãy sØ døng chÑc nång d¸ch chuy¬n." )
		return 0

	end

	return 1

end


--**********************************
--Ö»»áÖ´ĞĞÒ»´ÎÈë¿Ú£º
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Âú×ãµÄÊ±ºò£©£¬¶øÒıµ¼
--¼¼ÄÜÒ²»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¼¼ÄÜµÄÒ»¿ªÊ¼£¬ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó£©¡£
--·µ»Ø1£º´¦Àí³É¹¦£»·µ»Ø0£º´¦ÀíÊ§°Ü¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x330001_OnActivateOnce( sceneId, selfId )

	--
	--Õı³£Ê¹ÓÃÍÁÁéÖéµÄÂß¼­Îª´«ËÍ£¬´Ë´¦Ö»ĞèÒª½øĞĞ´«ËÍ¾Í¿ÉÒÔÁË¡£
	--
	--Tong lieu va phung hoang
	if sceneId==314 or sceneId==442 then
		x300056_MsgBox(sceneId, selfId, "Cänh này không cho phép sØ døng ğÕo cø này!" )
		return 0
	end
	--end
	

	--±³°üÖĞµÄÎ»ÖÃ
	local	bagId			= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )


	--»ñÈ¡¼ÇÂ¼ÔÚÎïÆ·ÉíÉÏµÄ¶¨Î»Êı¾İ....
	local	otim			--Ê£ÓàÊ¹ÓÃ´ÎÊı....
	local	osid			--³¡¾°±àºÅ
	local	opx, opy	--¼ÇÒä×ø±ê
	otim	= GetBagItemParam( sceneId, selfId, bagId, 3, 0 )
	osid	= GetBagItemParam( sceneId, selfId, bagId, 4, 1 )
	opx		= GetBagItemParam( sceneId, selfId, bagId, 6, 1 )
	opy		= GetBagItemParam( sceneId, selfId, bagId, 8, 1 )

	--µÃµ½¶¨Î»Êı¾İºó¾Í¿ÉÒÔÏûºÄÎïÆ·ÁË....

	--¼õÉÙ¿ÉÊ¹ÓÃ´ÎÊı
	otim = otim - 1
	SetBagItemParam( sceneId, selfId, bagId, 3, 0, otim )
	--¼ÇÂ¼Í³¼ÆĞÅÏ¢
	LuaFnAuditGPS( sceneId, selfId, 0 )
	--Ë¢ĞÂClient¶ËµÄ±³°üÎïÆ·ĞÅÏ¢
	LuaFnRefreshItemInfo( sceneId, selfId, bagId )

	--Èç¹û¿ÉÊ¹ÓÃ´ÎÊıÓÃÍêÔòÉ¾³ıÎïÆ·....É¾³ıÊ§°ÜÔò²»´«ËÍ....
	local ret
	if otim <= 0 then
		ret = EraseItem( sceneId, selfId, bagId )
		if 1 ~= ret then
			return
		end
	end

	--Èç¹ûÅäÖÃÁËÊ¹ÓÃµÄÌØĞ§Ôò¼Óµ½Íæ¼ÒÉíÉÏ....
	if( -1 ~= x330001_g_Impact ) then
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x330001_g_Impact, 0 )
	end

	--ÈôÒÑ¼ÇÂ¼¹ı¶¨Î»ĞÅÏ¢Ôò´«ËÍ....
	if opx > 0 and opy > 0 then

		if sceneId == osid then
			--Í¬Ò»³¡¾°´«ËÍ
			SetPos( sceneId, selfId, opx, opy )
		else
			--²»Í¬³¡¾°´«ËÍ
			NewWorld( sceneId, selfId, osid, opx, opy )
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
function x330001_OnActivateEachTick( sceneId, selfId )
	return 1	 --²»ÊÇÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı¡£
end


--**********************************
--ĞÅÏ¢ÌáÊ¾
--**********************************
function x330001_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


--**********************************
-- Íæ¼ÒÊ¹ÓÃÎïÆ· ¶¨Î»
--**********************************
function x330001_SetPosition( sceneId, selfId, nItemIndex )

	--
	--¶¨Î»Ç°µÄ¼ì²â
	--
	--Tong lieu va phung hoang
	if sceneId==314 or sceneId==442 then
		x300056_MsgBox(sceneId, selfId, "Cänh này không cho phép sØ døng ğÕo cø này!" )
		return 0
	end
	--end
	
	--¶¨Î»ÊÇ¿Í»§¶ËÖ±½ÓcallÕâ¸öº¯ÊıÊµÏÖµÄ....ËùÒÔÃ»ÓĞ¾­¹ıÊ¹ÓÃÎïÆ·µÄ¼ì²â....
	--Òò´ËÕâÀïÒª½øĞĞµÈ¼¶ÏŞÖÆµÈ¼ì²â....
	if GetLevel(sceneId, selfId)<10  then
		x330001_MsgBox( sceneId, selfId, "Không ğü ğÆng c¤p" )
		return
	end

	--¼ì²âÎïÆ·ÊÇ·ñ¼ÓËø
	if LuaFnLockCheck( sceneId, selfId, nItemIndex, 0 ) < 0 then
		x330001_MsgBox( sceneId, selfId, "V§t ph¦m này ğã b¸ khóa!" )
		return 0
	end

	--¼ì²âÊÇ²»ÊÇÍÁÁéÖé
	if GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x330001_g_ItemId 
		 and GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x330001_g_ItemId01  then
		x330001_MsgBox( sceneId, selfId, "Sai sót trong tay näi" )
		return
	end

	--¸±±¾»ò°ï»á³ÇÊĞÄÚÎŞ·¨¶¨Î»
	if LuaFnGetSceneType( sceneId ) == 1 or LuaFnGetSceneType( sceneId ) == 4 then
		x330001_MsgBox( sceneId, selfId, "Trong phø bän ho£c thành th¸ bang hµi không  th¬ ğ¸nh v¸!" )
		return
	end

	--ÅäÖÃµÄÖ¸¶¨³¡¾°²»ÄÜ¶¨Î»
	for _, tmp in x330001_g_SetPosLimitScn do
		if tmp == sceneId then
			x330001_MsgBox( sceneId, selfId, "Trong khu vñc này không th¬ sØ døng!" )
			return
		end
	end

	--
	--¿ªÊ¼¶¨Î»
	--

	--»ñÈ¡¼ÇÂ¼ÔÚÎïÆ·ÉíÉÏµÄÊı¾İ½á¹¹
	local	otim			--Ê£ÓàÊ¹ÓÃ´ÎÊı
	local	osid			--³¡¾°±àºÅ
	local	opx, opy	--¼ÇÒä×ø±ê
	otim	= GetBagItemParam( sceneId, selfId, nItemIndex, 3, 0 )
	osid	= GetBagItemParam( sceneId, selfId, nItemIndex, 4, 1 )
	opx		= GetBagItemParam( sceneId, selfId, nItemIndex, 6, 1 )
	opy		= GetBagItemParam( sceneId, selfId, nItemIndex, 8, 1 )

	--Èç¹û»¹Î´Ôø¶¨Î»¹ıÔòÖØÖÃÎïÆ·ĞÅÏ¢....
	if otim == 0 and osid == 0 and opx == 0 and opy == 0 then
		otim = x330001_g_UseTim
	end

	--»ñÈ¡Íæ¼ÒµÄµ±Ç°×ø±êºÍ³¡¾°ID....
	osid			= sceneId
	opx, opy	= LuaFnGetUnitPosition( sceneId, selfId )
	opx	= floor( opx )
	opy	= floor( opy )

	--½«ĞÅÏ¢ÉèÖÃµ½ÎïÆ·ÖĞ(¶¨Î»)....
	SetBagItemParam( sceneId, selfId, nItemIndex, 0, 1, 10 )								--Key£¬ÕâÎ»±êÊ¶²Ù×÷¼¯ºÏ£¬Ò²ÊÇClientĞŞÕıTooltipsµÄÒÀ¾İ
	SetBagItemParam( sceneId, selfId, nItemIndex, 2, 0, x330001_g_UseTim )	--×î´óÊ¹ÓÃ´ÎÊı
	SetBagItemParam( sceneId, selfId, nItemIndex, 3, 0, otim )							--Ê£ÓàÊ¹ÓÃ´ÎÊı
	SetBagItemParam( sceneId, selfId, nItemIndex, 4, 1, osid )							--³¡¾°±àºÅ
	SetBagItemParam( sceneId, selfId, nItemIndex, 6, 1, opx )								--X×ø±ê
	SetBagItemParam( sceneId, selfId, nItemIndex, 8, 1, opy )								--Y×ø±ê
	
	--¼ÇÂ¼Í³¼ÆĞÅÏ¢
	LuaFnAuditGPS( sceneId, selfId, 1 )

	--Ë¢ĞÂClient¶ËµÄ±³°üÎïÆ·ĞÅÏ¢
	LuaFnRefreshItemInfo( sceneId, selfId, nItemIndex )

	x330001_MsgBox( sceneId, selfId, "Th± Linh Châu cüa các hÕ ğ¸nh v¸ thành công." )

end
