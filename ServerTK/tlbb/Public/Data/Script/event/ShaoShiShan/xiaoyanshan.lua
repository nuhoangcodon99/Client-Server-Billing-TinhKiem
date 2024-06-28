--Thi�u Th�t S�n
--Ti�u Vi�n S�n
--Author: Ho�ng Steven

--******************--
x910168_g_ScriptId=910168
--******************--
x910168_g_Boss_Name="Ti�u Vi�n S�n"																--T�n c�a BOSS
--******************--
x910168_g_Skill_Index=1332																		--K� n�ng Th�n иa Chi H�a
x910168_g_Skill_CD=20000																		--Th�i gian l�nh kh߾c H�a Di�m �ao
--******************--
x910168_g_AttackMode=0																			--Tr�ng th�i chi�n �u
x910168_g_Skill_Timer=1																			--Th�i gian k� n�ng
--******************--
x910168_g_Monster_Dialogue={																	--L�i n�i c�a Boss
	[1]=x910168_g_Boss_Name.." �� xu�t hi�n!",
	[2]="Ta tr�n trong Thi�u L�m T� c�ng �� r�t l�u r�i!",
	[3]="�� gi�t ch�t "..x910168_g_Boss_Name..": 1/1",
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910168_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910168_g_Monster_Dialogue[2])								--C�u n�i khai chi�n c�a Boss
	x910168_GlobalNews(sceneId,x910168_g_Monster_Dialogue[1])									--Th�ng b�o Boss �� v�o chi�n �u cho to�n th� ng߶i ch�i
	x910168_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910168_OnHeartBeat(sceneId,selfId,nTick)												--H�m n�y s� check li�n t�c m�i mili gi�y khi n�o Boss c�n s�ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N�u Boss �� ch�t th� ng�ng ho�t �ng c�a Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910168_g_AttackMode)==0 then
		return
	end
	--******************--
	x910168_UseMySkill(sceneId,selfId,nTick)													--S� d�ng k� n�ng
	--******************--
	if GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.5 then
		LuaFnSetCopySceneData_Param(sceneId,8,7)												--C�p nh�t thao t�c tr�n ph� b�n
		LuaFnDeleteMonster(sceneId,selfId)
	end
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910168_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910168_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910168_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910168_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910168_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910168_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910168_OnDie(sceneId,selfId,killerId)

	--******************--
	--******************--
	
end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910168_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910168_g_Skill_Timer,x910168_g_Skill_CD)		--Th�i gian k� n�ng
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910168_g_AttackMode,0)
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910168_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910168_g_Skill_Timer)			--L�y th�i gian l�nh kh߾c k� n�ng c�a Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910168_g_Skill_Timer,Time_Skill-nTick)			--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng
	if Time_Skill<=0 then																		--�� �n gi� d�ng k� n�ng
		local x,y=GetWorldPos(sceneId,selfId)													--L�y t�a � c�a Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910168_g_Skill_Index,x,y,0,1)							--Boss s� d�ng k� n�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910168_g_Skill_Timer,x910168_g_Skill_CD)	--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910168_GlobalNews(sceneId,Tips)

	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			BeginEvent(sceneId)
				AddText(sceneId,Tips)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nHumanId)
		end
	end
	--******************--

end