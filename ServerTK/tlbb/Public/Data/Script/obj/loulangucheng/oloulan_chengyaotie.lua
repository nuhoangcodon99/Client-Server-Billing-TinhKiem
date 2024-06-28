--楼兰NPC....
--武器相关功能....

--脚本号
x001101_g_ScriptId = 001101

--**********************************
--事件交互入口
--**********************************
function x001101_OnDefaultEvent( sceneId, selfId, targetId )

	
	BeginEvent( sceneId )
		AddText( sceneId, "#{LLGC_20080324_13}" )
		AddNumText( sceneId, x001101_g_ScriptId, "Gi醡 鸶nh t� ch trang b�", 6, 1 )
		AddNumText( sceneId, x001101_g_ScriptId, "续c l� trang b� c馽 h課", 6, 2 )--现在增加一种打孔方式，因此这个变成二级界面
		AddNumText( sceneId, x001101_g_ScriptId, "Kh鋗 n誱 trang b� c馽 h課", 6, 3 )
		AddNumText( sceneId, x001101_g_ScriptId, "Tr韈h tr� B鋙 Th誧h c馽 h課", 6, 4 )
		AddNumText( sceneId, x001101_g_ScriptId, "Tr� gi鷓 li阯 quan 皙n kh鋗 n誱 c馽 h課", 11, 5 )
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--事件列表选中一项
--**********************************
function x001101_OnEventRequest( sceneId, selfId, targetId, eventId )

	
	if GetNumText() == 1 then

		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1001 )

	elseif GetNumText() == 2 then

--		BeginUICommand( sceneId )
--		UICommand_AddInt( sceneId, targetId )
--		EndUICommand( sceneId )
--		DispatchUICommand( sceneId, selfId, 75117 )

	BeginEvent( sceneId )
		AddText( sceneId, "Xin l馻 ch鱪 ph呓ng th裞 瘌c l� c馽 h課:" )
		AddNumText( sceneId, x001101_g_ScriptId, "S� d鴑g 衖琺 Kim Chi Ti璶 瓞 瘌c l�", 6, 10 )
		AddNumText( sceneId, x001101_g_ScriptId, "S� d鴑g H鄋 Ng鱟 Tinh T鷜 瓞 瘌c l�", 6, 11 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
		
	elseif GetNumText() == 3 then
	
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 751107 )
	
	elseif GetNumText() == 4 then

		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 25702 )
		
	elseif GetNumText() == 5 then

		BeginEvent( sceneId )
		AddText( sceneId, "#{XQC_20080509_34}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif GetNumText() == 10 then
	
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 1 )		--type，区分点金还是寒玉
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 75117 )
	
	elseif GetNumText() == 11 then
	
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 2 )		--type，区分点金还是寒玉
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 75117 )
		
	end

end
