--Thi�u Th�t S�n
--�inh Xu�n Thu
--Author: Ho�ng Steven

--******************--


x910165_Item_ttpx ={
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

x910165_Item_ttpx_vip ={

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
x910165_Item_ttpx_vip_rate = 40 -- ty le rot x910165_Item_ttpx_vip


--******************--

--******************--
x910165_g_ScriptId=910165
--******************--
x910165_g_Boss_Name="�inh Xu�n Thu"																--T�n c�a BOSS
--******************--
x910165_g_Skill_Index_1=1329																	--K� n�ng Tam Ti�u Ti�u Dao T�n
x910165_g_Skill_Index_2=1330																	--K� n�ng H�m Ti�u B�n B� Di�n
x910165_g_Skill_1_2_CD=20000																	--Th�i gian l�nh kh߾c Tam Ti�u Ti�u Dao T�n v� H�m Ti�u B�n B� Di�n
x910165_g_Skill_Index_3=1331																	--K� n�ng H�a C�ng ��i Ph�p
x910165_g_Skill_3_CD=30000																		--Th�i gian l�nh kh߾c H�a C�ng ��i Ph�p
--******************--
x910165_g_Skill_1_2_Timer=1																		--Th�i gian k� n�ng Цu Chuy�n Tinh Di
x910165_g_Skill_3_Timer=2																		--Th�i gian k� n�ng Tham H�p Ch�
x910165_g_Victim_Index=3																		--N�n nh�n c�a Tam Ti�u Ti�u Dao T�n v� H�m Ti�u B�n B� Di�n
x910165_g_Poison_Timer=4																		--Th�i gian ph�t t�c �c c�ng c�a Tam Ti�u Ti�u Dao T�n v� H�m Ti�u B�n B� Di�n
x910165_g_AttackMode=5																			--Tr�ng th�i chi�n �u
--******************--
x910165_g_Healing_Impact=9781																	--Hi�u �ng ph�c h�i m�u
x910165_g_GuangBao_Impact=9483																	--Hi�u �ng cu�ng b�o
--******************--
x910165_g_Impact_1=9782																			--Hi�u �ng Tam Ti�u Ti�u Dao T�n
x910165_g_Impact_2=9783																			--Hi�u �ng H�m Ti�u B�n B� Di�n
x910165_g_Impact_3=9784																			--Hi�u �ng H�a C�ng ��i Ph�p
x910165_g_Impact_4=9785																			--Hi�u �ng tr�ng �c do Tam Ti�u Ti�u Dao T�n v� H�m Ti�u B�n B� Di�n
x910165_g_Impact_5=9477																			--Hi�u �ng tr�ng �c 5000 m�u/s cho n�n nh�n
--******************--
x910165_g_Monster_Dialogue=
{																								--L�i n�i c�a Boss
	[1]=x910165_g_Boss_Name.." �� xu�t hi�n!",
	[2]="Ь Tinh T�c L�o Ti�n d�y cho c�c ng߽i m�t b�i h�c, l� con n�t mi�ng c�n h�i s�a!",
	[3]="C�c ng߽i h�y ��ng g�n v� chia s� th߽ng �au c�ng %s �i...",
	[4]="C�c ng߽i h�y tr�nh xa %s ra, n� �ang d�nh m�t lo�i k�ch �c c�a ta, n�u ��ng g�n coi ch�ng t�nh m�ng...",
	[5]="H�y n�m th� tuy�t k� H�a C�ng ��i Ph�p c�a ph�i Tinh T�c ta...",
	[6]="�� gi�t ch�t "..x910165_g_Boss_Name..": 1/1",
	[7]="Nhi�m v� ho�n th�nh!",
}
--******************--
x910165_g_My_Trap="Huy�t Ch� Vu C�"
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910165_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910165_g_Monster_Dialogue[2])								--C�u n�i khai chi�n c�a Boss
	x910165_GlobalNews(sceneId,x910165_g_Monster_Dialogue[1])									--Th�ng b�o Boss �� v�o chi�n �u cho to�n th� ng߶i ch�i
	x910165_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss														--Kh�i t�o NPC
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910165_OnHeartBeat(sceneId,selfId,nTick)												--H�m n�y s� check li�n t�c m�i mili gi�y khi n�o Boss c�n s�ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N�u Boss �� ch�t th� ng�ng ho�t �ng c�a Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910165_g_AttackMode)==0 then
		return
	end
	--******************--
	x910165_ActiveMyTrap(sceneId,selfId)														--H�i ph�c v� cu�ng b�o n�u ��ng g�n Huy�t Ch� Vu C�
	--******************--	
	x910165_ActiveMySkill(sceneId,selfId,nTick)													--K�ch ho�t k� n�ng
	--******************--
	x910165_UseMySkill(sceneId,selfId,nTick)													--S� d�ng k� n�ng
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910165_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910165_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910165_g_Impact_5,0)
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910165_g_AttackMode,1)
	--******************--
	
end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910165_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910165_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910165_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if nHumanId==targetId then
			local PlayerName=GetName(sceneId,targetId)
			MonsterTalk(sceneId,selfId,"","N�u h�m nay l�o phu tha cho ng߽i th� kh�ng bi�t sau n�y ng߽i c� bi�t �n kh�ng, "..GetName(sceneId,targetId)..". Ь cho ch�c �n th� ng߽i ch�t l� t�t nh�t... Ha ha...")		--Boss ch� di�u ng߶i ch�i b� gi�t
		end
	end
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910165_OnDie(sceneId,selfId,killerId)

	--******************--
	LuaFnSetCopySceneData_Param(sceneId,8,6)													--C�p nh�t thao t�c tr�n ph� b�n
	--******************--
	x910165_GlobalNews(sceneId,x910165_g_Monster_Dialogue[6])
	x910165_GlobalNews(sceneId,x910165_g_Monster_Dialogue[7])
	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1  do
		AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910165_Item_ttpx[random(getn(x910165_Item_ttpx))])
		local ran = random(100)
		if ran < x910165_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910165_Item_ttpx_vip[random(getn(x910165_Item_ttpx_vip))])
		end
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
		local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+30)
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� gia t�ng 30 �i�m ho�t �ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,nPlayerId)
	end
	--******************--
	
end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910165_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910165_g_Skill_1_2_Timer,x910165_g_Skill_1_2_CD)--Th�i gian k� n�ng 1+2
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910165_g_Skill_3_Timer,x910165_g_Skill_3_CD)	--Th�i gian k� n�ng 3
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910165_g_Victim_Index,-1)						--Kh�i t�o l�i ID n�n nh�n
	--******************--
	LuaFnCancelSpecificImpact(sceneId,selfId,x910165_g_Impact_5)
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910165_g_AttackMode,0)
	--******************--
	
end
--**********************************--
--*         Active My Trap         *--
--**********************************--
function x910165_ActiveMyTrap(sceneId,selfId)

	--******************--
	local Pos_X,Pos_Y=GetWorldPos(sceneId,selfId)
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		local x,y=GetWorldPos(sceneId,MonsterId)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910165_g_My_Trap 
		and floor(sqrt((x-Pos_X)*(x-Pos_X)+(y-Pos_Y)*(y-Pos_Y)))<=3 then
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910165_g_Healing_Impact,0)
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910165_g_GuangBao_Impact)<1 then
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910165_g_GuangBao_Impact,0)
			end
		end
	end
	--******************--
	
end
--**********************************--
--*        Active My Skill         *--
--**********************************--
function x910165_ActiveMySkill(sceneId,selfId,nTick)

	--******************--
	local nTime=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910165_g_Poison_Timer)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910165_g_Poison_Timer,nTime-nTick)
	if nTime>0 then
		return
	end
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910165_g_Poison_Timer,1000)
	--******************--
	local Victim=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910165_g_Victim_Index)			--L�y ID n�n nh�n
	--******************--
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId,Victim,x910165_g_Impact_1)>0 then				--N�n nh�n b� d�nh Tam Ti�u Ti�u Dao T�n
		local x,y=GetWorldPos(sceneId,Victim)
		local nHumanList={}
		local nDec=1
		nHumanList[1]=Victim
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0,nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			local x1,y1=GetWorldPos(sceneId,nHumanId)
			if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
			and floor(sqrt((x-x1)*(x-x1)+(y-y1)*(y-y1)))<=5 and Victim~=nHumanId then
				nDec=nDec+1
				nHumanList[nDec]=nHumanId
			end
		end
		for i=1,nDec do
			for j=1,nDec do
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,nHumanList[i],x910165_g_Impact_4,0)
				for k=0,9 do																		--Ki�m tra c�c � tr�n th� c�a ng߶i ch�i xem c� tr�n th� n�o �ang xu�t chi�n
					local High,Low=LuaFnGetPetGUID(sceneId,nHumanList[i],k)
					local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanList[i],High,Low)								
					if Pet_Index~=-1 and Pet_Index then												--N�u tr�n th� n�y �ang xu�t chi�n
						LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,Pet_Index,x910165_g_Impact_4,0)--Nh�n hi�u �ng c�ng k�ch k� n�ng
						break
					end
				end
			end
		end
	elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId,Victim,x910165_g_Impact_2)>0 then				--N�n nh�n b� d�nh H�m Ti�u B�n B� Di�n
		local x,y=GetWorldPos(sceneId,Victim)
		local nHumanList={}
		local nDec=1
		nHumanList[1]=Victim
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0,nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			local x1,y1=GetWorldPos(sceneId,nHumanId)
			if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
			and floor(sqrt((x-x1)*(x-x1)+(y-y1)*(y-y1)))<=5 and Victim~=nHumanId  then
				nDec=nDec+1
				nHumanList[nDec]=nHumanId
			end
		end
		for i=1,nDec do
			for j=1,7-nDec do
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,nHumanList[i],x910165_g_Impact_4,0)
				for k=0,9 do																		--Ki�m tra c�c � tr�n th� c�a ng߶i ch�i xem c� tr�n th� n�o �ang xu�t chi�n
					local High,Low=LuaFnGetPetGUID(sceneId,nHumanList[i],k)
					local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanList[i],High,Low)								
					if Pet_Index~=-1 and Pet_Index then												--N�u tr�n th� n�y �ang xu�t chi�n
						LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,Pet_Index,x910165_g_Impact_4,0)--Nh�n hi�u �ng c�ng k�ch k� n�ng
						break
					end
				end
			end
		end
	end
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910165_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill_1_2=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910165_g_Skill_1_2_Timer)	--L�y th�i gian l�nh kh߾c k� n�ng 1+2 c�a Boss
	local Time_Skill_3=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910165_g_Skill_3_Timer)		--L�y th�i gian l�nh kh߾c k� n�ng 3 c�a Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910165_g_Skill_1_2_Timer,Time_Skill_1_2-nTick)	--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng 1+2
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910165_g_Skill_3_Timer,Time_Skill_3-nTick)		--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng 3
	--******************--
	if Time_Skill_1_2<=0 then																	--�� �n gi� d�ng k� n�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910165_g_Skill_1_2_Timer,x910165_g_Skill_1_2_CD)--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng 1+2
		x910165_UseSkill12(sceneId,selfId)														--S� d�ng k� n�ng 1+2
	end
	--******************--
	if Time_Skill_3<=0 then																		--�� �n gi� d�ng k� n�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910165_g_Skill_3_Timer,x910165_g_Skill_3_CD)--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng 3
		local x,y=GetWorldPos(sceneId,selfId)
		LuaFnUnitUseSkill(sceneId,selfId,x910165_g_Skill_Index_3,x,y,0,1)							--Boss s� d�ng k� n�ng 3
	end
	--******************--
	
end
--**********************************--
--*         Use Skill 1+2          *--
--**********************************--
function x910165_UseSkill12(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	local nHumanList={}
	local nDec=0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		local x1,y1=GetWorldPos(sceneId,nHumanId)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 
		and floor(sqrt((x-x1)*(x-x1)+(y-y1)*(y-y1)))<=20 then
			nDec=nDec+1
			nHumanList[nDec]=nHumanId
		end
	end
	--******************--
	local Victim=random(nDec)
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910165_g_Victim_Index,nHumanList[Victim])
	--******************--
	local Ran=random(2)
	--******************--
	if Ran==1 then
		local str=format(x910165_g_Monster_Dialogue[3],GetName(sceneId,nHumanList[Victim]))
		MonsterTalk(sceneId,selfId,"",str)
		LuaFnUnitUseSkill(sceneId,selfId,x910165_g_Skill_Index_1,x,y,0,1)						--Boss s� d�ng k� n�ng 1
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,nHumanList[Victim],x910165_g_Impact_1,0)
	else
		local str=format(x910165_g_Monster_Dialogue[4],GetName(sceneId,nHumanList[Victim]))
		MonsterTalk(sceneId,selfId,"",str)
		LuaFnUnitUseSkill(sceneId,selfId,x910165_g_Skill_Index_2,x,y,0,1)						--Boss s� d�ng k� n�ng 2
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,nHumanList[Victim],x910165_g_Impact_2,0)
	end
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910165_g_Poison_Timer,0)
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910165_GlobalNews(sceneId,Tips)

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
