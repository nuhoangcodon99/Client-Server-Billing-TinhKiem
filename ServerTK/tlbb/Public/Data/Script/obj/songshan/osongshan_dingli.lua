--大理NPC
--丁励
--普通

--**********************************
--事件交互入口
--**********************************
function x003006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Nghe n骾 Th醝 L鉶 Gia c騨 s痭g, sao l読 th� nh�? N錷 Th醝 L鉶 Gia quy ti阯, ch韓h m ta nh靚 th. Tr阯 鸲i l� n鄌 l読 x鋣 ra chuy畁 nh� v. Th kh鬾g th� tin n眎...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
