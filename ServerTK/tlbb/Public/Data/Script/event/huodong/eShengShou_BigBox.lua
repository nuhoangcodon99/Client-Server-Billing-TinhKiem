--Ê¥ÊÞÉ½±¦ÏäÕù¶á
--´ó±¦ÏäNPC½»»¥½Å±¾

--½Å±¾ºÅ
x808067_g_ScriptId	= 808067

--Ê¥ÊÞÉ½±¦ÏäÕù¶á»î¶¯½Å±¾
x808067_g_ActivityScriptId	= 808066

--ÊÜÏÞbuff....
x808067_g_LimitiBuff = {

			50,
			112,
			1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,
			1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,
			7084,
			7085,

}


--**********************************
--ÌØÊâ½»»¥:Ìõ¼þÅÐ¶Ï
--**********************************
function x808067_OnActivateConditionCheck( sceneId, selfId, activatorId )

	local strText = "không th¬ m· ðßþc"
	--ÎÞµÐ×´Ì¬ÎÞ·¨¿ªÆô±¦Ïä....
	if LuaFnIsUnbreakable(sceneId,activatorId) ~= 0 then
		BeginEvent(sceneId)
		 		AddText(sceneId,strText)
		 	EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end

	--ÒþÉí×´Ì¬ÎÞ·¨¿ªÆô±¦Ïä....
	if LuaFnIsConceal(sceneId,activatorId) ~= 0 then
		BeginEvent(sceneId)
		 		AddText(sceneId,strText)
		 	EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end

	--ÊÜÏÞbuffÎÞ·¨¿ªÆô....
	for i, impactId in x808067_g_LimitiBuff do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, activatorId, impactId) == 1 then
			BeginEvent(sceneId)
			 		AddText(sceneId,strText)
			 	EndEvent(sceneId)
			DispatchMissionTips(sceneId,activatorId)
			return 0
		end
	end

	--¼ì²â±³°üÊÇ·ñÓÐµØ·½....
	if LuaFnGetPropertyBagSpace( sceneId, activatorId ) < 1 then
		BeginEvent(sceneId)
			AddText( sceneId, "Tai nãi không ðü ch² tr¯ng" )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end

	--¼ì²âÊÇ·ñ¿ÉÒÔ¿ª´ó±¦Ïä....
	local bRet, PlayerName = CallScriptFunction( x808067_g_ActivityScriptId, "CheckOpenBigBox", sceneId, activatorId )

	if bRet == 0 then
		BeginEvent(sceneId)
		 		AddText(sceneId,"Báu v§t ðã b¸ l¤y m¤t");
		 	EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end

	if bRet == -1 then
		BeginEvent(sceneId)
		 		AddText(sceneId, PlayerName.." ðang m· bäo sß½ng, không th¬ thao tác.");
		 	EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end

	return 1

end

--**********************************
--ÌØÊâ½»»¥:ÏûºÄºÍ¿Û³ý´¦Àí
--**********************************
function x808067_OnActivateDeplete( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--ÌØÊâ½»»¥:¾ÛÆøÀà³É¹¦ÉúÐ§´¦Àí
--**********************************
function x808067_OnActivateEffectOnce( sceneId, selfId, activatorId )
	CallScriptFunction( x808067_g_ActivityScriptId, "OnBigBoxOpen", sceneId, selfId, activatorId )
	return 1
end

--**********************************
--ÌØÊâ½»»¥:Òýµ¼ÀàÃ¿Ê±¼ä¼ä¸ôÉúÐ§´¦Àí
--**********************************
function x808067_OnActivateEffectEachTick( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--ÌØÊâ½»»¥:½»»¥¿ªÊ¼Ê±µÄÌØÊâ´¦Àí
--**********************************
function x808067_OnActivateActionStart( sceneId, selfId, activatorId )
		return 1
end

--**********************************
--ÌØÊâ½»»¥:½»»¥³·ÏûÊ±µÄÌØÊâ´¦Àí
--**********************************
function x808067_OnActivateCancel( sceneId, selfId, activatorId )
	return 0
end

--**********************************
--ÌØÊâ½»»¥:½»»¥ÖÐ¶ÏÊ±µÄÌØÊâ´¦Àí
--**********************************
function x808067_OnActivateInterrupt( sceneId, selfId, activatorId )
	CallScriptFunction( x808067_g_ActivityScriptId, "OnCancelOpen", sceneId )
	return 0
end
