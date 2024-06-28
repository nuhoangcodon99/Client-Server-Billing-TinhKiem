--Phø bän TÑ Tuy®t Trang
--Chuông l¾n TÑ Tuy®t Ði®n
--Author: Hoàng Steven

--************************--
x910172_g_ScriptId=910172												
--************************--
x910172_g_Patrol_ID=0
--************************--
x910172_g_Guardians=
{
	[1]="Hµ v® TÑ Tuy®t Ði®n",
	[2]="Giáo ð¥u TÑ Tuy®t Ði®n",
}
--************************--
x910172_g_NPC_Talk="Mµt chiªc chuông l¾n, nghe nói dùng ð¬ thông báo kh¦n khiªn các hµ v® cüa TÑ Tuy®t Ði®n r¶i ði n½i khác..."
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910172_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,x910172_g_NPC_Talk)
		AddNumText(sceneId,x910172_g_ScriptId,"Ðánh chuông",6,1)
		AddNumText(sceneId,x910172_g_ScriptId,"R¶i bö...",-1,0)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910172_OnEventRequest(sceneId,selfId,targetId,eventId)
local key=GetNumText()

	--************************--
	if key==0 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
	end
	--************************--
	if key==1 then
		local nMonsterNum=GetMonsterCount(sceneId)
		for i=0,nMonsterNum-1 do
			local MonsterId=GetMonsterObjID(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and (GetName(sceneId,MonsterId)==x910172_g_Guardians[1] or GetName(sceneId,MonsterId)==x910172_g_Guardians[2]) then
				SetPatrolId(sceneId,MonsterId,x910172_g_Patrol_ID)
			end
		end
		local nHumanNum=LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0,nHumanNum-1 do
			local PlayerId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
			if LuaFnIsObjValid(sceneId,PlayerId)==1 and LuaFnIsCanDoScriptLogic(sceneId,PlayerId)==1 then
				BeginEvent(sceneId)
					AddText(sceneId,"Hµ v® và giáo ð¥u ðang r¶i khöi TÑ Tuy®t Ði®n. Hãy kiên nhçn ð×ng ð¬ bän thân hi®n hình lúc này!")
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,PlayerId)
			end
		end
		LuaFnSendSpecificImpactToUnit(sceneId,targetId,targetId,targetId,9755,0)
		SetCharacterDieTime(sceneId,targetId,1000)
	end
	--************************--
	
end