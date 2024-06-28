--»î¶¯¡ª¡ª
--ÎÂÖİÓÎÏ·ÍÆ¹ã¿¨Æ¬

x808069_g_ScriptId = 808069

function x808069_WenZhouCard(sceneId,selfId,targetId)
	--ÊÇ·ñÒÑ¾­ÁìÈ¡¹ıÎÂÖİÍÆ¹ã½±Àø
	if GetMissionFlag( sceneId, selfId, MF_ActiveWenZhouCard ) == 1 then
		x808069_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ğã nh§n ph¥n thß·ng hoÕt ğµng, không th¬ nh§n thêm" )
		return
	end
	
	--ÊÇ·ñ´óÓÚ20¼¶
	--if GetLevel( sceneId, selfId ) < 20 then
	--	x808069_NotifyFailBox( sceneId, selfId, targetId, "    ÇëÄúµÄµÈ¼¶³¬¹ı20¼¶ºóÔÙÀ´ÁìÈ¡»î¶¯½±Àø¡£" )
	--	return
	--end
	
	--¼ì²é±³°ü¿Õ¼ä
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
		x808069_NotifyFailBox( sceneId, selfId, targetId, "    Túi ğ° không ğü ch² tr¯ng" )
		return
	end

	--´ò¿ªÊäÈë¿¨ºÅ½çÃæ
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 2007 )		
end

--**********************************
-- ¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x808069_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x808069_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId, x808069_g_ScriptId, "Nh§n thß·ng Ôn Châu Khuyªn Mãi", 1, 1 )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x808069_OnDefaultEvent( sceneId, selfId, targetId )
	local TextNum = GetNumText()

	if TextNum == 1 then
		x808069_WenZhouCard( sceneId, selfId, targetId )
	end
end
