--Ph� b�n Binh Th�nh K� Tr�n
--Ti�u Nh� �y
--Code by S�i

--******************--


x910204_Item_ttpx ={
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

x910204_Item_ttpx_vip ={

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
x910204_Item_ttpx_vip_rate = 40 -- ty le rot x910204_Item_ttpx_vip



--******************--

--******************--
x910204_g_ScriptId=910204
--******************--
x910204_g_Boss_Name="Ti�u Nh� �y"																--T�n c�a BOSS
x910204_g_Friend_Name="Ti�u Nh� Qu�n"															--T�n c�a BOSS �ng h�nh
--******************--
x910204_g_AttackMode=0																			--Tr�ng th�i chi�n �u
x910204_g_Status=1																				--Tr�ng th�i m�t m�u � thi tri�n skill
x910204_g_Skill_Timer=2																			--Tr�ng th�i m�t m�u � thi tri�n skill
--******************--
x910204_g_Skill_Index=1686																		--K� n�ng Tr�c L�m Tr�n
x910204_g_Skill_CD=20000																		--Th�i gian ph�c h�i k� n�ng Tr�c L�m Tr�n
x910204_g_TrapObj=646																			--C�m b�y
--******************--
x910204_g_Monster_Dialogue=
{																								--L�i n�i c�a Boss
	[1]=x910204_g_Boss_Name.." �� xu�t hi�n!",
	[2]="L�c ch�n v�o r�ng tr�c n�y l� c�c ng߽i c�ng s� �n ng�y t�n th�!",
	[3]="�� gi�t ch�t "..x910204_g_Boss_Name..": 1/1",
}
--******************--
x910204_g_Monster=
{
	["Tong Xin Zhu - Zi"]		=	{	Index=15041,	Name="аng T�m Tr�c - T� (�y)",			Title="Kh�ng n�i c�ng",		Impact=12602,	ScriptID=-1		},	--аng T�m Tr�c - T�	(Kh�ng n�i c�ng)
	["Tong Xin Zhu - Bai"]		=	{	Index=15036,	Name="аng T�m Tr�c - B�ch (�y)",		Title="Kh�ng ngo�i c�ng",	Impact=12603,	ScriptID=-1		},	--аng T�m Tr�c - B�ch	(Kh�ng ngo�i c�ng)
	["Tong Xin Zhu - Lan"]		=	{	Index=15061,	Name="аng T�m Tr�c - Lam (�y)",		Title="Kh�ng b�ng c�ng",	Impact=12605,	ScriptID=-1		},	--аng T�m Tr�c - Lam	(Kh�ng b�ng c�ng)
	["Tong Xin Zhu - Hong"]		=	{	Index=15056,	Name="аng T�m Tr�c - H�ng (�y)",		Title="Kh�ng h�a c�ng",		Impact=12606,	ScriptID=-1		},	--аng T�m Tr�c - H�ng	(Kh�ng h�a c�ng)
	["Tong Xin Zhu - Huang"]	=	{	Index=15046,	Name="аng T�m Tr�c - Ho�ng (�y)",		Title="Kh�ng huy�n c�ng",	Impact=12607,	ScriptID=-1		},	--аng T�m Tr�c - Ho�ng	(Kh�ng huy�n c�ng)
	["Tong Xin Zhu - Lv"]		=	{	Index=15051,	Name="аng T�m Tr�c - L�c (�y)",		Title="Kh�ng �c c�ng",		Impact=12608,	ScriptID=-1		},	--аng T�m Tr�c - L�c	(Kh�ng �c c�ng)
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910204_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"Binh Th�nh K� Tr�n",x910204_g_Monster_Dialogue[2])				--C�u n�i khai chi�n c�a Boss
	x910204_GlobalNews(sceneId,x910204_g_Monster_Dialogue[1])									--Th�ng b�o Boss �� v�o chi�n �u cho to�n th� ng߶i ch�i
	x910204_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910204_OnHeartBeat(sceneId,selfId,nTick)												--H�m n�y s� check li�n t�c m�i mili gi�y khi n�o Boss c�n s�ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N�u Boss �� ch�t th� ng�ng ho�t �ng c�a Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910204_g_AttackMode)==0 then
		return
	end
	--******************--
	x910204_UseMySkill(sceneId,selfId,nTick)													--S� d�ng k� n�ng
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910204_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910204_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910204_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910204_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910204_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910204_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910204_OnDie(sceneId,selfId,killerId)

	--******************--
	x910204_GlobalNews(sceneId,x910204_g_Monster_Dialogue[3])
	--******************--
	if x910204_CheckMyFriendLeft(sceneId,selfId)==1 then
		LuaFnSetCopySceneData_Param(sceneId,9,3)												--C�p nh�t b߾c ho�t �ng ph� b�n
	else
		LuaFnSetCopySceneData_Param(sceneId,9,4)												--C�p nh�t b߾c ho�t �ng ph� b�n
	end
	--******************--
	x910204_DeleteOldMonster(sceneId)
	--******************--
	if LuaFnGetCopySceneData_Param(sceneId,31)~=1 then
		for i=0,GetNearTeamCount(sceneId,killerId)-1  do
			local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
			AddMonsterDropItem(sceneId,selfId,nPlayerId,x910204_Item_ttpx[random(getn(x910204_Item_ttpx))])
			local ran = random(100)
			if ran < x910204_Item_ttpx_vip_rate then
				AddMonsterDropItem(sceneId,selfId,nPlayerId,x910204_Item_ttpx_vip[random(getn(x910204_Item_ttpx_vip)-1)])
			end
			local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
			SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+10)
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� �� gia t�ng 10 �i�m ho�t �ng!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nPlayerId)
		end
		LuaFnSetCopySceneData_Param(sceneId,31,1)
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910204_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910204_g_AttackMode,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910204_g_Status,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910204_g_Skill_Timer,x910204_g_Skill_CD)
	x910204_DeleteOldMonster(sceneId)
	--******************--
	
end
--**********************************--
--*       Delete Old Monster       *--
--**********************************--
function x910204_DeleteOldMonster(sceneId)

	--******************--
	for i,Monster in x910204_g_Monster do
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
function x910204_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Last_Time=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910204_g_Skill_Timer)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910204_g_Skill_Timer,Last_Time-nTick)
	--******************--
	if Last_Time-nTick<=0 then
		x910204_ActiveMyTrap(sceneId,selfId)																--S� d�ng k� n�ng �t b�y
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910204_g_Skill_Timer,x910204_g_Skill_CD)				--Уt l�i th�i gian l�nh kh߾c
	end
	--******************--
	local nStep=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910204_g_Status)
	--******************--
	if GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.35 and nStep==0 then								--Khi Boss c�n 35% m�u
		x910204_CallTongXinZhu(sceneId,selfId)																--G�i 6 c�y аng T�m Tr�c
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910204_g_Status,100)									--C�p nh�t thao t�c Boss
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910204_g_Status)==100 then
		x910204_CheckMonsterLeft(sceneId,selfId)															--Ki�m tra s� аng T�m Tr�c c�n l�i
	end
	--******************--
	
end
--**********************************--
--*         Active My Trap         *--
--**********************************--
function x910204_ActiveMyTrap(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	LuaFnUnitUseSkill(sceneId,selfId,x910204_g_Skill_Index,x,y,0,1)
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			local x1,y1=GetWorldPos(sceneId,nHumanId)
			CreateSpecialObjByDataIndex(sceneId,selfId,x910204_g_TrapObj,x1,y1,0)
		end
	end
	--******************--
	
end
--**********************************--
--*       Call Tong Xin Zhu        *--
--**********************************--
function x910204_CallTongXinZhu(sceneId,selfId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,8)
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	for i,Monster in x910204_g_Monster do
		local Monster_Index=LuaFnCreateMonster(sceneId,Monster.Index+nDec,x+random(10)-random(10),y+random(10)-random(10),3,0,Monster.ScriptID)	--G�i аng T�m Tr�c
		SetCharacterName(sceneId,Monster_Index,Monster.Name)
		SetCharacterTitle(sceneId,Monster_Index,Monster.Title)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,Monster.Impact,0)
		LuaFnSendSpecificImpactToUnit(sceneId,Monster_Index,Monster_Index,Monster_Index,Monster.Impact,0)
	end
	--******************--
	
end
--**********************************--
--*    Check Tong Xin Zhu Left     *--
--**********************************--
function x910204_CheckMonsterLeft(sceneId,selfId)

	--******************--
	for i,Monster in x910204_g_Monster do
		local nMonsterNum=GetMonsterCount(sceneId)
		local Have_Monster=0
		for i=0,nMonsterNum-1 do
			local MonsterId=GetMonsterObjID(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==Monster.Name then
				Have_Monster=1
				break
			end
		end
		if Have_Monster==0 and LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,Monster.Impact)>0 then
			LuaFnCancelSpecificImpact(sceneId,selfId,Monster.Impact)
		end
	end
	--******************--
	
end
--**********************************--
--*      Check My Friend Left      *--
--**********************************--
function x910204_CheckMyFriendLeft(sceneId,selfId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910204_g_Friend_Name then
			return 1
		end
	end
	--******************--
	return 0
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910204_GlobalNews(sceneId,Tips)

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