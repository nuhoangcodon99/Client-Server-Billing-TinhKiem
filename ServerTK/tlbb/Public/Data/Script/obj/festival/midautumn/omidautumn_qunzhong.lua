-- 中秋NPC
-- 群众

x050008_g_scriptId = 050008

x050008_g_festivalwords =
{
	"    我看到焰火啦！中，秋，快，樂~~~",
	"    今晚的月餅好圓啊，哦，我是說今晚的月亮好圓啊~~~",
	"    好美的月光啊！",
	"    好美的流星雨啊！",
	"    看這裏！看這裏！看這裏！",
	"    一閃一閃亮晶晶，滿天都是小月餅！",
	"    今年中秋不收禮，收禮還收大月餅！",
	"    但願人長久，千里共嬋娟~~~",
	"    東風夜放花千樹，更吹落，星如雨~~~",
	"    月上柳梢頭，人約黃昏後~~~",
	"    我這月餅是棗泥餡的，你要不要來一個？",
	"    我這月餅是薄荷餡的，你要不要來一個？",
	"    你有沒有豆沙餡的月餅，我好想吃啊~~~",
	"    你有沒有桂圓餡的月餅，我好想吃啊~~~",	
	"    月亮月亮圓又圓，掛在天上像玉盤。如果月亮變月餅，最好能是豆沙餡！",
	"    月亮月亮白又白，掛在天上下不來。如果月亮變月餅，最好……還是能下來！",
	"    天上的月亮這樣圓，又這樣白。",
	"    你愛吃鹹的月餅，還是甜的？",
	"    你瞧，你瞧，好多帥哥來西湖賞月啊！",
	"    你瞧，你瞧，好多美女來西湖賞月啊！"
}

--**********************************
--事件交互入口
--**********************************
function x050008_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = x050008_g_festivalwords[random( getn(x050008_g_festivalwords) )]
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
