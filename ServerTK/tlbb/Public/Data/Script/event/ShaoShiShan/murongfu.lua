--Thiªu Th¤t S½n
--Mµ Dung Phøc
--Author: Hoàng Steven

--******************--

x910164_Item_ttpx ={
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

x910164_Item_ttpx_vip ={
30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

20503061, --Trang b¸ Tinh thông phù
20503061, --Trang b¸ Tinh thông phù
20503061, --Trang b¸ Tinh thông phù
}
x910164_Item_ttpx_vip_rate = 30 -- ty le rot x910164_Item_ttpx_vip


--******************--

--******************--
x910164_g_ScriptId=910164
--******************--
x910164_g_Boss_Name="Mµ Dung Phøc"																--Tên cüa BOSS
--******************--
x910164_g_Skill_Index_1=1016																	--KÛ nång Ð¦u Chuy¬n Tinh Di
x910164_g_Skill_1_CD=35000																		--Th¶i gian lãnh khß¾c Ð¦u Chuy¬n Tinh Di
x910164_g_Skill_Index_2=1023																	--KÛ nång Tham Hþp Chï
x910164_g_Skill_2_CD=10000																		--Th¶i gian lãnh khß¾c kÛ nång Tham Hþp Chï
--******************--
x910164_g_Skill_1_Timer=1																		--Th¶i gian kÛ nång Ð¦u Chuy¬n Tinh Di
x910164_g_Skill_2_Timer=2																		--Th¶i gian kÛ nång Tham Hþp Chï
x910164_g_Wang_Said=3																			--Cänh báo cüa Vß½ng Ngæ Yên
x910164_g_Wang_Index=4																			--Index cüa Vß½ng Ngæ Yên
x910164_g_AttackMode=5																			--TrÕng thái chiªn ð¤u
--******************--
x910164_g_Wang_Yu_Yan="Vß½ng Ngæ Yên"
--******************--
x910164_g_Impact_Stronger=9483																	--Hi®u Ñng tång cß¶ng công lñc
--******************--
x910164_g_Monster_Dialogue=
{																	--L¶i nói cüa Boss
	[1]=x910164_g_Boss_Name.." ðã xu¤t hi®n!",
	[2]="Tên nào dám ngån cän vi®c hßng phøc ÐÕi Yªn, tên ðó phäi chªt!",
	[3]="G§y ông ð§p lßng ông!",
	[4]="Bi¬u ca c¦n th§n. Hãy chú ý d°n nµi lñc vào các yªu huy®t trên ngß¶i b÷n chúng!",
	[5]="Ðã giªt chªt "..x910164_g_Boss_Name..": 1/1",
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910164_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910164_g_Monster_Dialogue[2])								--Câu nói khai chiªn cüa Boss
	x910164_GlobalNews(sceneId,x910164_g_Monster_Dialogue[1])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910164_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910164_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910164_g_AttackMode)==0 then
		return
	end
	--******************--
	x910164_WangYuYan(sceneId,selfId)															--Vß½ng Ngæ Yên cänh báo
	--******************--
	x910164_UseMySkill(sceneId,selfId,nTick)													--SØ døng kÛ nång
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910164_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910164_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		local x,y=GetWorldPos(sceneId,MonsterId)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910164_g_Wang_Yu_Yan then
			MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Wang_Index,MonsterId)			--C§p nh§t ID cüa Vß½ng Ngæ Yên
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
	x910164_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
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
			MonsterTalk(sceneId,selfId,"","Nªu hôm nay bän công tØ tha cho ngß½i thì không biªt sau này ngß½i có biªt ½n không, "..GetName(sceneId,targetId)..". Ð¬ cho ch¡c ån thì ngß½i chªt là t¯t nh¤t... Ha ha...")		--Boss chª di­u ngß¶i ch½i b¸ giªt
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
			AddText(sceneId,"Các hÕ ðã gia tång 20 ði¬m hoÕt ðµng!")
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
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Skill_1_Timer,x910164_g_Skill_1_CD)	--Th¶i gian kÛ nång 1
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Skill_2_Timer,x910164_g_Skill_2_CD)	--Th¶i gian kÛ nång 2
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Wang_Said,0)							--Cänh báo cüa Vß½ng Ngæ Yên
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
	local Time_Skill_1=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910164_g_Skill_1_Timer)		--L¤y th¶i gian lãnh khß¾c kÛ nång 1 cüa Boss
	local Time_Skill_2=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910164_g_Skill_2_Timer)		--L¤y th¶i gian lãnh khß¾c kÛ nång 2 cüa Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Skill_1_Timer,Time_Skill_1-nTick)		--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång 1
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Skill_2_Timer,Time_Skill_2-nTick)		--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång 2
	--******************--
	if Time_Skill_1<=0 then																		--Ðã ðªn gi¶ dùng kÛ nång
		local x,y=GetWorldPos(sceneId,selfId)													--L¤y t÷a ðµ cüa Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910164_g_Skill_Index_1,x,y,0,1)						--Boss sØ døng kÛ nång
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Skill_1_Timer,x910164_g_Skill_1_CD)--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
		MonsterTalk(sceneId,selfId,"",x910164_g_Monster_Dialogue[3])
	end
	--******************--
	if Time_Skill_2<=0 then																		--Ðã ðªn gi¶ dùng kÛ nång
		local x,y=GetWorldPos(sceneId,selfId)													--L¤y t÷a ðµ cüa Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910164_g_Skill_Index_2,x,y,0,1)				--Boss sØ døng kÛ nång
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910164_g_Impact_Stronger,0)	--Mµ Dung Phøc tång công lñc
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910164_g_Skill_2_Timer,x910164_g_Skill_2_CD)--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
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
