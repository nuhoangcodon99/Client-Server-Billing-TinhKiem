-- 300052 
-- ´óÏ´Ëèµ¤
-- Ê¹ÓÃÖ®ºó¿ÉÒÔ½«ËùÓĞµÄÒÑ·ÖÅäµãÊı±äÎªÇ±ÄÜ¡£


-- ½Å±¾ºÅ
x300052_g_scriptId = 300052
x300052_g_ItemId = 30008004  -- Ò©Ë®ID

--**********************************
-- ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x300052_OnDefaultEvent( sceneId, selfId )

	-- ³ÔÒ©Ï´µã
	BeginEvent(sceneId)
		AddText(sceneId, "#YĞÕi T¦y Tüy Ğan")
		AddText(sceneId, " Tính nång tÕm ğóng. Vui lòng thØ lÕi sau")
		AddText(sceneId, " Function is temporary in closed. Please try again later")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	return 0;
	
	
end

--**********************************
-- 
--**********************************
function x300052_IsSkillLikeScript( sceneId, selfId)
	return 0
end
