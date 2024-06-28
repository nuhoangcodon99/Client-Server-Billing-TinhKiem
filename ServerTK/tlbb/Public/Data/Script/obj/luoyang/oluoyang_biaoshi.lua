--ÂåÑôNPC
--ïÚÊ¦
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000073_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " các hÕ"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", có gì c¥n tiêu cøc chúng tôi v§n chuy¬n không? Ðäm bäo các hÕ vô cùng yên tâm")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
