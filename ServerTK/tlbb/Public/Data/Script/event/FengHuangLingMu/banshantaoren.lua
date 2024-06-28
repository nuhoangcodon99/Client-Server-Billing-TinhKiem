--Ph� b�n Ph�ng Ho�ng L�ng M�
--B�n S�n ��o Nh�n
--Code by S�i

--******************--
x930511_g_ScriptId=930511
--******************--
x930511_g_Gift={																				--Ph�n th߷ng
	50131002,	--T� Vi Tinh Quang (C�p 1)
	50131002,	--T� Vi Tinh Quang (C�p 1)
	50131002,	--T� Vi Tinh Quang (C�p 1)
	50131001,	--B�ng Lam L�u V�n (C�p 1)
	50131001,	--B�ng Lam L�u V�n (C�p 1)
	50131001,	--B�ng Lam L�u V�n (C�p 1)
	50131005,	--Hoa L�c H�ng Tr�n (C�p 1)
	50131005,	--Hoa L�c H�ng Tr�n (C�p 1)
	50131005,	--Hoa L�c H�ng Tr�n (C�p 1)
	50131003,	--Th�y Ng�c Tinh Tr�n (C�p 1)
	50131003,	--Th�y Ng�c Tinh Tr�n (C�p 1)
	50131003,	--Th�y Ng�c Tinh Tr�n (C�p 1)
	50131004,	--Tranh �nh Nh� M�ng (C�p 1)
	50131004,	--Tranh �nh Nh� M�ng (C�p 1)
	50131004,	--Tranh �nh Nh� M�ng (C�p 1)
	30503134,	--Kim thoa
	30010080,	--Ch�n nguy�n ph�ch
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503061,	--Trang b� tinh th�ng ph�
}
--******************--
x930511_g_Boss_Name="B�n S�n ��o Nh�n"															--T�n c�a BOSS
--******************--
x930511_g_AttackMode=0																			--Tr�ng th�i chi�n �u
x930511_g_TrapTimer=1																			--Th�i gian c�n l�i � k�ch n� bom
x930511_g_SkillTimer=2																			--Th�i gian g�i ra bom
x930511_g_BoomActived=3																			--G�i bom ch�a
--******************--
x930511_g_Monster_Dialogue=
{																								--L�i n�i c�a Boss
	[1]=x930511_g_Boss_Name.." �� xu�t hi�n!",
	[2]="Nh�ng k� n�o d�m qu�y r�y s� y�n b�nh c�a Ph�ng Ho�ng L�ng M�, k� �� ph�i ch�t!",
	[3]="�� gi�t ch�t "..x930511_g_Boss_Name..": 1/1",
	[4]="H�y n�m m�i c�a Nhi�n Thi�u B�o ��n v� Cao B�o ��n �i!",
}
--******************--
x930511_g_Monster=
{
	{	Index=13777,	Name="Nhi�n Thi�u B�o ��n",	Impact=12602	},							--Nhi�n Thi�u B�o ��n
	{	Index=13768,	Name="Cao B�o ��n",			Impact=12604	},							--Cao B�o ��n
}
--******************--
x930511_g_Trap_Exsit_Time=10000																	--Th�i gian t�n t�i bom (Sau th�i gian n�y bom s� ph�t n� n�u kh�ng b� ph� h�y)
x930511_g_Skill_Time=20000																		--Th�i gian gi�a 2 l�n g�i bom
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x930511_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"Ph�ng Ho�ng L�ng M�",x930511_g_Monster_Dialogue[2])				--C�u n�i khai chi�n c�a Boss
	x930511_GlobalNews(sceneId,x930511_g_Monster_Dialogue[1])									--Th�ng b�o Boss �� v�o chi�n �u cho to�n th� ng߶i ch�i
	x930511_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x930511_OnHeartBeat(sceneId,selfId,nTick)												--H�m n�y s� check li�n t�c m�i mili gi�y khi n�o Boss c�n s�ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N�u Boss �� ch�t th� ng�ng ho�t �ng c�a Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x930511_g_AttackMode)==0 then
		return
	end
	--******************--
	x930511_CheckMyBoom(sceneId,selfId,nTick)													--Ki�m tra xem c� k�ch ho�t bom kh�ng
	--******************--
	x930511_UseMySkill(sceneId,selfId,nTick)													--S� d�ng k� n�ng
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x930511_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x930511_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x930511_OnLeaveCombat(sceneId,selfId)

	--******************--
	x930511_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x930511_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x930511_OnDie(sceneId,selfId,killerId)

	--******************--
	x930511_GlobalNews(sceneId,x930511_g_Monster_Dialogue[3])
	LuaFnSetCopySceneData_Param(sceneId,9,2)
	x930511_DeleteOldMonster(sceneId)
	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1 do
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
		for i=1,random(5) do
			AddMonsterDropItem(sceneId,selfId,nPlayerId,x930511_g_Gift[random(getn(x930511_g_Gift))])
		end
		local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+10)
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� gia t�ng 10 �i�m ho�t �ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,nPlayerId)
	end
	--******************--
	
end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x930511_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_AttackMode,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_SkillTimer,x930511_g_Skill_Time)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_TrapTimer,x930511_g_Trap_Exsit_Time)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_BoomActived,0)
	x930511_DeleteOldMonster(sceneId)
	--******************--
	
end
--**********************************--
--*       Delete Old Monster       *--
--**********************************--
function x930511_DeleteOldMonster(sceneId)

	--******************--
	for i,Monster in x930511_g_Monster do
		local nMonsterNum=GetMonsterCount(sceneId)
		for i=0,nMonsterNum-1 do
			local MonsterId=GetMonsterObjID(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==Monster.Name then
				SetCharacterDieTime(sceneId,MonsterId,100)
			end
		end
	end
	--******************--
	
end
--**********************************--
--*         Check My Boom          *--
--**********************************--
function x930511_CheckMyBoom(sceneId,selfId,nTick)

	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x930511_g_BoomActived)==0 then						--Ch�a g�i ra boom
		return
	end
	--******************--
	local nTime=MonsterAI_GetIntParamByIndex(sceneId,selfId,x930511_g_TrapTimer)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_TrapTimer,nTime-nTick)
	--******************--
	if nTime-nTick<=0 then
		x930511_ActiveMyBoom(sceneId)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_TrapTimer,x930511_g_Trap_Exsit_Time)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_BoomActived,0)
	end
	--******************--
	
end
--**********************************--
--*         Active My Boom         *--
--**********************************--
function x930511_ActiveMyBoom(sceneId)

	--******************--
	for i,Monster in x930511_g_Monster do
		local nMonsterNum=GetMonsterCount(sceneId)
		for i=0,nMonsterNum-1 do
			local MonsterId=GetMonsterObjID(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==Monster.Name then	
				local x,y=GetWorldPos(sceneId,MonsterId)
				local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)								--Ki�m tra ng߶i ch�i c� ��ng g�n bom kh�ng
				for i=0,nHumanCount-1 do
					local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
					local x1,y1=GetWorldPos(sceneId,nHumanId)
					if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 and floor(sqrt((x-x1)*(x-x1)+(y-y1)*(y-y1)))<=5 then
						LuaFnSendSpecificImpactToUnit(sceneId,MonsterId,MonsterId,nHumanId,Monster.Impact)
						for i=0,9 do																	--Ki�m tra c�c � tr�n th� c�a ng߶i ch�i xem c� tr�n th� n�o �ang xu�t chi�n
							local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,i)
							local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
							if Pet_Index~=-1 and Pet_Index then											--N�u tr�n th� n�y �ang xu�t chi�n
								LuaFnSendSpecificImpactToUnit(sceneId,MonsterId,MonsterId,Pet_Index,Monster.Impact)
							end
						end
					end
				end
				LuaFnSendSpecificImpactToUnit(sceneId,MonsterId,MonsterId,MonsterId,12602)
				SetCharacterDieTime(sceneId,MonsterId,100)
			end
		end
	end
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x930511_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local nTime=MonsterAI_GetIntParamByIndex(sceneId,selfId,x930511_g_SkillTimer)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_SkillTimer,nTime-nTick)
	--******************--
	if nTime-nTick<=0 then
		x930511_CallMyBoom(sceneId)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_SkillTimer,x930511_g_Skill_Time)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_BoomActived,1)
	end
	--******************--
	
end
--**********************************--
--*          Call My Boom          *--
--**********************************--
function x930511_CallMyBoom(sceneId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,8)													--L�y c�p � ph� b�n
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			local nRan=random(getn(x930511_g_Monster))
			local x,y=GetWorldPos(sceneId,nHumanId)
			local Monster_Index=LuaFnCreateMonster(sceneId,x930511_g_Monster[nRan].Index+nDec,x,y,3,0,-1)	--Kh�i t�o Bom
			SetCharacterName(sceneId,Monster_Index,x930511_g_Monster[nRan].Name)
		end
	end
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x930511_GlobalNews(sceneId,Tips)

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