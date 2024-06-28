-- 中秋NPC
-- 小贩

x050007_g_scriptId = 050007

x050007_g_shoptableindex = 9

--**********************************
--事件交互入口
--**********************************
function x050007_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "    這位大俠，來買個禮花玩玩吧！" )
		AddNumText( sceneId, x050007_g_scriptId, "購買中秋禮花", -1, 1 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x050007_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		DispatchShopItem( sceneId, selfId, targetId, x050007_g_shoptableindex )
	end
end
