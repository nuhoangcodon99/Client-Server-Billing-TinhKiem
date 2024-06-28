--NPCÑİÊ¾¼¼ÄÜÌØĞ§ÓÃ
--ÑİÊ¾NPC
--ÆÕÍ¨
--Õâ¸öNPC×îºÃÊÇ²»»á»¹ÊÖ£¬¿É¹¥»÷£¬µ«ÊÇ²»»áÊÜµ½ÈÎºÎÉËº¦
--½Å±¾ºÅ
x801006_g_ScriptId = 801006;

--ÒªÑİÊ¾µÄ¼¼ÄÜÁĞ±í 
x801006_g_DemoSkills = {};
--ÉùÃ÷·½·¨£º  x801006_g_DemoSkills[¼¼ÄÜµÄ±àºÅ] = "¼¼ÄÜµÄÃû×Ö"; ×¢£ººóÃæ»á°Ñ¼¼ÄÜµÄ±àºÅµ±ÊÂ¼şºÅÊ¹ÓÃ 

x801006_g_DemoSkills[834]="Liên Châu Hü Thi Ğµc";
x801006_g_DemoSkills[835]="Th¤t Tinh Th¤u C¯t";
x801006_g_DemoSkills[836]="ï‹øcÖ¹¿Ê";
x801006_g_DemoSkills[837]="ÍÏÄà§Ë®";
x801006_g_DemoSkills[838]="½¹î^ €î~";
x801006_g_DemoSkills[839]="ÒÆ»¨½ÓÄ¾";
x801006_g_DemoSkills[840]="Ğ¦ÑY²Øµ¶";
x801006_g_DemoSkills[841]="Ğ¦¿Ú³£é_";
x801006_g_DemoSkills[842]="Ğ¦ÕZ½âîU";
x801006_g_DemoSkills[843]="º¬É³ÉäÓ°";
x801006_g_DemoSkills[844]="ËÄÃæ³ş¸è";
x801006_g_DemoSkills[845]="´ôÈôÄ¾ëu";
x801006_g_DemoSkills[846]="Ë®ÑÍÆßÜŠ";
x801006_g_DemoSkills[847]="ĞĞŒÆ×ßÈâ";
x801006_g_DemoSkills[848]="ºØMÓ¯";
--ËùÓµÓĞµÄÊÂ¼şIdÁĞ±í
x801006_g_eventList={834,835,836,837,838,839,840,841,842,843,844,845,846,847,848};
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x801006_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "    šgÓ­¹âÅR¡£Õˆßx“ñÏëÒªÓ^¿´µÄ¼¼ÄÜ¡£");
--	for i=1,getn(x801006_g_eventList) do 
	for nIdx, nEvent in x801006_g_eventList do
		--Ìí¼ÓÑİÊ¾¼¼ÄÜµÄ°´Å¥ 
		AddNumText(sceneId, nEvent, x801006_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x801006_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÎÊÌâselfId,ºÍTargetId·Ö±ğÊÇÊ²Ã´µÄID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId,targetId,1,0,0,0,0);
	--CallScriptFunction( 801006, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end
