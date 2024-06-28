--ÂåÑôNPC
--»¨ÏÉ
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000094_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
 	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " các hÕ"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  Dß½ng li­u thanh thanh giang thuÖ bình #rV¤n lang giang thßşng sß¾ng ca thanh #rĞông biên nh§t xu¤t tây biên vû#r ĞÕo th¸ vô tình khß¾c hæu tình.#r"..PlayerName..PlayerSex..", có thích cuµc s¯ng chï làm uyên ß½ng không làm tiên không?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
