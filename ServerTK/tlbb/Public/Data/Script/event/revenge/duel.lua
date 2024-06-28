--了解九大门派特色

--脚本号
x800115_g_ScriptId	= 800115



--任务入口函数
--**********************************
function x800115_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	local	mp
	local	i		= 0
	
    if key == 1 then
	    --PrintStr( " =1 ")
	   local Level = GetLevel( sceneId, selfId )
	   local Energy = GetHumanEnergy( sceneId, selfId )
	   
	   if( Level < 20 ) then
            BeginEvent( sceneId )
		        AddText(sceneId,"  衅ng c c黙 c醕 h� kh鬾g 瘘 c 20, kh鬾g th� 疬a ra y陁 c quy猼 黏u")
				AddNumText( sceneId, x800115_g_ScriptId, "Bi猼 r癷...", -1, 2 )
			
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )	
        elseif Energy < 100 then
            BeginEvent( sceneId )
		        AddText(sceneId,"  Xin l瞚, ch� s� tinh l馽 c黙 c醕 h� kh鬾g 瘘 100, kh鬾g th� 疬a ra l秈 y陁 c quy猼 黏u")
				AddNumText( sceneId, x800115_g_ScriptId, "Bi猼 r癷...", -1, 2 )
			
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )	
        else
        	OpenDuelDataInputWnd( sceneId, selfId, targetId, 123 )
        end
        

	elseif  key == 2 then
	    --PrintStr( " =2 ")
		--关闭界面
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
			    
	else
		return
	end
	
end

--**********************************
--列举事件
--**********************************
function x800115_OnEnumerate( sceneId, selfId, targetId )
	--if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
		--AddNumText( sceneId, x800115_g_ScriptId, "我要提出决斗", -1, 100 )
	--end
	
	--local Level = GetLevel( sceneId, selfId )
	--if( Level >= 20 ) then
                BeginEvent( sceneId )
		AddText(sceneId,"  Giang h� 馥y 鈔 o醤, n猽 c醕 h� kh鬾g tr馽 ti猵 黏u m祎 ch鱥 m祎, c鹡g c� th� l馻 ch鱪 1 ph呓ng ph醦 v錸 minh h絥 - quy猼 黏u. Sau khi 鸠i ph呓ng 鸢ng �, tr quy猼 黏u s� b 馥u v� s� k猼 th鷆 sau 1 canh gi�. Ch猼 trong tr quy猼 黏u s� b� tr譶g ph誸")
		AddNumText( sceneId, x800115_g_ScriptId, "Ta c 疬a ra y陁 c quy猼 黏u", 6, 1 )
		AddNumText( sceneId, x800115_g_ScriptId, "Ta ngh� 1 l醫 r癷 s� n骾..", 8, 2 )
			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	--else
          --      BeginEvent( sceneId )
	--	AddText(sceneId,"  您的等级不足20级，无法提出决斗要求")
	--	AddNumText( sceneId, x800115_g_ScriptId, "知道了……", -1, 2 )
			
	--	EndEvent( sceneId )
	--	DispatchEventList( sceneId, selfId, targetId )	
	--end
	
	
		
end

--**********************************
--检测接受条件
--**********************************
function x800115_CheckAccept( sceneId, selfId )
	--需要10级才能接
	--if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
	--	return 1
	--else
	--	return 0
	--end
end

--**********************************
--接受
--**********************************
function x800115_OnAccept( sceneId, selfId )
end

--**********************************
--放弃
--**********************************
function x800115_OnAbandon( sceneId, selfId )
end

--**********************************
--继续
--**********************************
function x800115_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--检测是否可以提交
--**********************************
function x800115_CheckSubmit( sceneId, selfId )
	return 1
end

--**********************************
--提交
--**********************************
function x800115_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--杀死怪物或玩家
--**********************************
function x800115_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--进入区域事件
--**********************************
function x800115_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x800115_OnItemChanged( sceneId, selfId, itemdataId )
end
