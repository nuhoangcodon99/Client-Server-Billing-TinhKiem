--Ph� b�n T� Tuy�t Trang
--M�n M�c
--Author: Ho�ng Steven

--******************--
x910173_Item_ttpx ={
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

x910173_Item_ttpx_vip ={

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
x910173_Item_ttpx_vip_rate = 20 -- ty le rot x910173_Item_ttpx_vip


--******************--

--******************--
x910173_g_ScriptId=910173
--******************--
x910173_g_Boss_Name="M�n M�c"																	--T�n c�a BOSS
--******************--
x910173_g_Skill_Index_1=1668																	--K� n�ng T߾ng Ti�n T�u (Уt b�y)
x910173_g_Skill_1_CD=10000																		--Th�i gian l�nh kh߾c T߾ng Ti�n T�u
x910173_g_Skill_Index_2=1667																	--K� n�ng M�c S�i B�t Ph߽ng (нn th� k�ch)
x910173_g_Skill_2_CD=15000																		--Th�i gian l�nh kh߾c M�c S�i B�t Ph߽ng
x910173_g_Skill_Index_3=1666																	--K� n�ng B�t T�u Long X� (нn th� k�ch)
x910173_g_Skill_3_CD=15000																		--Th�i gian l�nh kh߾c B�t T�u Long X�
x910173_g_Skill_Index_4=1669																	--K� n�ng Th�n Lai Chi B�t (Qu�n th� k�ch)
x910173_g_Skill_4_CD=30000																		--Th�i gian l�nh kh߾c Th�n Lai Chi B�t
--******************--
x910173_g_Trap_Object=156																		--Object c�a c�m b�y m�c
--******************--
x910173_g_Skill_1_Timer=1																		--Th�i gian k� n�ng 1
x910173_g_Skill_2_Timer=2																		--Th�i gian k� n�ng 2
x910173_g_Skill_3_Timer=3																		--Th�i gian k� n�ng 3
x910173_g_Skill_4_Timer=4																		--Th�i gian k� n�ng 4
x910173_g_AttackMode=5																			--Tr�ng th�i chi�n �u
--******************--
x910173_g_Monster_Dialogue=
{																								--L�i n�i c�a Boss
	[1]=x910173_g_Boss_Name.." �� xu�t hi�n!",
	[2]="T�n n�o d�m c� gan x�ng v� n�o lo�n T� Tuy�t �i�n, t�n �� ph�i ch�t!",
	[3]="�� gi�t ch�t "..x910173_g_Boss_Name..": 1/1",
	[4]="V� l�m suy t�n lo�n th� ph�n tranh#rThi�n h� anh h�ng thi�n v�ng lai",
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910173_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"T� Tuy�t Trang",x910173_g_Monster_Dialogue[2])					--C�u n�i khai chi�n c�a Boss
	x910173_GlobalNews(sceneId,x910173_g_Monster_Dialogue[1])									--Th�ng b�o Boss �� v�o chi�n �u cho to�n th� ng߶i ch�i
	x910173_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910173_OnHeartBeat(sceneId,selfId,nTick)												--H�m n�y s� check li�n t�c m�i mili gi�y khi n�o Boss c�n s�ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N�u Boss �� ch�t th� ng�ng ho�t �ng c�a Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910173_g_AttackMode)==0 then
		return
	end
	--******************--
	x910173_UseMySkill(sceneId,selfId,nTick)													--S� d�ng k� n�ng
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910173_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910173_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		local x,y=GetWorldPos(sceneId,MonsterId)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910173_g_Wang_Yu_Yan then
			MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Wang_Index,MonsterId)			--C�p nh�t ID c�a V߽ng Ng� Y�n
			break
		end
	end
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910173_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910173_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910173_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910173_OnDie(sceneId,selfId,killerId)

	--******************--
	x910173_GlobalNews(sceneId,x910173_g_Monster_Dialogue[3])
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,8,2)
	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1  do
		AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910173_Item_ttpx[random(getn(x910173_Item_ttpx))])
		local ran = random(100)
		if ran < x910173_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910173_Item_ttpx_vip[random(getn(x910173_Item_ttpx_vip))])
		end
		local Current_Activity_Point=GetMissionData(sceneId,GetNearTeamMember(sceneId,killerId,i),MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,GetNearTeamMember(sceneId,killerId,i),MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+10)
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� gia t�ng 10 �i�m ho�t �ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,GetNearTeamMember(sceneId,killerId,i))
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910173_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_1_Timer,x910173_g_Skill_1_CD)	--Th�i gian k� n�ng 1
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_2_Timer,x910173_g_Skill_2_CD)	--Th�i gian k� n�ng 2
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_3_Timer,x910173_g_Skill_3_CD)	--Th�i gian k� n�ng 3
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_4_Timer,x910173_g_Skill_4_CD)	--Th�i gian k� n�ng 4
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_AttackMode,0)
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910173_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill_1=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910173_g_Skill_1_Timer)		--L�y th�i gian l�nh kh߾c k� n�ng 1 c�a Boss
	local Time_Skill_2=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910173_g_Skill_2_Timer)		--L�y th�i gian l�nh kh߾c k� n�ng 2 c�a Boss
	local Time_Skill_3=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910173_g_Skill_3_Timer)		--L�y th�i gian l�nh kh߾c k� n�ng 3 c�a Boss
	local Time_Skill_4=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910173_g_Skill_4_Timer)		--L�y th�i gian l�nh kh߾c k� n�ng 4 c�a Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_1_Timer,Time_Skill_1-nTick)		--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng 1
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_2_Timer,Time_Skill_2-nTick)		--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng 2
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_3_Timer,Time_Skill_3-nTick)		--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng 3
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_4_Timer,Time_Skill_4-nTick)		--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng 4
	--******************--
	if Time_Skill_1<=0 then																		--�� �n gi� d�ng k� n�ng 1
		x910173_UseSkill1(sceneId,selfId)														--S� d�ng k� n�ng 1
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_1_Timer,x910173_g_Skill_1_CD)--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	if Time_Skill_2<=0 then																		--�� �n gi� d�ng k� n�ng 2
		local x,y=GetWorldPos(sceneId,selfId)													--L�y t�a � c�a Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910173_g_Skill_Index_2,x,y,0,1)				--Boss s� d�ng k� n�ng 2
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_2_Timer,x910173_g_Skill_2_CD)--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	if Time_Skill_3<=0 then																		--�� �n gi� d�ng k� n�ng 3
		local x,y=GetWorldPos(sceneId,selfId)													--L�y t�a � c�a Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910173_g_Skill_Index_3,x,y,0,1)				--Boss s� d�ng k� n�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_3_Timer,x910173_g_Skill_3_CD)--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	if Time_Skill_4<=0 then																		--�� �n gi� d�ng k� n�ng 4
		local x,y=GetWorldPos(sceneId,selfId)													--L�y t�a � c�a Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910173_g_Skill_Index_4,x,y,0,1)						--Boss s� d�ng k� n�ng 4
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_4_Timer,x910173_g_Skill_4_CD)--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	
end
--**********************************--
--*           Use Skill 1          *--
--**********************************--
function x910173_UseSkill1(sceneId,selfId)

	--******************--
	local nPlayerList={}
	local nPlayer=0
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			local x,y=GetWorldPos(sceneId,nHumanId)													--L�y t�a � c�a n�n nh�n
			CreateSpecialObjByDataIndex(sceneId,selfId,x910173_g_Trap_Object,x,y,0)					--G�i ra c�m b�y m�c
		end
	end
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)													--L�y t�a � Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910173_g_Skill_Index_1,x,y,0,1)						--Boss s� d�ng k� n�ng 1
	--******************--

end
--**********************************--
--*           Global News          *--
--**********************************--
function x910173_GlobalNews(sceneId,Tips)

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
