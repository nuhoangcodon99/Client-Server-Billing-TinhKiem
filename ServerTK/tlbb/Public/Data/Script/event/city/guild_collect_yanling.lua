----------------
--MisDescBegin
--½Å±¾ºÅ
x600048_g_ScriptId	= 600048

--½ÓÊÜÈÎÎñNPCÊôĞÔ
x600048_g_Position_X=147
x600048_g_Position_Z=96
--ÈÎÎñ½»¸¶npc
x600048_g_AccomplishNPC_Name="Ğ±ng Phù Dung "
--ÈÎÎñºÅ
x600048_g_MissionId			  = 1141
--ÈÎÎñÄ¿±ênpc
x600048_g_Name 					  = "Ğ±ng Phù Dung "
--ÈÎÎñ¹éÀà
x600048_g_MissionKind			= 50 --Íæ¼Ò³ÇÊĞ
--ÈÎÎñµÈ¼¶
x600048_g_MissionLevel		= 10000
--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x600048_g_IfMissionElite	= 0
--ÈÎÎñÊÇ·ñÒÑ¾­Íê³É
x600048_g_IsMissionOkFail	= 0		--ÈÎÎñ²ÎÊıµÄµÚ0Î»
--ÈÎÎñÎÄ±¾ÃèÊö
x600048_g_MissionName			= "Chi vi®n tri«u ğình : nhi®m vø NhÕn Linh"
--ÈÎÎñÃèÊö
x600048_g_MissionInfo			= ""
--ÈÎÎñÄ¿±ê
x600048_g_MissionTarget		= "    Thu th§p #YNhÕn Linh #W Các hÕ có th¬ ğªn  #GThái H° Nguyên Ğ¥u Tñ#W và #GKính H° Chi Ğäo Dß#W. Nh§n nhi®m vø và hoàn thành giao lúc 20:00 cùng ngày"
--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x600048_g_ContinueInfo		= ""
--Íê³ÉÈÎÎñnpcËµµÄ»°
x600048_g_MissionComplete	= ""

-- ÈÎÎñÍê³ÉÇé¿ö,ÄÚÈİ¶¯Ì¬Ë¢ĞÂ,Õ¼ÓÃÈÎÎñ²ÎÊıµÄµÚ1Î»
x600048_g_Custom	= { {id="Ğã tìm ğßşc : NhÕn Linh",num=1} }
--MisDescEnd
----------------

--**********************************
--·ÅÆú
--**********************************
function x600048_OnAbandon( sceneId, selfId )
	CallScriptFunction( 600046, "OnAbandon", sceneId, selfId, 1 )
end

--**********************************
--Ìá½»
--**********************************
function x600048_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	CallScriptFunction( 600046, "OnSubmit", sceneId, selfId, targetId, 1 )	
end

--**********************************
--½ÓÊÜ
--**********************************
function x600048_OnAccept( sceneId, selfId, targetId )
	CallScriptFunction( 600046, "OnAcceptSupportState", sceneId, selfId, targetId, 1 )	
end
