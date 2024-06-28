--Thi�u Th�t S�n
--Trang T� Hi�n
--Author: Ho�ng Steven

--******************--

x910163_Item_ttpx ={
50131001, --B�ng Lam L�u V�n (C�p 1)
50131002,--T� Vi Tinh Quang (C�p 1)
50131003,--Thu� Ng�c Tinh Tr�n (C�p 1)
50131004,--Tranh �nh Nh� M�ng (C�p 1)
50131005,--Hoa L�c H�ng Tr�n (C�p 1)
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
20503062,--Ly H�a
}

x910163_Item_ttpx_vip ={
30501361,--C�ng l�c �an
30503134, --kim thoa (duc lo)
30503135, --Th�i trang ph�i s�c �i�m xuy�t ph�
30503136, --Th�i trang ph�i s�c thanh tr� ph�
30503137, --Th�i trang ph�i s�c gia c�ng ph�

20503061, --Trang b� Tinh th�ng ph�
20503061, --Trang b� Tinh th�ng ph�
20503061, --Trang b� Tinh th�ng ph�
}
x910163_Item_ttpx_vip_rate = 20 -- ty le rot x910163_Item_ttpx_vip


--******************--

--******************--
x910163_g_ScriptId=910163
--******************--
x910163_g_Boss_Name="Trang T� Hi�n"																--T�n c�a BOSS
--******************--
x910163_g_Skill_Index=1053																		--K� n�ng H�ng C�c Ch�
x910163_g_Skill_CD=10000																		--Th�i gian l�nh kh߾c H�ng C�c Ch�
--******************--
x910163_g_GuangBao_Skill=1022																	--K� n�ng Cu�ng B�o
--******************--
x910163_g_Impact_Healing=9781																	--Ph�c h�i kh� huy�t
x910163_g_Impact_Increase_Dame=9477																--C�ng dame �c
--******************--
x910163_g_Pet={	Index=14283,	Name="B�ng t�m",	Born_Time=60000	}							--B�ng T�m		
--******************--
x910163_g_Skill_Timer=1																			--Th�i gian k� n�ng
x910163_g_Pet_Called=2																			--�� g�i B�ng T�m ch�a
x910163_g_Pet_Timer=3																			--Th�i B�ng T�m h�a k�n
x910163_g_AttackMode=4																			--Tr�ng th�i chi�n �u
--******************--
x910163_g_Monster_Dialogue={																	--L�i n�i c�a Boss
	[1]=x910163_g_Boss_Name.." �� xu�t hi�n!",
	[2]="C�i Bang h�m nay nh�t �nh ph�i th�ng nh�t Thi�n H�, ��nh b�i Thi�u L�m!",
	[3]="H�y n�m th� k� n�ng H�ng C�c Ch� c�a ta!",
	[4]="B�ng T�m, h�y gi�p ta!",
	[5]="Kh�ng... B�ng T�m c�a ta... C�c ng߶i s� ph�i tr� gi� cho s� s� nh�c n�y!",
	[6]="�� gi�t ch�t "..x910163_g_Boss_Name..": 1/1",
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910163_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910163_g_Monster_Dialogue[2])								--C�u n�i khai chi�n c�a Boss
	x910163_GlobalNews(sceneId,x910163_g_Monster_Dialogue[1])									--Th�ng b�o Boss �� v�o chi�n �u cho to�n th� ng߶i ch�i
	x910163_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910163_OnHeartBeat(sceneId,selfId,nTick)												--H�m n�y s� check li�n t�c m�i mili gi�y khi n�o Boss c�n s�ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N�u Boss �� ch�t th� ng�ng ho�t �ng c�a Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910163_g_AttackMode)==0 then
		return
	end
	--******************--
	x910163_CreatMyPet(sceneId,selfId,nTick)													--G�i B�ng T�m
	--******************--
	x910163_CheckMyPet(sceneId,selfId)															--Ki�m tra Trang T� Hi�n c� ��ng g�n B�ng T�m kh�ng
	--******************--
	x910163_UseMySkill(sceneId,selfId,nTick)													--S� d�ng k� n�ng
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910163_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910163_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910163_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910163_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910163_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if nHumanId==targetId then
			local PlayerName=GetName(sceneId,targetId)
			MonsterTalk(sceneId,selfId,"","C�i Bang c�n b�n kh�ng mu�n g�y o�n v�i nh�n s� giang h�. "..GetName(sceneId,targetId)..",  c�c h� �p ta qu�, ta c�ng kh�ng c�n c�ch n�o kh�c...")		--Boss ch� di�u ng߶i ch�i b� gi�t
		end
	end
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910163_OnDie(sceneId,selfId,killerId)

	--******************--
	x910163_DeleteMyPet(sceneId)																--X�a B�ng t�m
	--******************--
	x910163_GlobalNews(sceneId,x910163_g_Monster_Dialogue[6])
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,8,3)
	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1  do
		AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910163_Item_ttpx[random(getn(x910163_Item_ttpx))])
		local ran = random(100)
		if ran < x910163_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910163_Item_ttpx_vip[random(getn(x910163_Item_ttpx_vip)-1)])
		end
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
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
function x910163_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Skill_Timer,x910163_g_Skill_CD)		--Th�i gian k� n�ng
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Called,0)							--Kh�i t�o ch�a g�i B�ng T�m
	--******************--
	x910163_DeleteMyPet(sceneId)																--X�a B�ng t�m
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_AttackMode,0)
	--******************--
	
end
--**********************************--
--*         Delete My Pet          *--
--**********************************--
function x910163_DeleteMyPet(sceneId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910163_g_Pet.Name then
			SetCharacterDieTime(sceneId,MonsterId,100)
		end
	end
	--******************--
	
end
--**********************************--
--*         Creat My Pet           *--
--**********************************--
function x910163_CreatMyPet(sceneId,selfId,nTick)

	--******************--
	local Pet_Created=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Called)			--Ki�m tra �� g�i B�ng T�m ch�a
	--******************--
	if floor((GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId))*100)>70 and Pet_Created==0 then	--N�u Trang T� Hi�n v�n tr�n 70% m�u v� ch�a g�i B�ng t�m
		return
	end
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	if Pet_Created==0 then
		local Pet_Index=LuaFnCreateMonster(sceneId,x910163_g_Pet.Index,x+random(2)-random(2),y+random(2)-random(2),27,0,-1)
		SetCharacterName(sceneId,Pet_Index,x910163_g_Pet.Name)
		MonsterTalk(sceneId,selfId,"",x910163_g_Monster_Dialogue[4])
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Called,1)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Timer,x910163_g_Pet.Born_Time)--Th�i gian h�a k�n
	elseif Pet_Created==1 then
		local nIndex
		local nPet=0
		local nMonsterNum=GetMonsterCount(sceneId)
		for i=0,nMonsterNum-1 do
			local MonsterId=GetMonsterObjID(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910163_g_Pet.Name then
				nPet=nPet+1
				nIndex=MonsterId
				if nPet>=2 then
					break
				end
			end
		end
		if nPet>=2 or nPet==0 then
			if nPet==0 then
				LuaFnUnitUseSkill(sceneId,selfId,x910163_g_GuangBao_Skill,x,y,0,1)				--Boss s� d�ng k� n�ng Cu�ng B�o
				MonsterTalk(sceneId,selfId,"",x910163_g_Monster_Dialogue[5])
				MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Called,2)
			end
			return
		end
		local nTime=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Timer)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Timer,nTime-nTick)			--C�p nh�t th�i gian h�a k�n
		if nTime>0 then
			return
		end
		local x,y=GetWorldPos(sceneId,nIndex)
		local Pet_Index=LuaFnCreateMonster(sceneId,x910163_g_Pet.Index,x+random(2)-random(2),y+random(2)-random(2),27,0,-1)
		SetCharacterName(sceneId,Pet_Index,x910163_g_Pet.Name)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Timer,x910163_g_Pet.Born_Time)--Kh�i t�o th�i gian h�a k�n c�a B�ng T�m
	end
	--******************--
	
end
--**********************************--
--*          Check My Pet          *--
--**********************************--
function x910163_CheckMyPet(sceneId,selfId)

	--******************--
	local Pos_X,Pos_Y=GetWorldPos(sceneId,selfId)
	--******************--
	local nPet=0
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910163_g_Pet.Name then
			nPet=nPet+1
			local x,y=GetWorldPos(sceneId,MonsterId)
			if floor(sqrt((x-Pos_X)*(x-Pos_X)+(y-Pos_Y)*(y-Pos_Y)))<=3 then
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910163_g_Impact_Healing,0)	--Trang T� Hi�n ���c kh�i ph�c sinh l�c
			end
		end
	end
	--******************--
	if (MonsterAI_GetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Called)==1 or MonsterAI_GetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Called)==2) and nPet==0 then
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910163_g_Impact_Increase_Dame,0)	--Trang T� Hi�n ���c t�ng �c c�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Called,3)
	end
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910163_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910163_g_Skill_Timer)			--L�y th�i gian l�nh kh߾c k� n�ng c�a Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Skill_Timer,Time_Skill-nTick)			--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng
	if Time_Skill<=0 then																		--�� �n gi� d�ng k� n�ng
		x910163_UseSkill(sceneId,selfId)														--S� d�ng k� n�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Skill_Timer,x910163_g_Skill_CD)	--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	
end
--**********************************--
--*           Use Skill            *--
--**********************************--
function x910163_UseSkill(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)														--L�y t�a � c�a Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910163_g_Skill_Index,x,y,0,1)								--Boss s� d�ng k� n�ng
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910163_GlobalNews(sceneId,Tips)

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
