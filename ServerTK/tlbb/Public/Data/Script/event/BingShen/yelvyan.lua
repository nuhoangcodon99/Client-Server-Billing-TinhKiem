--Ph� b�n Binh Th�nh K� Tr�n
--Gia Lu�t Di�m
--Code by S�i

--******************--


x910205_Item_ttpx ={
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

x910205_Item_ttpx_vip ={

30501361,--C�ng l�c �an
30503134, --kim thoa (duc lo)
30503135, --Th�i trang ph�i s�c �i�m xuy�t ph�
30503136, --Th�i trang ph�i s�c thanh tr� ph�
30503137, --Th�i trang ph�i s�c gia c�ng ph�

30501361,--C�ng l�c �an
30503134, --kim thoa (duc lo)
30503135, --Th�i trang ph�i s�c �i�m xuy�t ph�
30503136, --Th�i trang ph�i s�c thanh tr� ph�
30503137, --Th�i trang ph�i s�c gia c�ng ph�

30501361,--C�ng l�c �an
30503134, --kim thoa (duc lo)
30503135, --Th�i trang ph�i s�c �i�m xuy�t ph�
30503136, --Th�i trang ph�i s�c thanh tr� ph�
30503137, --Th�i trang ph�i s�c gia c�ng ph�

30501361,--C�ng l�c �an
30503134, --kim thoa (duc lo)
30503135, --Th�i trang ph�i s�c �i�m xuy�t ph�
30503136, --Th�i trang ph�i s�c thanh tr� ph�
30503137, --Th�i trang ph�i s�c gia c�ng ph�

30501361,--C�ng l�c �an
30503134, --kim thoa (duc lo)
30503135, --Th�i trang ph�i s�c �i�m xuy�t ph�
30503136, --Th�i trang ph�i s�c thanh tr� ph�
30503137, --Th�i trang ph�i s�c gia c�ng ph�

30501361,--C�ng l�c �an
30503134, --kim thoa (duc lo)
30503135, --Th�i trang ph�i s�c �i�m xuy�t ph�
30503136, --Th�i trang ph�i s�c thanh tr� ph�
30503137, --Th�i trang ph�i s�c gia c�ng ph�

20503061, --Trang b� Tinh th�ng ph�
20503061, --Trang b� Tinh th�ng ph�
20503061, --Trang b� Tinh th�ng ph�

30010080, --Ch�n Nguy�n Ph�ch
30010081, --Ch�n Nguy�n Tinh Ph�ch
}
x910205_Item_ttpx_vip_rate = 50 -- ty le rot x910205_Item_ttpx_vip



--******************--

--******************--
x910205_g_ScriptId=910205
--******************--
x910205_g_Boss_Name="Gia Lu�t Di�m"																--T�n c�a BOSS
--******************--
x910205_g_AttackMode=0																			--Tr�ng th�i chi�n �u
x910205_g_Status=1																				--Tr�ng th�i m�t m�u � thi tri�n skill
--******************--
x910205_g_Skill_Index=1685																		--K� n�ng Thi�n H�a Nhi�n Khung
--******************--
x910205_g_Monster_Dialogue=
{																								--L�i n�i c�a Boss
	[1]=x910205_g_Boss_Name.." �� xu�t hi�n!",
	[2]="C�c ng߽i mu�n n�m m�i H�a Di�m Ch߾c Th�n, b�n c� n߽ng c�ng kh�ng n� l�ng n�o t� ch�i!",
	[3]="�� gi�t ch�t "..x910205_g_Boss_Name..": 1/1",
	[4]="H�a Di�m Ng�u c�a ta, �� �n l�c ng߽i hi�n th�n gi�p b�n c� n߽ng r�i, h�y gi�t ch�ng cho ta!",
}
--******************--
x910205_g_Monster={	Index=15076,	Name="H�a Di�m Ng�u",	ScriptID=-1		}					--H�a Di�m Ng�u
--******************--
x910205_g_Impact_Increase_Attack=12609															--Hi�u �ng t�ng c�ng k�ch cho H�a Di�m Ng�u
x910205_g_Impact_Increase_CritAttack=12610														--Hi�u �ng ch�nh x�c v� h�i c�ng k�ch cho H�a Di�m Ng�u
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910205_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"Binh Th�nh K� Tr�n",x910205_g_Monster_Dialogue[2])				--C�u n�i khai chi�n c�a Boss
	x910205_GlobalNews(sceneId,x910205_g_Monster_Dialogue[1])									--Th�ng b�o Boss �� v�o chi�n �u cho to�n th� ng߶i ch�i
	x910205_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910205_OnHeartBeat(sceneId,selfId,nTick)												--H�m n�y s� check li�n t�c m�i mili gi�y khi n�o Boss c�n s�ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N�u Boss �� ch�t th� ng�ng ho�t �ng c�a Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910205_g_AttackMode)==0 then
		return
	end
	--******************--
	x910205_UseMySkill(sceneId,selfId)															--S� d�ng k� n�ng
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910205_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910205_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910205_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910205_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910205_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910205_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910205_OnDie(sceneId,selfId,killerId)

	--******************--
	x910205_GlobalNews(sceneId,x910205_g_Monster_Dialogue[3])
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,9,5)													--C�p nh�t b߾c ho�t �ng ph� b�n
	--******************--
	x910205_DeleteOldMonster(sceneId)
	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1  do
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
		AddMonsterDropItem(sceneId,selfId,nPlayerId,x910205_Item_ttpx[random(getn(x910205_Item_ttpx))])
		local ran = random(100)
		if ran < x910205_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,nPlayerId,x910205_Item_ttpx_vip[random(getn(x910205_Item_ttpx_vip))])
		end
		local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+25)
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� gia t�ng 25 �i�m ho�t �ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,nPlayerId)
	end
	--******************--
	
end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910205_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910205_g_AttackMode,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910205_g_Status,0)
	x910205_DeleteOldMonster(sceneId)
	--******************--
	
end
--**********************************--
--*       Delete Old Monster       *--
--**********************************--
function x910205_DeleteOldMonster(sceneId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910205_g_Monster.Name then
			SetCharacterDieTime(sceneId,MonsterId,100)
		end
	end
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910205_UseMySkill(sceneId,selfId)

	--******************--
	local nStep=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910205_g_Status)
	--******************--
	if GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.85 and nStep==0 then								--Khi Boss c�n 85% m�u
		local x,y=GetWorldPos(sceneId,selfId)
		LuaFnUnitUseSkill(sceneId,selfId,x910205_g_Skill_Index,x,y,0,1)										--D�ng k� n�ng Thi�n H�a Nhi�n Khung
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910205_g_Status,1)										--C�p nh�t thao t�c Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.65 and nStep==1 then							--Khi Boss c�n 65% m�u
		x910205_CallMyPet(sceneId,selfId)																			--G�i H�a Di�m Ng�u
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910205_g_Status,2)										--C�p nh�t thao t�c Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.35 and nStep==2 then							--Khi Boss c�n 35% m�u
		local x,y=GetWorldPos(sceneId,selfId)
		LuaFnUnitUseSkill(sceneId,selfId,x910205_g_Skill_Index,x,y,0,1)										--D�ng k� n�ng Thi�n H�a Nhi�n Khung
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910205_g_Status,3)										--C�p nh�t thao t�c Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.15 and nStep==3 then							--Khi Boss c�n 15% m�u
		local x,y=GetWorldPos(sceneId,selfId)
		LuaFnUnitUseSkill(sceneId,selfId,x910205_g_Skill_Index,x,y,0,1)										--D�ng k� n�ng Thi�n H�a Nhi�n Khung
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910205_g_Status,100)									--C�p nh�t thao t�c Boss
	end
	--******************--
	
end
--**********************************--
--*          Call My Pet           *--
--**********************************--
function x910205_CallMyPet(sceneId,selfId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,8)
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	local Monster_Index=LuaFnCreateMonster(sceneId,x910205_g_Monster.Index+nDec,x+random(5)-random(5),y+random(5)-random(5),27,21,x910205_g_Monster.ScriptID)	--G�i H�a Di�m Ng�u
	SetCharacterName(sceneId,Monster_Index,x910205_g_Monster.Name)
	SetCharacterDieTime(sceneId,Monster_Index,300000)
	--******************--
	local nHuman={}
	local Count=0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			Count=Count+1
			nHuman[Count]=nHumanId
		end
	end
	--******************--
	local z=nHuman[random(Count)]
	LuaFnSetCopySceneData_Param(sceneId,22,z)
	--******************--
	local str=format(x910205_g_Monster_Dialogue[4])
	--******************--
	MonsterTalk(sceneId,selfId,"Binh Th�nh K� Tr�n",str)
	--******************--
	LuaFnSendSpecificImpactToUnit(sceneId,Monster_Index,Monster_Index,Monster_Index,x910205_g_Impact_Increase_Attack,0)
	LuaFnSendSpecificImpactToUnit(sceneId,Monster_Index,Monster_Index,Monster_Index,x910205_g_Impact_Increase_CritAttack,0)
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910205_GlobalNews(sceneId,Tips)

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