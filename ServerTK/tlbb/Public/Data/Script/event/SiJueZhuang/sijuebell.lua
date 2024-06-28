--Ph� b�n T� Tuy�t Trang
--Chu�ng l�n T� Tuy�t �i�n
--Author: Ho�ng Steven

--************************--
x910172_g_ScriptId=910172												
--************************--
x910172_g_Patrol_ID=0
--************************--
x910172_g_Guardians=
{
	[1]="H� v� T� Tuy�t �i�n",
	[2]="Gi�o �u T� Tuy�t �i�n",
}
--************************--
x910172_g_NPC_Talk="M�t chi�c chu�ng l�n, nghe n�i d�ng � th�ng b�o kh�n khi�n c�c h� v� c�a T� Tuy�t �i�n r�i �i n�i kh�c..."
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910172_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,x910172_g_NPC_Talk)
		AddNumText(sceneId,x910172_g_ScriptId,"��nh chu�ng",6,1)
		AddNumText(sceneId,x910172_g_ScriptId,"R�i b�...",-1,0)
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
					AddText(sceneId,"H� v� v� gi�o �u �ang r�i kh�i T� Tuy�t �i�n. H�y ki�n nh�n ��ng � b�n th�n hi�n h�nh l�c n�y!")
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,PlayerId)
			end
		end
		LuaFnSendSpecificImpactToUnit(sceneId,targetId,targetId,targetId,9755,0)
		SetCharacterDieTime(sceneId,targetId,1000)
	end
	--************************--
	
end