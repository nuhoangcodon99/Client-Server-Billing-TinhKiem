--NPC Quän lý thú Mµ Dung
--Author: mrhong@2gvn
--Date: 1/3/2012

x000508_g_scriptId = 000508

function x000508_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
--		AddText(sceneId,"Trß·ng môn sß huynh có vi®c tr÷ng ðÕi phäi làm, nhæng vi®c nh§n ð° ð® bái sß giao cho ta phø trách")
--		AddNumText(sceneId, x000508_g_scriptId, "Gi¾i thi®u môn phái",11,11)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000508_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText()==11 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"  Ð® tØ Mµ Dung thª gia nµi công thâm h§u, chiêu thÑc tinh quái vô cùng.Khi ð® tØ Mµ Dung giao chiªn v¾i ð¸ch thü chiêu g§y ông ð§p lßng ông luôn luôn khiªn ð¯i phß½ng kinh hãi vô cùng, cûng t× ðó là ðÕt th¡ng lþi.");
	  		AddText(sceneId,"  Ð® tØ Mµ Dung giao ð¤u v¾i ð® tØ các môn phái khác thß¶ng nh¡m vào s½ · cüa ð¯i phß½ng mà công kích, xu¤t quÖ nh§p th¥n khiªn ai ai cûng ¾n lÕnh, t× ðó ðßþc sñ kinh n¬ cüa võ lâm ð°ng ðÕo.#r  Ð® tØ Mµ Dung gia nghiên cÑu vån chß½ng t§p luy®n võ công, mµt khi có ngß¶i b¸ Ñc hiªp thì l§p tÑc cu¯ng phong nµ vû n±i lên cho nên thiên hÕ võ lâm nhân sî ð«u không mu¯n giao chính chính di®n v¾i ngß¶i cüa Mµ Dung gia.");
	  		AddText(sceneId,"  Ð® tØ Mµ Dung gia nghiên cÑu vån chß½ng t§p luy®n võ công, mµt khi có ngß¶i b¸ Ñc hiªp thì l§p tÑc cu¯ng phong nµ vû n±i lên cho nên thiên hÕ võ lâm nhân sî ð«u không mu¯n giao chính chính di®n v¾i ngß¶i cüa Mµ Dung gia.");
	  		AddText(sceneId,"  Ð® tØ Mµ Dung gia giöi v« #cff0000nµi công#W và #cff0000công kích thuµc tính Huy«n#W");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
	end

end
function x000508_AddMsg( sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg)
	EndEvent(sceneId)
	DispatchEventList(sceneId, selfId, targetId)
end

function x000508_AddTips( sceneId, selfId, tips)
	BeginEvent(sceneId)
		AddText(sceneId, tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end