--Ph� b�n T� Tuy�t Trang
--T�n V�n
--Author: Ho�ng Steven

--******************--



x910175_Item_ttpx ={
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

x910175_Item_ttpx_vip ={

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
}
x910175_Item_ttpx_vip_rate = 40 -- ty le rot x910175_Item_ttpx_vip


--******************--

--******************--
x910175_g_ScriptId=910175
--******************--
x910175_g_Boss_Name="T�n V�n"																	--T�n c�a BOSS
--******************--
x910175_g_Skill_Index_1=1672																	--K� n�ng Ch�c �nh Dao H�ng (нn th� m�)
x910175_g_Skill_1_CD=30000																		--Th�i gian l�nh kh߾c Ch�c �nh Dao H�ng
x910175_g_Skill_Index_2=1671																	--K� n�ng Nhi�u L߽ng Tam Nh�t (нn th� c�ng k�ch)
x910175_g_Skill_2_CD=40000																		--Th�i gian l�nh kh߾c Nhi�u L߽ng Tam Nh�t
x910175_g_Skill_Index_3=1670																	--K� n�ng Huy�n Ngo�i Chi �m (Qu�n th� c�ng k�ch)
x910175_g_Skill_3_CD=32000																		--Th�i gian l�nh kh߾c Huy�n Ngo�i Chi �m
--******************--
x910175_g_Skill_Imba=1673																		--K� n�ng Kim S�c Cu�ng V�
--******************--
x910175_g_Trap_Active_Time=5000																	--Th�i gian k�ch n� H�i �m phi�n
--******************--
x910175_g_Trap_Impact=9771																		--Hi�u �ng k�ch n� H�i �m phi�n
x910175_g_KuangBao_Impact=9789																	--Hi�u �ng cu�ng b�o x13 dame trong 5s
--******************--
x910175_g_Skill_1_Timer=1																		--Th�i gian k� n�ng 1
x910175_g_Skill_2_Timer=2																		--Th�i gian k� n�ng 2
x910175_g_Skill_3_Timer=3																		--Th�i gian k� n�ng 3
x910175_g_Skill_Imba_Step=4																		--Th�i gian k� n�ng Imba
x910175_g_Trap_Timer=5																			--Th�i gian k�ch n� H�i �m phi�n
x910175_g_AttackMode=6																			--Tr�ng th�i chi�n �u
--******************--
x910175_g_Monster_Dialogue=
{																								--L�i n�i c�a Boss
	[1]=x910175_g_Boss_Name.." �� xu�t hi�n!",
	[2]="Kim...V�...T�...Linh...Thi�n...Ng�c...Nh��c...Vu...Qu�...",
	[3]="�� gi�t ch�t "..x910175_g_Boss_Name..": 1/1",
	[4]="B� b�o...Th�ng ng�...C�m t�u...#r...#r...Nh��c...#r...Phi�n...Lai...#r...V�...Kh�i...#r...C߶ng...#r...Li�n...V�...#r...B�i...Tinh la ��n...B�ng X�...",
	[5]="T�n V�n ch�ng nh�ng c� th� d�ng ti�ng ��n � n�i chuy�n m� c�ng phu th� l�i r�t cao c߶ng, qu� th�t l�i h�i. Xem c�u h�t c�a m� tr߾c khi ch�t th�t khi�n ta � m� h�i l�nh. Xem ra m� ta �� �o�n ���c ch�ng ta �n ��y l� � t�m Tinh La ��n - B�ng X�...",
	[6]="T�n V�n �ang ng�y c�ng �y nhanh �c t�c g�y ��n, xem ra m� ta �nh tri�u t�p H�i �m phi�n khu�ch ��i �m thanh. M�i ng߶i ph�i ch� � c�n th�n, h�y d� m� ta tr�nh xa c�c H�i �m phi�n n�y!",
}
--******************--
x910175_g_Trap={	Index=14126,	Name="H�i �m phi�n"		}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910175_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"T� Tuy�t Trang",x910175_g_Monster_Dialogue[2])					--C�u n�i khai chi�n c�a Boss
	x910175_GlobalNews(sceneId,x910175_g_Monster_Dialogue[1])									--Th�ng b�o Boss �� v�o chi�n �u cho to�n th� ng߶i ch�i
	x910175_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910175_OnHeartBeat(sceneId,selfId,nTick)												--H�m n�y s� check li�n t�c m�i mili gi�y khi n�o Boss c�n s�ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N�u Boss �� ch�t th� ng�ng ho�t �ng c�a Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910175_g_AttackMode)==0 then
		return
	end
	--******************--
	x910175_UseMyTrap(sceneId,selfId)															--G�i ra H�i �m phi�n n�u d߾i 50% m�u
	--******************--
	x910175_ActiveMyTrap(sceneId,selfId,nTick)													--Ki�m tra c� H�i �m phi�n xung quanh kh�ng
	--******************--
	x910175_UseMySkill(sceneId,selfId,nTick)													--S� d�ng k� n�ng
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910175_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910175_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910175_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910175_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910175_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910175_OnDie(sceneId,selfId,killerId)

	--******************--
	x910175_GlobalNews(sceneId,x910175_g_Monster_Dialogue[3])
	x910175_GlobalNews(sceneId,x910175_g_Monster_Dialogue[5])
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,8,4)
	--******************--
	x910175_DeleteMyTrap(sceneId)																--X�a H�i �m phi�n
	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1  do
		AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910175_Item_ttpx[random(getn(x910175_Item_ttpx))])
		local ran = random(100)
		if ran < x910175_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910175_Item_ttpx_vip[random(getn(x910175_Item_ttpx_vip))])
		end
		local Current_Activity_Point=GetMissionData(sceneId,GetNearTeamMember(sceneId,killerId,i),MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,GetNearTeamMember(sceneId,killerId,i),MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+30)
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� gia t�ng 30 �i�m ho�t �ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,GetNearTeamMember(sceneId,killerId,i))
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910175_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_Skill_1_Timer,x910175_g_Skill_1_CD)	--Th�i gian k� n�ng 1
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_Skill_2_Timer,x910175_g_Skill_2_CD)	--Th�i gian k� n�ng 2
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_Skill_3_Timer,x910175_g_Skill_3_CD)	--Th�i gian k� n�ng 3
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_Skill_Imba_Step,0)					--Th�i gian k� n�ng Imba
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_Trap_Timer,x910175_g_Trap_Active_Time)--Th�i gian k�ch n� H�i �m phi�n
	--******************--
	x910175_DeleteMyTrap(sceneId)																--X�a H�i �m phi�n
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_AttackMode,0)
	--******************--
	
end
--**********************************--
--*         Delete My Trap         *--
--**********************************--
function x910175_DeleteMyTrap(sceneId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910175_g_Trap.Name then
			SetCharacterDieTime(sceneId,MonsterId,100)
		end
	end
	--******************--
	
end
--**********************************--
--*          Use My Trap           *--
--**********************************--
function x910175_UseMyTrap(sceneId,selfId)

	--******************--
	local Current_HP=GetHp(sceneId,selfId)
	local Max_HP=GetMaxHp(sceneId,selfId)
	local Percent_Left=floor((Current_HP/Max_HP)*100)
	local Actived=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910175_g_Skill_Imba_Step)
	--******************--
	if Percent_Left>50 or Actived~=0 then
		return
	end
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	LuaFnUnitUseSkill(sceneId,selfId,x910175_g_Skill_Imba,x,y,0,1)							--Boss s� d�ng k� n�ng Imba
	local dd={-3,-3, 3, 3}
	local dc={-3, 3, 3,-3}
	--******************--
	for i=1,4 do
		local Trap_Index=LuaFnCreateMonster(sceneId,x910175_g_Trap.Index,x+dd[i],y+dc[i],3,0,-1)
		SetCharacterName(sceneId,Trap_Index,x910175_g_Trap.Name)
	end
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_Skill_Imba_Step,1)
	--******************--
	x910175_GlobalNews(sceneId,x910175_g_Monster_Dialogue[6])
	--******************--
	
end
--**********************************--
--*         Active My Trap         *--
--**********************************--
function x910175_ActiveMyTrap(sceneId,selfId,nTick)

	--******************--
	local nTrap=0
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		local x1,y1=GetWorldPos(sceneId,MonsterId)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910175_g_Trap.Name 
		and floor(sqrt((x-x1)*(x-x1)+(y-y1)*(y-y1)))<=5 then
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910175_g_KuangBao_Impact,0)
			nTrap=1
			break
		end
	end
	--******************--
	if nTrap==0 then
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_Trap_Timer,x910175_g_Trap_Active_Time)
		return
	end
	--******************--
	local nActive=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910175_g_Trap_Timer)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_Trap_Timer,nActive-nTick)
	--******************--
	if nActive<=0 then
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0,nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			local x1,y1=GetWorldPos(sceneId,nHumanId)
			if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
			and floor(sqrt((x-x1)*(x-x1)+(y-y1)*(y-y1)))<=15 then
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,nHumanId,x910175_g_Trap_Impact,0)
				for k=0,9 do																
					local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,k)
					local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
					if Pet_Index~=-1 and Pet_Index then											
						LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,Pet_Index,x910175_g_Trap_Impact,0)
						break
					end
				end
			end
		end
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_Trap_Timer,x910175_g_Trap_Active_Time)
	end
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910175_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill_1=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910175_g_Skill_1_Timer)		--L�y th�i gian l�nh kh߾c k� n�ng 1 c�a Boss
	local Time_Skill_2=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910175_g_Skill_2_Timer)		--L�y th�i gian l�nh kh߾c k� n�ng 2 c�a Boss
	local Time_Skill_3=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910175_g_Skill_3_Timer)		--L�y th�i gian l�nh kh߾c k� n�ng 3 c�a Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_Skill_1_Timer,Time_Skill_1-nTick)		--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng 1
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_Skill_2_Timer,Time_Skill_2-nTick)		--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng 2
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_Skill_3_Timer,Time_Skill_3-nTick)		--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng 3
	--******************--
	if Time_Skill_1<=0 then																		--�� �n gi� d�ng k� n�ng 1
		local x,y=GetWorldPos(sceneId,selfId)													--L�y t�a � Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910175_g_Skill_Index_1,x,y,0,1)						--Boss s� d�ng k� n�ng 1
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_Skill_1_Timer,x910175_g_Skill_1_CD)--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	if Time_Skill_2<=0 then																		--�� �n gi� d�ng k� n�ng 2
		local x,y=GetWorldPos(sceneId,selfId)													--L�y t�a � Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910175_g_Skill_Index_2,x,y,0,1)						--Boss s� d�ng k� n�ng 2
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_Skill_2_Timer,x910175_g_Skill_2_CD)--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	if Time_Skill_3<=0 then																		--�� �n gi� d�ng k� n�ng 3
		local x,y=GetWorldPos(sceneId,selfId)													--L�y t�a � Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910175_g_Skill_Index_3,x,y,0,1)						--Boss s� d�ng k� n�ng 3
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910175_g_Skill_3_Timer,x910175_g_Skill_3_CD)--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910175_GlobalNews(sceneId,Tips)

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