--Ph� b�n T� Tuy�t Trang
--B�ng X�
--Author: Ho�ng Steven

--******************--


x910176_Item_ttpx ={
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

x910176_Item_ttpx_vip ={

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
x910176_Item_ttpx_vip_rate = 50 -- ty le rot x910176_Item_ttpx_vip


--******************--

--******************--
x910176_g_ScriptId=910176
--******************--
x910176_g_Boss_Name="B�ng X�"																	--T�n c�a BOSS
--******************--
x910176_g_Skill_Index_1=1678																	--K� n�ng Tam Phong L�u V�n (Qu�n th� ma t� + r�t 20% m�u)
x910176_g_Skill_1_CD=30000																		--Th�i gian l�nh kh߾c Tam Phong L�u V�n
x910176_g_Skill_Index_2=1679																	--K� n�ng H�c B�ch Song V�n (G�i long tr�)
x910176_g_Skill_2_CD=40000																		--Th�i gian l�nh kh߾c H�c B�ch Song V�n
x910176_g_Skill_Index_3=																		--K� n�ng c�ng k�ch thu�c t�nh
{	
	[1]={	Index=1681,		Impact=9761		},													--M�u иnh Thi�n H�
	[2]={	Index=1682,		Impact=9763		},													--T߾ng Qu�n L�nh
	[3]={	Index=1683,		Impact=9773		},													--Kh� Xa B�o So�i
	[4]={	Index=1684,		Impact=9776		},													--Th�p B� Nh�t S�t
}
x910176_g_Skill_3_CD=30000																		--Th�i gian l�nh kh߾c k� n�ng thu�c t�nh
x910176_g_LongZhu_Active_Time=5000																--Th�i gian ph�t n� Long tr�
x910176_g_Trap_Active_Time=20000																--Th�i gian xu�t b�y Imba m�i
--******************--
x910176_g_Skill_Imba=1680																		--K� n�ng Tinh La K� B�
--******************--
x910176_g_LostHP_Impact=9755																	--Hi�u �ng m�t 20% HP
x910176_g_Healing_Impact=9781																	--Hi�u �ng ph�c h�i 1% HP
--******************--
x910176_g_Skill_1_Timer=1																		--Th�i gian k� n�ng 1
x910176_g_Skill_2_Timer=2																		--Th�i gian k� n�ng 2
x910176_g_Skill_3_Timer=3																		--Th�i gian k� n�ng 3
x910176_g_Skill_Imba_Step=4																		--K� n�ng Imba
x910176_g_LongZhu_Type=5																		--Lo�i Long tr�
x910176_g_LongZhu_Timer=6																		--Th�i gian ph�t n� Long tr�
x910176_g_Trap_Timer=7																			--Th�i gian xu�t b�y Imba m�i
x910176_g_AttackMode=8																			--Tr�ng th�i chi�n �u
--******************--
x910176_g_Monster_Dialogue=
{																								--L�i n�i c�a Boss
	[1]=x910176_g_Boss_Name.." �� xu�t hi�n!",
	[2]="M�y t�n n�y c�ng c� ch�t b�n l�nh. ��nh b�i c�c huynh � c�a ta. Th� n�y ta nh�t �nh ph�i b�o...",
	[3]="�� gi�t ch�t "..x910176_g_Boss_Name..": 1/1",
	[4]="Thi�n h� n�y kh�ng ai �� b�n l�nh thi ��nh c� v�i l�o phu ��u... Ha... Ha...",
	[5]="Nhi�m v� ho�n th�nh!",
}
--******************--
x910176_g_LongZhu=
{
	[1]={	Index=14147,	Name="Long tr� Kim",	Pos_X=41,	Pos_Y=25,	nTalk="Thi�n thi�n h߾ng th��ng. Kim gia b�o..."		},
	[2]={	Index=14148,	Name="Long tr� M�c",	Pos_X=39,	Pos_Y=37,	nTalk="Thi�n thi�n h߾ng th��ng. M�c c�n thi�m..."		},
	[3]={	Index=14149,	Name="Long tr� Th�y",	Pos_X=21,	Pos_Y=37,	nTalk="Thi�n thi�n h߾ng th��ng. Th�y l�u giao..."		},
	[4]={	Index=14150,	Name="Long tr� H�a",	Pos_X=19,	Pos_Y=25,	nTalk="Thi�n thi�n h߾ng th��ng. H�a chi tinh..."		},
	[5]={	Index=14151,	Name="Long tr� Th�",	Pos_X=30,	Pos_Y=18,	nTalk="Thi�n thi�n h߾ng th��ng. Th� nh�t ph�ch..."		},
}
--******************--
x910176_g_Notify_Tips=
{
	[1]="B�ng X� �� tri�u t�p Long tr� Kim, c�c h� h�y ph� h�y n� tr߾c khi qu� mu�n...",
	[2]="B�ng X� �� tri�u t�p Long tr� M�c, c�c h� h�y ph� h�y n� tr߾c khi qu� mu�n...",
	[3]="B�ng X� �� tri�u t�p Long tr� Th�y, c�c h� h�y ph� h�y n� tr߾c khi qu� mu�n...",
	[4]="B�ng X� �� tri�u t�p Long tr� H�a, c�c h� h�y ph� h�y n� tr߾c khi qu� mu�n...",
	[5]="B�ng X� �� tri�u t�p Long tr� Th�, c�c h� h�y ph� h�y n� tr߾c khi qu� mu�n...",
	[6]="B�ng X� �� ph�ng th�ch r�t nhi�u c�m b�y d߾i ch�n c�c v�, h�y c�n th�n ��ng � ch�m v�o ch�ng...",
}
--******************--
x910176_g_Trap_Object={162,163,164,165,166,167}
--******************--
x910176_g_Guardian={Index=14164,Name="Tinh la v� s�"}
--******************--
x910176_g_nBoss=
{
	[1]	=	{	Index=14152,	Name="M�n M�c",		Title="Th� H߽ng M�c V�n",	Pos_X=17,	Pos_Y=21	},
	[2]	=	{	Index=14153,	Name="��o Thanh",	Title="L�c B�t Th�n Binh",	Pos_X=17,	Pos_Y=19	},
	[3]	=	{	Index=14154,	Name="T�n V�n",		Title="C�m � Du Tr߶ng",	Pos_X=17,	Pos_Y=17	},
}
--******************--
x910176_g_Treasure={	Index=14156,	Name="T� Tuy�t B�o S߽ng",	Pos_X=30,	Pos_Y=29,	ScriptID=910178	}
--******************--

--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910176_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"T� Tuy�t Trang",x910176_g_Monster_Dialogue[2])					--C�u n�i khai chi�n c�a Boss
	x910176_GlobalNews(sceneId,x910176_g_Monster_Dialogue[1])									--Th�ng b�o Boss �� v�o chi�n �u cho to�n th� ng߶i ch�i
	x910176_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--
	for i=1,getn(x910176_g_nBoss) do
		local Monster_Index=LuaFnCreateMonster(sceneId,x910176_g_nBoss[i].Index,x910176_g_nBoss[i].Pos_X,x910176_g_nBoss[i].Pos_Y,3,0,-1)
		SetCharacterName(sceneId,Monster_Index,x910176_g_nBoss[i].Name)
		SetCharacterTitle(sceneId,Monster_Index,x910176_g_nBoss[i].Title)
		SetUnitCampID(sceneId,Monster_Index,Monster_Index,109)
	end
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910176_OnHeartBeat(sceneId,selfId,nTick)												--H�m n�y s� check li�n t�c m�i mili gi�y khi n�o Boss c�n s�ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N�u Boss �� ch�t th� ng�ng ho�t �ng c�a Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910176_g_AttackMode)==0 then
		return
	end
	--******************--
	x910176_UseMyImbaSkill(sceneId,selfId,nTick)												--S� d�ng c�m b�y Imba
	--******************--
	x910176_HealingMe(sceneId,selfId)															--B�ng X� h�i ph�c m�u n�u ��ng g�n Tinh la v� s�
	--******************--
	x910176_ActiveMyLongZhu(sceneId,selfId,nTick)												--K�ch n� Long tr�
	--******************--
	x910176_UseMySkill(sceneId,selfId,nTick)													--S� d�ng k� n�ng
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910176_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910176_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910176_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910176_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910176_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910176_OnDie(sceneId,selfId,killerId)

	--******************--
	x910176_GlobalNews(sceneId,x910176_g_Monster_Dialogue[3])
	x910176_GlobalNews(sceneId,x910176_g_Monster_Dialogue[5])
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,8,5)
	--******************--
	local Player=GetName(sceneId,killerId)
	local str=format("#RK� tr�n l� tuy�t h�c, c�ng phu �c � c�a thi�n h� #GH�c B�ch Giang H� T� Tuy�t Trang #YB�ng X�#R. Nay b� #{_INFOUSR%s} c�ng �i ng� ��nh b�i, b�n th�n B�ng X� c�ng kh�ng gi� n�i t�nh m�ng c�a m�nh!",Player)
	AddGlobalCountNews(sceneId,str)
	--******************--
	x910176_DeleteMyLongZhu(sceneId)
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,x910176_g_Treasure.Index,x910176_g_Treasure.Pos_X,x910176_g_Treasure.Pos_Y,3,0,x910176_g_Treasure.ScriptID)
	SetCharacterName(sceneId,Monster_Index,x910176_g_Treasure.Name)
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,110)
	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1  do
		AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910176_Item_ttpx[random(getn(x910176_Item_ttpx))])
		local ran = random(100)
		if ran < x910176_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910176_Item_ttpx_vip[random(getn(x910176_Item_ttpx_vip))])
		end
		local Current_Activity_Point=GetMissionData(sceneId,GetNearTeamMember(sceneId,killerId,i),MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,GetNearTeamMember(sceneId,killerId,i),MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+40)
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� gia t�ng 40 �i�m ho�t �ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,GetNearTeamMember(sceneId,killerId,i))
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910176_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_Skill_1_Timer,x910176_g_Skill_1_CD)	--Th�i gian k� n�ng 1
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_Skill_2_Timer,x910176_g_Skill_2_CD)	--Th�i gian k� n�ng 2
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_Skill_3_Timer,x910176_g_Skill_3_CD)	--Th�i gian k� n�ng 3
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_Skill_Imba_Step,0)					--Th�i gian k� n�ng Imba
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_LongZhu_Timer,x910176_g_LongZhu_Active_Time)--Th�i gian k�ch n� H�i �m phi�n
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_Trap_Timer,0)							--Th�i gian xu�t b�y m�i
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_LongZhu_Type,1)						--Set lo�i Long tr�
	--******************--
	x910176_DeleteMyLongZhu(sceneId)															--X�a Long tr�
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_AttackMode,0)
	--******************--
	
end
--**********************************--
--*           Healing Me           *--
--**********************************--
function x910176_HealingMe(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		local x1,y1=GetWorldPos(sceneId,MonsterId)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910176_g_Guardian.Name 
		and floor(sqrt((x-x1)*(x-x1)+(y-y1)*(y-y1)))<=3 then
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910176_g_Healing_Impact,0)
			break
		end
	end
	--******************--
	
end
--**********************************--
--*       Delete My Long Zhu       *--
--**********************************--
function x910176_DeleteMyLongZhu(sceneId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		for j=1,getn(x910176_g_LongZhu) do
			if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and (GetName(sceneId,MonsterId)==x910176_g_LongZhu[j].Name or GetName(sceneId,MonsterId)==x910176_g_Guardian.Name) then
				SetCharacterDieTime(sceneId,MonsterId,100)
			end
		end
	end
	--******************--
	
end
--**********************************--
--*       Use My Imba Skill        *--
--**********************************--
function x910176_UseMyImbaSkill(sceneId,selfId,nTick)

	--******************--
	local Current_HP=GetHp(sceneId,selfId)
	local Max_HP=GetMaxHp(sceneId,selfId)
	local Percent_Left=floor((Current_HP/Max_HP)*100)
	--******************--
	if Percent_Left>30 then
		return
	end
	--******************--
	local nTime=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910176_g_Trap_Timer)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_Trap_Timer,nTime-nTick)
	if nTime>0 then
		return
	end
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_Trap_Timer,x910176_g_Trap_Active_Time)
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	LuaFnUnitUseSkill(sceneId,selfId,x910176_g_Skill_Imba,x,y,0,1)							--Boss s� d�ng k� n�ng Imba
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		local x,y=GetWorldPos(sceneId,nHumanId)
		CreateSpecialObjByDataIndex(sceneId,selfId,x910176_g_Trap_Object[random(getn(x910176_g_Trap_Object))],x,y,0)
	end
	--******************--
	local Actived=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910176_g_Skill_Imba_Step)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_Skill_Imba_Step,1)
	--******************--
	MonsterTalk(sceneId,selfId,"T� Tuy�t Trang",x910176_g_Monster_Dialogue[4])
	--******************--
	if Actived==0 then
		x910176_GlobalNews(sceneId,x910176_g_Notify_Tips[6])
	end
	--******************--
	
end
--**********************************--
--*       Active My Long Zhu       *--
--**********************************--
function x910176_ActiveMyLongZhu(sceneId,selfId,nTick)

	--******************--
	local nType=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910176_g_LongZhu_Type)
	local nLongZhu=0
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		local x1,y1=GetWorldPos(sceneId,MonsterId)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910176_g_LongZhu[nType].Name then
			nLongZhu=1
			break
		end
	end
	--******************--
	if nLongZhu==0 then
		x910176_DeleteMyLongZhu(sceneId)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_LongZhu_Timer,x910176_g_LongZhu_Active_Time)
		return
	end
	--******************--
	local nActive=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910176_g_LongZhu_Timer)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_LongZhu_Timer,nActive-nTick)
	--******************--
	if nActive<=0 then
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0,nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			local x1,y1=GetWorldPos(sceneId,nHumanId)
			if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,nHumanId,x910176_g_LostHP_Impact,0)
				for k=0,9 do																
					local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,k)
					local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
					if Pet_Index~=-1 and Pet_Index then											
						LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,Pet_Index,x910176_g_LostHP_Impact,0)
						break
					end
				end
			end
		end
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_LongZhu_Timer,x910176_g_LongZhu_Active_Time)
	end
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910176_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill_1=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910176_g_Skill_1_Timer)		--L�y th�i gian l�nh kh߾c k� n�ng 1 c�a Boss
	local Time_Skill_2=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910176_g_Skill_2_Timer)		--L�y th�i gian l�nh kh߾c k� n�ng 2 c�a Boss
	local Time_Skill_3=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910176_g_Skill_3_Timer)		--L�y th�i gian l�nh kh߾c k� n�ng 3 c�a Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_Skill_1_Timer,Time_Skill_1-nTick)		--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng 1
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_Skill_2_Timer,Time_Skill_2-nTick)		--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng 2
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_Skill_3_Timer,Time_Skill_3-nTick)		--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng 3
	--******************--
	if Time_Skill_1<=0 then																		--�� �n gi� d�ng k� n�ng 1
		local x,y=GetWorldPos(sceneId,selfId)
		LuaFnUnitUseSkill(sceneId,selfId,x910176_g_Skill_Index_1,x,y,0,1)						--Boss s� d�ng k� n�ng 1
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_Skill_1_Timer,x910176_g_Skill_1_CD+5000)--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	if Time_Skill_2<=0 then																		--�� �n gi� d�ng k� n�ng 2
		x910176_UseSkill2(sceneId,selfId)														--S� d�ng k� n�ng 2
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_Skill_2_Timer,x910176_g_Skill_2_CD)--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	if Time_Skill_3<=0 then																		--�� �n gi� d�ng k� n�ng 3
		local x,y=GetWorldPos(sceneId,selfId)
		local nRan=random(4)
		LuaFnUnitUseSkill(sceneId,selfId,x910176_g_Skill_Index_3[nRan].Index,x,y,0,1)			--Boss s� d�ng k� n�ng 3
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_Skill_3_Timer,x910176_g_Skill_3_CD)--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	
end
--**********************************--
--*           Use Skill 2          *--
--**********************************--
function x910176_UseSkill2(sceneId,selfId,nTime)

	--******************--
	local nType=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910176_g_LongZhu_Type)
	local nLongZhu=0
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		local x1,y1=GetWorldPos(sceneId,MonsterId)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910176_g_LongZhu[nType].Name then
			nLongZhu=1
			break
		end
	end
	--******************--
	if nLongZhu>0 then
		x910176_DeleteMyLongZhu(sceneId)
	end
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	LuaFnUnitUseSkill(sceneId,selfId,x910176_g_Skill_Index_2,x,y,0,1)						--Boss s� d�ng k� n�ng 2
	--******************--
	for i=1,getn(x910176_g_LongZhu) do
		local LongZhu=LuaFnCreateMonster(sceneId,x910176_g_LongZhu[i].Index,x910176_g_LongZhu[i].Pos_X,x910176_g_LongZhu[i].Pos_Y,3,0,-1)
		SetCharacterName(sceneId,LongZhu,x910176_g_LongZhu[i].Name)
		SetUnitCampID(sceneId,LongZhu,LongZhu,110)
		local dd={1, 0,-1, 1,-1, 1, 0,-1}
		local dc={1, 1, 1, 0, 0,-1,-1,-1}
		for j=1,8 do
			local nDec=LuaFnGetCopySceneData_Param(sceneId,9)
			local Guardian=LuaFnCreateMonster(sceneId,x910176_g_Guardian.Index+nDec,x910176_g_LongZhu[i].Pos_X+dd[j],x910176_g_LongZhu[i].Pos_Y+dc[j],10,0,-1)
			SetCharacterName(sceneId,Guardian,x910176_g_Guardian.Name)
			SetUnitCampID(sceneId,Guardian,Guardian,110)
		end
	end
	--******************--
	local nRan=random(getn(x910176_g_LongZhu))
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910176_g_LongZhu_Type,nRan)
	x910176_GlobalNews(sceneId,x910176_g_Notify_Tips[nRan])
	--******************--
	MonsterTalk(sceneId,selfId,"T� Tuy�t Trang",x910176_g_LongZhu[nRan].nTalk)
	--******************--

end
--**********************************--
--*           Global News          *--
--**********************************--
function x910176_GlobalNews(sceneId,Tips)

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
