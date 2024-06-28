----------------
--MisDescBegin
--½Å±¾ºÅ
x600047_g_ScriptId	= 600047

--½ÓÊÜÈÎÎñNPCÊôĞÔ
x600047_g_Position_X=147
x600047_g_Position_Z=96
--ÈÎÎñ½»¸¶npc
x600047_g_AccomplishNPC_Name="Ğ±ng Phù Dung "
--ÈÎÎñºÅ
x600047_g_MissionId			  = 1140
--ÈÎÎñÄ¿±ênpc
x600047_g_Name 					  = "Ğ±ng Phù Dung "
--ÈÎÎñ¹éÀà
x600047_g_MissionKind			= 50 --Íæ¼Ò³ÇÊĞ
--ÈÎÎñµÈ¼¶
x600047_g_MissionLevel		= 10000
--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x600047_g_IfMissionElite	= 0
--ÈÎÎñÊÇ·ñÒÑ¾­Íê³É
x600047_g_IsMissionOkFail	= 0		--ÈÎÎñ²ÎÊıµÄµÚ0Î»
--ÈÎÎñÎÄ±¾ÃèÊö
x600047_g_MissionName			= "Chi vi®n tri«u ğình : nhi®m vø VÕn Linh ThÕch"
--ÈÎÎñÃèÊö
x600047_g_MissionInfo			= ""
--ÈÎÎñÄ¿±ê
x600047_g_MissionTarget		= "    Thu th§p #YVÕn Linh ThÕch#W Các hÕ có th¬ ğªn  #GĞôn Hoàng#W và #GTung S½n C½ KÏ S½n Pha Nam#W. Nh§n nhi®m vø và hoàn thành giao lúc 20:00 cùng ngày"
--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x600047_g_ContinueInfo		= ""
--Íê³ÉÈÎÎñnpcËµµÄ»°
x600047_g_MissionComplete	= ""

-- ÈÎÎñÍê³ÉÇé¿ö,ÄÚÈİ¶¯Ì¬Ë¢ĞÂ,Õ¼ÓÃÈÎÎñ²ÎÊıµÄµÚ1Î»
x600047_g_Custom	= { {id="Ğã tìm th¤y : L¸ch ThÕch",num=1} }
--MisDescEnd
----------------


--**********************************
--·ÅÆú
--**********************************
function x600047_OnAbandon( sceneId, selfId )
	CallScriptFunction( 600046, "OnAbandon", sceneId, selfId, 0 )
end

--**********************************
--Ìá½»
--**********************************
function x600047_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	CallScriptFunction( 600046, "OnSubmit", sceneId, selfId, targetId, 0 )
end

--**********************************
--½ÓÊÜ
--**********************************
function x600047_OnAccept( sceneId, selfId, targetId)
	CallScriptFunction( 600046, "OnAcceptSupportState", sceneId, selfId, targetId, 0 )	
end
