--Phø bän TÑ Tuy®t Trang
--Mçn M£c
--Author: Hoàng Steven

--******************--
x910173_Item_ttpx ={
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

x910173_Item_ttpx_vip ={

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

20503061, --Trang b¸ Tinh thông phù
20503061, --Trang b¸ Tinh thông phù
20503061, --Trang b¸ Tinh thông phù

30010080, --Chân Nguyên Phách
}
x910173_Item_ttpx_vip_rate = 20 -- ty le rot x910173_Item_ttpx_vip


--******************--

--******************--
x910173_g_ScriptId=910173
--******************--
x910173_g_Boss_Name="Mçn M£c"																	--Tên cüa BOSS
--******************--
x910173_g_Skill_Index_1=1668																	--KÛ nång Tß¾ng Tiªn TØu (Ð£t bçy)
x910173_g_Skill_1_CD=10000																		--Th¶i gian lãnh khß¾c Tß¾ng Tiªn TØu
x910173_g_Skill_Index_2=1667																	--KÛ nång M£c Sái Bát Phß½ng (Ð½n th¬ kích)
x910173_g_Skill_2_CD=15000																		--Th¶i gian lãnh khß¾c M£c Sái Bát Phß½ng
x910173_g_Skill_Index_3=1666																	--KÛ nång Bút T¦u Long Xà (Ð½n th¬ kích)
x910173_g_Skill_3_CD=15000																		--Th¶i gian lãnh khß¾c Bút T¦u Long Xà
x910173_g_Skill_Index_4=1669																	--KÛ nång Th¥n Lai Chi Bút (Qu¥n th¬ kích)
x910173_g_Skill_4_CD=30000																		--Th¶i gian lãnh khß¾c Th¥n Lai Chi Bút
--******************--
x910173_g_Trap_Object=156																		--Object cüa cÕm bçy mñc
--******************--
x910173_g_Skill_1_Timer=1																		--Th¶i gian kÛ nång 1
x910173_g_Skill_2_Timer=2																		--Th¶i gian kÛ nång 2
x910173_g_Skill_3_Timer=3																		--Th¶i gian kÛ nång 3
x910173_g_Skill_4_Timer=4																		--Th¶i gian kÛ nång 4
x910173_g_AttackMode=5																			--TrÕng thái chiªn ð¤u
--******************--
x910173_g_Monster_Dialogue=
{																								--L¶i nói cüa Boss
	[1]=x910173_g_Boss_Name.." ðã xu¤t hi®n!",
	[2]="Tên nào dám cä gan xông và náo loÕn TÑ Tuy®t Ði®n, tên ðó phäi chªt!",
	[3]="Ðã giªt chªt "..x910173_g_Boss_Name..": 1/1",
	[4]="Võ lâm suy tàn loÕn thª phân tranh#rThiên hÕ anh hùng thiên vãng lai",
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910173_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"TÑ Tuy®t Trang",x910173_g_Monster_Dialogue[2])					--Câu nói khai chiªn cüa Boss
	x910173_GlobalNews(sceneId,x910173_g_Monster_Dialogue[1])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910173_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910173_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910173_g_AttackMode)==0 then
		return
	end
	--******************--
	x910173_UseMySkill(sceneId,selfId,nTick)													--SØ døng kÛ nång
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910173_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910173_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		local x,y=GetWorldPos(sceneId,MonsterId)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910173_g_Wang_Yu_Yan then
			MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Wang_Index,MonsterId)			--C§p nh§t ID cüa Vß½ng Ngæ Yên
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
	x910173_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
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
			AddText(sceneId,"Các hÕ ðã gia tång 10 ði¬m hoÕt ðµng!")
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
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_1_Timer,x910173_g_Skill_1_CD)	--Th¶i gian kÛ nång 1
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_2_Timer,x910173_g_Skill_2_CD)	--Th¶i gian kÛ nång 2
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_3_Timer,x910173_g_Skill_3_CD)	--Th¶i gian kÛ nång 3
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_4_Timer,x910173_g_Skill_4_CD)	--Th¶i gian kÛ nång 4
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_AttackMode,0)
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910173_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill_1=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910173_g_Skill_1_Timer)		--L¤y th¶i gian lãnh khß¾c kÛ nång 1 cüa Boss
	local Time_Skill_2=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910173_g_Skill_2_Timer)		--L¤y th¶i gian lãnh khß¾c kÛ nång 2 cüa Boss
	local Time_Skill_3=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910173_g_Skill_3_Timer)		--L¤y th¶i gian lãnh khß¾c kÛ nång 3 cüa Boss
	local Time_Skill_4=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910173_g_Skill_4_Timer)		--L¤y th¶i gian lãnh khß¾c kÛ nång 4 cüa Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_1_Timer,Time_Skill_1-nTick)		--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång 1
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_2_Timer,Time_Skill_2-nTick)		--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång 2
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_3_Timer,Time_Skill_3-nTick)		--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång 3
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_4_Timer,Time_Skill_4-nTick)		--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång 4
	--******************--
	if Time_Skill_1<=0 then																		--Ðã ðªn gi¶ dùng kÛ nång 1
		x910173_UseSkill1(sceneId,selfId)														--SØ døng kÛ nång 1
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_1_Timer,x910173_g_Skill_1_CD)--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
	end
	--******************--
	if Time_Skill_2<=0 then																		--Ðã ðªn gi¶ dùng kÛ nång 2
		local x,y=GetWorldPos(sceneId,selfId)													--L¤y t÷a ðµ cüa Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910173_g_Skill_Index_2,x,y,0,1)				--Boss sØ døng kÛ nång 2
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_2_Timer,x910173_g_Skill_2_CD)--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
	end
	--******************--
	if Time_Skill_3<=0 then																		--Ðã ðªn gi¶ dùng kÛ nång 3
		local x,y=GetWorldPos(sceneId,selfId)													--L¤y t÷a ðµ cüa Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910173_g_Skill_Index_3,x,y,0,1)				--Boss sØ døng kÛ nång
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_3_Timer,x910173_g_Skill_3_CD)--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
	end
	--******************--
	if Time_Skill_4<=0 then																		--Ðã ðªn gi¶ dùng kÛ nång 4
		local x,y=GetWorldPos(sceneId,selfId)													--L¤y t÷a ðµ cüa Boss
		LuaFnUnitUseSkill(sceneId,selfId,x910173_g_Skill_Index_4,x,y,0,1)						--Boss sØ døng kÛ nång 4
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910173_g_Skill_4_Timer,x910173_g_Skill_4_CD)--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
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
			local x,y=GetWorldPos(sceneId,nHumanId)													--L¤y t÷a ðµ cüa nÕn nhân
			CreateSpecialObjByDataIndex(sceneId,selfId,x910173_g_Trap_Object,x,y,0)					--G÷i ra cÕm bçy mñc
		end
	end
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)													--L¤y t÷a ðµ Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910173_g_Skill_Index_1,x,y,0,1)						--Boss sØ døng kÛ nång 1
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
