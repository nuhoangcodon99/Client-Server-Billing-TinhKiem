--大理NPC
--褚万里
--普通

--**********************************
--事件交互入口
--**********************************
function x002011_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n呓ng "
	else
		PlayerSex = " c醕 h�"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  Mu痭 luy畁 v� c鬾g t痶, tr� th鄋h h� v� ho鄋g gia nh� ch鷑g ta kh鬾g? "..PlayerName..PlayerSex..", ng呓i c� th� b醝 m祎 trong c豼 鹫i m鬾 ph醝, Ng� Hoa 朽n c� ng叨i ch� d鏽 c黙 c豼 鹫i m鬾 ph醝, ng呓i h銀 t緄 c醕 鹫i m鬾 ph醝 xem, kh鬾g ch譶g c� thu ho誧h b ng�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
