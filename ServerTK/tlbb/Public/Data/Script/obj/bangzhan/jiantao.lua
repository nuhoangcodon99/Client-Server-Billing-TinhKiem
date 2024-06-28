--NPC ¸±±¾ÍâÐÝÏ¢ÊÒ ´«ËÍNPC ½£èº

x402304_g_ScriptId = 402304; --½Å±¾ºÅ
x402304_g_name	="Kiªm Thao";

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x402304_g_eventId_yes = 0;
x402304_g_eventId_no = 1;

x402304_g_Exit_SceneID = 0 --´«³ö³¡¾°ID
x402304_g_Win_X = 256--160 --»ñÊ¤·½³ö¿Ú
x402304_g_Win_Z = 246--106
x402304_g_Fail_X = 154--61 --Ê§°Ü·½³ö¿Ú
x402304_g_Fail_Z = 273--134

x402304_g_SheepBuff = 31550											--±äÑòbuff

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x402304_OnDefaultEvent( sceneId, selfId, targetId )
	x402304_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x402304_UpdateEventList( sceneId, selfId, targetId )

	BeginEvent(sceneId);
		AddText( sceneId, "#{BHXZ_081210_158}" );
		AddNumText( sceneId, x402304_g_ScriptId, "#{BHXZ_081210_159}", 4, x402304_g_eventId_yes);
		--AddNumText( sceneId, x402304_g_ScriptId, "HuÖ bö", 8, x402304_g_eventId_no);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
	
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x402304_OnEventRequest( sceneId, selfId, targetId, eventId )
	local selectEventId	= GetNumText();
	
	if selectEventId == x402304_g_eventId_yes then
		
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x402304_g_SheepBuff) == 1 then
			NewWorld( sceneId, selfId, x402304_g_Exit_SceneID, x402304_g_Fail_X, x402304_g_Fail_Z )
		else
			NewWorld( sceneId, selfId, x402304_g_Exit_SceneID, x402304_g_Win_X, x402304_g_Win_Z )
		end
		
	else
--		BeginUICommand( sceneId )
--		UICommand_AddInt( sceneId, targetId )
--		EndUICommand( sceneId )
--		DispatchUICommand( sceneId, selfId, 1000 )
	end

end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x402304_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x402304_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
end
