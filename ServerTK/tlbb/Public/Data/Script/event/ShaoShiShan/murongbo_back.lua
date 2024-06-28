--Thi�u Th�t S�n
--M� Dung B�c (Back)
--Author: Ho�ng Steven

--******************--



x910158_Item_ttpx ={
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

x910158_Item_ttpx_vip ={

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
x910158_Item_ttpx_vip_rate = 60 -- ty le rot x910158_Item_ttpx_vip



--******************--

--******************--
x910158_g_ScriptId=910158
--******************--
x910158_g_Boss_Name="M� Dung B�c"																--T�n c�a BOSS
--******************--
x910158_g_Skill_Index=
{
	1333,																						--K� n�ng T�nh �nh Tr�m B�ch
	1334,																						--K� n�ng H�a Di�m Li�n Ho�n K�ch
	1335,																						--K� n�ng L� K�nh Nh� Lai
	1336,																						--K� n�ng Hu Thi еc C�ng
}
x910158_g_Skill_CD=20000																		--Th�i gian l�nh kh߾c H�a Di�m �ao
--******************--
x910158_g_AttackMode=0																			--Tr�ng th�i chi�n �u
x910158_g_Skill_Timer=1																			--Th�i gian k� n�ng
--******************--
x910158_g_Monster_Dialogue={																	--L�i n�i c�a Boss
	[1]=x910158_g_Boss_Name.." �� xu�t hi�n!",
	[2]="Ta c�ng �� tr�n trong Thi�u L�m T� r�t l�u r�i!",
	[3]="�� gi�t ch�t "..x910158_g_Boss_Name..": 1/1",
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910158_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"T�ng Kinh C�c","Ch�ng ta c� ��nh l�n nhau th� n�y ch� d�n �n c�ng l�c c�n ki�t m� t�ng m�ng, chi b�ng h�y c�ng nhau h�p l�c ��nh b�i k� �ch �i �� Ti�u huynh.")
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910158_OnHeartBeat(sceneId,selfId,nTick)												--H�m n�y s� check li�n t�c m�i mili gi�y khi n�o Boss c�n s�ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N�u Boss �� ch�t th� ng�ng ho�t �ng c�a Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910158_g_AttackMode)==0 then
		return
	end
	--******************--
	x910158_UseMySkill(sceneId,selfId,nTick)													--S� d�ng k� n�ng
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910158_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910158_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910158_g_AttackMode,1)
	--******************--
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,9798,0)
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,9799,0)
	SetHp(sceneId,selfId,floor(GetMaxHp(sceneId,selfId)/2))
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910158_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910158_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910158_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910158_OnDie(sceneId,selfId,killerId)

	--******************--
	local Player_Name=GetName(sceneId,killerId)
	--******************--
	if Player_Name~=nil then
		str=format("#{_INFOUSR%s}#R d�n d�t �i ng� b�o v� #GThi�u Th�t S�n#R quy�t chi�n �c li�t sinh t� c�ng #YM� Dung B�c#R. �c t�c #Y�inh Xu�n Thu#R �� ��i b�i, #GM� Dung B�c#R c�ng �� quy h�ng, #GThi�u L�m T�#R v��t qua ki�p n�n n�y l� nh� c�c v�. Xin �i �n c�c v�!", Player_Name)
		AddGlobalCountNews(sceneId,str)
	end
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)=="T�o иa Th�n T�ng" then
			MonsterTalk(sceneId,MonsterId,"Thi�u Th�t S�n","A di �� ph�t! Thi�n tai, thi�n tai. �c gi� �c b�o. Chi b�ng h�y v� v�i c�i ph�t t� bi, m�i oan nghi�t s� ���c ��c ph�t h�a gi�i. A di �� ph�t...")
			break
		end
	end
	--******************--
	local nFound=0
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)=="Ti�u Vi�n S�n" then
			nFound=1
			break
		end
	end
	--******************--
	if nFound==0 then
		LuaFnSetCopySceneData_Param(sceneId,8,9)
	end
	--******************--
	x910158_GlobalNews(sceneId,"�� ��nh b�i M� Dung B�c!")
	--******************--
	local TeammateCount = GetNearTeamCount(sceneId,killerId)
	for i=0,TeammateCount-1 do
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
		AddMonsterDropItem(sceneId,selfId,nPlayerId,x910158_Item_ttpx[random(getn(x910158_Item_ttpx))])
		local ran = random(100)
		if ran < x910158_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,nPlayerId,x910158_Item_ttpx_vip[random(getn(x910158_Item_ttpx_vip))])
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
function x910158_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910158_g_Skill_Timer,x910158_g_Skill_CD)		--Th�i gian k� n�ng
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910158_g_AttackMode,0)
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910158_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910158_g_Skill_Timer)			--L�y th�i gian l�nh kh߾c k� n�ng c�a Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910158_g_Skill_Timer,Time_Skill-nTick)			--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng
	if Time_Skill<=0 then																		--�� �n gi� d�ng k� n�ng
		local x,y=GetWorldPos(sceneId,selfId)													--L�y t�a � c�a Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910158_g_Skill_Index[random(getn(x910158_g_Skill_Index))],x,y,0,1)--Boss s� d�ng k� n�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910158_g_Skill_Timer,x910158_g_Skill_CD)	--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910158_GlobalNews(sceneId,Tips)

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
