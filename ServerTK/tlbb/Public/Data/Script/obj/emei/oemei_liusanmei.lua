--峨嵋NPC
--柳三妹
--普通

x015035_g_scriptId = 015035

--**********************************
--事件交互入口
--**********************************
function x015035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Nga My s絥 t� x遖 疸 c� t阯 t� lo鄆 H vi阯, g 疴y 羉 Vi阯 g鈟 r痠 ng鄖 m祎 qu� qu, ch鷑g c騨 d醡 皙n g鈟 chuy畁 v緄 b眓 ph醝, ng呓i c� bg l騨g th� 餴 疳nh lui b鱪 ch鷑g?")
		AddNumText(sceneId,x015035_g_scriptId,"笑y l鵬 羉 Vi阯",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件列表选中一项
--**********************************
function x015035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<21  then	
			BeginEvent( sceneId )
			local strText = "Nh 鸶nh kh鬾g 疬㧟 coi th叨ng b鱪 羉 Vi阯 痼, ta xem, c醕 h� h銀 瘙i 鹌ng c v唼t qu� 21 h銀 quay l読 t靘 ta"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 145,89,142)
		end
	end
end
