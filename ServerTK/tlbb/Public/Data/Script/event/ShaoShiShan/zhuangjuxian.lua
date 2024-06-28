--Thiªu Th¤t S½n
--Trang Tø Hi«n
--Author: Hoàng Steven

--******************--

x910163_Item_ttpx ={
50131001, --Bång Lam Lßu Vân (C¤p 1)
50131002,--TØ Vi Tinh Quang (C¤p 1)
50131003,--Thuý Ng÷c Tinh Tr¥n (C¤p 1)
50131004,--Tranh Änh Nhß Mµng (C¤p 1)
50131005,--Hoa LÕc H°ng Tr¥n (C¤p 1)
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
}

x910163_Item_ttpx_vip ={
30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

20503061, --Trang b¸ Tinh thông phù
20503061, --Trang b¸ Tinh thông phù
20503061, --Trang b¸ Tinh thông phù
}
x910163_Item_ttpx_vip_rate = 20 -- ty le rot x910163_Item_ttpx_vip


--******************--

--******************--
x910163_g_ScriptId=910163
--******************--
x910163_g_Boss_Name="Trang Tø Hi«n"																--Tên cüa BOSS
--******************--
x910163_g_Skill_Index=1053																		--KÛ nång H°ng Cúc Chú
x910163_g_Skill_CD=10000																		--Th¶i gian lãnh khß¾c H°ng Cúc Chú
--******************--
x910163_g_GuangBao_Skill=1022																	--KÛ nång Cu°ng BÕo
--******************--
x910163_g_Impact_Healing=9781																	--Phøc h°i khí huyªt
x910163_g_Impact_Increase_Dame=9477																--Cµng dame ðµc
--******************--
x910163_g_Pet={	Index=14283,	Name="Bång t¢m",	Born_Time=60000	}							--Bång T¢m		
--******************--
x910163_g_Skill_Timer=1																			--Th¶i gian kÛ nång
x910163_g_Pet_Called=2																			--Ðã g÷i Bång T¢m chßa
x910163_g_Pet_Timer=3																			--Th¶i Bång T¢m hóa kén
x910163_g_AttackMode=4																			--TrÕng thái chiªn ð¤u
--******************--
x910163_g_Monster_Dialogue={																	--L¶i nói cüa Boss
	[1]=x910163_g_Boss_Name.." ðã xu¤t hi®n!",
	[2]="Cái Bang hôm nay nh¤t ð¸nh phäi th¯ng nh¤t Thiên HÕ, ðánh bÕi Thiªu Lâm!",
	[3]="Hãy nªm thØ kÛ nång H°ng Cúc Chú cüa ta!",
	[4]="Bång T¢m, hãy giúp ta!",
	[5]="Không... Bång T¢m cüa ta... Các ngß¶i s¨ phäi trä giá cho sñ sï nhøc này!",
	[6]="Ðã giªt chªt "..x910163_g_Boss_Name..": 1/1",
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910163_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910163_g_Monster_Dialogue[2])								--Câu nói khai chiªn cüa Boss
	x910163_GlobalNews(sceneId,x910163_g_Monster_Dialogue[1])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910163_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910163_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910163_g_AttackMode)==0 then
		return
	end
	--******************--
	x910163_CreatMyPet(sceneId,selfId,nTick)													--G÷i Bång T¢m
	--******************--
	x910163_CheckMyPet(sceneId,selfId)															--Ki¬m tra Trang Tø Hi«n có ðÑng g¥n Bång T¢m không
	--******************--
	x910163_UseMySkill(sceneId,selfId,nTick)													--SØ døng kÛ nång
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910163_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910163_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910163_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910163_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910163_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if nHumanId==targetId then
			local PlayerName=GetName(sceneId,targetId)
			MonsterTalk(sceneId,selfId,"","Cái Bang cån bän không mu¯n gây oán v¾i nhân sÛ giang h°. "..GetName(sceneId,targetId)..",  các hÕ ép ta quá, ta cûng không còn cách nào khác...")		--Boss chª di­u ngß¶i ch½i b¸ giªt
		end
	end
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910163_OnDie(sceneId,selfId,killerId)

	--******************--
	x910163_DeleteMyPet(sceneId)																--Xóa Bång t¢m
	--******************--
	x910163_GlobalNews(sceneId,x910163_g_Monster_Dialogue[6])
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,8,3)
	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1  do
		AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910163_Item_ttpx[random(getn(x910163_Item_ttpx))])
		local ran = random(100)
		if ran < x910163_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910163_Item_ttpx_vip[random(getn(x910163_Item_ttpx_vip)-1)])
		end
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
		local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+10)
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã gia tång 10 ði¬m hoÕt ðµng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,nPlayerId)
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910163_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Skill_Timer,x910163_g_Skill_CD)		--Th¶i gian kÛ nång
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Called,0)							--Kh·i tÕo chßa g÷i Bång T¢m
	--******************--
	x910163_DeleteMyPet(sceneId)																--Xóa Bång t¢m
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_AttackMode,0)
	--******************--
	
end
--**********************************--
--*         Delete My Pet          *--
--**********************************--
function x910163_DeleteMyPet(sceneId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910163_g_Pet.Name then
			SetCharacterDieTime(sceneId,MonsterId,100)
		end
	end
	--******************--
	
end
--**********************************--
--*         Creat My Pet           *--
--**********************************--
function x910163_CreatMyPet(sceneId,selfId,nTick)

	--******************--
	local Pet_Created=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Called)			--Ki¬m tra ðã g÷i Bång T¢m chßa
	--******************--
	if floor((GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId))*100)>70 and Pet_Created==0 then	--Nªu Trang Tø Hi«n vçn trên 70% máu và chßa g÷i Bång t¢m
		return
	end
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	if Pet_Created==0 then
		local Pet_Index=LuaFnCreateMonster(sceneId,x910163_g_Pet.Index,x+random(2)-random(2),y+random(2)-random(2),27,0,-1)
		SetCharacterName(sceneId,Pet_Index,x910163_g_Pet.Name)
		MonsterTalk(sceneId,selfId,"",x910163_g_Monster_Dialogue[4])
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Called,1)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Timer,x910163_g_Pet.Born_Time)--Th¶i gian hóa kén
	elseif Pet_Created==1 then
		local nIndex
		local nPet=0
		local nMonsterNum=GetMonsterCount(sceneId)
		for i=0,nMonsterNum-1 do
			local MonsterId=GetMonsterObjID(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910163_g_Pet.Name then
				nPet=nPet+1
				nIndex=MonsterId
				if nPet>=2 then
					break
				end
			end
		end
		if nPet>=2 or nPet==0 then
			if nPet==0 then
				LuaFnUnitUseSkill(sceneId,selfId,x910163_g_GuangBao_Skill,x,y,0,1)				--Boss sØ døng kÛ nång Cu°ng BÕo
				MonsterTalk(sceneId,selfId,"",x910163_g_Monster_Dialogue[5])
				MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Called,2)
			end
			return
		end
		local nTime=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Timer)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Timer,nTime-nTick)			--C§p nh§t th¶i gian hóa kén
		if nTime>0 then
			return
		end
		local x,y=GetWorldPos(sceneId,nIndex)
		local Pet_Index=LuaFnCreateMonster(sceneId,x910163_g_Pet.Index,x+random(2)-random(2),y+random(2)-random(2),27,0,-1)
		SetCharacterName(sceneId,Pet_Index,x910163_g_Pet.Name)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Timer,x910163_g_Pet.Born_Time)--Kh·i tÕo th¶i gian hóa kén cüa Bång T¢m
	end
	--******************--
	
end
--**********************************--
--*          Check My Pet          *--
--**********************************--
function x910163_CheckMyPet(sceneId,selfId)

	--******************--
	local Pos_X,Pos_Y=GetWorldPos(sceneId,selfId)
	--******************--
	local nPet=0
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910163_g_Pet.Name then
			nPet=nPet+1
			local x,y=GetWorldPos(sceneId,MonsterId)
			if floor(sqrt((x-Pos_X)*(x-Pos_X)+(y-Pos_Y)*(y-Pos_Y)))<=3 then
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910163_g_Impact_Healing,0)	--Trang Tø Hi«n ðßþc khôi phøc sinh lñc
			end
		end
	end
	--******************--
	if (MonsterAI_GetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Called)==1 or MonsterAI_GetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Called)==2) and nPet==0 then
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910163_g_Impact_Increase_Dame,0)	--Trang Tø Hi«n ðßþc tång ðµc công
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Pet_Called,3)
	end
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910163_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910163_g_Skill_Timer)			--L¤y th¶i gian lãnh khß¾c kÛ nång cüa Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Skill_Timer,Time_Skill-nTick)			--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång
	if Time_Skill<=0 then																		--Ðã ðªn gi¶ dùng kÛ nång
		x910163_UseSkill(sceneId,selfId)														--SØ døng kÛ nång
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910163_g_Skill_Timer,x910163_g_Skill_CD)	--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
	end
	--******************--
	
end
--**********************************--
--*           Use Skill            *--
--**********************************--
function x910163_UseSkill(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)														--L¤y t÷a ðµ cüa Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910163_g_Skill_Index,x,y,0,1)								--Boss sØ døng kÛ nång
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910163_GlobalNews(sceneId,Tips)

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
