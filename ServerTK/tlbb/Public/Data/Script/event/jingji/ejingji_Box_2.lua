-- 125023 ±¦Ïä
-- »ñÈ¡buffµÄ±¦Ïä

x125023_g_scriptId = 125023

x125023_g_SmallBoxBuff = {
				{id=1,name="tØ s¡c bí c¤p",buff=8053},
				{id=2,name="hoàng s¡c bí c¤p",buff=8052},
				{id=3,name="løc s¡c bí c¤p",buff=8051},
				{id=4,name="bÕch s¡c bí c¤p",buff=8050},
				{id=5,name="h¡c s¡c bí c¤p",buff=8049},
				{id=6,name="lam s¡c bí c¤p",buff=8048},
				{id=7,name="h°ng s¡c bí c¤p",buff=8047},
}

--**********************************
--ÌØÊâ½»»¥:Ìõ¼şÅĞ¶Ï
--**********************************
function x125023_OnActivateConditionCheck( sceneId, selfId, activatorId )
	-- ÏŞÖÆÉíÉÏµÄbuff
	return 1
end

--**********************************
--ÌØÊâ½»»¥:ÏûºÄºÍ¿Û³ı´¦Àí
--**********************************
function x125023_OnActivateDeplete( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--ÌØÊâ½»»¥:¾ÛÆøÀà³É¹¦ÉúĞ§´¦Àí
--**********************************
function x125023_OnActivateEffectOnce( sceneId, selfId, activatorId )
	
	-- °´ÕÕÕâ¸öNpcµÄĞÕÃû¸øÍæ¼Ò+buff£¬
	local szName = GetName(sceneId, selfId)
	for i=1, getn(x125023_g_SmallBoxBuff)  do
		if szName == x125023_g_SmallBoxBuff[i].name  then
			LuaFnDeleteMonster(sceneId, selfId)
			LuaFnSendSpecificImpactToUnit(sceneId, activatorId, activatorId, 
										activatorId, x125023_g_SmallBoxBuff[i].buff, 100 )
		end
	end	
	
	return 1
end

--**********************************
--ÌØÊâ½»»¥:Òıµ¼ÀàÃ¿Ê±¼ä¼ä¸ôÉúĞ§´¦Àí
--**********************************
function x125023_OnActivateEffectEachTick( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--ÌØÊâ½»»¥:½»»¥¿ªÊ¼Ê±µÄÌØÊâ´¦Àí
--**********************************
function x125023_OnActivateActionStart( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--ÌØÊâ½»»¥:½»»¥³·ÏûÊ±µÄÌØÊâ´¦Àí
--**********************************
function x125023_OnActivateCancel( sceneId, selfId, activatorId )
	return 0
end

--**********************************
--ÌØÊâ½»»¥:½»»¥ÖĞ¶ÏÊ±µÄÌØÊâ´¦Àí
--**********************************
function x125023_OnActivateInterrupt( sceneId, selfId, activatorId )
	return 0
end

function x125023_OnActivateInterrupt( sceneId, selfId, activatorId )

end

