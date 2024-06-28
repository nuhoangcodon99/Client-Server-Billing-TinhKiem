--ÂåÑôNPC
--°ÍÌìÊ¯
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000019_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " các hÕ"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  Khéo th§t "..PlayerName..PlayerSex..", thª nào lÕi g£p nhau · ğây. ĞÕi Lı m²i l¥n tham gia cuµc thi túc c¥u, ğ«u chï là phø Thái tØ ğ÷c sách mà thôi")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
