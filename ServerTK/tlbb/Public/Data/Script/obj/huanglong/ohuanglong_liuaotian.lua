--黄龙NPC
--刘傲天
--普通

--**********************************
--事件交互入口
--**********************************
function x023005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Xin ch鄌 c醕 h�, ng叨i anh h鵱g c黙 Trung Nguy阯! Ta t阯 L遳 Ng誳 Thi阯. Ta l� h du� c黙 ng叨i Hung N�, b眓 h� l� Loan 蝎, c醕 h� c� th� g鱥 ta l� Loan 蝎 Ng誳 Thi阯.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
