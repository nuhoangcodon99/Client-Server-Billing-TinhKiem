--洛阳NPC
--业了
--普通

--**********************************
--事件交互入口
--**********************************
function x000096_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n呓ng "
	else
		PlayerSex = " c醕 h�"
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", Nh課 M鬾 Quan 餫ng 疳nh nhau ph鋓 kh鬾g? Sao m� nhi玼 d鈔 ch誽 n課 th�?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
