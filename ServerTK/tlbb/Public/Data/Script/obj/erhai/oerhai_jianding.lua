--洱海NPC
--简丁
--5～7级鉴定商

x024006_g_scriptId = 024006
x024006_g_shoptableindex = 139

--**********************************
--事件交互入口
--**********************************
function x024006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Kh鬾g sai, t読 h� ch韓h l� ng叨i b醤 ph� gi醡 鸶nh, c醕 h� mu痭 ch錸g?" )
		AddNumText( sceneId, x024006_g_scriptId, "Mua Ph� gi醡 鸶nh", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x024006_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x024006_g_shoptableindex )
	end
end
