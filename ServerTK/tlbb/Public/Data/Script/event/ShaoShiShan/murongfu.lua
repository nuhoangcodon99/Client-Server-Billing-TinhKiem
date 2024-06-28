--Thi�u Th�t S�n
--M� Dung Ph�c
--Author: Ho�ng Steven

--******************--

x910164_Item_ttpx ={
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

x910164_Item_ttpx_vip ={
30501361,--C�ng l�c �an
30503134, --kim thoa (duc lo)
30503135, --Th�i trang ph�i s�c �i�m xuy�t ph�
30503136, --Th�i trang ph�i s�c thanh tr� ph�
30503137, --Th�i trang ph�i s�c gia c�ng ph�

20503061, --Trang b� Tinh th�ng ph�
20503061, --Trang b� Tinh th�ng ph�
20503061, --Trang b� Tinh th�ng ph�
}
x910164_Item_ttpx_vip_rate = 30 -- ty le rot x910164_Item_ttpx_vip


--******************--

--******************--
x910164_g_ScriptId=910164
--******************--
x910164_g_Boss_Name="M� Dung Ph�c"																--T�n c�a BOSS
--******************--
x910164_g_Skill_Index_1=1016																	--K� n�ng Цu Chuy�n Tinh Di
x910164_g_Skill_1_CD=35000																		--Th�i gian l�nh kh߾c Цu Chuy�n Tinh Di
x910164_g_Skill_Index_2=1023																	--K� n�ng Tham H�p Ch�
x910164_g_Skill_2_CD=10000																		--Th�i gian l�nh kh߾c k� n�ng Tham H�p Ch�
--******************--
x910164_g_Skill_1_Timer=1																		--Th�i gian k� n�ng Цu Chuy�n Tinh Di
x910164_g_Skill_2_Timer=2																		--Th�i gian k� n�ng Tham H�p Ch�
x910164_g_Wang_Said=3																			--C�nh b�o c�a V߽ng Ng� Y�n
x910164_g_Wang_Index=4																			--Index c�a V߽ng Ng� Y�n
x910164_g_AttackMode=5																			--Tr�ng th�i chi�n �u
--******************--
x910164_g_Wang_Yu_Yan="V߽ng Ng� Y�n"
--******************--
x910164_g_Impact_Stronger=9483																	--Hi�u �ng t�ng c߶ng c�ng l�c
--******************--
x910164_g_Monster_Dialogue=
{																	--L�i n�i c�a Boss
	[1]=x910164_g_Boss_Name.." �� xu�t hi�n!",
	[2]="T�n n�o d�m ng�n c�n vi�c h�ng ph�c ��i Y�n, t�n �� ph�i ch�t!",
	[3]="G�y �ng �p l�ng �ng!",
	[4]="Bi�u ca c�n th�n. H�y ch� � d�n n�i l�c v�o c�c y�u huy�t tr�n ng߶i b�n ch�ng!",
	[5]="�� gi�t ch�t "..x910164_g_Boss_Name..": 1/1",
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910164_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910164_g_Monster_Dialogue[2])								--C�u n�i khai chi�n c�a Boss
	x910164_GlobalNews(sceneId,x910164_g_Monster_Dialogue[1])									--Th�ng b�o Boss �� v�o chi�n �u cho to�n th� ng߶i ch�i
	x910164_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910164_OnHeartBeat(sceneId,selfId,nTick)												--H�m n�y s� check li�n t�c m�i mili gi�y khi n�o Boss c�n s�ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N�u Boss �� ch�t th� ng�ng ho�t �ng c�a Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910164_g_AttackMode)==0 then
		return
	end
	--******************--
	x910164_WangYuYan(sceneId,selfId)															--V߽ng Ng� Y�n c�nh b�o
	--******************--
	x910164_UseMySkill(sceneId,selfId,nTick)													--S� d�ng k� n�ng
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910164_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910164_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		local x,y=GetWorldPos(sceneId,MonsterId)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910164_g_Wang_Yu_Yan then
			MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Wang_Index,MonsterId)			--C�p nh�t ID c�a V߽ng Ng� Y�n
			break
		end
	end
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910164_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910164_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910164_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if nHumanId==targetId then
			local PlayerName=GetName(sceneId,targetId)
			MonsterTalk(sceneId,selfId,"","N�u h�m nay b�n c�ng t� tha cho ng߽i th� kh�ng bi�t sau n�y ng߽i c� bi�t �n kh�ng, "..GetName(sceneId,targetId)..". Ь cho ch�c �n th� ng߽i ch�t l� t�t nh�t... Ha ha...")		--Boss ch� di�u ng߶i ch�i b� gi�t
		end
	end
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910164_OnDie(sceneId,selfId,killerId)

	--******************--
	x910164_GlobalNews(sceneId,x910164_g_Monster_Dialogue[5])
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,8,4)
	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1  do
		AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910164_Item_ttpx[random(getn(x910164_Item_ttpx))])
		local ran = random(100)
		if ran < x910164_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910164_Item_ttpx_vip[random(getn(x910164_Item_ttpx_vip)-1)])
		end
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
		local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+20)
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� gia t�ng 20 �i�m ho�t �ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,nPlayerId)
	end
	--******************--
	
end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910164_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Skill_1_Timer,x910164_g_Skill_1_CD)	--Th�i gian k� n�ng 1
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Skill_2_Timer,x910164_g_Skill_2_CD)	--Th�i gian k� n�ng 2
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Wang_Said,0)							--C�nh b�o c�a V߽ng Ng� Y�n
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_AttackMode,0)
	--******************--
	
end
--**********************************--
--*          Wang Yu Yan           *--
--**********************************--
function x910164_WangYuYan(sceneId,selfId)

	--******************--
	local nStep=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910164_g_Wang_Said)
	local Current_HP=GetHp(sceneId,selfId)
	local Max_HP=GetMaxHp(sceneId,selfId)
	local HP_Percent=floor((Current_HP/Max_HP)*100)
	--******************--
	local Wang_Yu_Yan=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910164_g_Wang_Index)
	--******************--
	if HP_Percent<=70 and nStep==0 then
		MonsterTalk(sceneId,Wang_Yu_Yan,"",x910164_g_Monster_Dialogue[4])
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Wang_Said,1)
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0,nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,nHumanId,9770,0)
			end
		end
	elseif HP_Percent<=50 and nStep==1 then
		MonsterTalk(sceneId,Wang_Yu_Yan,"",x910164_g_Monster_Dialogue[4])
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Wang_Said,2)
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0,nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,nHumanId,9770,0)
			end
		end
	elseif HP_Percent<=30 and nStep==2 then
		MonsterTalk(sceneId,Wang_Yu_Yan,"",x910164_g_Monster_Dialogue[4])
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Wang_Said,3)
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0,nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,nHumanId,9770,0)
			end
		end
	elseif HP_Percent<=10 and nStep==3 then
		MonsterTalk(sceneId,Wang_Yu_Yan,"",x910164_g_Monster_Dialogue[4])
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Wang_Said,-1)
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0,nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,nHumanId,9770,0)
			end
		end
	end
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910164_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill_1=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910164_g_Skill_1_Timer)		--L�y th�i gian l�nh kh߾c k� n�ng 1 c�a Boss
	local Time_Skill_2=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910164_g_Skill_2_Timer)		--L�y th�i gian l�nh kh߾c k� n�ng 2 c�a Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Skill_1_Timer,Time_Skill_1-nTick)		--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng 1
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Skill_2_Timer,Time_Skill_2-nTick)		--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng 2
	--******************--
	if Time_Skill_1<=0 then																		--�� �n gi� d�ng k� n�ng
		local x,y=GetWorldPos(sceneId,selfId)													--L�y t�a � c�a Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910164_g_Skill_Index_1,x,y,0,1)						--Boss s� d�ng k� n�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Skill_1_Timer,x910164_g_Skill_1_CD)--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
		MonsterTalk(sceneId,selfId,"",x910164_g_Monster_Dialogue[3])
	end
	--******************--
	if Time_Skill_2<=0 then																		--�� �n gi� d�ng k� n�ng
		local x,y=GetWorldPos(sceneId,selfId)													--L�y t�a � c�a Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910164_g_Skill_Index_2,x,y,0,1)				--Boss s� d�ng k� n�ng
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910164_g_Impact_Stronger,0)	--M� Dung Ph�c t�ng c�ng l�c
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Skill_2_Timer,x910164_g_Skill_2_CD)--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910164_GlobalNews(sceneId,Tips)

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
