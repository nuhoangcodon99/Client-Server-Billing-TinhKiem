--Ph� b�n Binh Th�nh K� Tr�n
--Gia Lu�t Li�n Th�nh
--Code by S�i

--******************--




x910206_Item_ttpx ={
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

x910206_Item_ttpx_vip ={

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
x910206_Item_ttpx_vip_rate = 60 -- ty le rot x910206_Item_ttpx_vip


--******************--

--******************--
x910206_g_ScriptId=910206
--******************--
x910206_g_Boss_Name="Gia Lu�t Li�n Th�nh"														--T�n c�a BOSS
--******************--
x910206_g_AttackMode=0																			--Tr�ng th�i chi�n �u
x910206_g_Status=1																				--Tr�ng th�i m�t m�u � thi tri�n skill
x910206_g_KillTimer=2																			--Th�i gian kill c� pt
--******************--
x910206_g_Impact_One_Hit_Die=9780																--Hi�u �ng m�t �p ch�t lu�n
--******************--
x910206_g_Monster_Dialogue=
{																								--L�i n�i c�a Boss
	[1]=x910206_g_Boss_Name.." �� xu�t hi�n!",
	[2]="Ъn c�a �i n�y xem ra c�ng c� ch�t b�n l�nh. Th�i th� � l�o gia ta ti�p ng߽i v�y!",
	[3]="�� gi�t ch�t "..x910206_g_Boss_Name..": 1/1",
	[4]="H�y n�m m�i Th�ch ��i Tr�n Ph�p c�a ta...",
	[5]="H� kh�ng �o �nh, thi tri�n...",
	[6]="%s#R c�ng t� �i �c chi�n quy�t li�t t�i #GLi�u Qu�n K� Tr�n#R, ��nh b�i #GGia Lu�t Li�n Th�nh#R c�ng ��m l�u la, phen n�y gian kh� song v� c�ng t� h�o. #G��i Li�u Chinh Nam V߽ng#R �� b� ti�u di�t, #G��i T�ng#R ta ���c b�nh y�n r�i!",
}
--******************--
x910206_g_Monster=
{
	["Shi Dui - Wai"]	=	{	Index=15091,	Name="Th�ch ��i - Ngo�i",	Title="Kh�ng ngo�i c�ng",	Impact=12603,	ScriptID=-1		},	--Th�ch ��i kh�ng ngo�i c�ng
	["Shi Dui - Nei"]	=	{	Index=15091,	Name="Th�ch ��i - N�i",		Title="Kh�ng n�i c�ng",		Impact=12602,	ScriptID=-1		},	--Th�ch ��i kh�ng n�i c�ng
}
--******************--
x910206_g_Avarta=
{
	["Tie Gut"]			=	{	Index=15081,	Name="Li�n Th�nh Thi�t C�t",		Title="Thi�t C�t",				ScriptID=-1		},		--Gia Lu�t Li�n Th�nh - Thi�t C�t
	["Yuan Shen"]		=	{	Index=15096,	Name="Li�n Th�nh Nguy�n Th�n",		Title="Nguy�n Th�n",			ScriptID=-1		},		--Gia Lu�t Li�n Th�nh - Nguy�n Th�n
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910206_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"Binh Th�nh K� Tr�n",x910206_g_Monster_Dialogue[2])				--C�u n�i khai chi�n c�a Boss
	x910206_GlobalNews(sceneId,x910206_g_Monster_Dialogue[1])									--Th�ng b�o Boss �� v�o chi�n �u cho to�n th� ng߶i ch�i
	x910206_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910206_OnHeartBeat(sceneId,selfId,nTick)												--H�m n�y s� check li�n t�c m�i mili gi�y khi n�o Boss c�n s�ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N�u Boss �� ch�t th� ng�ng ho�t �ng c�a Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910206_g_AttackMode)==0 then
		return
	end
	--******************--
	x910206_UseMySkill(sceneId,selfId,nTick)													--S� d�ng k� n�ng
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910206_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910206_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910206_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910206_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910206_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910206_OnDie(sceneId,selfId,killerId)

	--******************--
	x910206_GlobalNews(sceneId,x910206_g_Monster_Dialogue[3])
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,9,6)													--C�p nh�t b߾c ho�t �ng ph� b�n
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_Status,100)							--C�p nh�t thao t�c Boss
	--******************--
	x910206_DeleteOldMonster(sceneId)
	--******************--
	local str=format(x910206_g_Monster_Dialogue[6],GetName(sceneId,killerId))
	AddGlobalCountNews(sceneId,str)
	--******************--
	local TeammateCount = GetNearTeamCount(sceneId,killerId)
	for i=0,TeammateCount-1 do
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
		AddMonsterDropItem(sceneId,selfId,nPlayerId,x910206_Item_ttpx[random(getn(x910206_Item_ttpx))])
		local ran = random(100)
		if ran < x910206_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,nPlayerId,x910206_Item_ttpx_vip[random(getn(x910206_Item_ttpx_vip))])
		end
		local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+50)
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� gia t�ng 50 �i�m ho�t �ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,nPlayerId)
	end
	--******************--
	
end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910206_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_AttackMode,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_Status,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_KillTimer,30000)
	x910206_DeleteOldMonster(sceneId)
	--******************--
	
end
--**********************************--
--*       Delete Old Monster       *--
--**********************************--
function x910206_DeleteOldMonster(sceneId)

	--******************--
	for i,Monster in x910206_g_Monster do
		local nMonsterNum=GetMonsterCount(sceneId)
		for i=0,nMonsterNum-1 do
			local MonsterId=GetMonsterObjID(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==Monster.Name then
				SetCharacterDieTime(sceneId,MonsterId,100)
			end
		end
	end
	--******************--
	for i,Monster in x910206_g_Avarta do
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
--*          Use My Skill          *--
--**********************************--
function x910206_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local nStep=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910206_g_Status)
	--******************--
	if GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.85 and nStep==0 then								--Khi Boss c�n 85% m�u
		x910206_CallMyStone(sceneId,selfId)																	--G�i Th�ch ��i
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_Status,1)										--C�p nh�t thao t�c Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.65 and nStep==1 then							--Khi Boss c�n 65% m�u
		x910206_CallMyStone(sceneId,selfId)																	--G�i Th�ch ��i
		x910206_CreateMyAvarta(sceneId,selfId)																--G�i 2 c�i b�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_Status,2)										--C�p nh�t thao t�c Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.35 and nStep==2 then							--Khi Boss c�n 35% m�u
		x910206_CallMyStone(sceneId,selfId)																	--G�i Th�ch ��i
		x910206_CreateMyAvarta(sceneId,selfId)																--G�i 2 c�i b�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_Status,3)										--C�p nh�t thao t�c Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.15 and nStep==3 then							--Khi Boss c�n 15% m�u
		x910206_CallMyStone(sceneId,selfId)																	--G�i Th�ch ��i
		x910206_CreateMyAvarta(sceneId,selfId)																--G�i 2 c�i b�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_Status,4)										--C�p nh�t thao t�c Boss
	elseif nStep==4 then																					--Chu�n b� sau 30s s� ti�n c� PT v� M�nh B�
		local nTime=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910206_g_KillTimer)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_KillTimer,nTime-nTick)
		if nTime-nTick<=0 then
			MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_Status,5)									--C�p nh�t thao t�c Boss
			x910206_KillAllPT(sceneId,selfId)
		end
	end
	--******************--
	x910206_CheckMyStone(sceneId,selfId)																	--Ki�m tra xem c�n th�ch ��i kh�ng
	--******************--
	
end
--**********************************--
--*         Check My Stone         *--
--**********************************--
function x910206_CheckMyStone(sceneId,selfId)

	--******************--
	for i,Monster in x910206_g_Monster do
		local nMonsterNum=GetMonsterCount(sceneId)
		local HaveMonster=0
		for i=0,nMonsterNum-1 do
			local MonsterId=GetMonsterObjID(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==Monster.Name then
				HaveMonster=1
				break
			end
		end
		if HaveMonster==0 then
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,Monster.Impact) then
				LuaFnCancelSpecificImpact(sceneId,selfId,Monster.Impact)
			end
		end
	end
	--******************--
	
end
--**********************************--
--*         Call My Stone          *--
--**********************************--
function x910206_CallMyStone(sceneId,selfId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,8)
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	for i,Monster in x910206_g_Monster do
		local Monster_Index=LuaFnCreateMonster(sceneId,Monster.Index+nDec,x+random(10)-random(10),y+random(10)-random(10),3,0,Monster.ScriptID)	--G�i Th�ch ��i
		SetCharacterName(sceneId,Monster_Index,Monster.Name)
		SetCharacterTitle(sceneId,Monster_Index,Monster.Title)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,Monster.Impact,0)
		LuaFnSendSpecificImpactToUnit(sceneId,Monster_Index,Monster_Index,Monster_Index,Monster.Impact,0)
	end
	--******************--
	MonsterTalk(sceneId,selfId,"Binh Th�nh K� Tr�n",x910206_g_Monster_Dialogue[4])
	--******************--
	
end
--**********************************--
--*         Create My Avarta          *--
--**********************************--
function x910206_CreateMyAvarta(sceneId,selfId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,8)
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	for i,Monster in x910206_g_Avarta do
		local Monster_Index=LuaFnCreateMonster(sceneId,Monster.Index+nDec,x+random(5)-random(5),y+random(5)-random(5),27,0,Monster.ScriptID)	--G�i b�ng
		SetCharacterName(sceneId,Monster_Index,Monster.Name)
		SetCharacterTitle(sceneId,Monster_Index,Monster.Title)
	end
	--******************--
	MonsterTalk(sceneId,selfId,"Binh Th�nh K� Tr�n",x910206_g_Monster_Dialogue[5])
	--******************--
	
end
--**********************************--
--*           Kill All PT          *--
--**********************************--
function x910206_KillAllPT(sceneId,selfId)

	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910206_g_Status)~=5 then
		return
	end
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfid,nHumanId,x910206_g_Impact_One_Hit_Die,0)
		end
	end
	--******************--

end
--**********************************--
--*           Global News          *--
--**********************************--
function x910206_GlobalNews(sceneId,Tips)

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