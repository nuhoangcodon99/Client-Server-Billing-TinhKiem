--洛阳NPC
--镖师
--普通

--**********************************
--事件交互入口
--**********************************
function x000073_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n呓ng "
	else
		PlayerSex = " c醕 h�"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", c� g� c ti陁 c鴆 ch鷑g t鬷 v chuy琻 kh鬾g? 袖m b鋙 c醕 h� v� c鵱g y阯 t鈓")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
