--Ph� b�n Binh Th�nh K� Tr�n
--Ti�u D�t Phong
--Code by S�i

--******************--


x910202_Item_ttpx ={
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

x910202_Item_ttpx_vip ={

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

30010080, --Ch�n Nguy�n Ph�ch
30010081, --Ch�n Nguy�n Tinh Ph�ch
}
x910202_Item_ttpx_vip_rate = 30 -- ty le rot x910202_Item_ttpx_vip



--******************--

--******************--
x910202_g_ScriptId=910202
--******************--
x910202_g_Boss_Name="Ti�u D�t Phong"															--T�n c�a BOSS
--******************--
x910202_g_AttackMode=0																			--Tr�ng th�i chi�n �u
x910202_g_Status=1																				--Tr�ng th�i m�t m�u � thi tri�n skill
x910202_g_Attack_Status=2																		--Tr�ng th�i To�n Phong c�n s�ng kh�ng
x910202_g_FengLeiDan_Timer=3																	--Th�i gian g�i Phong L�i ��n
--******************--
x910202_g_Monster_Dialogue=
{																								--L�i n�i c�a Boss
	[1]=x910202_g_Boss_Name.." �� xu�t hi�n!",
	[2]="Thi�n �߶ng r�ng b߾c ng߽i kh�ng �i, �a ng�c v� m�n ng߽i l�i �n!",
	[3]="�� gi�t ch�t "..x910202_g_Boss_Name..": 1/1",
	[4]="H�y h�ng ch�u tr�n gi� kinh ho�ng n�y �i. X�ng l�n To�n Phong c�a ta, m�c ti�u l� %s v� %s!",
	[5]="H�y cho ch�ng n� th�y kh� n�ng sinh s�n kh�ng ng�ng c�a c�c ng߽i �i!",
}
--******************--
x910202_g_Monster=
{
	["Chun Feng"]		=	{	Index=15011,	Name="To�n Phong",		ScriptID=-1		},		--To�n Phong
	["Feng Lei Dan"]	=	{	Index=15016,	Name="Phong L�i ��n",	ScriptID=-1		},		--Phong L�i ��n
}
--******************--
x910202_g_Impact_Bind_Magic_Attack=12602														--Hi�u �ng mi�n d�ch s�t th߽ng N�i c�ng
x910202_g_Impact_Attack_By_ChunFeng=12604														--Hi�u �ng ph�t n� c�a To�n Phong
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910202_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"Binh Th�nh K� Tr�n",x910202_g_Monster_Dialogue[2])				--C�u n�i khai chi�n c�a Boss
	x910202_GlobalNews(sceneId,x910202_g_Monster_Dialogue[1])									--Th�ng b�o Boss �� v�o chi�n �u cho to�n th� ng߶i ch�i
	x910202_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910202_OnHeartBeat(sceneId,selfId,nTick)												--H�m n�y s� check li�n t�c m�i mili gi�y khi n�o Boss c�n s�ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N�u Boss �� ch�t th� ng�ng ho�t �ng c�a Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910202_g_AttackMode)==0 then
		return
	end
	--******************--
	if x910202_CheckHaveFengLeiDanLeft(sceneId)==1 then											--Ki�m tra xem Phong L�i ��n c�n s�ng kh�ng
		local nTime=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910202_g_FengLeiDan_Timer)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_FengLeiDan_Timer,nTime-nTick)
		if nTime-nTick<=0 then																	--N�u �� sau th�i gian 30 gi�y th� t�o th�m 1 Phong L�i ��n m�i
			MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_FengLeiDan_Timer,10000)
			x910202_CreateFengLeiDan(sceneId,selfId)
		end
	end
	--******************--
	if x910202_CheckHaveChunFengLeft(sceneId)==0 and MonsterAI_GetIntParamByIndex(sceneId,selfId,x910202_g_Attack_Status)==1 then--Ki�m tra xem To�n Phong c�n s�ng kh�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Attack_Status,0)
		local x,y=LuaFnGetCopySceneData_Param(sceneId,20),LuaFnGetCopySceneData_Param(sceneId,21)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,x,x910202_g_Impact_Attack_By_ChunFeng,0)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,y,x910202_g_Impact_Attack_By_ChunFeng,0)
	end
	--******************--
	x910202_UseMySkill(sceneId,selfId)															--S� d�ng k� n�ng
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910202_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910202_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910202_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910202_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910202_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910202_OnDie(sceneId,selfId,killerId)

	--******************--
	x910202_GlobalNews(sceneId,x910202_g_Monster_Dialogue[3])
	LuaFnSetCopySceneData_Param(sceneId,9,2)
	x910202_DeleteOldMonster(sceneId)
	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1  do
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
		AddMonsterDropItem(sceneId,selfId,nPlayerId,x910202_Item_ttpx[random(getn(x910202_Item_ttpx))])
		local ran = random(100)
		if ran < x910202_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,nPlayerId,x910202_Item_ttpx_vip[random(getn(x910202_Item_ttpx_vip)-1)])
		end
		local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+5)
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� gia t�ng 5 �i�m ho�t �ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,nPlayerId)
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910202_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_AttackMode,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Status,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Attack_Status,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_FengLeiDan_Timer,30000)
	x910202_DeleteOldMonster(sceneId)
	--******************--
	
end
--**********************************--
--*       Delete Old Monster       *--
--**********************************--
function x910202_DeleteOldMonster(sceneId)

	--******************--
	for i,Monster in x910202_g_Monster do
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
function x910202_UseMySkill(sceneId,selfId)

	--******************--
	local nStep=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910202_g_Status)
	--******************--
	if GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.85 and nStep==0 then								--Khi Boss c�n n�a c�t m�u th� 3
		x910202_CallChunFeng(sceneId,selfId)																--G�i To�n phong
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Status,1)										--C�p nh�t thao t�c Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.70 and nStep==1 then							--Khi Boss c�n 2 c�t m�u
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910202_g_Impact_Bind_Magic_Attack,0)	--Boss nh�n tr�ng th�i mi�n d�ch n�i c�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Status,2)										--C�p nh�t thao t�c Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.5 and nStep==2 then							--Khi Boss c�n n�a c�t m�u th� 2
		x910202_CallFengLeiDan(sceneId,selfId)																--G�i Phong l�i ��n
		LuaFnCancelSpecificImpact(sceneId,selfId,x910202_g_Impact_Bind_Magic_Attack)						--H�y tr�ng th�i mi�n d�ch n�i c�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Status,3)										--C�p nh�t thao t�c Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.3 and nStep==3 then							--Khi Boss c�n 1 c�t m�u
		x910202_CallChunFeng(sceneId,selfId)																--G�i To�n phong
		x910202_CallFengLeiDan(sceneId,selfId)																--G�i Phong l�i ��n
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Status,100)									--C�p nh�t thao t�c Boss
	end
	--******************--
	
end
--**********************************--
--*         Call Chun Feng         *--
--**********************************--
function x910202_CallChunFeng(sceneId,selfId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,8)
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	for i=1,2 do
		local Monster_Index=LuaFnCreateMonster(sceneId,x910202_g_Monster["Chun Feng"].Index+nDec,x+random(5)-random(5),y+random(5)-random(5),27,0,x910202_g_Monster["Chun Feng"].ScriptID)	--G�i To�n phong
		SetCharacterName(sceneId,Monster_Index,x910202_g_Monster["Chun Feng"].Name)
		SetCharacterDieTime(sceneId,Monster_Index,20000)
	end
	--******************--
	local HumanList={}
	local Count=0
	local nHumanNum=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanNum-1  do
		local PlayerId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,PlayerId)==1 and LuaFnIsCanDoScriptLogic(sceneId,PlayerId)==1 and LuaFnIsCharacterLiving(sceneId,PlayerId)==1 then
			Count=Count+1
			HumanList[Count]=PlayerId
		end
	end
	--******************--
	local x,y=HumanList[random(Count)],HumanList[random(Count)]
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,20,x)
	LuaFnSetCopySceneData_Param(sceneId,21,y)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Attack_Status,1)
	--******************--
	local str=format(x910202_g_Monster_Dialogue[4],GetName(sceneId,x),GetName(sceneId,y))
	--******************--
	MonsterTalk(sceneId,selfId,"Binh Th�nh K� Tr�n",str)
	--******************--
	
end
--**********************************--
--*       Call Feng Lei Dan        *--
--**********************************--
function x910202_CallFengLeiDan(sceneId,selfId)

	--******************--
	for i=1,10 do
		x910202_CreateFengLeiDan(sceneId,selfId)
	end
	--******************--
	MonsterTalk(sceneId,selfId,"Binh Th�nh K� Tr�n",x910202_g_Monster_Dialogue[5])
	--******************--
	
end
--**********************************--
--*      Create Feng Lei Dan       *--
--**********************************--
function x910202_CreateFengLeiDan(sceneId,selfId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,8)
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	local Monster_Index=LuaFnCreateMonster(sceneId,x910202_g_Monster["Feng Lei Dan"].Index+nDec,x+random(5)-random(5),y+random(5)-random(5),27,0,x910202_g_Monster["Feng Lei Dan"].ScriptID)--G�i Phong l�i ��n
	SetCharacterName(sceneId,Monster_Index,x910202_g_Monster["Feng Lei Dan"].Name)
	--******************--
	
end
--**********************************--
--*    Check Have Monster Left     *--
--**********************************--
function x910202_CheckHaveFengLeiDanLeft(sceneId)
	
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910202_g_Monster["Feng Lei Dan"].Name then
			return 1
		end
	end
	--******************--
	return 0
	--******************--
	
end
--**********************************--
--*    Check Have Monster Left     *--
--**********************************--
function x910202_CheckHaveChunFengLeft(sceneId)
	
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910202_g_Monster["Chun Feng"].Name then
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
function x910202_GlobalNews(sceneId,Tips)

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