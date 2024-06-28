-- 300053 
-- 小洗髓丹
-- 使用之后可以将选择属性的分配点数中的5点变为潜能。


-- 脚本号
x300053_g_scriptId = 300053
x300053_g_ItemId = 30008005  -- 药水ID

--**********************************
-- 事件交互入口
--**********************************
function x300053_OnDefaultEvent( sceneId, selfId )
	
	return 0 --hd add
	-- 吃药洗点
	if GetNumText() == 1  then
		
		if LuaFnIsCanWashPiont(sceneId, selfId, 0) ~= 1  then
			BeginEvent(sceneId)
				AddText(sceneId, "#YTi瑄 T T鼀 衋n")
				AddText(sceneId, "  Thu礳 t韓h C叨ng l馽 疸 kh鬾g c騨 餴琺 ph鈔 ph痠 d�, kh鬾g th� ti猲 h鄋h ch飊h 餴琺.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,-1)
		
		else
			--x300053_WashPoint(sceneId, selfId, 0, 5, "C叨ng l馽")
		
		end
		return
		
	elseif GetNumText() == 2  then
		
		if LuaFnIsCanWashPiont(sceneId, selfId, 1) ~= 1  then
			BeginEvent(sceneId)
				AddText(sceneId, "#YTi瑄 T T鼀 衋n")
				AddText(sceneId, "  Thu礳 t韓h N礽 l馽 疸 kh鬾g c騨 餴琺 ph鈔 ph痠 d�, kh鬾g th� ti猲 h鄋h ch飊h 餴琺.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,-1)
		
		else
			--x300053_WashPoint(sceneId, selfId, 1, 5, "N礽 l馽")
			
		end
		return
		
	elseif GetNumText() == 3  then
		
		if LuaFnIsCanWashPiont(sceneId, selfId, 2) ~= 1  then 
			BeginEvent(sceneId)
				AddText(sceneId, "#YTi瑄 T T鼀 衋n")
				AddText(sceneId, "  Thu礳 t韓h Th� l馽 疸 kh鬾g c騨 餴琺 ph鈔 ph痠 d�, kh鬾g th� ti猲 h鄋h ch飊h 餴琺.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,-1)
		
		else
			--x300053_WashPoint(sceneId, selfId, 2, 5, "Th� l馽")
			
		end
		return
		
	elseif GetNumText() == 4  then
		
		if LuaFnIsCanWashPiont(sceneId, selfId, 3) ~= 1  then
			BeginEvent(sceneId)
				AddText(sceneId, "#YTi瑄 T T鼀 衋n")
				AddText(sceneId, "  Thu礳 t韓h Tr� l馽 疸 kh鬾g c騨 餴琺 ph鈔 ph痠 d�, kh鬾g th� ti猲 h鄋h ch飊h 餴琺.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,-1)
		
		else
			--x300053_WashPoint(sceneId, selfId, 3, 5, "Tr� l馽")
			
		end
		return
		
	elseif GetNumText() == 5  then
		
		if LuaFnIsCanWashPiont(sceneId, selfId, 4) ~= 1  then
			BeginEvent(sceneId)
				AddText(sceneId, "#YTi瑄 T T鼀 衋n")
				AddText(sceneId, "  Thu礳 t韓h Th鈔 ph醦 疸 kh鬾g c騨 餴琺 ph鈔 ph痠 d�, kh鬾g th� ti猲 h鄋h ch飊h 餴琺.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,-1)
		
		else
			--x300053_WashPoint(sceneId, selfId, 4, 5, "Th鈔 ph醦")
			
		end
		return 
	
	elseif GetNumText() == 6  then
		
		
		-- 关闭界面
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
		
	end
	
end

--**********************************
-- 
--**********************************
function x300053_IsSkillLikeScript( sceneId, selfId)
	return 0
end

function x300053_WashPoint(sceneId, selfId, nType, nPoint, szStr)
	-- 扣除相关的物品
	local ret = DelItem(sceneId, selfId, x300053_g_ItemId, 1)
	if ret == 1  then
		local nNumber = LuaFnWashSomePoints(sceneId, selfId, nType, nPoint)
		
		BeginEvent(sceneId)
			AddText(sceneId, "#YTi瑄 T T鼀 衋n")
			AddText(sceneId, "  C醕 h� mang th鄋h c鬾g#Y" .. tonumber(nNumber) .. "餴琺#W疸 ph鈔 ph痠 c黙#Y" .. szStr.. "#Wthu礳 t韓h bi猲 th鄋h ti玬 n錸g.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	end		

end
