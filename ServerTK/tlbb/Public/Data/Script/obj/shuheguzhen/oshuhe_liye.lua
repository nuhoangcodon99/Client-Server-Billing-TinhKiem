x001218_g_ScriptId	= 001218

--**********************************
--事件交互入口
--**********************************
function x001218_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId, "#cFF0000M祎 con 疬秐g d痗 xu痭g  ch韓h l� 皙n Ph唼ng Ho鄋g C� Th鄋h, Kh鬾g c� ng叨i bi猼 餴 nh� th� n鄌 theo h呔ng xu痭g d痗 , Nh遪g v鏽 nh� c� ch ch補 鹫i l唼ng b鋙 t鄋g, L� binh gia v鵱g giao tranh. 邪ng th秈 c鹡g h d鏽 ph l緉 姓o M� T, Trong 痼 t� B鄋 S絥 姓o Nh鈔 su l頽h 皙n S� Kim Gi醥 趛 l読 minh m鴆 tr呓ng 痄m. Ta c� th� 疬a ng呓i 餴 v鄌. Nh遪g s� sinh t� c黙 ng呓i ta kh鬾g ph� tr醕h.#W[ Ngo鄆 c 80 h銀 ti猲 v鄌 ]")
		AddNumText(sceneId, x001218_g_ScriptId,"Ti猲 v鄌 Ph唼ng Ho鄋g C� Th鄋h", 6, 101)
		--AddNumText(sceneId, x001218_g_ScriptId,"Ta bi猼 r癷, ta c� m祎 s� th� thay 鸨i � 疴y.", 5, 102)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
end

--**********************************
--事件列表选中一项
--**********************************
function x001218_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 101  then
		local	lev	= GetLevel( sceneId, selfId )
		if lev>=80 then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 441, 161, 161 )
		end
	elseif GetNumText() == 102  then
		local reply = CostMoney(sceneId,selfId,5000000)
		if reply == -1 then
			x001218_MsgBox( sceneId, selfId, targetId, "    #YTi瑄 t�, 瓞 qua 疴y ng呓i c ph鋓 c� 瘘 ti玭 m緄 疬㧟 nh�!" )
			return	
		end
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 584, 258, 310 )
	end
end

--**********************************
--对话窗口信息提示
--**********************************
function x001218_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
