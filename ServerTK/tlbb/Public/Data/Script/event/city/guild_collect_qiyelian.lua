----------------
--MisDescBegin
--½Å±¾ºÅ
x600049_g_ScriptId	= 600049

--½ÓÊÜÈÎÎñNPCÊôĞÔ
x600049_g_Position_X=147
x600049_g_Position_Z=96
--ÈÎÎñ½»¸¶npc
x600049_g_AccomplishNPC_Name="Ğ±ng Phù Dung "
--ÈÎÎñºÅ
x600049_g_MissionId			  = 1142
--ÈÎÎñÄ¿±ênpc
x600049_g_Name 					  = "Ğ±ng Phù Dung "
--ÈÎÎñ¹éÀà
x600049_g_MissionKind			= 50 --Íæ¼Ò³ÇÊĞ
--ÈÎÎñµÈ¼¶
x600049_g_MissionLevel		= 10000
--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x600049_g_IfMissionElite	= 0
--ÈÎÎñÊÇ·ñÒÑ¾­Íê³É
x600049_g_IsMissionOkFail	= 0		--ÈÎÎñ²ÎÊıµÄµÚ0Î»
--ÈÎÎñÎÄ±¾ÃèÊö
x600049_g_MissionName			= "Chi vi®n tri«u ğình : nhi®m vø Th¤t Di®p Liên"
--ÈÎÎñÃèÊö
x600049_g_MissionInfo			= ""
--ÈÎÎñÄ¿±ê
x600049_g_MissionTarget		= "    Thu th§p #YTh¤t Di®p Liên #W Các hÕ có th¬ ğªn  #GKiªm Các BÕch Mao Lînh#W và #GVô Lßşng S½n Ğào Hoa Ğàm#W. Nh§n nhi®m vø và hoàn thành giao lúc 20:00 cùng ngày"
--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x600049_g_ContinueInfo		= ""
--Íê³ÉÈÎÎñnpcËµµÄ»°
x600049_g_MissionComplete	= ""

-- ÈÎÎñÍê³ÉÇé¿ö,ÄÚÈİ¶¯Ì¬Ë¢ĞÂ,Õ¼ÓÃÈÎÎñ²ÎÊıµÄµÚ1Î»
x600049_g_Custom	= { {id="Ğã tìm ğßşc : Th¤t Di®p Liên",num=1} }
--MisDescEnd
----------------

--**********************************
--·ÅÆú
--**********************************
function x600049_OnAbandon( sceneId, selfId )
	CallScriptFunction( 600046, "OnAbandon", sceneId, selfId, 2 )
end

--**********************************
--Ìá½»
--**********************************
function x600049_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	CallScriptFunction( 600046, "OnSubmit", sceneId, selfId, targetId, 2 )
end

--**********************************
--½ÓÊÜ
--**********************************
function x600049_OnAccept( sceneId, selfId, targetId )
	CallScriptFunction( 600046, "OnAcceptSupportState", sceneId, selfId, targetId, 2 )	
end
