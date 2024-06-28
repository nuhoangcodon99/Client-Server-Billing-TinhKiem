--Thi�u Th�t S�n
--C�u Ma Tr�
--Author: Ho�ng Steven

--******************--

x910162_Item_ttpx ={
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
x910162_Item_ttpx_rate = 25 -- ty le rot x910162_Item_ttpx

x910162_Item_ttpx_vip ={
30501361,--C�ng l�c �an
30503134, --kim thoa (duc lo)
30503135, --Th�i trang ph�i s�c �i�m xuy�t ph�
30503136, --Th�i trang ph�i s�c thanh tr� ph�
30503137, --Th�i trang ph�i s�c gia c�ng ph�

20503061, --Trang b� Tinh th�ng ph�
20503061, --Trang b� Tinh th�ng ph�
20503061, --Trang b� Tinh th�ng ph�
}
x910162_Item_ttpx_vip_rate = 10 -- ty le rot x910162_Item_ttpx_vip

--******************--

--******************--
x910162_g_ScriptId=910162
--******************--
x910162_g_Boss_Name="C�u Ma Tr�"																--T�n c�a BOSS
--******************--
x910162_g_Skill_Index=1013																		--K� n�ng H�a Di�m �ao
x910162_g_Skill_CD=15000																		--Th�i gian l�nh kh߾c H�a Di�m �ao
--******************--
x910162_g_Impact_Die=9780																		--Impact 1 hit died
x910162_g_Impact_Stronger=9787																	--Ph�n l�c nh�t k�ch
x910162_g_Impact_LostHP=9785																	--Impact lost HP
--******************--
x910162_g_Disciples_Called_Time=30000															--Th�i gian l�nh kh߾c g�i t�n �
--******************--
x910162_g_Disciples=
{
	[1]=	{	Index=14265,	Name="T�n �",	Pos_X=118,	Pos_Y=164	},
	[2]=	{	Index=14265,	Name="T�n �",	Pos_X=130,	Pos_Y=164	},
	[3]=	{	Index=14265,	Name="T�n �",	Pos_X=142,	Pos_Y=164	},
}
--******************--
x910162_g_Skill_Timer=1																			--Th�i gian k� n�ng
x910162_g_Call_Disciples_Timer=2																--Th�i gian g�i T�n а
x910162_g_AttackMode=3																			--Tr�ng th�i chi�n �u
--******************--
x910162_g_Patrol_Index=0																		--Tr�ng th�i di chuy�n
--******************--
x910162_g_Circle={	Index=1021,	Pos_X=130,	Pos_Y=168	}										--��i hi�n th�n
--******************--
x910162_g_Monster_Dialogue={																	--L�i n�i c�a Boss
	[1]=x910162_g_Boss_Name.." �� xu�t hi�n!",
	[2]="H�m... M�y t�n ��ng gh�t n�y... C�c ng߽i �� x�c ph�m �n ti�u t�ng, l�n n�y ti�u t�ng s� cho c�c ng߽i n�m m�i!",
	[3]="M�y t�n � c�c ng߽i c�n ch� g� n�a. Mau qua ��y. Ta ph�i d�ng m�u c�a c�c ng߽i � ph� b� c�ng l�c c�a l� kh�n n�y!",
	[4]="��i Lu�n Minh V߽ng, h�y ban cho ti�u nh�n cu�c s�ng v�nh c�u!",
	[5]="N�m m�i H�a Di�m �ao ��y!",
	[6]="�� gi�t ch�t "..x910162_g_Boss_Name..": 1/1",
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910162_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910162_g_Monster_Dialogue[2])								--C�u n�i khai chi�n c�a Boss
	x910162_GlobalNews(sceneId,x910162_g_Monster_Dialogue[1])									--Th�ng b�o Boss �� v�o chi�n �u cho to�n th� ng߶i ch�i
	x910162_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910162_OnHeartBeat(sceneId,selfId,nTick)												--H�m n�y s� check li�n t�c m�i mili gi�y khi n�o Boss c�n s�ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--N�u Boss �� ch�t th� ng�ng ho�t �ng c�a Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910162_g_AttackMode)==0 then
		return
	end
	--******************--
	x910162_CheckMyDisciplesPos(sceneId,selfId)													--Ki�m tra t�n � c� �i v�o v�ng tr�n kh�ng
	--******************--
	x910162_UseMySkill(sceneId,selfId,nTick)													--S� d�ng k� n�ng
	x910162_CallMyDisciples(sceneId,selfId,nTick)												--G�i T�n а
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910162_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910162_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910162_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910162_ResetMyAI(sceneId,selfId)															--Set l�i c�c thu�c t�nh cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910162_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if nHumanId==targetId then
			local PlayerName=GetName(sceneId,targetId)
			MonsterTalk(sceneId,selfId,"","Ha ha... M�t t�n kh�n �� g�c ng�... Ha ha...")		--Boss ch� di�u ng߶i ch�i b� gi�t
		end
	end
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910162_OnDie(sceneId,selfId,killerId)

	--******************--
	x910162_DeleteMyDisciples(sceneId)															--X�a t�t c� T�n �
	--******************--
	x910162_GlobalNews(sceneId,x910162_g_Monster_Dialogue[6])
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,8,2)
	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1  do
		local ran = random(100)
		if ran < x910162_Item_ttpx_rate then
			AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910162_Item_ttpx[random(getn(x910162_Item_ttpx))])
		end
		local ran = random(100)
		if ran < x910162_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910162_Item_ttpx_vip[random(getn(x910162_Item_ttpx_vip)-1)])
		end
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
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
function x910162_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_Skill_Timer,x910162_g_Skill_CD)		--Th�i gian k� n�ng
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_Call_Disciples_Timer,x910162_g_Disciples_Called_Time)		--Th�i gian k� n�ng
	--******************--
	x910162_DeleteMyDisciples(sceneId)															--X�a t�t c� T�n �
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_AttackMode,0)
	--******************--
	
end
--**********************************--
--*      Delete My Disciples       *--
--**********************************--
function x910162_DeleteMyDisciples(sceneId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910162_g_Disciples[1].Name then
			SetCharacterDieTime(sceneId,MonsterId,100)
		end
	end
	--******************--
	
end
--**********************************--
--*     Check My Disciples Pos     *--
--**********************************--
function x910162_CheckMyDisciplesPos(sceneId,selfId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910162_g_Disciples[1].Name then
			local x,y=GetWorldPos(sceneId,MonsterId)
			if floor(sqrt((x-x910162_g_Circle.Pos_X)*(x-x910162_g_Circle.Pos_X)+(y-x910162_g_Circle.Pos_Y)*(y-x910162_g_Circle.Pos_Y)))<=1 then
				LuaFnSendSpecificImpactToUnit(sceneId,MonsterId,MonsterId,MonsterId,x910162_g_Impact_Die,0)--T�n � th� m�ng
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910162_g_Impact_Stronger,0)	--C�u Ma Tr� t�ng c�ng l�c
				local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
				for i=0,nHumanCount-1 do
					local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
					if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
						LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,nHumanId,x910162_g_Impact_LostHP,0)
					end
				end
			end
		end
	end
	--******************--
	
end
--**********************************--
--*       Call My Disciples        *--
--**********************************--
function x910162_CallMyDisciples(sceneId,selfId,nTick)

	--******************--
	local Time_Skill=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910162_g_Call_Disciples_Timer)		--L�y th�i gian l�nh kh߾c k� n�ng c�a Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_Call_Disciples_Timer,Time_Skill-nTick)		--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng
	if Time_Skill<=0 then																				--�� �n gi� d�ng k� n�ng
		x910162_CallDisciples(sceneId,selfId)															--S� d�ng k� n�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_Call_Disciples_Timer,x910162_g_Disciples_Called_Time)	--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	
end
--**********************************--
--*         Call Disciples         *--
--**********************************--
function x910162_CallDisciples(sceneId,selfId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,9)													--L�y level ph� b�n
	--******************--
	MonsterTalk(sceneId,selfId,"",x910162_g_Monster_Dialogue[3])
	--******************--
	for i=1,getn(x910162_g_Disciples) do
		local Monster_Index=LuaFnCreateMonster(sceneId,x910162_g_Disciples[i].Index+nDec,x910162_g_Disciples[i].Pos_X,x910162_g_Disciples[i].Pos_Y,10,0,-1)--G�i T�n �
		SetCharacterName(sceneId,Monster_Index,x910162_g_Disciples[i].Name)
		SetPatrolId(sceneId,Monster_Index,x910162_g_Patrol_Index)										--Thi�p l�p tr�ng th�i di chuy�n
		MonsterTalk(sceneId,Monster_Index,"",x910162_g_Monster_Dialogue[4])
	end
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910162_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910162_g_Skill_Timer)			--L�y th�i gian l�nh kh߾c k� n�ng c�a Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_Skill_Timer,Time_Skill-nTick)			--C�p nh�t th�i gian l�nh kh߾c c�a k� n�ng
	if Time_Skill<=0 then																		--�� �n gi� d�ng k� n�ng
		x910162_UseSkill(sceneId,selfId)														--S� d�ng k� n�ng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_Skill_Timer,x910162_g_Skill_CD)	--C�p nh�t l�i th�i gian l�nh kh߾c c�a k� n�ng
	end
	--******************--
	
end
--**********************************--
--*           Use Skill            *--
--**********************************--
function x910162_UseSkill(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)														--L�y t�a � c�a Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910162_g_Skill_Index,x,y,0,1)								--Boss s� d�ng k� n�ng
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910162_GlobalNews(sceneId,Tips)

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
