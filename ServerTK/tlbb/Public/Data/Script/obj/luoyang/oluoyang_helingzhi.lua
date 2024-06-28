--脚本号
x000087_g_scriptId = 000087

--所拥有的事件ID列表
x000087_g_eventList = { 801011 }

--**********************************
--事件交互入口
--**********************************
function x000087_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ch� c ng呓i c� thu痗 nhu祄 t骳 l� c� th� thay 鸨i 疬㧟 m鄒 t骳 mu痭 nhu祄")
		
		AddNumText( sceneId, x000087_g_scriptId, "Gi緄 thi畊 thay 鸨i m鄒 t骳", 11, 10 )
		AddNumText(sceneId,x000087_g_scriptId,"Thay 鸨i m鄒 t骳",6,2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000087_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
				AddText( sceneId, "#{function_help_060}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end

	if GetNumText() == 2 then
		-- 修改发色
		CallScriptFunction( 801011, "OnEnumerate",sceneId, selfId, targetId )
		return
	end

end
